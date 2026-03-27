#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"

#define FIR_BASEADDR   XPAR_MY_FIR_FILTER_0_S00_AXI_BASEADDR
#define REG0_OFFSET    0x00   // Write: x[7:0], valid_in[8], rst[9]
#define REG1_OFFSET    0x04   // Read:  y[18:0], valid_out[19]

void fir_reset() {
    Xil_Out32(FIR_BASEADDR + REG0_OFFSET, (1 << 9)); // assert reset
    Xil_Out32(FIR_BASEADDR + REG0_OFFSET, 0);        // deassert reset
}

u32 fir_send(u8 x) {
    // Send x with valid_in=1
    Xil_Out32(FIR_BASEADDR + REG0_OFFSET, (1 << 8) | x);
    // Poll until valid_out is set
    u32 reg1;
    do {
        reg1 = Xil_In32(FIR_BASEADDR + REG1_OFFSET);
    } while (!(reg1 & (1 << 19)));
    // Return y[18:0]
    return reg1 & 0x7FFFF;
}

int main() {
    xil_printf("FIR Filter Test\r\n");

    fir_reset();

    // Impulse input to verify impulse response matches filter coefficients
    u8 input[] = {1, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    for (int i = 0; i < 10; i++) {
        u32 y = fir_send(input[i]);
        xil_printf("x[%d]=%d -> y=%d\r\n", i, input[i], (int)y);
    }

    return 0;
}