X-GM-THRID: 6950732007035895808
X-Received: by 2002:a5b:586:: with SMTP id l6mr684956ybp.146.1618492381836;
        Thu, 15 Apr 2021 06:13:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:8288:: with SMTP id r8ls2578675ybk.4.gmail; Thu, 15 Apr
 2021 06:13:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwkhryRkGxnay/2t5Wh2x48p7cxa3O+Xgp0HPBgFlLep8e7TWpX4HJ7AJJRmUw6yy5RaiGY
X-Received: by 2002:a5b:489:: with SMTP id n9mr4178011ybp.45.1618492380809;
        Thu, 15 Apr 2021 06:13:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618492380; cv=none;
        d=google.com; s=arc-20160816;
        b=zeE6ahHom1iML3JP6WcUwO5bP2KleNykp7olpxk4h/Npw1jH9JVPgAy51/tX7PrfUz
         PCX5xzWR18i73UVoCnEDu0KMYecvxGZL8pDpu9xt/O3qevyALpU3Diors5N+SIQaku2k
         AouOigSLUrGgR6L9qRC/woAPI3f7fL905zEeTdCoq2uiVnix8x/vfgzyzZ/D/nrnNyer
         ohbBwxWBOiVHzqD6EQ6wKa4C5tkGxw41o6kz/MkXl5b0vppKcH1bf/wLfcNLyU3QK3AH
         BvszEEfBk+/7bw5WkZ7dCvgpBJFP3aL4Vwuc5pSefKHObnUoprOoOlIHvnmXvHAJj2r9
         JqIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=E2vdZebEPplsapFwBCZQMPiDIXe/1nXT0QRZhoaWTy0=;
        b=tkEMHe5YEXOUyujiO4OdiRZ8yLnukBDh6enZhbEeVajnFHftfPiqyNAij6Nl5pPrcr
         +8HZiJJkdxDi5BT9Eoeh46Dj9iqLdQtsDn687pVqBjLQN5eIy0Cx/4zAlXGp1ZxI1EQw
         hAp30Kji4CQz8bVbyLebCj9JFRRmOv6UtJF9OH9v8SN26LBpWBEUzIbtHm59OD4dWR1r
         QRsvHwRH3xabXTPhk46b+hCDWDHDktOyWBiDqSFhmrAmCG5eFu17iJggaWJcDdf2O+71
         ZskL+z3oieIfgP9CVdKW5rScyHCEpMwr3Xk9V3+WMA+RFs5K1BzB1zJeOZ5UzKyOYvpt
         EUNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fs58WLNo;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id k6si151273ybt.0.2021.04.15.06.13.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 06:13:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fs58WLNo;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102a.google.com with SMTP id ot17-20020a17090b3b51b0290109c9ac3c34so14381062pjb.4
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 06:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=E2vdZebEPplsapFwBCZQMPiDIXe/1nXT0QRZhoaWTy0=;
        b=Fs58WLNonR9G0URTi1tx/p3uSQ3gScyo7xbsByGIdYJMAnHdcvrKEo6VI9URkQvDSd
         fdoGSRv2oswAncqbn7bCjUMLPlgfFGK5RX5VsIFwfvHIm4ETW0a3VtJR+fnUxvOcSn2x
         HOofSDWaNWXaxlRdoB9FsAP5EhWRAS0vFYTYwYGEYgKYhLZefWh47l9LiPvbMrknBXrm
         +Ej/o2NO94DQYez7xP/TUJ5XIbV4tXKaepMSIupBL+keFMwQBeyXfYD9MaSwLpFfaoV2
         VN/42633+qwenFRk10yMJxyCsVoB52eCICUNZ5+VTVT8zH4guTl/+sSApeAF20QxaYjX
         JEmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=E2vdZebEPplsapFwBCZQMPiDIXe/1nXT0QRZhoaWTy0=;
        b=YsOXCw/uxS3slcoSsFIcIDXa+IEFH2ZhwRyMm68+EgRGJ+tmc/RWADoomyKQsJ/YgI
         WphHa7HcPBY5gYfQb2+2kbFXMSBDTGdF0cE7+trYoNRP6+xoDzvd+Ct1h/hbHvQ55RzP
         NvZ/r/ReqKlEqLMLc9+hWozyZ3RHOa2w4rtkHaUElakKHkEQb+0No+rG1Qh5MrwujEEm
         LBCmBnvYJCPk6xX13YAupYfxkUsJVO4tDMXxDTTDb3me0tYnghASll+U2TlHzhdgnPBr
         aoUrY9M7WvYR96XVW4VRz0U25NI1cULKtLzWA7jMCfu1QVA3J7pRHeHaLCqhqdMlPvl9
         2jEA==
