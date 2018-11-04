X-GM-THRID: 6619832364297093120
X-Received: by 2002:a2e:3910:: with SMTP id g16-v6mr1525692lja.13.1541313114682;
        Sat, 03 Nov 2018 23:31:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9813:: with SMTP id a19-v6ls279153ljj.7.gmail; Sat, 03
 Nov 2018 23:31:53 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cFvIrBvMywWIVE/ZxYGButTqy9xk+S84bEq1OxYg4VoDo0QkhrJWdjdu88fSDoGJVfzBg+
X-Received: by 2002:a2e:9119:: with SMTP id m25-v6mr108422ljg.22.1541313113680;
        Sat, 03 Nov 2018 23:31:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541313113; cv=none;
        d=google.com; s=arc-20160816;
        b=WK+61fAbrumR2bRR94CqoGv/Wkbe9LFTkcrkmgENBmG10bXjI0jG0zcou4MFPLJvZY
         3xPWdxiXnr5M3upJr4Du9kR+Yk0ywPDLETtUqVIu5DIEsD76FRilTkjI0uye7ypOdVO9
         OJfNonBLQcus/tQ+TxKY895jwzMsTtsuH4PIAhpxkO5F1JEv2bqT709GEhTzlsjjgTvg
         sDK27ZtrSaKoOzj472r7aG2sXpvJQe+tOR8yDuXjjaZ+t8ucZQ7i/r+Sc9nrADID4Ddl
         Q6I2BbS/NUNJVO5T/AoN0gLTvM5PJfXhinVWMsPr440pqlpeKUcOCYdsmHO/yKasUXOb
         I5fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=snNbYwXAu5HQFfj3T5224IjBAx4Rxf7Cv7iTHs8os5E=;
        b=0PwOJznBRb3nb/ZdB3Tecj4tKH/jcFlbb0ulTMiLsMFCmP5yiMnqj4WS6myWROKw2P
         b0uVTnFITXCCUcZm8W+zrZXp83ihlhnYFpg4iXtokGqKIM6kupa1jsMAekisb3kLkWoY
         Ax6nFiW5+PRPRffFUCGxl7OSnEgPBwDllPLNK7RpQMKaFQPjJz4ch5V5snJ8j74uQQqs
         xUEV9hHKNdcxOVjdEw/x1twzO2SuRgft1vAWvzBnsN7kXqhxsn7AeEDA6Pu236jb+Z12
         vM6QQye4oehcTU2ssg1i5Vawh8RGPVShfLwbt3/FPpJaPuHpyV7tApHjiF9YfQcRv0ZG
         XhTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t5-v6si94507lje.3.2018.11.03.23.31.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 23:31:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,463,1534802400"; 
   d="scan'208";a="284263847"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Nov 2018 07:31:52 +0100
Date: Sun, 4 Nov 2018 07:31:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: zoran: replace masking with
 BIT macro
In-Reply-To: <20181104025024.GA25231@kvasir.local>
Message-ID: <alpine.DEB.2.21.1811040729470.2448@hadrien>
References: <20181104025024.GA25231@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Nov 2018, Ioannis Valasakis wrote:

> Replace bit masking with the more preferable BIT macro.

The BIT macro has its own parentheses, so there don't need to be
parentheses around the call.  On the other hand, this driver is in staging
pending removal, so perhaps it is not worth working on it.

julia

> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/media/zoran/zoran.h   |  8 +--
>  drivers/staging/media/zoran/zr36057.h | 92 +++++++++++++--------------
>  drivers/staging/media/zoran/zr36060.h | 86 ++++++++++++-------------
>  3 files changed, 93 insertions(+), 93 deletions(-)
>
> diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
> index 9bb3c21aa275..03384c94b322 100644
> --- a/drivers/staging/media/zoran/zoran.h
> +++ b/drivers/staging/media/zoran/zoran.h
> @@ -142,10 +142,10 @@ struct zoran_format {
>  	__u32 vfespfr;
>  };
>  /* flags */
> -#define ZORAN_FORMAT_COMPRESSED 1<<0
> -#define ZORAN_FORMAT_OVERLAY    1<<1
> -#define ZORAN_FORMAT_CAPTURE	1<<2
> -#define ZORAN_FORMAT_PLAYBACK	1<<3
> +#define ZORAN_FORMAT_COMPRESSED BIT(0)
> +#define ZORAN_FORMAT_OVERLAY    BIT(1)
> +#define ZORAN_FORMAT_CAPTURE	BIT(2)
> +#define ZORAN_FORMAT_PLAYBACK	BIT(3)
>
>  /* overlay-settings */
>  struct zoran_overlay_settings {
> diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
> index c8acb21dcb5c..1b72ae6555ff 100644
> --- a/drivers/staging/media/zoran/zr36057.h
> +++ b/drivers/staging/media/zoran/zr36057.h
> @@ -21,32 +21,32 @@
>  /* Zoran ZR36057 registers */
>
>  #define ZR36057_VFEHCR          0x000	/* Video Front End, Horizontal Configuration Register */
> -#define ZR36057_VFEHCR_HSPol            (1<<30)
> +#define ZR36057_VFEHCR_HSPol            (BIT(30))
>  #define ZR36057_VFEHCR_HStart           10
>  #define ZR36057_VFEHCR_HEnd		0
>  #define ZR36057_VFEHCR_Hmask		0x3ff
>
>  #define ZR36057_VFEVCR          0x004	/* Video Front End, Vertical Configuration Register */
> -#define ZR36057_VFEVCR_VSPol            (1<<30)
> +#define ZR36057_VFEVCR_VSPol            (BIT(30))
>  #define ZR36057_VFEVCR_VStart           10
>  #define ZR36057_VFEVCR_VEnd		0
>  #define ZR36057_VFEVCR_Vmask		0x3ff
>
>  #define ZR36057_VFESPFR         0x008	/* Video Front End, Scaler and Pixel Format Register */
> -#define ZR36057_VFESPFR_ExtFl           (1<<26)
> -#define ZR36057_VFESPFR_TopField        (1<<25)
> -#define ZR36057_VFESPFR_VCLKPol         (1<<24)
> +#define ZR36057_VFESPFR_ExtFl           (BIT(26))
> +#define ZR36057_VFESPFR_TopField        (BIT(25))
> +#define ZR36057_VFESPFR_VCLKPol         (BIT(24))
>  #define ZR36057_VFESPFR_HFilter         21
>  #define ZR36057_VFESPFR_HorDcm          14
>  #define ZR36057_VFESPFR_VerDcm          8
>  #define ZR36057_VFESPFR_DispMode        6
>  #define ZR36057_VFESPFR_YUV422          (0<<3)
> -#define ZR36057_VFESPFR_RGB888          (1<<3)
> +#define ZR36057_VFESPFR_RGB888          (BIT(3))
>  #define ZR36057_VFESPFR_RGB565          (2<<3)
>  #define ZR36057_VFESPFR_RGB555          (3<<3)
> -#define ZR36057_VFESPFR_ErrDif          (1<<2)
> -#define ZR36057_VFESPFR_Pack24          (1<<1)
> -#define ZR36057_VFESPFR_LittleEndian    (1<<0)
> +#define ZR36057_VFESPFR_ErrDif          (BIT(2))
> +#define ZR36057_VFESPFR_Pack24          (BIT(1))
> +#define ZR36057_VFESPFR_LittleEndian    (BIT(0))
>
>  #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
>
> @@ -54,14 +54,14 @@
>
>  #define ZR36057_VSSFGR          0x014	/* Video Stride, Status, and Frame Grab Register */
>  #define ZR36057_VSSFGR_DispStride       16
> -#define ZR36057_VSSFGR_VidOvf           (1<<8)
> -#define ZR36057_VSSFGR_SnapShot         (1<<1)
> -#define ZR36057_VSSFGR_FrameGrab        (1<<0)
> +#define ZR36057_VSSFGR_VidOvf           (BIT(8))
> +#define ZR36057_VSSFGR_SnapShot         (BIT(1))
> +#define ZR36057_VSSFGR_FrameGrab        (BIT(0))
>
>  #define ZR36057_VDCR            0x018	/* Video Display Configuration Register */
> -#define ZR36057_VDCR_VidEn              (1<<31)
> +#define ZR36057_VDCR_VidEn              (BIT(31))
>  #define ZR36057_VDCR_MinPix             24
> -#define ZR36057_VDCR_Triton             (1<<24)
> +#define ZR36057_VDCR_Triton             (BIT(24))
>  #define ZR36057_VDCR_VidWinHt           12
>  #define ZR36057_VDCR_VidWinWid          0
>
> @@ -70,60 +70,60 @@
>  #define ZR36057_MMBR            0x020	/* Masking Map "Bottom" Register */
>
>  #define ZR36057_OCR             0x024	/* Overlay Control Register */
> -#define ZR36057_OCR_OvlEnable           (1 << 15)
> +#define ZR36057_OCR_OvlEnable           (BIT(15))
>  #define ZR36057_OCR_MaskStride          0
>
>  #define ZR36057_SPGPPCR         0x028	/* System, PCI, and General Purpose Pins Control Register */
> -#define ZR36057_SPGPPCR_SoftReset	(1<<24)
> +#define ZR36057_SPGPPCR_SoftReset	(BIT(24))
>
>  #define ZR36057_GPPGCR1         0x02c	/* General Purpose Pins and GuestBus Control Register (1) */
>
>  #define ZR36057_MCSAR           0x030	/* MPEG Code Source Address Register */
>
>  #define ZR36057_MCTCR           0x034	/* MPEG Code Transfer Control Register */
> -#define ZR36057_MCTCR_CodTime           (1 << 30)
> -#define ZR36057_MCTCR_CEmpty            (1 << 29)
> -#define ZR36057_MCTCR_CFlush            (1 << 28)
> +#define ZR36057_MCTCR_CodTime           (BIT(30))
> +#define ZR36057_MCTCR_CEmpty            (BIT(29))
> +#define ZR36057_MCTCR_CFlush            (BIT(28))
>  #define ZR36057_MCTCR_CodGuestID	20
>  #define ZR36057_MCTCR_CodGuestReg	16
>
>  #define ZR36057_MCMPR           0x038	/* MPEG Code Memory Pointer Register */
>
>  #define ZR36057_ISR             0x03c	/* Interrupt Status Register */
> -#define ZR36057_ISR_GIRQ1               (1<<30)
> -#define ZR36057_ISR_GIRQ0               (1<<29)
> -#define ZR36057_ISR_CodRepIRQ           (1<<28)
> -#define ZR36057_ISR_JPEGRepIRQ          (1<<27)
> +#define ZR36057_ISR_GIRQ1               (BIT(30))
> +#define ZR36057_ISR_GIRQ0               (BIT(29))
> +#define ZR36057_ISR_CodRepIRQ           (BIT(28))
> +#define ZR36057_ISR_JPEGRepIRQ          (BIT(27))
>
>  #define ZR36057_ICR             0x040	/* Interrupt Control Register */
> -#define ZR36057_ICR_GIRQ1               (1<<30)
> -#define ZR36057_ICR_GIRQ0               (1<<29)
> -#define ZR36057_ICR_CodRepIRQ           (1<<28)
> -#define ZR36057_ICR_JPEGRepIRQ          (1<<27)
> -#define ZR36057_ICR_IntPinEn            (1<<24)
> +#define ZR36057_ICR_GIRQ1               (BIT(30))
> +#define ZR36057_ICR_GIRQ0               (BIT(29))
> +#define ZR36057_ICR_CodRepIRQ           (BIT(28))
> +#define ZR36057_ICR_JPEGRepIRQ          (BIT(27))
> +#define ZR36057_ICR_IntPinEn            (BIT(24))
>
>  #define ZR36057_I2CBR           0x044	/* I2C Bus Register */
> -#define ZR36057_I2CBR_SDA		(1<<1)
> -#define ZR36057_I2CBR_SCL		(1<<0)
> +#define ZR36057_I2CBR_SDA		(BIT(1))
> +#define ZR36057_I2CBR_SCL		(BIT(0))
>
>  #define ZR36057_JMC             0x100	/* JPEG Mode and Control */
> -#define ZR36057_JMC_JPG                 (1 << 31)
> +#define ZR36057_JMC_JPG                 (BIT(31))
>  #define ZR36057_JMC_JPGExpMode          (0 << 29)
> -#define ZR36057_JMC_JPGCmpMode          (1 << 29)
> +#define ZR36057_JMC_JPGCmpMode          (BIT(29))
>  #define ZR36057_JMC_MJPGExpMode         (2 << 29)
>  #define ZR36057_JMC_MJPGCmpMode         (3 << 29)
> -#define ZR36057_JMC_RTBUSY_FB           (1 << 6)
> -#define ZR36057_JMC_Go_en               (1 << 5)
> -#define ZR36057_JMC_SyncMstr            (1 << 4)
> -#define ZR36057_JMC_Fld_per_buff        (1 << 3)
> -#define ZR36057_JMC_VFIFO_FB            (1 << 2)
> -#define ZR36057_JMC_CFIFO_FB            (1 << 1)
> -#define ZR36057_JMC_Stll_LitEndian      (1 << 0)
> +#define ZR36057_JMC_RTBUSY_FB           (BIT(6))
> +#define ZR36057_JMC_Go_en               (BIT(5))
> +#define ZR36057_JMC_SyncMstr            (BIT(4))
> +#define ZR36057_JMC_Fld_per_buff        (BIT(3))
> +#define ZR36057_JMC_VFIFO_FB            (BIT(2))
> +#define ZR36057_JMC_CFIFO_FB            (BIT(1))
> +#define ZR36057_JMC_Stll_LitEndian      (BIT(0))
>
>  #define ZR36057_JPC             0x104	/* JPEG Process Control */
> -#define ZR36057_JPC_P_Reset             (1 << 7)
> -#define ZR36057_JPC_CodTrnsEn           (1 << 5)
> -#define ZR36057_JPC_Active              (1 << 0)
> +#define ZR36057_JPC_P_Reset             (BIT(7))
> +#define ZR36057_JPC_CodTrnsEn           (BIT(5))
> +#define ZR36057_JPC_Active              (BIT(0))
>
>  #define ZR36057_VSP             0x108	/* Vertical Sync Parameters */
>  #define ZR36057_VSP_VsyncSize           16
> @@ -142,7 +142,7 @@
>  #define ZR36057_FVAP_PAY                0
>
>  #define ZR36057_FPP             0x118	/* Field Process Parameters */
> -#define ZR36057_FPP_Odd_Even            (1 << 0)
> +#define ZR36057_FPP_Odd_Even            (BIT(0))
>
>  #define ZR36057_JCBA            0x11c	/* JPEG Code Base Address */
>
> @@ -155,9 +155,9 @@
>  #define ZR36057_GCR2            0x12c	/* GuestBus Control Register (2) */
>
>  #define ZR36057_POR             0x200	/* Post Office Register */
> -#define ZR36057_POR_POPen               (1<<25)
> -#define ZR36057_POR_POTime              (1<<24)
> -#define ZR36057_POR_PODir               (1<<23)
> +#define ZR36057_POR_POPen               (BIT(25))
> +#define ZR36057_POR_POTime              (BIT(24))
> +#define ZR36057_POR_PODir               (BIT(23))
>
>  #define ZR36057_STR             0x300	/* "Still" Transfer Register */
>
> diff --git a/drivers/staging/media/zoran/zr36060.h b/drivers/staging/media/zoran/zr36060.h
> index 82911757ba78..b56f7b08b9ed 100644
> --- a/drivers/staging/media/zoran/zr36060.h
> +++ b/drivers/staging/media/zoran/zr36060.h
> @@ -139,78 +139,78 @@ struct zr36060 {
>
>  /* ZR36060 LOAD register bits */
>
> -#define ZR060_LOAD_Load			(1 << 7)
> -#define ZR060_LOAD_SyncRst		(1 << 0)
> +#define ZR060_LOAD_Load			(BIT(7))
> +#define ZR060_LOAD_SyncRst		(BIT(0))
>
>  /* ZR36060 Code FIFO Status register bits */
>
> -#define ZR060_CFSR_Busy			(1 << 7)
> -#define ZR060_CFSR_CBusy		(1 << 2)
> +#define ZR060_CFSR_Busy			(BIT(7))
> +#define ZR060_CFSR_CBusy		(BIT(2))
>  #define ZR060_CFSR_CFIFO		(3 << 0)
>
>  /* ZR36060 Code Interface register */
>
> -#define ZR060_CIR_Code16		(1 << 7)
> -#define ZR060_CIR_Endian		(1 << 6)
> -#define ZR060_CIR_CFIS			(1 << 2)
> -#define ZR060_CIR_CodeMstr		(1 << 0)
> +#define ZR060_CIR_Code16		(BIT(7))
> +#define ZR060_CIR_Endian		(BIT(6))
> +#define ZR060_CIR_CFIS			(BIT(2))
> +#define ZR060_CIR_CodeMstr		(BIT(0))
>
>  /* ZR36060 Codec Mode register */
>
> -#define ZR060_CMR_Comp			(1 << 7)
> -#define ZR060_CMR_ATP			(1 << 6)
> -#define ZR060_CMR_Pass2			(1 << 5)
> -#define ZR060_CMR_TLM			(1 << 4)
> -#define ZR060_CMR_BRB			(1 << 2)
> -#define ZR060_CMR_FSF			(1 << 1)
> +#define ZR060_CMR_Comp			(BIT(7))
> +#define ZR060_CMR_ATP			(BIT(6))
> +#define ZR060_CMR_Pass2			(BIT(5))
> +#define ZR060_CMR_TLM			(BIT(4))
> +#define ZR060_CMR_BRB			(BIT(2))
> +#define ZR060_CMR_FSF			(BIT(1))
>
>  /* ZR36060 Markers Enable register */
>
> -#define ZR060_MER_App			(1 << 7)
> -#define ZR060_MER_Com			(1 << 6)
> -#define ZR060_MER_DRI			(1 << 5)
> -#define ZR060_MER_DQT			(1 << 4)
> -#define ZR060_MER_DHT			(1 << 3)
> +#define ZR060_MER_App			(BIT(7))
> +#define ZR060_MER_Com			(BIT(6))
> +#define ZR060_MER_DRI			(BIT(5))
> +#define ZR060_MER_DQT			(BIT(4))
> +#define ZR060_MER_DHT			(BIT(3))
>
>  /* ZR36060 Interrupt Mask register */
>
> -#define ZR060_IMR_EOAV			(1 << 3)
> -#define ZR060_IMR_EOI			(1 << 2)
> -#define ZR060_IMR_End			(1 << 1)
> -#define ZR060_IMR_DataErr		(1 << 0)
> +#define ZR060_IMR_EOAV			(BIT(3))
> +#define ZR060_IMR_EOI			(BIT(2))
> +#define ZR060_IMR_End			(BIT(1))
> +#define ZR060_IMR_DataErr		(BIT(0))
>
>  /* ZR36060 Interrupt Status register */
>
>  #define ZR060_ISR_ProCnt		(3 << 6)
> -#define ZR060_ISR_EOAV			(1 << 3)
> -#define ZR060_ISR_EOI			(1 << 2)
> -#define ZR060_ISR_End			(1 << 1)
> -#define ZR060_ISR_DataErr		(1 << 0)
> +#define ZR060_ISR_EOAV			(BIT(3))
> +#define ZR060_ISR_EOI			(BIT(2))
> +#define ZR060_ISR_End			(BIT(1))
> +#define ZR060_ISR_DataErr		(BIT(0))
>
>  /* ZR36060 Video Control register */
>
> -#define ZR060_VCR_Video8		(1 << 7)
> -#define ZR060_VCR_Range			(1 << 6)
> -#define ZR060_VCR_FIDet			(1 << 3)
> -#define ZR060_VCR_FIVedge		(1 << 2)
> -#define ZR060_VCR_FIExt			(1 << 1)
> -#define ZR060_VCR_SyncMstr		(1 << 0)
> +#define ZR060_VCR_Video8		(BIT(7))
> +#define ZR060_VCR_Range			(BIT(6))
> +#define ZR060_VCR_FIDet			(BIT(3))
> +#define ZR060_VCR_FIVedge		(BIT(2))
> +#define ZR060_VCR_FIExt			(BIT(1))
> +#define ZR060_VCR_SyncMstr		(BIT(0))
>
>  /* ZR36060 Video Polarity register */
>
> -#define ZR060_VPR_VCLKPol		(1 << 7)
> -#define ZR060_VPR_PValPol		(1 << 6)
> -#define ZR060_VPR_PoePol		(1 << 5)
> -#define ZR060_VPR_SImgPol		(1 << 4)
> -#define ZR060_VPR_BLPol			(1 << 3)
> -#define ZR060_VPR_FIPol			(1 << 2)
> -#define ZR060_VPR_HSPol			(1 << 1)
> -#define ZR060_VPR_VSPol			(1 << 0)
> +#define ZR060_VPR_VCLKPol		(BIT(7))
> +#define ZR060_VPR_PValPol		(BIT(6))
> +#define ZR060_VPR_PoePol		(BIT(5))
> +#define ZR060_VPR_SImgPol		(BIT(4))
> +#define ZR060_VPR_BLPol			(BIT(3))
> +#define ZR060_VPR_FIPol			(BIT(2))
> +#define ZR060_VPR_HSPol			(BIT(1))
> +#define ZR060_VPR_VSPol			(BIT(0))
>
>  /* ZR36060 Scaling register */
>
> -#define ZR060_SR_VScale			(1 << 2)
> -#define ZR060_SR_HScale2		(1 << 0)
> +#define ZR060_SR_VScale			(BIT(2))
> +#define ZR060_SR_HScale2		(BIT(0))
>  #define ZR060_SR_HScale4		(2 << 0)
>
>  #endif				/*fndef ZR36060_H */
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181104025024.GA25231%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>

