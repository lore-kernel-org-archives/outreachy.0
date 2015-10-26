X-GM-THRID: 6209942832976756736
X-Received: by 10.180.216.105 with SMTP id op9mr4348891wic.0.1445870800975;
        Mon, 26 Oct 2015 07:46:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.27.233 with SMTP id jj9ls541303wid.26.gmail; Mon, 26 Oct
 2015 07:46:40 -0700 (PDT)
X-Received: by 10.180.211.207 with SMTP id ne15mr3197524wic.1.1445870800411;
        Mon, 26 Oct 2015 07:46:40 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d7si511188wiy.2.2015.10.26.07.46.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 07:46:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,201,1444687200"; 
   d="scan'208";a="151783504"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Oct 2015 15:46:39 +0100
Date: Mon, 26 Oct 2015 15:46:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/6] staging: media: omap4iss: Replaces
 bit shift on 1 with BIT Macro
In-Reply-To: <3c4b9cd96e78d3d0d114b697f154f291631fc60f.1445864494.git.amarjargal.gundjalam@gmail.com>
Message-ID: <alpine.DEB.2.10.1510261544000.2521@hadrien>
References: <cover.1445864494.git.amarjargal.gundjalam@gmail.com> <3c4b9cd96e78d3d0d114b697f154f291631fc60f.1445864494.git.amarjargal.gundjalam@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> diff --git a/drivers/staging/media/omap4iss/iss_ipipe.h b/drivers/staging/media/omap4iss/iss_ipipe.h
> index c22d904..b8c1b8e0 100644
> --- a/drivers/staging/media/omap4iss/iss_ipipe.h
> +++ b/drivers/staging/media/omap4iss/iss_ipipe.h
> @@ -21,7 +21,7 @@ enum ipipe_input_entity {
>  	IPIPE_INPUT_IPIPEIF,
>  };
>
> -#define IPIPE_OUTPUT_VP		(1 << 0)
> +#define IPIPE_OUTPUT_VP				BIT(0)

Why did the amount of space change?

>
>  /* Sink and source IPIPE pads */
>  #define IPIPE_PAD_SINK				0
> diff --git a/drivers/staging/media/omap4iss/iss_ipipeif.h b/drivers/staging/media/omap4iss/iss_ipipeif.h
> index cbdccb9..cf8a47a 100644
> --- a/drivers/staging/media/omap4iss/iss_ipipeif.h
> +++ b/drivers/staging/media/omap4iss/iss_ipipeif.h
> @@ -22,8 +22,8 @@ enum ipipeif_input_entity {
>  	IPIPEIF_INPUT_CSI2B
>  };
>
> -#define IPIPEIF_OUTPUT_MEMORY		(1 << 0)
> -#define IPIPEIF_OUTPUT_VP		(1 << 1)
> +#define IPIPEIF_OUTPUT_MEMORY			BIT(0)
> +#define IPIPEIF_OUTPUT_VP			BIT(1)

Here, however, you could take advantage of the opportunity to line them
up.  Maybe these are just a problem with tabs and the patch?

julia