X-Gm-Message-State: AOAM531ZIrVnQTo8NUvRy+zRO3zFWYn5wLR1W7pGTfhRrcBgrekWolHp
	2UQ0QNqs+421X82ZE5yrEnPGkYJsPZCcgg==
X-Received: by 2002:a17:90a:fa84:: with SMTP id cu4mr3883950pjb.178.1618492379991;
        Thu, 15 Apr 2021 06:12:59 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id c2sm2238355pfo.53.2021.04.15.06.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 06:12:59 -0700 (PDT)
Date: Thu, 15 Apr 2021 18:42:50 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: zzam@gentoo.org, clabbe@baylibre.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v4 2/2] staging: media: zoran: add BIT() macro and align
 code
Message-ID: <YHg70mRLN5S8mywn@kali>
References: <cover.1618342050.git.mitaliborkar810@gmail.com>
 <fb60b20f7cdf3650d678fac4c0f1f364ac6984bf.1618342050.git.mitaliborkar810@gmail.com>
 <c6a301f6-99f3-69e0-a394-00948aef6c1c@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c6a301f6-99f3-69e0-a394-00948aef6c1c@gentoo.org>

On Wed, Apr 14, 2021 at 12:38:41PM +0200, zzam@gentoo.org wrote:
> Am 13.04.21 um 21:50 schrieb Mitali Borkar:
> > Added #include <linux/bitops.h> and replaced bit shifts by BIT() macro.
> > This BIT() macro from linux/bitops.h is used to define ZR36057_VFESPFR_* bitmasks.
> > Use of macro is better and neater. It maintains consistency.
> > Removed comments from the same line and added them to new line above the
> > blocks, aligned everything properly by using tabs to make code neater
> > and improve readability.
> > Reported by checkpatch.
> > 
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> > 
> > Changes from v3:- No changes.
> > Changes from v2:- Aligned the code using tabs.
> > Changes from v1:- Aligned the code using tabs and readjusted the
> > comments line.
> > 
> >   drivers/staging/media/zoran/zr36057.h | 312 ++++++++++++++------------
> >   1 file changed, 172 insertions(+), 140 deletions(-)
> > 
> 
> General comment:
> The patch is hard to read without applying it and viewing it with ignore
> whitespace.
> 
> > diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
> > index a2a75fd9f535..f51e9ea2c3d3 100644
> > --- a/drivers/staging/media/zoran/zr36057.h
> > +++ b/drivers/staging/media/zoran/zr36057.h
> > @@ -7,148 +7,180 @@
> >   #ifndef _ZR36057_H_
> >   #define _ZR36057_H_
> > +#include <linux/bitops.h>
> >   /* Zoran ZR36057 registers */
> > -#define ZR36057_VFEHCR          0x000	/* Video Front End, Horizontal Configuration Register */
> > -#define ZR36057_VFEHCR_HS_POL             BIT(30)
> > -#define ZR36057_VFEHCR_H_START           10
> > -#define ZR36057_VFEHCR_H_END		0
> > -#define ZR36057_VFEHCR_HMASK		0x3ff
> > -
> > -#define ZR36057_VFEVCR          0x004	/* Video Front End, Vertical Configuration Register */
> > -#define ZR36057_VFEVCR_VS_POL             BIT(30)
> > -#define ZR36057_VFEVCR_V_START           10
> > -#define ZR36057_VFEVCR_V_END		0
> > -#define ZR36057_VFEVCR_VMASK		0x3ff
> > -
> > -#define ZR36057_VFESPFR         0x008	/* Video Front End, Scaler and Pixel Format Register */
> > -#define ZR36057_VFESPFR_EXT_FL            BIT(26)
> > -#define ZR36057_VFESPFR_TOP_FIELD         BIT(25)
> > -#define ZR36057_VFESPFR_VCLK_POL          BIT(24)
> > -#define ZR36057_VFESPFR_H_FILTER         21
> > -#define ZR36057_VFESPFR_HOR_DCM          14
> > -#define ZR36057_VFESPFR_VER_DCM          8
> > -#define ZR36057_VFESPFR_DISP_MODE        6
> > -#define ZR36057_VFESPFR_YUV422          (0 << 3)
> > -#define ZR36057_VFESPFR_RGB888          (1 << 3)
> > -#define ZR36057_VFESPFR_RGB565          (2 << 3)
> > -#define ZR36057_VFESPFR_RGB555          (3 << 3)
> > -#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
> > -#define ZR36057_VFESPFR_PACK24          (1 << 1)
> > -#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)
> > -
> > -#define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
> > -
> > -#define ZR36057_VDBR            0x010	/* Video Display "Bottom" Register */
> > -
> > -#define ZR36057_VSSFGR          0x014	/* Video Stride, Status, and Frame Grab Register */
> > -#define ZR36057_VSSFGR_DISP_STRIDE       16
> > -#define ZR36057_VSSFGR_VID_OVF            BIT(8)
> > -#define ZR36057_VSSFGR_SNAP_SHOT          BIT(1)
> > -#define ZR36057_VSSFGR_FRAME_GRAB         BIT(0)
> > -
> > -#define ZR36057_VDCR            0x018	/* Video Display Configuration Register */
> > -#define ZR36057_VDCR_VID_EN               BIT(31)
> > -#define ZR36057_VDCR_MIN_PIX             24
> > -#define ZR36057_VDCR_TRITON              BIT(24)
> > -#define ZR36057_VDCR_VID_WIN_HT           12
> > -#define ZR36057_VDCR_VID_WIN_WID          0
> > -
> > -#define ZR36057_MMTR            0x01c	/* Masking Map "Top" Register */
> > -
> > -#define ZR36057_MMBR            0x020	/* Masking Map "Bottom" Register */
> > -
> > -#define ZR36057_OCR             0x024	/* Overlay Control Register */
> > -#define ZR36057_OCR_OVL_ENABLE            BIT(15)
> > -#define ZR36057_OCR_MASK_STRIDE          0
> > -
> > -#define ZR36057_SPGPPCR         0x028	/* System, PCI, and General Purpose Pins Control Register */
> > -#define ZR36057_SPGPPCR_SOFT_RESET	 BIT(24)
> > -
> > -#define ZR36057_GPPGCR1         0x02c	/* General Purpose Pins and GuestBus Control Register (1) */
> > -
> > -#define ZR36057_MCSAR           0x030	/* MPEG Code Source Address Register */
> > -
> > -#define ZR36057_MCTCR           0x034	/* MPEG Code Transfer Control Register */
> > -#define ZR36057_MCTCR_COD_TIME            BIT(30)
> > -#define ZR36057_MCTCR_C_EMPTY             BIT(29)
> > -#define ZR36057_MCTCR_C_FLUSH             BIT(28)
> > -#define ZR36057_MCTCR_COD_GUEST_ID	20
> > -#define ZR36057_MCTCR_COD_GUEST_REG	16
> > -
> > -#define ZR36057_MCMPR           0x038	/* MPEG Code Memory Pointer Register */
> > -
> > -#define ZR36057_ISR             0x03c	/* Interrupt Status Register */
> > -#define ZR36057_ISR_GIRQ1                BIT(30)
> > -#define ZR36057_ISR_GIRQ0                BIT(29)
> > -#define ZR36057_ISR_COD_REP_IRQ            BIT(28)
> > -#define ZR36057_ISR_JPEG_REP_IRQ           BIT(27)
> > -
> > -#define ZR36057_ICR             0x040	/* Interrupt Control Register */
> > -#define ZR36057_ICR_GIRQ1                BIT(30)
> > -#define ZR36057_ICR_GIRQ0                BIT(29)
> > -#define ZR36057_ICR_COD_REP_IRQ            BIT(28)
> > -#define ZR36057_ICR_JPEG_REP_IRQ           BIT(27)
> > -#define ZR36057_ICR_INT_PIN_EN             BIT(24)
> > -
> > -#define ZR36057_I2CBR           0x044	/* I2C Bus Register */
> > -#define ZR36057_I2CBR_SDA		 BIT(1)
> > -#define ZR36057_I2CBR_SCL		 BIT(0)
> > -
> > -#define ZR36057_JMC             0x100	/* JPEG Mode and Control */
> > -#define ZR36057_JMC_JPG                  BIT(31)
> > -#define ZR36057_JMC_JPG_EXP_MODE          (0 << 29)
> > -#define ZR36057_JMC_JPG_CMP_MODE           BIT(29)
> > -#define ZR36057_JMC_MJPG_EXP_MODE         (2 << 29)
> > -#define ZR36057_JMC_MJPG_CMP_MODE         (3 << 29)
> > -#define ZR36057_JMC_RTBUSY_FB            BIT(6)
> > -#define ZR36057_JMC_GO_EN                BIT(5)
> > -#define ZR36057_JMC_SYNC_MSTR             BIT(4)
> > -#define ZR36057_JMC_FLD_PER_BUFF         BIT(3)
> > -#define ZR36057_JMC_VFIFO_FB             BIT(2)
> > -#define ZR36057_JMC_CFIFO_FB             BIT(1)
> > -#define ZR36057_JMC_STLL_LIT_ENDIAN       BIT(0)
> > -
> > -#define ZR36057_JPC             0x104	/* JPEG Process Control */
> > -#define ZR36057_JPC_P_RESET              BIT(7)
> > -#define ZR36057_JPC_COD_TRNS_EN            BIT(5)
> > -#define ZR36057_JPC_ACTIVE               BIT(0)
> > -
> > -#define ZR36057_VSP             0x108	/* Vertical Sync Parameters */
> > -#define ZR36057_VSP_VSYNC_SIZE           16
> > -#define ZR36057_VSP_FRM_TOT              0
> > -
> > -#define ZR36057_HSP             0x10c	/* Horizontal Sync Parameters */
> > -#define ZR36057_HSP_HSYNC_START          16
> > -#define ZR36057_HSP_LINE_TOT             0
> > -
> > -#define ZR36057_FHAP            0x110	/* Field Horizontal Active Portion */
> > -#define ZR36057_FHAP_NAX                16
> > -#define ZR36057_FHAP_PAX                0
> > -
> > -#define ZR36057_FVAP            0x114	/* Field Vertical Active Portion */
> > -#define ZR36057_FVAP_NAY                16
> > -#define ZR36057_FVAP_PAY                0
> > -
> > -#define ZR36057_FPP             0x118	/* Field Process Parameters */
> > -#define ZR36057_FPP_ODD_EVEN             BIT(0)
> > -
> > -#define ZR36057_JCBA            0x11c	/* JPEG Code Base Address */
> > -
> > -#define ZR36057_JCFT            0x120	/* JPEG Code FIFO Threshold */
> > -
> > -#define ZR36057_JCGI            0x124	/* JPEG Codec Guest ID */
> > -#define ZR36057_JCGI_JPE_GUEST_ID         4
> > -#define ZR36057_JCGI_JPE_GUEST_REG        0
> > -
> > -#define ZR36057_GCR2            0x12c	/* GuestBus Control Register (2) */
> > -
> > -#define ZR36057_POR             0x200	/* Post Office Register */
> > -#define ZR36057_POR_PO_PEN                BIT(25)
> > -#define ZR36057_POR_PO_TIME               BIT(24)
> > -#define ZR36057_POR_PO_DIR                BIT(23)
> > -
> > -#define ZR36057_STR             0x300	/* "Still" Transfer Register */
> > +/* Video Front End, Horizontal Configuration Register */
> > +#define ZR36057_VFEHCR				0x000
> > +#define ZR36057_VFEHCR_HS_POL			BIT(30)
> > +#define ZR36057_VFEHCR_H_START			10
> > +#define ZR36057_VFEHCR_H_END			0
> > +#define ZR36057_VFEHCR_HMASK			0x3ff
> > +
> > +/* Video Front End, Vertical Configuration Register */
> > +#define ZR36057_VFEVCR				0x004
> > +#define ZR36057_VFEVCR_VS_POL			BIT(30)
> > +#define ZR36057_VFEVCR_V_START			10
> > +#define ZR36057_VFEVCR_V_END			0
> > +#define ZR36057_VFEVCR_VMASK			0x3ff
> > +
> > +/* Video Front End, Scaler and Pixel Format Register */
> > +#define ZR36057_VFESPFR			0x008
> > +#define ZR36057_VFESPFR_EXT_FL			BIT(26)
> > +#define ZR36057_VFESPFR_TOP_FIELD		BIT(25)
> > +#define ZR36057_VFESPFR_VCLK_POL		BIT(24)
> > +#define ZR36057_VFESPFR_H_FILTER		21
> > +#define ZR36057_VFESPFR_HOR_DCM		14
> > +#define ZR36057_VFESPFR_VER_DCM		8
> > +#define ZR36057_VFESPFR_DISP_MODE		6
> 
> > +#define ZR36057_VFESPFR_YUV422			(0 << 3)
> > +#define ZR36057_VFESPFR_RGB888			BIT(3)
> > +#define ZR36057_VFESPFR_RGB565			(2 << 3)
> > +#define ZR36057_VFESPFR_RGB555			(3 << 3)
> The single BIT occurrence in this list is confusing at best. Please keep
> ZR36057_VFESPFR_RGB888 to be (1 << 3). It is not a single bit, but defining
> a 2-bit field in the middle with 4 different values. It should be
> consistent.
>
Okay Sir.

