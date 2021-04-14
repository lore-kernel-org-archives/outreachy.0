X-GM-THRID: 6950732007035895808
X-Received: by 2002:aca:4d0e:: with SMTP id a14mr1890890oib.107.1618397892769;
        Wed, 14 Apr 2021 03:58:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:23a1:: with SMTP id m1ls466112ots.8.gmail; Wed, 14
 Apr 2021 03:58:12 -0700 (PDT)
X-Received: by 2002:a9d:470f:: with SMTP id a15mr16007004otf.302.1618397892131;
        Wed, 14 Apr 2021 03:58:12 -0700 (PDT)
Received: by 2002:a05:6808:103:b029:15a:3886:40a1 with SMTP id b3-20020a0568080103b029015a388640a1msoie;
        Wed, 14 Apr 2021 03:38:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy5y0zfZ3tVrriPPzJ1duyGHfbjq5lUHsXRGkCKaVuFNze/tHgemzhC2HmRLTDkTQL07uUH
X-Received: by 2002:a17:902:9347:b029:e8:c21c:f951 with SMTP id g7-20020a1709029347b02900e8c21cf951mr36816908plp.14.1618396727387;
        Wed, 14 Apr 2021 03:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618396727; cv=none;
        d=google.com; s=arc-20160816;
        b=PnN72XG/2kM1njKWmGmcm1RklW22+zm3pPFaBAfd51LU6OXoqhFu0X9hvqvqqK34Ui
         CTXuZFZczC2NGTkzPF9zzhNebYog5/EbkKDmHTuTLE2oYNAhzjkl85qg+A9fsqRZ4DXY
         RWyx72boXay90E3Nqb/LK6vTMHjmZaIw827H+holRQVJiO2ZLygU/AnL2wlYRkaH0Jy2
         5TWo1787H8MjMeA57KBaLJ43N8FRdgkJr12RNbT6zseuit1mw6V2hNjkt8lDY0/IL49C
         r/Lw3CSc9/4dUBBt2nmR8VFRaMdGc+kSvBBcMqQPe255r3NuRPa0Z4WqMi8G9aDt78Ip
         ExKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:references:cc:to:from;
        bh=Ac3F7mtVRHC0GFBOpaeaaZH/dYpZVwm/I8hNPXZaLrg=;
        b=T+xJcRUKOXOhtg4rWy/oXdSWdqAAA+/M0mi6iF1FhEbO0x4QpIFidaXc/aSRWC29LV
         JhuW1iMjDip5g9nsUDPpMcbPIGzcc2aFGX01EPgh3+z5Tlyorvep2pQFztMjb9f3Jr8J
         27qunMjh7TgtCn9P6vaz5IHUV5/1Eku5cy9/ObFN5AUBuZKQ5HsC8sgwtVFR+aef0Zzi
         +ovMr7VYQArlNi/uyhTHsCtbTqV/BYMFDl3nh5J9DHh0jLxn5wjkLKPQWhSKj5Ec/GhT
         lLvCeQ4D1m0X9Wy2Z5oC6Q2UdAmFCPgB4r78SIdNGgVHBGxRm9Dx9yN4YBRcWmiO/wG8
         f33Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
Return-Path: <zzam@gentoo.org>
Received: from smtp.gentoo.org (mail.gentoo.org. [2001:470:ea4a:1:5054:ff:fec7:86e4])
        by gmr-mx.google.com with ESMTPS id ci2si402974pjb.2.2021.04.14.03.38.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 03:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) client-ip=2001:470:ea4a:1:5054:ff:fec7:86e4;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
From: zzam@gentoo.org
To: Mitali Borkar <mitaliborkar810@gmail.com>, clabbe@baylibre.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 mitali_s@me.iitr.ac.in
References: <cover.1618342050.git.mitaliborkar810@gmail.com>
 <fb60b20f7cdf3650d678fac4c0f1f364ac6984bf.1618342050.git.mitaliborkar810@gmail.com>
