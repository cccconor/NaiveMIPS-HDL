`default_nettype none

module soc_toplevel_qsys(/*autoport*/
//inout
           DRAM_DQ,
           EEP_I2C_SDAT,
           ENET_MDIO,
           FAN_CTRL,
           FS_DQ,
           GPIO,
           G_SENSOR_SDAT,
           HSMC_CLKOUT_N1,
           HSMC_CLKOUT_N2,
           HSMC_CLKOUT_P1,
           HSMC_CLKOUT_P2,
           HSMC_D,
           HSMC_I2C_SDAT,
           HSMC_RX_D_N,
           HSMC_RX_D_P,
           HSMC_TX_D_N,
           HSMC_TX_D_P,
           I2C_SDAT,
           LCD_DATA,
           SD_CMD,
           SD_DAT,
           SSRAM_BE,
//output
           DRAM_ADDR,
           DRAM_BA,
           DRAM_CAS_N,
           DRAM_CKE,
           DRAM_CLK,
           DRAM_CS_N,
           DRAM_DQM,
           DRAM_RAS_N,
           DRAM_WE_N,
           EEP_I2C_SCLK,
           ENET_GTX_CLK,
           ENET_MDC,
           ENET_RST_N,
           ENET_TX_DATA,
           ENET_TX_EN,
           ENET_TX_ER,
           FL_CE_N,
           FL_OE_N,
           FL_WE_N,
           FL_WP_N,
           FL_RESET_N,
           FS_ADDR,
           G_SENSOR_SCLK,
           HEX0,
           HEX1,
           HEX2,
           HEX3,
           HEX4,
           HEX5,
           HEX6,
           HEX7,
           HSMC_CLKOUT0,
           HSMC_I2C_SCLK,
           I2C_SCLK,
           LCD_EN,
           LCD_ON,
           LCD_RS,
           LCD_RW,
           LEDG,
           LEDR,
           PCIE_WAKE_N,
           SD_CLK,
           SMA_CLKOUT,
           SSRAM_ADSC_N,
           SSRAM_ADSP_N,
           SSRAM_ADV_N,
           SSRAM_CLK,
           SSRAM_GW_N,
           SSRAM_OE_N,
           SSRAM_WE_N,
           SSRAM0_CE_N,
           SSRAM1_CE_N,
           TD_RESET_N,
           UART_RTS,
           UART_TXD,
           VGA_B,
           VGA_BLANK_N,
           VGA_CLK,
           VGA_G,
           VGA_HS,
           VGA_R,
           VGA_SYNC_N,
           VGA_VS,
//input
           CLOCK2_50,
           CLOCK3_50,
           CLOCK_50,
           ENET_INT_N,
           ENET_LINK100,
           ENET_RX_CLK,
           ENET_RX_COL,
           ENET_RX_CRS,
           ENET_RX_DATA,
           ENET_RX_DV,
           ENET_RX_ER,
           ENET_TX_CLK,
           FL_RY,
           G_SENSOR_INT1,
           HSMC_CLKIN0,
           HSMC_CLKIN_N1,
           HSMC_CLKIN_N2,
           HSMC_CLKIN_P1,
           HSMC_CLKIN_P2,
           IRDA_RXD,
           KEY,
           PCIE_PERST_N,
           SD_WP_N,
           SMA_CLKIN,
           SW,
           TD_CLK27,
           TD_DATA,
           TD_HS,
           TD_VS,
           UART_CTS,
           UART_RXD);

//=======================================================
//  PORT declarations
//=======================================================

///////////CLOCK2/////////////
input                                              CLOCK2_50;

///////// CLOCK3 /////////
input                                              CLOCK3_50;

///////// CLOCK /////////
input                                              CLOCK_50;

///////// DRAM /////////
output                        [12:0]               DRAM_ADDR;
output                        [1:0]                DRAM_BA;
output                                             DRAM_CAS_N;
output                                             DRAM_CKE;
output                                             DRAM_CLK;
output                                             DRAM_CS_N;
inout                         [31:0]               DRAM_DQ;
output                        [3:0]                DRAM_DQM;
output                                             DRAM_RAS_N;
output                                             DRAM_WE_N;

///////// EEP /////////
output                                             EEP_I2C_SCLK;
inout                                              EEP_I2C_SDAT;

///////// ENET /////////
output                                             ENET_GTX_CLK;
input                                              ENET_INT_N;
input                                              ENET_LINK100;
output                                             ENET_MDC;
inout                                              ENET_MDIO;
output                                             ENET_RST_N;
input                                              ENET_RX_CLK;
input                                              ENET_RX_COL;
input                                              ENET_RX_CRS;
input                         [3:0]                ENET_RX_DATA;
input                                              ENET_RX_DV;
input                                              ENET_RX_ER;
input                                              ENET_TX_CLK;
output                        [3:0]                ENET_TX_DATA;
output                                             ENET_TX_EN;
output                                             ENET_TX_ER;

///////// FAN /////////
inout                                              FAN_CTRL;

///////// FL /////////
output                                             FL_CE_N;
output                                             FL_OE_N;
input                                              FL_RY;
output                                             FL_WE_N;
output                                             FL_WP_N;
output                                             FL_RESET_N;
///////// FS /////////
inout                         [31:0]               FS_DQ;
output                        [26:0]               FS_ADDR;
///////// GPIO /////////
inout                         [35:0]               GPIO;

///////// G /////////
input                                              G_SENSOR_INT1;
output                                             G_SENSOR_SCLK;
inout                                              G_SENSOR_SDAT;

///////// HEX0 /////////
output                        [6:0]                HEX0;

///////// HEX1 /////////
output                        [6:0]                HEX1;

///////// HEX2 /////////
output                        [6:0]                HEX2;

///////// HEX3 /////////
output                        [6:0]                HEX3;

///////// HEX4 /////////
output                        [6:0]                HEX4;

///////// HEX5 /////////
output                        [6:0]                HEX5;

///////// HEX6 /////////
output                        [6:0]                HEX6;

///////// HEX7 /////////
output                        [6:0]                HEX7;

///////// HSMC /////////
input                                              HSMC_CLKIN0;
input                                              HSMC_CLKIN_N1;
input                                              HSMC_CLKIN_N2;
input                                              HSMC_CLKIN_P1;
input                                              HSMC_CLKIN_P2;
output                                             HSMC_CLKOUT0;
inout                                              HSMC_CLKOUT_N1;
inout                                              HSMC_CLKOUT_N2;
inout                                              HSMC_CLKOUT_P1;
inout                                              HSMC_CLKOUT_P2;
inout                         [3:0]                HSMC_D;
output                                             HSMC_I2C_SCLK;
inout                                              HSMC_I2C_SDAT;
inout                         [16:0]               HSMC_RX_D_N;
inout                         [16:0]               HSMC_RX_D_P;
inout                         [16:0]               HSMC_TX_D_N;
inout                         [16:0]               HSMC_TX_D_P;

///////// I2C /////////
output                                             I2C_SCLK;
inout                                              I2C_SDAT;

///////// IRDA /////////
input                                              IRDA_RXD;

///////// KEY /////////
input                         [3:0]                KEY;

///////// LCD /////////
inout                         [7:0]                LCD_DATA;
output                                             LCD_EN;
output                                             LCD_ON;
output                                             LCD_RS;
output                                             LCD_RW;

///////// LEDG /////////
output                        [8:0]                LEDG;

///////// LEDR /////////
output                        [17:0]               LEDR;

///////// PCIE /////////
input                                              PCIE_PERST_N;
//input                                              PCIE_REFCLK_P;
//input                         [1:0]                PCIE_RX_P;
//output                        [1:0]                PCIE_TX_P;
output                                             PCIE_WAKE_N;

///////// SD /////////
output                                             SD_CLK;
inout                                              SD_CMD;
inout                         [3:0]                SD_DAT;
input                                              SD_WP_N;

///////// SMA /////////
input                                              SMA_CLKIN;
output                                             SMA_CLKOUT;

///////// SSRAM /////////
output                                             SSRAM_ADSC_N;
output                                             SSRAM_ADSP_N;
output                                             SSRAM_ADV_N;
inout                         [3:0]                SSRAM_BE;
output                                             SSRAM_CLK;
output                                             SSRAM_GW_N;
output                                             SSRAM_OE_N;
output                                             SSRAM_WE_N;
output                                             SSRAM0_CE_N;
output                                             SSRAM1_CE_N;

///////// SW /////////
input                         [17:0]               SW;

///////// TD /////////
input                                              TD_CLK27;
input                         [7:0]                TD_DATA;
input                                              TD_HS;
output                                             TD_RESET_N;
input                                              TD_VS;

///////// UART /////////
input                                             UART_CTS;
output                                              UART_RTS;
input                                              UART_RXD;
output                                             UART_TXD;

///////// VGA /////////
output                        [7:0]                VGA_B;
output                                             VGA_BLANK_N;
output                                             VGA_CLK;
output                        [7:0]                VGA_G;
output                                             VGA_HS;
output                        [7:0]                VGA_R;
output                                             VGA_SYNC_N;
output                                             VGA_VS;



wire clk2x,clk,locked,rst_n;
wire clk_uart, clk_uart_pll;
wire clk_tick;
wire [31:0] led_export;

sys_pll pll1(
    .areset(!KEY[0]),
    .inclk0(CLOCK_50),
    .c0(clk),
    //.c1(clk2x),
    .c2(clk_uart_pll),
    .c3(clk_tick),
    .locked(locked));
clk_ctrl clk_ctrl1(/*autoinst*/
         .rst_out_n(rst_n),
         .clk(clk),
         .rst_in_n(locked));

naive_mips_soc soc(
		.clk_cpu_clk(clk),      //  clk_cpu.clk
		.clk_uart_clk(clk_uart_pll),     // clk_uart.clk
		.debugger_dbg_txd(GPIO[0]), // debugger.dbg_txd
		.debugger_dbg_rxd(GPIO[1]), //         .dbg_rxd
		.led_export(led_export),       //      led.export
		.rst_cpu_reset_n(rst_n),  //  rst_cpu.reset_n
		.sdram_addr(DRAM_ADDR),       //    sdram.addr
		.sdram_ba(DRAM_BA),         //         .ba
		.sdram_cas_n(DRAM_CAS_N),      //         .cas_n
		.sdram_cke(DRAM_CKE),        //         .cke
		.sdram_cs_n(DRAM_CS_N),       //         .cs_n
		.sdram_dq(DRAM_DQ),         //         .dq
		.sdram_dqm(DRAM_DQM),        //         .dqm
		.sdram_ras_n(DRAM_RAS_N),      //         .ras_n
		.sdram_we_n(DRAM_WE_N),       //         .we_n
		.sw_export(SW),        //       sw.export
		.uart_rxd(UART_RXD),         //     uart.rxd
		.uart_txd(UART_TXD)          //         .txd
	);
	
SEG7_LUT_8 segs(HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7, led_export);
	
assign DRAM_CLK = clk;
assign {LEDR,LEDG} = led_export;


endmodule