> > +#define ZR36057_VFESPFR_ERR_DIF		BIT(2)
> > +#define ZR36057_VFESPFR_PACK24			BIT(1)
> > +#define ZR36057_VFESPFR_LITTLE_ENDIAN		BIT(0)
> > +
> > +/* Video Display "Top" Register */
> > +#define ZR36057_VDTR				0x00c
> > +
> > +/* Video Display "Bottom" Register */
> > +#define ZR36057_VDBR				0x010
> > +
> > +/* Video Stride, Status, and Frame Grab Register */
> > +#define ZR36057_VSSFGR				0x014
> > +#define ZR36057_VSSFGR_DISP_STRIDE		16
> > +#define ZR36057_VSSFGR_VID_OVF			BIT(8)
> > +#define ZR36057_VSSFGR_SNAP_SHOT		BIT(1)
> > +#define ZR36057_VSSFGR_FRAME_GRAB		BIT(0)
> > +
> > +/* Video Display Configuration Register */
> > +#define ZR36057_VDCR				0x018
> > +#define ZR36057_VDCR_VID_EN			BIT(31)
> > +#define ZR36057_VDCR_MIN_PIX			24
> > +#define ZR36057_VDCR_TRITON			BIT(24)
> > +#define ZR36057_VDCR_VID_WIN_HT		12
> > +#define ZR36057_VDCR_VID_WIN_WID		0
> > +
> > +/* Masking Map "Top" Register */
> > +#define ZR36057_MMTR				0x01c
> > +
> > +/* Masking Map "Bottom" Register */
> > +#define ZR36057_MMBR				0x020
> > +
> > +/* Overlay Control Register */
> > +#define ZR36057_OCR				0x024
> > +#define ZR36057_OCR_OVL_ENABLE			BIT(15)
> > +#define ZR36057_OCR_MASK_STRIDE		0
> > +
> > +/* System, PCI, and General Purpose Pins Control Register */
> > +#define ZR36057_SPGPPCR			0x028
> > +#define ZR36057_SPGPPCR_SOFT_RESET		BIT(24)
> > +
> > +/* General Purpose Pins and GuestBus Control Register (1) */
> > +#define ZR36057_GPPGCR1			0x02c
> > +
> > +/* MPEG Code Source Address Register */
> > +#define ZR36057_MCSAR				0x030
> > +
> > +/* MPEG Code Transfer Control Register */
> > +#define ZR36057_MCTCR				0x034
> > +#define ZR36057_MCTCR_COD_TIME			BIT(30)
> > +#define ZR36057_MCTCR_C_EMPTY			BIT(29)
> > +#define ZR36057_MCTCR_C_FLUSH			BIT(28)
> > +#define ZR36057_MCTCR_COD_GUEST_ID		20
> > +#define ZR36057_MCTCR_COD_GUEST_REG		16
> > +
> > +/* MPEG Code Memory Pointer Register */
> > +#define ZR36057_MCMPR				0x038
> > +
> > +/* Interrupt Status Register */
> > +#define ZR36057_ISR				0x03c
> > +#define ZR36057_ISR_GIRQ1			BIT(30)
> > +#define ZR36057_ISR_GIRQ0			BIT(29)
> > +#define ZR36057_ISR_COD_REP_IRQ		BIT(28)
> > +#define ZR36057_ISR_JPEG_REP_IRQ		BIT(27)
> > +
> > +/* Interrupt Control Register */
> > +#define ZR36057_ICR				0x040
> > +#define ZR36057_ICR_GIRQ1			BIT(30)
> > +#define ZR36057_ICR_GIRQ0			BIT(29)
> > +#define ZR36057_ICR_COD_REP_IRQ		BIT(28)
> > +#define ZR36057_ICR_JPEG_REP_IRQ		BIT(27)
> > +#define ZR36057_ICR_INT_PIN_EN			BIT(24)
> > +
> > +/* I2C Bus Register */
> > +#define ZR36057_I2CBR				0x044
> > +#define ZR36057_I2CBR_SDA			BIT(1)
> > +#define ZR36057_I2CBR_SCL			BIT(0)
> > +
> > +/* JPEG Mode and Control */
> > +#define ZR36057_JMC				0x100
> > +#define ZR36057_JMC_JPG			BIT(31)
> 
> > +#define ZR36057_JMC_JPG_EXP_MODE		(0 << 29)
> > +#define ZR36057_JMC_JPG_CMP_MODE		BIT(29)
> > +#define ZR36057_JMC_MJPG_EXP_MODE		(2 << 29)
> > +#define ZR36057_JMC_MJPG_CMP_MODE		(3 << 29)
> Same as above. Please change back ZR36057_JMC_JPG_CMP_MODE to be (1 << 29).
> Then this 2 bit field is consistent.
> 
Sir, I guess this BIT(29) was already present. I didn't changed this. 
I will change this as you said.