Subject: Re: [PATCH v4 2/2] staging: media: zoran: add BIT() macro and align
 code
Message-ID: <c6a301f6-99f3-69e0-a394-00948aef6c1c@gentoo.org>
Date: Wed, 14 Apr 2021 12:38:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.1
MIME-Version: 1.0
In-Reply-To: <fb60b20f7cdf3650d678fac4c0f1f364ac6984bf.1618342050.git.mitaliborkar810@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

Am 13.04.21 um 21:50 schrieb Mitali Borkar:
> Added #include <linux/bitops.h> and replaced bit shifts by BIT() macro.
> This BIT() macro from linux/bitops.h is used to define ZR36057_VFESPFR_* bitmasks.
> Use of macro is better and neater. It maintains consistency.
> Removed comments from the same line and added them to new line above the
> blocks, aligned everything properly by using tabs to make code neater
> and improve readability.
> Reported by checkpatch.
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
> 
> Changes from v3:- No changes.
> Changes from v2:- Aligned the code using tabs.
> Changes from v1:- Aligned the code using tabs and readjusted the
> comments line.
> 
>   drivers/staging/media/zoran/zr36057.h | 312 ++++++++++++++------------
>   1 file changed, 172 insertions(+), 140 deletions(-)
> 

General comment:
The patch is hard to read without applying it and viewing it with ignore 
whitespace.

> diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
> index a2a75fd9f535..f51e9ea2c3d3 100644
> --- a/drivers/staging/media/zoran/zr36057.h
> +++ b/drivers/staging/media/zoran/zr36057.h
> @@ -7,148 +7,180 @@
>   
>   #ifndef _ZR36057_H_
>   #define _ZR36057_H_
> +#include <linux/bitops.h>
>   
>   /* Zoran ZR36057 registers */
>   
> -#define ZR36057_VFEHCR          0x000	/* Video Front End, Horizontal Configuration Register */
> -#define ZR36057_VFEHCR_HS_POL             BIT(30)
> -#define ZR36057_VFEHCR_H_START           10
> -#define ZR36057_VFEHCR_H_END		0
> -#define ZR36057_VFEHCR_HMASK		0x3ff
> -
> -#define ZR36057_VFEVCR          0x004	/* Video Front End, Vertical Configuration Register */
> -#define ZR36057_VFEVCR_VS_POL             BIT(30)
> -#define ZR36057_VFEVCR_V_START           10
> -#define ZR36057_VFEVCR_V_END		0
> -#define ZR36057_VFEVCR_VMASK		0x3ff
> -
> -#define ZR36057_VFESPFR         0x008	/* Video Front End, Scaler and Pixel Format Register */
> -#define ZR36057_VFESPFR_EXT_FL            BIT(26)
> -#define ZR36057_VFESPFR_TOP_FIELD         BIT(25)
> -#define ZR36057_VFESPFR_VCLK_POL          BIT(24)
> -#define ZR36057_VFESPFR_H_FILTER         21
> -#define ZR36057_VFESPFR_HOR_DCM          14
> -#define ZR36057_VFESPFR_VER_DCM          8
> -#define ZR36057_VFESPFR_DISP_MODE        6
> -#define ZR36057_VFESPFR_YUV422          (0 << 3)
> -#define ZR36057_VFESPFR_RGB888          (1 << 3)
> -#define ZR36057_VFESPFR_RGB565          (2 << 3)
> -#define ZR36057_VFESPFR_RGB555          (3 << 3)
> -#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
> -#define ZR36057_VFESPFR_PACK24          (1 << 1)
> -#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)
> -
> -#define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
> -
> -#define ZR36057_VDBR            0x010	/* Video Display "Bottom" Register */
> -
> -#define ZR36057_VSSFGR          0x014	/* Video Stride, Status, and Frame Grab Register */
> -#define ZR36057_VSSFGR_DISP_STRIDE       16
> -#define ZR36057_VSSFGR_VID_OVF            BIT(8)
> -#define ZR36057_VSSFGR_SNAP_SHOT          BIT(1)
> -#define ZR36057_VSSFGR_FRAME_GRAB         BIT(0)
> -
> -#define ZR36057_VDCR            0x018	/* Video Display Configuration Register */
> -#define ZR36057_VDCR_VID_EN               BIT(31)
> -#define ZR36057_VDCR_MIN_PIX             24
> -#define ZR36057_VDCR_TRITON              BIT(24)
> -#define ZR36057_VDCR_VID_WIN_HT           12
> -#define ZR36057_VDCR_VID_WIN_WID          0
> -
> -#define ZR36057_MMTR            0x01c	/* Masking Map "Top" Register */
> -
> -#define ZR36057_MMBR            0x020	/* Masking Map "Bottom" Register */
> -
> -#define ZR36057_OCR             0x024	/* Overlay Control Register */
> -#define ZR36057_OCR_OVL_ENABLE            BIT(15)
> -#define ZR36057_OCR_MASK_STRIDE          0
> -
> -#define ZR36057_SPGPPCR         0x028	/* System, PCI, and General Purpose Pins Control Register */
> -#define ZR36057_SPGPPCR_SOFT_RESET	 BIT(24)
> -
> -#define ZR36057_GPPGCR1         0x02c	/* General Purpose Pins and GuestBus Control Register (1) */
> -
> -#define ZR36057_MCSAR           0x030	/* MPEG Code Source Address Register */
> -
> -#define ZR36057_MCTCR           0x034	/* MPEG Code Transfer Control Register */
> -#define ZR36057_MCTCR_COD_TIME            BIT(30)
> -#define ZR36057_MCTCR_C_EMPTY             BIT(29)
> -#define ZR36057_MCTCR_C_FLUSH             BIT(28)
> -#define ZR36057_MCTCR_COD_GUEST_ID	20
> -#define ZR36057_MCTCR_COD_GUEST_REG	16
> -
> -#define ZR36057_MCMPR           0x038	/* MPEG Code Memory Pointer Register */
> -
> -#define ZR36057_ISR             0x03c	/* Interrupt Status Register */
> -#define ZR36057_ISR_GIRQ1                BIT(30)
> -#define ZR36057_ISR_GIRQ0                BIT(29)
> -#define ZR36057_ISR_COD_REP_IRQ            BIT(28)
> -#define ZR36057_ISR_JPEG_REP_IRQ           BIT(27)
> -
> -#define ZR36057_ICR             0x040	/* Interrupt Control Register */
> -#define ZR36057_ICR_GIRQ1                BIT(30)
> -#define ZR36057_ICR_GIRQ0                BIT(29)
> -#define ZR36057_ICR_COD_REP_IRQ            BIT(28)
> -#define ZR36057_ICR_JPEG_REP_IRQ           BIT(27)
> -#define ZR36057_ICR_INT_PIN_EN             BIT(24)
> -
> -#define ZR36057_I2CBR           0x044	/* I2C Bus Register */
> -#define ZR36057_I2CBR_SDA		 BIT(1)
> -#define ZR36057_I2CBR_SCL		 BIT(0)
> -
> -#define ZR36057_JMC             0x100	/* JPEG Mode and Control */
> -#define ZR36057_JMC_JPG                  BIT(31)
> -#define ZR36057_JMC_JPG_EXP_MODE          (0 << 29)
> -#define ZR36057_JMC_JPG_CMP_MODE           BIT(29)
> -#define ZR36057_JMC_MJPG_EXP_MODE         (2 << 29)
> -#define ZR36057_JMC_MJPG_CMP_MODE         (3 << 29)
> -#define ZR36057_JMC_RTBUSY_FB            BIT(6)
> -#define ZR36057_JMC_GO_EN                BIT(5)
> -#define ZR36057_JMC_SYNC_MSTR             BIT(4)
> -#define ZR36057_JMC_FLD_PER_BUFF         BIT(3)
> -#define ZR36057_JMC_VFIFO_FB             BIT(2)
> -#define ZR36057_JMC_CFIFO_FB             BIT(1)
> -#define ZR36057_JMC_STLL_LIT_ENDIAN       BIT(0)
> -
> -#define ZR36057_JPC             0x104	/* JPEG Process Control */
> -#define ZR36057_JPC_P_RESET              BIT(7)
> -#define ZR36057_JPC_COD_TRNS_EN            BIT(5)
> -#define ZR36057_JPC_ACTIVE               BIT(0)
> -
> -#define ZR36057_VSP             0x108	/* Vertical Sync Parameters */
> -#define ZR36057_VSP_VSYNC_SIZE           16
> -#define ZR36057_VSP_FRM_TOT              0
> -
> -#define ZR36057_HSP             0x10c	/* Horizontal Sync Parameters */
> -#define ZR36057_HSP_HSYNC_START          16
> -#define ZR36057_HSP_LINE_TOT             0
> -
> -#define ZR36057_FHAP            0x110	/* Field Horizontal Active Portion */
> -#define ZR36057_FHAP_NAX                16
> -#define ZR36057_FHAP_PAX                0
> -
> -#define ZR36057_FVAP            0x114	/* Field Vertical Active Portion */
> -#define ZR36057_FVAP_NAY                16
> -#define ZR36057_FVAP_PAY                0
> -
> -#define ZR36057_FPP             0x118	/* Field Process Parameters */
> -#define ZR36057_FPP_ODD_EVEN             BIT(0)
> -
> -#define ZR36057_JCBA            0x11c	/* JPEG Code Base Address */
> -
> -#define ZR36057_JCFT            0x120	/* JPEG Code FIFO Threshold */
> -
> -#define ZR36057_JCGI            0x124	/* JPEG Codec Guest ID */
> -#define ZR36057_JCGI_JPE_GUEST_ID         4
> -#define ZR36057_JCGI_JPE_GUEST_REG        0
> -
> -#define ZR36057_GCR2            0x12c	/* GuestBus Control Register (2) */
> -
> -#define ZR36057_POR             0x200	/* Post Office Register */
> -#define ZR36057_POR_PO_PEN                BIT(25)
> -#define ZR36057_POR_PO_TIME               BIT(24)
> -#define ZR36057_POR_PO_DIR                BIT(23)
> -
> -#define ZR36057_STR             0x300	/* "Still" Transfer Register */
> +/* Video Front End, Horizontal Configuration Register */
> +#define ZR36057_VFEHCR				0x000
> +#define ZR36057_VFEHCR_HS_POL			BIT(30)
> +#define ZR36057_VFEHCR_H_START			10
> +#define ZR36057_VFEHCR_H_END			0
> +#define ZR36057_VFEHCR_HMASK			0x3ff
> +
> +/* Video Front End, Vertical Configuration Register */
> +#define ZR36057_VFEVCR				0x004
> +#define ZR36057_VFEVCR_VS_POL			BIT(30)
> +#define ZR36057_VFEVCR_V_START			10
> +#define ZR36057_VFEVCR_V_END			0
> +#define ZR36057_VFEVCR_VMASK			0x3ff
> +
> +/* Video Front End, Scaler and Pixel Format Register */
> +#define ZR36057_VFESPFR			0x008
> +#define ZR36057_VFESPFR_EXT_FL			BIT(26)
> +#define ZR36057_VFESPFR_TOP_FIELD		BIT(25)
> +#define ZR36057_VFESPFR_VCLK_POL		BIT(24)
> +#define ZR36057_VFESPFR_H_FILTER		21
> +#define ZR36057_VFESPFR_HOR_DCM		14
> +#define ZR36057_VFESPFR_VER_DCM		8
> +#define ZR36057_VFESPFR_DISP_MODE		6