>  /* Sink and source IPIPEIF pads */
>  #define IPIPEIF_PAD_SINK			0
> diff --git a/drivers/staging/media/omap4iss/iss_regs.h b/drivers/staging/media/omap4iss/iss_regs.h
> index d2b6b6a..cb415e8 100644
> --- a/drivers/staging/media/omap4iss/iss_regs.h
> +++ b/drivers/staging/media/omap4iss/iss_regs.h
> @@ -22,21 +22,21 @@
>  #define ISS_HL_SYSCONFIG_IDLEMODE_FORCEIDLE		0x0
>  #define ISS_HL_SYSCONFIG_IDLEMODE_NOIDLE		0x1
>  #define ISS_HL_SYSCONFIG_IDLEMODE_SMARTIDLE		0x2
> -#define ISS_HL_SYSCONFIG_SOFTRESET			(1 << 0)
> +#define ISS_HL_SYSCONFIG_SOFTRESET			BIT(0)
>
>  #define ISS_HL_IRQSTATUS_RAW(i)				(0x20 + (0x10 * (i)))
>  #define ISS_HL_IRQSTATUS(i)				(0x24 + (0x10 * (i)))
>  #define ISS_HL_IRQENABLE_SET(i)				(0x28 + (0x10 * (i)))
>  #define ISS_HL_IRQENABLE_CLR(i)				(0x2c + (0x10 * (i)))
>
> -#define ISS_HL_IRQ_HS_VS				(1 << 17)
> -#define ISS_HL_IRQ_SIMCOP(i)				(1 << (12 + (i)))
> -#define ISS_HL_IRQ_BTE					(1 << 11)
> -#define ISS_HL_IRQ_CBUFF				(1 << 10)
> -#define ISS_HL_IRQ_CCP2(i)				(1 << ((i) > 3 ? 16 : 14 + (i)))
> -#define ISS_HL_IRQ_CSIB					(1 << 5)
> -#define ISS_HL_IRQ_CSIA					(1 << 4)
> -#define ISS_HL_IRQ_ISP(i)				(1 << (i))
> +#define ISS_HL_IRQ_HS_VS			BIT(17)
> +#define ISS_HL_IRQ_SIMCOP(i)			BIT(12 + (i))
> +#define ISS_HL_IRQ_BTE				BIT(11)
> +#define ISS_HL_IRQ_CBUFF			BIT(10)
> +#define ISS_HL_IRQ_CCP2(i)			BIT((i) > 3 ? 16 : 14 + (i))
> +#define ISS_HL_IRQ_CSIB				BIT(5)
> +#define ISS_HL_IRQ_CSIA				BIT(4)
> +#define ISS_HL_IRQ_ISP(i)			BIT(i)
>
>  #define ISS_CTRL					0x80
>  #define ISS_CTRL_CLK_DIV_MASK				(3 << 4)
> @@ -46,24 +46,24 @@
>  #define ISS_CTRL_SYNC_DETECT_VS_RAISING			(3 << 0)
>
>  #define ISS_CLKCTRL					0x84
> -#define ISS_CLKCTRL_VPORT2_CLK				(1 << 30)
> -#define ISS_CLKCTRL_VPORT1_CLK				(1 << 29)
> -#define ISS_CLKCTRL_VPORT0_CLK				(1 << 28)
> -#define ISS_CLKCTRL_CCP2				(1 << 4)
> -#define ISS_CLKCTRL_CSI2_B				(1 << 3)
> -#define ISS_CLKCTRL_CSI2_A				(1 << 2)
> -#define ISS_CLKCTRL_ISP					(1 << 1)
> -#define ISS_CLKCTRL_SIMCOP				(1 << 0)
> +#define ISS_CLKCTRL_VPORT2_CLK				BIT(30)
> +#define ISS_CLKCTRL_VPORT1_CLK				BIT(29)
> +#define ISS_CLKCTRL_VPORT0_CLK				BIT(28)
> +#define ISS_CLKCTRL_CCP2				BIT(4)
> +#define ISS_CLKCTRL_CSI2_B				BIT(3)
> +#define ISS_CLKCTRL_CSI2_A				BIT(2)
> +#define ISS_CLKCTRL_ISP					BIT(1)
> +#define ISS_CLKCTRL_SIMCOP				BIT(0)
>
>  #define ISS_CLKSTAT					0x88
> -#define ISS_CLKSTAT_VPORT2_CLK				(1 << 30)
> -#define ISS_CLKSTAT_VPORT1_CLK				(1 << 29)
> -#define ISS_CLKSTAT_VPORT0_CLK				(1 << 28)
> -#define ISS_CLKSTAT_CCP2				(1 << 4)
> -#define ISS_CLKSTAT_CSI2_B				(1 << 3)
> -#define ISS_CLKSTAT_CSI2_A				(1 << 2)
> -#define ISS_CLKSTAT_ISP					(1 << 1)
> -#define ISS_CLKSTAT_SIMCOP				(1 << 0)
> +#define ISS_CLKSTAT_VPORT2_CLK				BIT(30)
> +#define ISS_CLKSTAT_VPORT1_CLK				BIT(29)
> +#define ISS_CLKSTAT_VPORT0_CLK				BIT(28)
> +#define ISS_CLKSTAT_CCP2				BIT(4)
> +#define ISS_CLKSTAT_CSI2_B				BIT(3)
> +#define ISS_CLKSTAT_CSI2_A				BIT(2)
> +#define ISS_CLKSTAT_ISP					BIT(1)
> +#define ISS_CLKSTAT_SIMCOP				BIT(0)
>
>  #define ISS_PM_STATUS					0x8c
>  #define ISS_PM_STATUS_CBUFF_PM_MASK			(3 << 12)
> @@ -75,15 +75,15 @@
>  #define ISS_PM_STATUS_CSI2_A_PM_MASK			(3 << 0)
>
>  #define REGISTER0					0x0
> -#define REGISTER0_HSCLOCKCONFIG				(1 << 24)
> +#define REGISTER0_HSCLOCKCONFIG				BIT(24)
>  #define REGISTER0_THS_TERM_MASK				(0xff << 8)
>  #define REGISTER0_THS_TERM_SHIFT			8
>  #define REGISTER0_THS_SETTLE_MASK			(0xff << 0)
>  #define REGISTER0_THS_SETTLE_SHIFT			0
>
>  #define REGISTER1					0x4
> -#define REGISTER1_RESET_DONE_CTRLCLK			(1 << 29)
> -#define REGISTER1_CLOCK_MISS_DETECTOR_STATUS		(1 << 25)
> +#define REGISTER1_RESET_DONE_CTRLCLK			BIT(29)
> +#define REGISTER1_CLOCK_MISS_DETECTOR_STATUS		BIT(25)
>  #define REGISTER1_TCLK_TERM_MASK			(0x3f << 18)
>  #define REGISTER1_TCLK_TERM_SHIFT			18
>  #define REGISTER1_DPHY_HS_SYNC_PATTERN_SHIFT		10
> @@ -103,20 +103,20 @@
>  #define CSI2_SYSCONFIG_AUTO_IDLE			(1 << 0)
>
>  #define CSI2_SYSSTATUS					0x14
> -#define CSI2_SYSSTATUS_RESET_DONE			(1 << 0)
> +#define CSI2_SYSSTATUS_RESET_DONE			BIT(0)
>
>  #define CSI2_IRQSTATUS					0x18
>  #define CSI2_IRQENABLE					0x1c
>
>  /* Shared bits across CSI2_IRQENABLE and IRQSTATUS */
>
> -#define CSI2_IRQ_OCP_ERR				(1 << 14)
> -#define CSI2_IRQ_SHORT_PACKET				(1 << 13)
> -#define CSI2_IRQ_ECC_CORRECTION				(1 << 12)
> -#define CSI2_IRQ_ECC_NO_CORRECTION			(1 << 11)
> -#define CSI2_IRQ_COMPLEXIO_ERR				(1 << 9)
> -#define CSI2_IRQ_FIFO_OVF				(1 << 8)
> -#define CSI2_IRQ_CONTEXT0				(1 << 0)
> +#define CSI2_IRQ_OCP_ERR				BIT(14)
> +#define CSI2_IRQ_SHORT_PACKET				BIT(13)
> +#define CSI2_IRQ_ECC_CORRECTION				BIT(12)
> +#define CSI2_IRQ_ECC_NO_CORRECTION			BIT(11)
> +#define CSI2_IRQ_COMPLEXIO_ERR				BIT(9)
> +#define CSI2_IRQ_FIFO_OVF				BIT(8)
> +#define CSI2_IRQ_CONTEXT0				BIT(0)
>
>  #define CSI2_CTRL					0x40
>  #define CSI2_CTRL_MFLAG_LEVH_MASK			(7 << 20)
> @@ -164,55 +164,55 @@
>  #define CSI2_COMPLEXIO_IRQENABLE			0x60
>
>  /* Shared bits across CSI2_COMPLEXIO_IRQENABLE and IRQSTATUS */
> -#define CSI2_COMPLEXIO_IRQ_STATEALLULPMEXIT		(1 << 26)
> -#define CSI2_COMPLEXIO_IRQ_STATEALLULPMENTER		(1 << 25)
> -#define CSI2_COMPLEXIO_IRQ_STATEULPM5			(1 << 24)
> -#define CSI2_COMPLEXIO_IRQ_STATEULPM4			(1 << 23)
> -#define CSI2_COMPLEXIO_IRQ_STATEULPM3			(1 << 22)
> -#define CSI2_COMPLEXIO_IRQ_STATEULPM2			(1 << 21)
> -#define CSI2_COMPLEXIO_IRQ_STATEULPM1			(1 << 20)
> -#define CSI2_COMPLEXIO_IRQ_ERRCONTROL5			(1 << 19)
> -#define CSI2_COMPLEXIO_IRQ_ERRCONTROL4			(1 << 18)
> -#define CSI2_COMPLEXIO_IRQ_ERRCONTROL3			(1 << 17)
> -#define CSI2_COMPLEXIO_IRQ_ERRCONTROL2			(1 << 16)
> -#define CSI2_COMPLEXIO_IRQ_ERRCONTROL1			(1 << 15)
> -#define CSI2_COMPLEXIO_IRQ_ERRESC5			(1 << 14)
> -#define CSI2_COMPLEXIO_IRQ_ERRESC4			(1 << 13)
> -#define CSI2_COMPLEXIO_IRQ_ERRESC3			(1 << 12)
> -#define CSI2_COMPLEXIO_IRQ_ERRESC2			(1 << 11)
> -#define CSI2_COMPLEXIO_IRQ_ERRESC1			(1 << 10)
> -#define CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS5		(1 << 9)
> -#define CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS4		(1 << 8)
> -#define CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS3		(1 << 7)
> -#define CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS2		(1 << 6)
> -#define CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS1		(1 << 5)
> -#define CSI2_COMPLEXIO_IRQ_ERRSOTHS5			(1 << 4)
> -#define CSI2_COMPLEXIO_IRQ_ERRSOTHS4			(1 << 3)
> -#define CSI2_COMPLEXIO_IRQ_ERRSOTHS3			(1 << 2)
> -#define CSI2_COMPLEXIO_IRQ_ERRSOTHS2			(1 << 1)
> -#define CSI2_COMPLEXIO_IRQ_ERRSOTHS1			(1 << 0)
> +#define CSI2_COMPLEXIO_IRQ_STATEALLULPMEXIT		BIT(26)
> +#define CSI2_COMPLEXIO_IRQ_STATEALLULPMENTER		BIT(25)
> +#define CSI2_COMPLEXIO_IRQ_STATEULPM5			BIT(24)
> +#define CSI2_COMPLEXIO_IRQ_STATEULPM4			BIT(23)
> +#define CSI2_COMPLEXIO_IRQ_STATEULPM3			BIT(22)
> +#define CSI2_COMPLEXIO_IRQ_STATEULPM2			BIT(21)
> +#define CSI2_COMPLEXIO_IRQ_STATEULPM1			BIT(20)
> +#define CSI2_COMPLEXIO_IRQ_ERRCONTROL5			BIT(19)
> +#define CSI2_COMPLEXIO_IRQ_ERRCONTROL4			BIT(18)
> +#define CSI2_COMPLEXIO_IRQ_ERRCONTROL3			BIT(17)
> +#define CSI2_COMPLEXIO_IRQ_ERRCONTROL2			BIT(16)
> +#define CSI2_COMPLEXIO_IRQ_ERRCONTROL1			BIT(15)
> +#define CSI2_COMPLEXIO_IRQ_ERRESC5			BIT(14)
> +#define CSI2_COMPLEXIO_IRQ_ERRESC4			BIT(13)
> +#define CSI2_COMPLEXIO_IRQ_ERRESC3			BIT(12)
> +#define CSI2_COMPLEXIO_IRQ_ERRESC2			BIT(11)
> +#define CSI2_COMPLEXIO_IRQ_ERRESC1			BIT(10)
> +#define CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS5		BIT(9)
> +#define CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS4		BIT(8)
> +#define CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS3		BIT(7)
> +#define CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS2		BIT(6)
> +#define CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS1		BIT(5)
> +#define CSI2_COMPLEXIO_IRQ_ERRSOTHS5			BIT(4)
> +#define CSI2_COMPLEXIO_IRQ_ERRSOTHS4			BIT(3)
> +#define CSI2_COMPLEXIO_IRQ_ERRSOTHS3			BIT(2)
> +#define CSI2_COMPLEXIO_IRQ_ERRSOTHS2			BIT(1)
> +#define CSI2_COMPLEXIO_IRQ_ERRSOTHS1			BIT(0)
>
>  #define CSI2_DBG_P					0x68
>
>  #define CSI2_TIMING					0x6c
> -#define CSI2_TIMING_FORCE_RX_MODE_IO1			(1 << 15)
> -#define CSI2_TIMING_STOP_STATE_X16_IO1			(1 << 14)
> -#define CSI2_TIMING_STOP_STATE_X4_IO1			(1 << 13)
> +#define CSI2_TIMING_FORCE_RX_MODE_IO1			BIT(15)
> +#define CSI2_TIMING_STOP_STATE_X16_IO1			BIT(14)
> +#define CSI2_TIMING_STOP_STATE_X4_IO1			BIT(13)
>  #define CSI2_TIMING_STOP_STATE_COUNTER_IO1_MASK		(0x1fff << 0)
>  #define CSI2_TIMING_STOP_STATE_COUNTER_IO1_SHIFT	0
>
>  #define CSI2_CTX_CTRL1(i)				(0x70 + (0x20 * i))
> -#define CSI2_CTX_CTRL1_GENERIC				(1 << 30)
> +#define CSI2_CTX_CTRL1_GENERIC				BIT(30)
>  #define CSI2_CTX_CTRL1_TRANSCODE			(0xf << 24)
>  #define CSI2_CTX_CTRL1_FEC_NUMBER_MASK			(0xff << 16)
>  #define CSI2_CTX_CTRL1_COUNT_MASK			(0xff << 8)
>  #define CSI2_CTX_CTRL1_COUNT_SHIFT			8
> -#define CSI2_CTX_CTRL1_EOF_EN				(1 << 7)
> -#define CSI2_CTX_CTRL1_EOL_EN				(1 << 6)
> -#define CSI2_CTX_CTRL1_CS_EN				(1 << 5)
> -#define CSI2_CTX_CTRL1_COUNT_UNLOCK			(1 << 4)
> -#define CSI2_CTX_CTRL1_PING_PONG			(1 << 3)
> -#define CSI2_CTX_CTRL1_CTX_EN				(1 << 0)
> +#define CSI2_CTX_CTRL1_EOF_EN				BIT(7)
> +#define CSI2_CTX_CTRL1_EOL_EN				BIT(6)
> +#define CSI2_CTX_CTRL1_CS_EN				BIT(5)
> +#define CSI2_CTX_CTRL1_COUNT_UNLOCK			BIT(4)
> +#define CSI2_CTX_CTRL1_PING_PONG			BIT(3)
> +#define CSI2_CTX_CTRL1_CTX_EN				BIT(0)
>
>  #define CSI2_CTX_CTRL2(i)				(0x74 + (0x20 * i))
>  #define CSI2_CTX_CTRL2_FRAME_MASK			(0xffff << 16)
> @@ -244,14 +244,14 @@
>  		(0x3fff << CSI2_CTX_CTRL3_ALPHA_SHIFT)
>
>  /* Shared bits across CSI2_CTX_IRQENABLE and IRQSTATUS */
> -#define CSI2_CTX_IRQ_ECC_CORRECTION			(1 << 8)
> -#define CSI2_CTX_IRQ_LINE_NUMBER			(1 << 7)
> -#define CSI2_CTX_IRQ_FRAME_NUMBER			(1 << 6)
> -#define CSI2_CTX_IRQ_CS					(1 << 5)
> -#define CSI2_CTX_IRQ_LE					(1 << 3)
> -#define CSI2_CTX_IRQ_LS					(1 << 2)
> -#define CSI2_CTX_IRQ_FE					(1 << 1)
> -#define CSI2_CTX_IRQ_FS					(1 << 0)
> +#define CSI2_CTX_IRQ_ECC_CORRECTION			BIT(8)
> +#define CSI2_CTX_IRQ_LINE_NUMBER			BIT(7)
> +#define CSI2_CTX_IRQ_FRAME_NUMBER			BIT(6)
> +#define CSI2_CTX_IRQ_CS					BIT(5)
> +#define CSI2_CTX_IRQ_LE					BIT(3)
> +#define CSI2_CTX_IRQ_LS					BIT(2)
> +#define CSI2_CTX_IRQ_FE					BIT(1)
> +#define CSI2_CTX_IRQ_FS					BIT(0)
>
>  /* ISS BTE */
>  #define BTE_CTRL					(0x0030)
> @@ -272,49 +272,49 @@
>  #define ISP5_IRQENABLE_CLR(i)				(0x0030 + (0x10 * (i)))
>
>  /* Bits shared for ISP5_IRQ* registers */
> -#define ISP5_IRQ_OCP_ERR				(1 << 31)
> -#define ISP5_IRQ_IPIPE_INT_DPC_RNEW1			(1 << 29)
> -#define ISP5_IRQ_IPIPE_INT_DPC_RNEW0			(1 << 28)
> -#define ISP5_IRQ_IPIPE_INT_DPC_INIT			(1 << 27)
> -#define ISP5_IRQ_IPIPE_INT_EOF				(1 << 25)
> -#define ISP5_IRQ_H3A_INT_EOF				(1 << 24)
> -#define ISP5_IRQ_RSZ_INT_EOF1				(1 << 23)
> -#define ISP5_IRQ_RSZ_INT_EOF0				(1 << 22)
> -#define ISP5_IRQ_RSZ_FIFO_IN_BLK_ERR			(1 << 19)
> -#define ISP5_IRQ_RSZ_FIFO_OVF				(1 << 18)
> -#define ISP5_IRQ_RSZ_INT_CYC_RSZB			(1 << 17)
> -#define ISP5_IRQ_RSZ_INT_CYC_RSZA			(1 << 16)
> -#define ISP5_IRQ_RSZ_INT_DMA				(1 << 15)
> -#define ISP5_IRQ_RSZ_INT_LAST_PIX			(1 << 14)
> -#define ISP5_IRQ_RSZ_INT_REG				(1 << 13)
> -#define ISP5_IRQ_H3A_INT				(1 << 12)
> -#define ISP5_IRQ_AF_INT					(1 << 11)
> -#define ISP5_IRQ_AEW_INT				(1 << 10)
> -#define ISP5_IRQ_IPIPEIF_IRQ				(1 << 9)
> -#define ISP5_IRQ_IPIPE_INT_HST				(1 << 8)
> -#define ISP5_IRQ_IPIPE_INT_BSC				(1 << 7)
> -#define ISP5_IRQ_IPIPE_INT_DMA				(1 << 6)
> -#define ISP5_IRQ_IPIPE_INT_LAST_PIX			(1 << 5)
> -#define ISP5_IRQ_IPIPE_INT_REG				(1 << 4)
> -#define ISP5_IRQ_ISIF_INT(i)				(1 << (i))
> +#define ISP5_IRQ_OCP_ERR				BIT(31)
> +#define ISP5_IRQ_IPIPE_INT_DPC_RNEW1			BIT(29)
> +#define ISP5_IRQ_IPIPE_INT_DPC_RNEW0			BIT(28)
> +#define ISP5_IRQ_IPIPE_INT_DPC_INIT			BIT(27)
> +#define ISP5_IRQ_IPIPE_INT_EOF				BIT(25)
> +#define ISP5_IRQ_H3A_INT_EOF				BIT(24)
> +#define ISP5_IRQ_RSZ_INT_EOF1				BIT(23)
> +#define ISP5_IRQ_RSZ_INT_EOF0				BIT(22)
> +#define ISP5_IRQ_RSZ_FIFO_IN_BLK_ERR			BIT(19)
> +#define ISP5_IRQ_RSZ_FIFO_OVF				BIT(18)
> +#define ISP5_IRQ_RSZ_INT_CYC_RSZB			BIT(17)
> +#define ISP5_IRQ_RSZ_INT_CYC_RSZA			BIT(16)
> +#define ISP5_IRQ_RSZ_INT_DMA				BIT(15)
> +#define ISP5_IRQ_RSZ_INT_LAST_PIX			BIT(14)
> +#define ISP5_IRQ_RSZ_INT_REG				BIT(13)
> +#define ISP5_IRQ_H3A_INT				BIT(12)
> +#define ISP5_IRQ_AF_INT					BIT(11)
> +#define ISP5_IRQ_AEW_INT				BIT(10)
> +#define ISP5_IRQ_IPIPEIF_IRQ				BIT(9)
> +#define ISP5_IRQ_IPIPE_INT_HST				BIT(8)
> +#define ISP5_IRQ_IPIPE_INT_BSC				BIT(7)
> +#define ISP5_IRQ_IPIPE_INT_DMA				BIT(6)
> +#define ISP5_IRQ_IPIPE_INT_LAST_PIX			BIT(5)
> +#define ISP5_IRQ_IPIPE_INT_REG				BIT(4)
> +#define ISP5_IRQ_ISIF_INT(i)				BIT(i)
>
>  #define ISP5_CTRL					(0x006c)
> -#define ISP5_CTRL_MSTANDBY				(1 << 24)
> -#define ISP5_CTRL_VD_PULSE_EXT				(1 << 23)
> -#define ISP5_CTRL_MSTANDBY_WAIT				(1 << 20)
> -#define ISP5_CTRL_BL_CLK_ENABLE				(1 << 15)
> -#define ISP5_CTRL_ISIF_CLK_ENABLE			(1 << 14)
> -#define ISP5_CTRL_H3A_CLK_ENABLE			(1 << 13)
> -#define ISP5_CTRL_RSZ_CLK_ENABLE			(1 << 12)
> -#define ISP5_CTRL_IPIPE_CLK_ENABLE			(1 << 11)
> -#define ISP5_CTRL_IPIPEIF_CLK_ENABLE			(1 << 10)
> -#define ISP5_CTRL_SYNC_ENABLE				(1 << 9)
> -#define ISP5_CTRL_PSYNC_CLK_SEL				(1 << 8)
> +#define ISP5_CTRL_MSTANDBY				BIT(24)
> +#define ISP5_CTRL_VD_PULSE_EXT				BIT(23)
> +#define ISP5_CTRL_MSTANDBY_WAIT				BIT(20)
> +#define ISP5_CTRL_BL_CLK_ENABLE				BIT(15)
> +#define ISP5_CTRL_ISIF_CLK_ENABLE			BIT(14)
> +#define ISP5_CTRL_H3A_CLK_ENABLE			BIT(13)
> +#define ISP5_CTRL_RSZ_CLK_ENABLE			BIT(12)
> +#define ISP5_CTRL_IPIPE_CLK_ENABLE			BIT(11)
> +#define ISP5_CTRL_IPIPEIF_CLK_ENABLE			BIT(10)
> +#define ISP5_CTRL_SYNC_ENABLE				BIT(9)
> +#define ISP5_CTRL_PSYNC_CLK_SEL				BIT(8)
>
>  /* ISS ISP ISIF register offsets */
>  #define ISIF_SYNCEN					(0x0000)
> -#define ISIF_SYNCEN_DWEN				(1 << 1)
> -#define ISIF_SYNCEN_SYEN				(1 << 0)
> +#define ISIF_SYNCEN_DWEN				BIT(1)
> +#define ISIF_SYNCEN_SYEN				BIT(0)
>
>  #define ISIF_MODESET					(0x0004)
>  #define ISIF_MODESET_INPMOD_MASK			(3 << 12)
> @@ -338,7 +338,7 @@
>  #define ISIF_LNV_MASK					(0x7fff)
>
>  #define ISIF_HSIZE					(0x0034)
> -#define ISIF_HSIZE_ADCR					(1 << 12)
> +#define ISIF_HSIZE_ADCR					BIT(12)
>  #define ISIF_HSIZE_HSIZE_MASK				(0xfff)
>
>  #define ISIF_CADU					(0x003c)
> @@ -373,7 +373,7 @@
>  #define ISIF_CGAMMAWD_GWDI(bpp)				((16 - (bpp)) << 1)
>
>  #define ISIF_CCDCFG					(0x0088)
> -#define ISIF_CCDCFG_Y8POS				(1 << 11)
> +#define ISIF_CCDCFG_Y8POS				BIT(11)
>
>  /* ISS ISP IPIPEIF register offsets */
>  #define IPIPEIF_ENABLE					(0x0000)
> @@ -391,22 +391,22 @@
>  #define IPIPEIF_CFG1_INPSRC2_SDRAM_YUV			(3 << 2)
>
>  #define IPIPEIF_CFG2					(0x0030)
> -#define IPIPEIF_CFG2_YUV8P				(1 << 7)
> -#define IPIPEIF_CFG2_YUV8				(1 << 6)
> -#define IPIPEIF_CFG2_YUV16				(1 << 3)
> -#define IPIPEIF_CFG2_VDPOL				(1 << 2)
> -#define IPIPEIF_CFG2_HDPOL				(1 << 1)
> -#define IPIPEIF_CFG2_INTSW				(1 << 0)
> +#define IPIPEIF_CFG2_YUV8P				BIT(7)
> +#define IPIPEIF_CFG2_YUV8				BIT(6)
> +#define IPIPEIF_CFG2_YUV16				BIT(3)
> +#define IPIPEIF_CFG2_VDPOL				BIT(2)
> +#define IPIPEIF_CFG2_HDPOL				BIT(1)
> +#define IPIPEIF_CFG2_INTSW				BIT(0)
>
>  #define IPIPEIF_CLKDIV					(0x0040)
>
>  /* ISS ISP IPIPE register offsets */
>  #define IPIPE_SRC_EN					(0x0000)
> -#define IPIPE_SRC_EN_EN					(1 << 0)
> +#define IPIPE_SRC_EN_EN					BIT(0)
>
>  #define IPIPE_SRC_MODE					(0x0004)
> -#define IPIPE_SRC_MODE_WRT				(1 << 1)
> -#define IPIPE_SRC_MODE_OST				(1 << 0)
> +#define IPIPE_SRC_MODE_WRT				BIT(1)
> +#define IPIPE_SRC_MODE_OST				BIT(0)
>
>  #define IPIPE_SRC_FMT					(0x0008)
>  #define IPIPE_SRC_FMT_RAW2YUV				(0 << 0)
> @@ -449,13 +449,13 @@
>  #define IPIPE_SRC_STA					(0x0024)
>
>  #define IPIPE_GCK_MMR					(0x0028)
> -#define IPIPE_GCK_MMR_REG				(1 << 0)
> +#define IPIPE_GCK_MMR_REG				BIT(0)
>
>  #define IPIPE_GCK_PIX					(0x002c)
> -#define IPIPE_GCK_PIX_G3				(1 << 3)
> -#define IPIPE_GCK_PIX_G2				(1 << 2)
> -#define IPIPE_GCK_PIX_G1				(1 << 1)
> -#define IPIPE_GCK_PIX_G0				(1 << 0)
> +#define IPIPE_GCK_PIX_G3				BIT(3)
> +#define IPIPE_GCK_PIX_G2				BIT(2)
> +#define IPIPE_GCK_PIX_G1				BIT(1)
> +#define IPIPE_GCK_PIX_G0				BIT(0)
>
>  #define IPIPE_DPC_LUT_EN				(0x0034)
>  #define IPIPE_DPC_LUT_SEL				(0x0038)
> @@ -633,8 +633,8 @@
>  #define IPIPE_YUV_OFT_CR				(0x02c4)
>
>  #define IPIPE_YUV_PHS					(0x02c8)
> -#define IPIPE_YUV_PHS_LPF				(1 << 1)
> -#define IPIPE_YUV_PHS_POS				(1 << 0)
> +#define IPIPE_YUV_PHS_LPF				BIT(1)
> +#define IPIPE_YUV_PHS_POS				BIT(0)
>
>  #define IPIPE_YEE_EN					(0x02d4)
>  #define IPIPE_YEE_TYP					(0x02d8)
> @@ -739,8 +739,8 @@
>  /* ISS ISP Resizer register offsets */
>  #define RSZ_REVISION					(0x0000)
>  #define RSZ_SYSCONFIG					(0x0004)
> -#define RSZ_SYSCONFIG_RSZB_CLK_EN			(1 << 9)
> -#define RSZ_SYSCONFIG_RSZA_CLK_EN			(1 << 8)
> +#define RSZ_SYSCONFIG_RSZB_CLK_EN			BIT(9)
> +#define RSZ_SYSCONFIG_RSZA_CLK_EN			BIT(8)
>
>  #define RSZ_IN_FIFO_CTRL				(0x000c)
>  #define RSZ_IN_FIFO_CTRL_THRLD_LOW_MASK			(0x1ff << 16)
> @@ -752,18 +752,18 @@
>  #define RSZ_FRACDIV_MASK				(0xffff)
>
>  #define RSZ_SRC_EN					(0x0020)
> -#define RSZ_SRC_EN_SRC_EN				(1 << 0)
> +#define RSZ_SRC_EN_SRC_EN				BIT(0)
>
>  #define RSZ_SRC_MODE					(0x0024)
> -#define RSZ_SRC_MODE_OST				(1 << 0)
> -#define RSZ_SRC_MODE_WRT				(1 << 1)
> +#define RSZ_SRC_MODE_OST				BIT(0)
> +#define RSZ_SRC_MODE_WRT				BIT(1)
>
>  #define RSZ_SRC_FMT0					(0x0028)
> -#define RSZ_SRC_FMT0_BYPASS				(1 << 1)
> -#define RSZ_SRC_FMT0_SEL				(1 << 0)
> +#define RSZ_SRC_FMT0_BYPASS				BIT(1)
> +#define RSZ_SRC_FMT0_SEL				BIT(0)
>
>  #define RSZ_SRC_FMT1					(0x002c)
> -#define RSZ_SRC_FMT1_IN420				(1 << 1)
> +#define RSZ_SRC_FMT1_IN420				BIT(1)
>
>  #define RSZ_SRC_VPS					(0x0030)
>  #define RSZ_SRC_VSZ					(0x0034)
> @@ -773,10 +773,10 @@
>  #define RSZ_DMA_RZB					(0x0044)
>  #define RSZ_DMA_STA					(0x0048)
>  #define RSZ_GCK_MMR					(0x004c)
> -#define RSZ_GCK_MMR_MMR					(1 << 0)
> +#define RSZ_GCK_MMR_MMR					BIT(0)
>
>  #define RSZ_GCK_SDR					(0x0054)
> -#define RSZ_GCK_SDR_CORE				(1 << 0)
> +#define RSZ_GCK_SDR_CORE				BIT(0)
>
>  #define RSZ_IRQ_RZA					(0x0058)
>  #define RSZ_IRQ_RZA_MASK				(0x1fff)
> @@ -790,12 +790,12 @@
>  #define RSZ_YUV_C_MAX					(0x006c)
>
>  #define RSZ_SEQ						(0x0074)
> -#define RSZ_SEQ_HRVB					(1 << 2)
> -#define RSZ_SEQ_HRVA					(1 << 0)
> +#define RSZ_SEQ_HRVB					BIT(2)
> +#define RSZ_SEQ_HRVA					BIT(0)
>
>  #define RZA_EN						(0x0078)
>  #define RZA_MODE					(0x007c)
> -#define RZA_MODE_ONE_SHOT				(1 << 0)
> +#define RZA_MODE_ONE_SHOT				BIT(0)
>
>  #define RZA_420						(0x0080)
>  #define RZA_I_VPS					(0x0084)
> @@ -859,10 +859,10 @@
>  #define RZB_SDR_C_PTR_E					(0x0194)
>
>  /* Shared Bitmasks between RZA & RZB */
> -#define RSZ_EN_EN					(1 << 0)
> +#define RSZ_EN_EN					BIT(0)
>
> -#define RSZ_420_CEN					(1 << 1)
> -#define RSZ_420_YEN					(1 << 0)
> +#define RSZ_420_CEN					BIT(1)
> +#define RSZ_420_YEN					BIT(0)
>
>  #define RSZ_I_VPS_MASK					(0x1fff)
>
> @@ -878,8 +878,8 @@
>
>  #define RSZ_V_DIF_MASK					(0x3fff)
>
> -#define RSZ_V_TYP_C					(1 << 1)
> -#define RSZ_V_TYP_Y					(1 << 0)
> +#define RSZ_V_TYP_C					BIT(1)
> +#define RSZ_V_TYP_Y					BIT(0)
>
>  #define RSZ_V_LPF_C_MASK				(0x3f << 6)
>  #define RSZ_V_LPF_C_SHIFT				6
> @@ -890,14 +890,14 @@
>
>  #define RSZ_H_DIF_MASK					(0x3fff)
>
> -#define RSZ_H_TYP_C					(1 << 1)
> -#define RSZ_H_TYP_Y					(1 << 0)
> +#define RSZ_H_TYP_C					BIT(1)
> +#define RSZ_H_TYP_Y					BIT(0)
>
>  #define RSZ_H_LPF_C_MASK				(0x3f << 6)
>  #define RSZ_H_LPF_C_SHIFT				6
>  #define RSZ_H_LPF_Y_MASK				(0x3f << 0)
>  #define RSZ_H_LPF_Y_SHIFT				0
>
> -#define RSZ_DWN_EN_DWN_EN				(1 << 0)
> +#define RSZ_DWN_EN_DWN_EN				BIT(0)
>
>  #endif /* _OMAP4_ISS_REGS_H_ */
> diff --git a/drivers/staging/media/omap4iss/iss_resizer.h b/drivers/staging/media/omap4iss/iss_resizer.h
> index 3727498..d2a4968 100644
> --- a/drivers/staging/media/omap4iss/iss_resizer.h
> +++ b/drivers/staging/media/omap4iss/iss_resizer.h
> @@ -22,7 +22,7 @@ enum resizer_input_entity {
>  	RESIZER_INPUT_IPIPEIF
>  };
>
> -#define RESIZER_OUTPUT_MEMORY		(1 << 0)
> +#define RESIZER_OUTPUT_MEMORY			BIT(0)
>
>  /* Sink and source RESIZER pads */
>  #define RESIZER_PAD_SINK			0
> --
> 1.7.9.5
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3c4b9cd96e78d3d0d114b697f154f291631fc60f.1445864494.git.amarjargal.gundjalam%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