> > +#define ZR36057_JMC_RTBUSY_FB			BIT(6)
> > +#define ZR36057_JMC_GO_EN			BIT(5)
> > +#define ZR36057_JMC_SYNC_MSTR			BIT(4)
> > +#define ZR36057_JMC_FLD_PER_BUFF		BIT(3)
> > +#define ZR36057_JMC_VFIFO_FB			BIT(2)
> > +#define ZR36057_JMC_CFIFO_FB			BIT(1)
> > +#define ZR36057_JMC_STLL_LIT_ENDIAN		BIT(0)
> > +
> > +/* JPEG Process Control */
> > +#define ZR36057_JPC				0x104
> > +#define ZR36057_JPC_P_RESET			BIT(7)
> > +#define ZR36057_JPC_COD_TRNS_EN		BIT(5)
> > +#define ZR36057_JPC_ACTIVE			BIT(0)
> > +
> > +/* Vertical Sync Parameters */
> > +#define ZR36057_VSP				0x108
> > +#define ZR36057_VSP_VSYNC_SIZE			16
> > +#define ZR36057_VSP_FRM_TOT			0
> > +
> > +/* Horizontal Sync Parameters */
> > +#define ZR36057_HSP				0x10c
> > +#define ZR36057_HSP_HSYNC_START		16
> > +#define ZR36057_HSP_LINE_TOT			0
> > +
> > +/* Field Horizontal Active Portion */
> > +#define ZR36057_FHAP				0x110
> > +#define ZR36057_FHAP_NAX			16
> > +#define ZR36057_FHAP_PAX			0
> > +
> > +/* Field Vertical Active Portion */
> > +#define ZR36057_FVAP				0x114
> > +#define ZR36057_FVAP_NAY			16
> > +#define ZR36057_FVAP_PAY			0
> > +
> > +/* Field Process Parameters */
> > +#define ZR36057_FPP				0x118
> > +#define ZR36057_FPP_ODD_EVEN			BIT(0)
> > +
> > +/* JPEG Code Base Address */
> > +#define ZR36057_JCBA				0x11c
> > +
> > +/* JPEG Code FIFO Threshold */
> > +#define ZR36057_JCFT				0x120
> > +
> > +/* JPEG Codec Guest ID */
> > +#define ZR36057_JCGI				0x124
> > +#define ZR36057_JCGI_JPE_GUEST_ID		4
> > +#define ZR36057_JCGI_JPE_GUEST_REG		0
> > +
> > +/* GuestBus Control Register (2) */
> > +#define ZR36057_GCR2				0x12c
> > +
> > +/* Post Office Register */
> > +#define ZR36057_POR				0x200
> > +#define ZR36057_POR_PO_PEN			BIT(25)
> > +#define ZR36057_POR_PO_TIME			BIT(24)
> > +#define ZR36057_POR_PO_DIR			BIT(23)
> > +
> > +/* "Still" Transfer Register */
> > +#define ZR36057_STR				0x300
> >   #endif
> > 
> 
> Regards
> Matthias