> +#define ZR36057_VFESPFR_YUV422			(0 << 3)
> +#define ZR36057_VFESPFR_RGB888			BIT(3)
> +#define ZR36057_VFESPFR_RGB565			(2 << 3)
> +#define ZR36057_VFESPFR_RGB555			(3 << 3)
The single BIT occurrence in this list is confusing at best. Please keep 
ZR36057_VFESPFR_RGB888 to be (1 << 3). It is not a single bit, but 
defining a 2-bit field in the middle with 4 different values. It should 
be consistent.

> +#define ZR36057_VFESPFR_ERR_DIF		BIT(2)
> +#define ZR36057_VFESPFR_PACK24			BIT(1)
> +#define ZR36057_VFESPFR_LITTLE_ENDIAN		BIT(0)
> +
> +/* Video Display "Top" Register */
> +#define ZR36057_VDTR				0x00c
> +
> +/* Video Display "Bottom" Register */
> +#define ZR36057_VDBR				0x010
> +
> +/* Video Stride, Status, and Frame Grab Register */
> +#define ZR36057_VSSFGR				0x014
> +#define ZR36057_VSSFGR_DISP_STRIDE		16
> +#define ZR36057_VSSFGR_VID_OVF			BIT(8)
> +#define ZR36057_VSSFGR_SNAP_SHOT		BIT(1)
> +#define ZR36057_VSSFGR_FRAME_GRAB		BIT(0)
> +
> +/* Video Display Configuration Register */
> +#define ZR36057_VDCR				0x018
> +#define ZR36057_VDCR_VID_EN			BIT(31)
> +#define ZR36057_VDCR_MIN_PIX			24
> +#define ZR36057_VDCR_TRITON			BIT(24)
> +#define ZR36057_VDCR_VID_WIN_HT		12
> +#define ZR36057_VDCR_VID_WIN_WID		0
> +
> +/* Masking Map "Top" Register */
> +#define ZR36057_MMTR				0x01c
> +
> +/* Masking Map "Bottom" Register */
> +#define ZR36057_MMBR				0x020
> +
> +/* Overlay Control Register */
> +#define ZR36057_OCR				0x024
> +#define ZR36057_OCR_OVL_ENABLE			BIT(15)
> +#define ZR36057_OCR_MASK_STRIDE		0
> +
> +/* System, PCI, and General Purpose Pins Control Register */
> +#define ZR36057_SPGPPCR			0x028
> +#define ZR36057_SPGPPCR_SOFT_RESET		BIT(24)
> +
> +/* General Purpose Pins and GuestBus Control Register (1) */
> +#define ZR36057_GPPGCR1			0x02c
> +
> +/* MPEG Code Source Address Register */
> +#define ZR36057_MCSAR				0x030
> +
> +/* MPEG Code Transfer Control Register */
> +#define ZR36057_MCTCR				0x034
> +#define ZR36057_MCTCR_COD_TIME			BIT(30)
> +#define ZR36057_MCTCR_C_EMPTY			BIT(29)
> +#define ZR36057_MCTCR_C_FLUSH			BIT(28)
> +#define ZR36057_MCTCR_COD_GUEST_ID		20
> +#define ZR36057_MCTCR_COD_GUEST_REG		16
> +
> +/* MPEG Code Memory Pointer Register */
> +#define ZR36057_MCMPR				0x038
> +
> +/* Interrupt Status Register */
> +#define ZR36057_ISR				0x03c
> +#define ZR36057_ISR_GIRQ1			BIT(30)
> +#define ZR36057_ISR_GIRQ0			BIT(29)
> +#define ZR36057_ISR_COD_REP_IRQ		BIT(28)
> +#define ZR36057_ISR_JPEG_REP_IRQ		BIT(27)
> +
> +/* Interrupt Control Register */
> +#define ZR36057_ICR				0x040
> +#define ZR36057_ICR_GIRQ1			BIT(30)
> +#define ZR36057_ICR_GIRQ0			BIT(29)
> +#define ZR36057_ICR_COD_REP_IRQ		BIT(28)
> +#define ZR36057_ICR_JPEG_REP_IRQ		BIT(27)
> +#define ZR36057_ICR_INT_PIN_EN			BIT(24)
> +
> +/* I2C Bus Register */
> +#define ZR36057_I2CBR				0x044
> +#define ZR36057_I2CBR_SDA			BIT(1)
> +#define ZR36057_I2CBR_SCL			BIT(0)
> +
> +/* JPEG Mode and Control */
> +#define ZR36057_JMC				0x100
> +#define ZR36057_JMC_JPG			BIT(31)

