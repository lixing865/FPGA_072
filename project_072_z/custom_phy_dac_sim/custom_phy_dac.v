// custom_phy_dac.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module custom_phy_dac (
		input  wire         phy_mgmt_clk,         //       phy_mgmt_clk.clk
		input  wire         phy_mgmt_clk_reset,   // phy_mgmt_clk_reset.reset
		input  wire [8:0]   phy_mgmt_address,     //           phy_mgmt.address
		input  wire         phy_mgmt_read,        //                   .read
		output wire [31:0]  phy_mgmt_readdata,    //                   .readdata
		output wire         phy_mgmt_waitrequest, //                   .waitrequest
		input  wire         phy_mgmt_write,       //                   .write
		input  wire [31:0]  phy_mgmt_writedata,   //                   .writedata
		output wire         tx_ready,             //           tx_ready.export
		input  wire [0:0]   pll_ref_clk,          //        pll_ref_clk.clk
		output wire [1:0]   tx_serial_data,       //     tx_serial_data.export
		output wire [0:0]   pll_locked,           //         pll_locked.export
		output wire [1:0]   tx_clkout,            //          tx_clkout.export
		input  wire [31:0]  tx_parallel_data,     //   tx_parallel_data.export
		input  wire [3:0]   tx_datak,             //           tx_datak.export
		output wire [183:0] reconfig_from_xcvr,   // reconfig_from_xcvr.reconfig_from_xcvr
		input  wire [279:0] reconfig_to_xcvr      //   reconfig_to_xcvr.reconfig_to_xcvr
	);

	altera_xcvr_custom #(
		.device_family                         ("Arria V"),
		.protocol_hint                         ("basic"),
		.operation_mode                        ("TX"),
		.lanes                                 (2),
		.bonded_group_size                     (1),
		.bonded_mode                           ("xN"),
		.pma_bonding_mode                      ("x1"),
		.pcs_pma_width                         (10),
		.ser_base_factor                       (8),
		.ser_words                             (2),
		.data_rate                             ("1920 Mbps"),
		.base_data_rate                        ("1920 Mbps"),
		.en_synce_support                      (0),
		.tx_bitslip_enable                     ("false"),
		.rx_use_coreclk                        ("false"),
		.tx_use_coreclk                        ("false"),
		.use_8b10b                             ("true"),
		.use_8b10b_manual_control              ("false"),
		.std_tx_pcfifo_mode                    ("low_latency"),
		.std_rx_pcfifo_mode                    ("low_latency"),
		.word_aligner_mode                     ("manual"),
		.word_aligner_state_machine_datacnt    (1),
		.word_aligner_state_machine_errcnt     (1),
		.word_aligner_state_machine_patterncnt (10),
		.word_aligner_pattern_length           (16),
		.word_align_pattern                    ("1111100111111111"),
		.run_length_violation_checking         (40),
		.use_rate_match_fifo                   (0),
		.rate_match_pattern1                   ("11010000111010000011"),
		.rate_match_pattern2                   ("00101111000101111100"),
		.byte_order_mode                       ("none"),
		.byte_order_pattern                    ("111111011"),
		.byte_order_pad_pattern                ("000000000"),
		.coreclk_0ppm_enable                   ("false"),
		.pll_refclk_cnt                        (1),
		.pll_refclk_freq                       ("96.0 MHz"),
		.pll_refclk_select                     ("0"),
		.cdr_refclk_select                     (0),
		.plls                                  (1),
		.pll_type                              ("CMU"),
		.pll_select                            (0),
		.pll_reconfig                          (0),
		.pll_external_enable                   (0),
		.gxb_analog_power                      ("AUTO"),
		.pll_lock_speed                        ("AUTO"),
		.tx_analog_power                       ("AUTO"),
		.tx_slew_rate                          ("OFF"),
		.tx_termination                        ("OCT_100_OHMS"),
		.tx_use_external_termination           ("false"),
		.tx_preemp_pretap                      (0),
		.tx_preemp_pretap_inv                  ("false"),
		.tx_preemp_tap_1                       (0),
		.tx_preemp_tap_2                       (0),
		.tx_preemp_tap_2_inv                   ("false"),
		.tx_vod_selection                      (2),
		.tx_common_mode                        ("0.65V"),
		.rx_pll_lock_speed                     ("AUTO"),
		.rx_common_mode                        ("0.82V"),
		.rx_termination                        ("OCT_100_OHMS"),
		.rx_use_external_termination           ("false"),
		.rx_eq_dc_gain                         (1),
		.rx_eq_ctrl                            (16),
		.mgmt_clk_in_mhz                       (250),
		.embedded_reset                        (1),
		.channel_interface                     (0)
	) custom_phy_dac_inst (
		.phy_mgmt_clk                (phy_mgmt_clk),         //       phy_mgmt_clk.clk
		.phy_mgmt_clk_reset          (phy_mgmt_clk_reset),   // phy_mgmt_clk_reset.reset
		.phy_mgmt_address            (phy_mgmt_address),     //           phy_mgmt.address
		.phy_mgmt_read               (phy_mgmt_read),        //                   .read
		.phy_mgmt_readdata           (phy_mgmt_readdata),    //                   .readdata
		.phy_mgmt_waitrequest        (phy_mgmt_waitrequest), //                   .waitrequest
		.phy_mgmt_write              (phy_mgmt_write),       //                   .write
		.phy_mgmt_writedata          (phy_mgmt_writedata),   //                   .writedata
		.tx_ready                    (tx_ready),             //           tx_ready.export
		.pll_ref_clk                 (pll_ref_clk),          //        pll_ref_clk.clk
		.tx_serial_data              (tx_serial_data),       //     tx_serial_data.export
		.pll_locked                  (pll_locked),           //         pll_locked.export
		.tx_clkout                   (tx_clkout),            //          tx_clkout.export
		.tx_parallel_data            (tx_parallel_data),     //   tx_parallel_data.export
		.tx_datak                    (tx_datak),             //           tx_datak.export
		.reconfig_from_xcvr          (reconfig_from_xcvr),   // reconfig_from_xcvr.reconfig_from_xcvr
		.reconfig_to_xcvr            (reconfig_to_xcvr),     //   reconfig_to_xcvr.reconfig_to_xcvr
		.rx_ready                    (),                     //        (terminated)
		.tx_forceelecidle            (2'b00),                //        (terminated)
		.tx_bitslipboundaryselect    (10'b0000000000),       //        (terminated)
		.rx_serial_data              (2'b00),                //        (terminated)
		.rx_runningdisp              (),                     //        (terminated)
		.rx_disperr                  (),                     //        (terminated)
		.rx_errdetect                (),                     //        (terminated)
		.rx_is_lockedtoref           (),                     //        (terminated)
		.rx_is_lockedtodata          (),                     //        (terminated)
		.rx_signaldetect             (),                     //        (terminated)
		.rx_patterndetect            (),                     //        (terminated)
		.rx_syncstatus               (),                     //        (terminated)
		.rx_bitslipboundaryselectout (),                     //        (terminated)
		.rx_enabyteord               (2'b00),                //        (terminated)
		.rx_bitslip                  (2'b00),                //        (terminated)
		.rx_rmfifodatainserted       (),                     //        (terminated)
		.rx_rmfifodatadeleted        (),                     //        (terminated)
		.rx_rlv                      (),                     //        (terminated)
		.rx_byteordflag              (),                     //        (terminated)
		.tx_coreclkin                (2'b00),                //        (terminated)
		.rx_coreclkin                (2'b00),                //        (terminated)
		.rx_recovered_clk            (),                     //        (terminated)
		.rx_clkout                   (),                     //        (terminated)
		.cdr_ref_clk                 (1'b0),                 //        (terminated)
		.tx_dispval                  (4'b0000),              //        (terminated)
		.tx_forcedisp                (4'b0000),              //        (terminated)
		.rx_parallel_data            (),                     //        (terminated)
		.rx_datak                    (),                     //        (terminated)
		.pll_powerdown               (1'b0),                 //        (terminated)
		.tx_digitalreset             (2'b00),                //        (terminated)
		.tx_analogreset              (2'b00),                //        (terminated)
		.tx_cal_busy                 (),                     //        (terminated)
		.rx_digitalreset             (2'b00),                //        (terminated)
		.rx_analogreset              (2'b00),                //        (terminated)
		.rx_cal_busy                 (),                     //        (terminated)
		.ext_pll_clk                 (2'b00)                 //        (terminated)
	);

endmodule