> +#define ZR36057_JMC_JPG_EXP_MODE		(0 << 29)
> +#define ZR36057_JMC_JPG_CMP_MODE		BIT(29)
> +#define ZR36057_JMC_MJPG_EXP_MODE		(2 << 29)
> +#define ZR36057_JMC_MJPG_CMP_MODE		(3 << 29)
Same as above. Please change back ZR36057_JMC_JPG_CMP_MODE to be (1 << 
29). Then this 2 bit field is consistent.

> +#define ZR36057_JMC_RTBUSY_FB			BIT(6)
> +#define ZR36057_JMC_GO_EN			BIT(5)
> +#define ZR36057_JMC_SYNC_MSTR			BIT(4)
> +#define ZR36057_JMC_FLD_PER_BUFF		BIT(3)
> +#define ZR36057_JMC_VFIFO_FB			BIT(2)
> +#define ZR36057_JMC_CFIFO_FB			BIT(1)
> +#define ZR36057_JMC_STLL_LIT_ENDIAN		BIT(0)
> +
> +/* JPEG Process Control */
> +#define ZR36057_JPC				0x104
> +#define ZR36057_JPC_P_RESET			BIT(7)
> +#define ZR36057_JPC_COD_TRNS_EN		BIT(5)
> +#define ZR36057_JPC_ACTIVE			BIT(0)
> +
> +/* Vertical Sync Parameters */
> +#define ZR36057_VSP				0x108
> +#define ZR36057_VSP_VSYNC_SIZE			16
> +#define ZR36057_VSP_FRM_TOT			0
> +
> +/* Horizontal Sync Parameters */
> +#define ZR36057_HSP				0x10c
> +#define ZR36057_HSP_HSYNC_START		16
> +#define ZR36057_HSP_LINE_TOT			0
> +
> +/* Field Horizontal Active Portion */
> +#define ZR36057_FHAP				0x110
> +#define ZR36057_FHAP_NAX			16
> +#define ZR36057_FHAP_PAX			0
> +
> +/* Field Vertical Active Portion */
> +#define ZR36057_FVAP				0x114
> +#define ZR36057_FVAP_NAY			16
> +#define ZR36057_FVAP_PAY			0
> +
> +/* Field Process Parameters */
> +#define ZR36057_FPP				0x118
> +#define ZR36057_FPP_ODD_EVEN			BIT(0)
> +
> +/* JPEG Code Base Address */
> +#define ZR36057_JCBA				0x11c
> +
> +/* JPEG Code FIFO Threshold */
> +#define ZR36057_JCFT				0x120
> +
> +/* JPEG Codec Guest ID */
> +#define ZR36057_JCGI				0x124
> +#define ZR36057_JCGI_JPE_GUEST_ID		4
> +#define ZR36057_JCGI_JPE_GUEST_REG		0
> +
> +/* GuestBus Control Register (2) */
> +#define ZR36057_GCR2				0x12c
> +
> +/* Post Office Register */
> +#define ZR36057_POR				0x200
> +#define ZR36057_POR_PO_PEN			BIT(25)
> +#define ZR36057_POR_PO_TIME			BIT(24)
> +#define ZR36057_POR_PO_DIR			BIT(23)
> +
> +/* "Still" Transfer Register */
> +#define ZR36057_STR				0x300
>   
>   #endif
> 

Regards
Matthias

