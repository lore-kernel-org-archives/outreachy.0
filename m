X-GM-THRID: 6808625193830842368
X-Received: by 2002:ab0:5bcc:: with SMTP id z12mr6771235uae.135.1585555886674;
        Mon, 30 Mar 2020 01:11:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ed4b:: with SMTP id m11ls2432926vsp.1.gmail; Mon, 30 Mar
 2020 01:11:25 -0700 (PDT)
X-Google-Smtp-Source: APiQypIAzyOBQialMa+tuSszGm7mkvalliXAl2mSID65g1bk3etdeJ5Oinn2OmMPuAsfE2XUMhTT
X-Received: by 2002:a67:d491:: with SMTP id g17mr7319955vsj.114.1585555884493;
        Mon, 30 Mar 2020 01:11:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585555884; cv=none;
        d=google.com; s=arc-20160816;
        b=vLfVHkaysTingxUgKK694yR3g26chDRXAVm1/nLz/bMEqr/c51niV64/Jud9Cb6yEm
         OPCU7/VYH1x+eZyjQ3ZpUeBp9UNUsv2Ik/+1WuunTqU+sCNFlMl58ycWBP+e3u219c2y
         50KZBwoLJCprpyFI13INCNCQdlevtZNLAPt6OLQ3dI9K1Ah4LexpKszZwHXm8qXMzIYj
         PHBfIykYPv6jU1k4Ow8R3o9+yKepeC9Wi3sArxdFqslOe6cRdViq3QMK6qxaoyavt+I5
         BHxeYIbrDMLbyE9LCo+N0SoOEJ+yvNtH/k51C2CgFvCisb7qfJB3zwfdKDZURKvqmIdy
         c5TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=JlPGXvL9jrj+WknaueLLbst2077kK39cFbE50rtkQuc=;
        b=1EGq2lIED/DVbU7Kdh1gTo/mxCCZd7q5OmLn7UO4RTyD1xS427el21hCj8XhAxjPgT
         G5hVLYmQHEVxxTOJM1yH71nl24q2v8L1Z3JC/oBCVoJQIEmjcPhAZnDvtf5zOb8lmP0R
         gY6v0T3fBz1jYZvPKcGoAaAyqNhAqC252dw6Ge2jxBCf88HHJcCqP0x1Y0TsYvjHHge4
         vjlyuERDKKGZvj+/gRpFZvuVTZgm15NEOVqtG0fGQOdHR1fxsVmaH8jqpOHzH2zeucPZ
         gvgIRXAy1FoI1hoM7AxwE+GhfNJBT0eXwn9S4Xd/ClGdar487VzG9eBJ/haS3oh3J0gC
         H3nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="V/vmBRwf";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id u6si220851uae.0.2020.03.30.01.11.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 01:11:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="V/vmBRwf";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585555883;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JlPGXvL9jrj+WknaueLLbst2077kK39cFbE50rtkQuc=;
	b=V/vmBRwfPziN7EsjXg4BFfgaKb1FkkfenDPLvMUkDm2d8RNHwzJmUDJjZlXrjGrqBoXbxp
	h2Q6x1YzBUU9qCihMaCzk2lb29mvpIbT9w+cEEDHszLMtJYHyktsriAQZTYhUjzLv4yuqh
	TvVpZg+89VxfRQK3M8lDUyqo6S/l8UU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-301-rIW8nMvxPYeT14GdYGjw_Q-1; Mon, 30 Mar 2020 04:11:19 -0400
X-MC-Unique: rIW8nMvxPYeT14GdYGjw_Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3969713FA;
	Mon, 30 Mar 2020 08:11:18 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4656BD7674;
	Mon, 30 Mar 2020 08:11:14 +0000 (UTC)
Date: Mon, 30 Mar 2020 10:11:07 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: omap4iss: Use BIT()
 macro.
Message-ID: <20200330101107.1c84b8f6@elisabeth>
In-Reply-To: <20200326210247.4746-1-jane.pnx9@gmail.com>
References: <20200326210247.4746-1-jane.pnx9@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 26 Mar 2020 17:02:47 -0400
Sam Muhammed <jane.pnx9@gmail.com> wrote:

> Use BIT() across the driver, since bit masking
> is better be done using the BIT macro.
> Change is done using this coccinelle script:
> 
> @bit@
> @@
> BIT(...)
> 
> @depends on bit@
> expression E;
> constant c;
> @@
> 
> (
> -1 << E
> +BIT(E)
> |
> -1 << c
> +BIT(c)
> )
> 
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
>  drivers/staging/media/omap4iss/iss.c        |  4 +-
>  drivers/staging/media/omap4iss/iss.h        | 22 +++---
>  drivers/staging/media/omap4iss/iss_csiphy.c |  6 +-
>  drivers/staging/media/omap4iss/iss_regs.h   | 78 ++++++++++-----------
>  drivers/staging/media/omap4iss/iss_video.h  | 16 ++---
>  5 files changed, 63 insertions(+), 63 deletions(-)
> 
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index 6fb60b58447a..baa1fa5d5c00 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -243,7 +243,7 @@ static void iss_isr_dbg(struct iss_device *iss, u32 irqstatus)
>  	dev_dbg(iss->dev, "ISS IRQ: ");
> 
>  	for (i = 0; i < ARRAY_SIZE(name); i++) {
> -		if ((1 << i) & irqstatus)
> +		if ((BIT(i)) & irqstatus)

There's a reason why 1 << i is surrounded by parentheses, but it makes
no sense to do that around a macro.

>  			pr_cont("%s ", name[i]);
>  	}
>  	pr_cont("\n");
> @@ -290,7 +290,7 @@ static void iss_isp_isr_dbg(struct iss_device *iss, u32 irqstatus)
>  	dev_dbg(iss->dev, "ISP IRQ: ");
> 
>  	for (i = 0; i < ARRAY_SIZE(name); i++) {
> -		if ((1 << i) & irqstatus)
> +		if ((BIT(i)) & irqstatus)

Same here.

>  			pr_cont("%s ", name[i]);
>  	}
>  	pr_cont("\n");
> diff --git a/drivers/staging/media/omap4iss/iss.h b/drivers/staging/media/omap4iss/iss.h
> index b88f9529683c..0c8a790c0ac7 100644
> --- a/drivers/staging/media/omap4iss/iss.h
> +++ b/drivers/staging/media/omap4iss/iss.h
> @@ -50,20 +50,20 @@ enum iss_mem_resources {
>  };
> 
>  enum iss_subclk_resource {
> -	OMAP4_ISS_SUBCLK_SIMCOP		= (1 << 0),
> -	OMAP4_ISS_SUBCLK_ISP		= (1 << 1),
> -	OMAP4_ISS_SUBCLK_CSI2_A		= (1 << 2),
> -	OMAP4_ISS_SUBCLK_CSI2_B		= (1 << 3),
> -	OMAP4_ISS_SUBCLK_CCP2		= (1 << 4),
> +	OMAP4_ISS_SUBCLK_SIMCOP		= (BIT(0)),
> +	OMAP4_ISS_SUBCLK_ISP		= (BIT(1)),
> +	OMAP4_ISS_SUBCLK_CSI2_A		= (BIT(2)),
> +	OMAP4_ISS_SUBCLK_CSI2_B		= (BIT(3)),
> +	OMAP4_ISS_SUBCLK_CCP2		= (BIT(4)),

Here, too.

>  };
> 
>  enum iss_isp_subclk_resource {
> -	OMAP4_ISS_ISP_SUBCLK_BL		= (1 << 0),
> -	OMAP4_ISS_ISP_SUBCLK_ISIF	= (1 << 1),
> -	OMAP4_ISS_ISP_SUBCLK_H3A	= (1 << 2),
> -	OMAP4_ISS_ISP_SUBCLK_RSZ	= (1 << 3),
> -	OMAP4_ISS_ISP_SUBCLK_IPIPE	= (1 << 4),
> -	OMAP4_ISS_ISP_SUBCLK_IPIPEIF	= (1 << 5),
> +	OMAP4_ISS_ISP_SUBCLK_BL		= (BIT(0)),
> +	OMAP4_ISS_ISP_SUBCLK_ISIF	= (BIT(1)),
> +	OMAP4_ISS_ISP_SUBCLK_H3A	= (BIT(2)),
> +	OMAP4_ISS_ISP_SUBCLK_RSZ	= (BIT(3)),
> +	OMAP4_ISS_ISP_SUBCLK_IPIPE	= (BIT(4)),
> +	OMAP4_ISS_ISP_SUBCLK_IPIPEIF	= (BIT(5)),

And here.

>  };
> 
>  /*
> diff --git a/drivers/staging/media/omap4iss/iss_csiphy.c b/drivers/staging/media/omap4iss/iss_csiphy.c
> index 96f2ce045138..1bdd4ecd900d 100644
> --- a/drivers/staging/media/omap4iss/iss_csiphy.c
> +++ b/drivers/staging/media/omap4iss/iss_csiphy.c
> @@ -179,10 +179,10 @@ int omap4iss_csiphy_config(struct iss_device *iss,
>  		    lanes->data[i].pos > (csi2->phy->max_data_lanes + 1))
>  			return -EINVAL;
> 
> -		if (used_lanes & (1 << lanes->data[i].pos))
> +		if (used_lanes & (BIT(lanes->data[i].pos)))
>  			return -EINVAL;
> 
> -		used_lanes |= 1 << lanes->data[i].pos;
> +		used_lanes |= BIT(lanes->data[i].pos);
>  		csi2->phy->used_data_lanes++;
>  	}
> 
> @@ -190,7 +190,7 @@ int omap4iss_csiphy_config(struct iss_device *iss,
>  	    lanes->clk.pos > (csi2->phy->max_data_lanes + 1))
>  		return -EINVAL;
> 
> -	if (lanes->clk.pos == 0 || used_lanes & (1 << lanes->clk.pos))
> +	if (lanes->clk.pos == 0 || used_lanes & (BIT(lanes->clk.pos)))
>  		return -EINVAL;
> 
>  	csi2_ddrclk_khz = pipe->external_rate / 1000

And here.

> diff --git a/drivers/staging/media/omap4iss/iss_regs.h b/drivers/staging/media/omap4iss/iss_regs.h
> index 09a7375c89ac..7adc944e1a5d 100644
> --- a/drivers/staging/media/omap4iss/iss_regs.h
> +++ b/drivers/staging/media/omap4iss/iss_regs.h
> @@ -38,7 +38,7 @@
>  #define ISS_CTRL_CLK_DIV_MASK				(3 << 4)
>  #define ISS_CTRL_INPUT_SEL_MASK				(3 << 2)
>  #define ISS_CTRL_INPUT_SEL_CSI2A			(0 << 2)
> -#define ISS_CTRL_INPUT_SEL_CSI2B			(1 << 2)
> +#define ISS_CTRL_INPUT_SEL_CSI2B			(BIT(2))
>  #define ISS_CTRL_SYNC_DETECT_VS_RAISING			(3 << 0)

The existing code is saying: there are three bits to select the input,
starting from bit number 2. For those three bits, 0 means the CSI2A
input is selected, and 1 means CSI2B is selected.

You're changing it to: there are three bits to select the input,
starting from bit number 2. For those three bits, 0 means the CSI2A
input is selected. CSI2B is a special case, though: register bit 2 needs
to be set.

> 
>  #define ISS_CLKCTRL					0x84
> @@ -93,10 +93,10 @@
>  #define CSI2_SYSCONFIG					0x10
>  #define CSI2_SYSCONFIG_MSTANDBY_MODE_MASK		(3 << 12)
>  #define CSI2_SYSCONFIG_MSTANDBY_MODE_FORCE		(0 << 12)
> -#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(1 << 12)
> +#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(BIT(12))
>  #define CSI2_SYSCONFIG_MSTANDBY_MODE_SMART		(2 << 12)
> -#define CSI2_SYSCONFIG_SOFT_RESET			(1 << 1)
> -#define CSI2_SYSCONFIG_AUTO_IDLE			(1 << 0)
> +#define CSI2_SYSCONFIG_SOFT_RESET			(BIT(1))
> +#define CSI2_SYSCONFIG_AUTO_IDLE			(BIT(0))

Also no need for parentheses around BIT().

> 
>  #define CSI2_SYSSTATUS					0x14
>  #define CSI2_SYSSTATUS_RESET_DONE			BIT(0)
> @@ -119,37 +119,37 @@
>  #define CSI2_CTRL_MFLAG_LEVH_SHIFT			20
>  #define CSI2_CTRL_MFLAG_LEVL_MASK			(7 << 17)
>  #define CSI2_CTRL_MFLAG_LEVL_SHIFT			17
> -#define CSI2_CTRL_BURST_SIZE_EXPAND			(1 << 16)
> -#define CSI2_CTRL_VP_CLK_EN				(1 << 15)
> -#define CSI2_CTRL_NON_POSTED_WRITE			(1 << 13)
> -#define CSI2_CTRL_VP_ONLY_EN				(1 << 11)
> +#define CSI2_CTRL_BURST_SIZE_EXPAND			(BIT(16))
> +#define CSI2_CTRL_VP_CLK_EN				(BIT(15))
> +#define CSI2_CTRL_NON_POSTED_WRITE			(BIT(13))
> +#define CSI2_CTRL_VP_ONLY_EN				(BIT(11))
>  #define CSI2_CTRL_VP_OUT_CTRL_MASK			(3 << 8)
>  #define CSI2_CTRL_VP_OUT_CTRL_SHIFT			8
> -#define CSI2_CTRL_DBG_EN				(1 << 7)
> +#define CSI2_CTRL_DBG_EN				(BIT(7))
>  #define CSI2_CTRL_BURST_SIZE_MASK			(3 << 5)
> -#define CSI2_CTRL_ENDIANNESS				(1 << 4)
> -#define CSI2_CTRL_FRAME					(1 << 3)
> -#define CSI2_CTRL_ECC_EN				(1 << 2)
> -#define CSI2_CTRL_IF_EN					(1 << 0)
> +#define CSI2_CTRL_ENDIANNESS				(BIT(4))
> +#define CSI2_CTRL_FRAME					(BIT(3))
> +#define CSI2_CTRL_ECC_EN				(BIT(2))
> +#define CSI2_CTRL_IF_EN					(BIT(0))
> 
>  #define CSI2_DBG_H					0x44
> 
>  #define CSI2_COMPLEXIO_CFG				0x50
> -#define CSI2_COMPLEXIO_CFG_RESET_CTRL			(1 << 30)
> -#define CSI2_COMPLEXIO_CFG_RESET_DONE			(1 << 29)
> +#define CSI2_COMPLEXIO_CFG_RESET_CTRL			(BIT(30))
> +#define CSI2_COMPLEXIO_CFG_RESET_DONE			(BIT(29))
>  #define CSI2_COMPLEXIO_CFG_PWD_CMD_MASK			(3 << 27)
>  #define CSI2_COMPLEXIO_CFG_PWD_CMD_OFF			(0 << 27)
> -#define CSI2_COMPLEXIO_CFG_PWD_CMD_ON			(1 << 27)
> +#define CSI2_COMPLEXIO_CFG_PWD_CMD_ON			(BIT(27))
>  #define CSI2_COMPLEXIO_CFG_PWD_CMD_ULP			(2 << 27)
>  #define CSI2_COMPLEXIO_CFG_PWD_STATUS_MASK		(3 << 25)
>  #define CSI2_COMPLEXIO_CFG_PWD_STATUS_OFF		(0 << 25)
> -#define CSI2_COMPLEXIO_CFG_PWD_STATUS_ON		(1 << 25)
> +#define CSI2_COMPLEXIO_CFG_PWD_STATUS_ON		(BIT(25))
>  #define CSI2_COMPLEXIO_CFG_PWD_STATUS_ULP		(2 << 25)
> -#define CSI2_COMPLEXIO_CFG_PWR_AUTO			(1 << 24)
> -#define CSI2_COMPLEXIO_CFG_DATA_POL(i)			(1 << (((i) * 4) + 3))
> +#define CSI2_COMPLEXIO_CFG_PWR_AUTO			(BIT(24))
> +#define CSI2_COMPLEXIO_CFG_DATA_POL(i)			(BIT((((i) * 4) + 3)))
>  #define CSI2_COMPLEXIO_CFG_DATA_POSITION_MASK(i)	(7 << ((i) * 4))
>  #define CSI2_COMPLEXIO_CFG_DATA_POSITION_SHIFT(i)	((i) * 4)
> -#define CSI2_COMPLEXIO_CFG_CLOCK_POL			(1 << 3)
> +#define CSI2_COMPLEXIO_CFG_CLOCK_POL			(BIT(3))
>  #define CSI2_COMPLEXIO_CFG_CLOCK_POSITION_MASK		(7 << 0)
>  #define CSI2_COMPLEXIO_CFG_CLOCK_POSITION_SHIFT		0
> 
> @@ -218,7 +218,7 @@
>  		(0x3 << CSI2_CTX_CTRL2_USER_DEF_MAP_SHIFT)
>  #define CSI2_CTX_CTRL2_VIRTUAL_ID_MASK			(3 << 11)
>  #define CSI2_CTX_CTRL2_VIRTUAL_ID_SHIFT			11
> -#define CSI2_CTX_CTRL2_DPCM_PRED			(1 << 10)
> +#define CSI2_CTX_CTRL2_DPCM_PRED			(BIT(10))
>  #define CSI2_CTX_CTRL2_FORMAT_MASK			(0x3ff << 0)
>  #define CSI2_CTX_CTRL2_FORMAT_SHIFT			0
> 
> @@ -259,9 +259,9 @@
>  #define ISP5_SYSCONFIG					(0x0010)
>  #define ISP5_SYSCONFIG_STANDBYMODE_MASK			(3 << 4)
>  #define ISP5_SYSCONFIG_STANDBYMODE_FORCE		(0 << 4)
> -#define ISP5_SYSCONFIG_STANDBYMODE_NO			(1 << 4)
> +#define ISP5_SYSCONFIG_STANDBYMODE_NO			(BIT(4))

"Standby mode is forced by clearing 3 bits at index 4. Smart mode is set
by setting 2 as value for those bits. No standby mode is an entirely
different story: set bit 4 of ISP5_SYSCONFIG."

>  #define ISP5_SYSCONFIG_STANDBYMODE_SMART		(2 << 4)
> -#define ISP5_SYSCONFIG_SOFTRESET			(1 << 1)
> +#define ISP5_SYSCONFIG_SOFTRESET			(BIT(1))
> 
>  #define ISP5_IRQSTATUS(i)				(0x0028 + (0x10 * (i)))
>  #define ISP5_IRQENABLE_SET(i)				(0x002c + (0x10 * (i)))
> @@ -315,14 +315,14 @@
>  #define ISIF_MODESET					(0x0004)
>  #define ISIF_MODESET_INPMOD_MASK			(3 << 12)
>  #define ISIF_MODESET_INPMOD_RAW				(0 << 12)
> -#define ISIF_MODESET_INPMOD_YCBCR16			(1 << 12)
> +#define ISIF_MODESET_INPMOD_YCBCR16			(BIT(12))
>  #define ISIF_MODESET_INPMOD_YCBCR8			(2 << 12)
>  #define ISIF_MODESET_CCDW_MASK				(7 << 8)
>  #define ISIF_MODESET_CCDW_2BIT				(2 << 8)
> -#define ISIF_MODESET_CCDMD				(1 << 7)
> -#define ISIF_MODESET_SWEN				(1 << 5)
> -#define ISIF_MODESET_HDPOL				(1 << 3)
> -#define ISIF_MODESET_VDPOL				(1 << 2)
> +#define ISIF_MODESET_CCDMD				(BIT(7))
> +#define ISIF_MODESET_SWEN				(BIT(5))
> +#define ISIF_MODESET_HDPOL				(BIT(3))
> +#define ISIF_MODESET_VDPOL				(BIT(2))
> 
>  #define ISIF_SPH					(0x0018)
>  #define ISIF_SPH_MASK					(0x7fff)
> @@ -345,19 +345,19 @@
> 
>  #define ISIF_CCOLP					(0x004c)
>  #define ISIF_CCOLP_CP0_F0_R				(0 << 6)
> -#define ISIF_CCOLP_CP0_F0_GR				(1 << 6)
> +#define ISIF_CCOLP_CP0_F0_GR				(BIT(6))
>  #define ISIF_CCOLP_CP0_F0_B				(3 << 6)
>  #define ISIF_CCOLP_CP0_F0_GB				(2 << 6)
>  #define ISIF_CCOLP_CP1_F0_R				(0 << 4)
> -#define ISIF_CCOLP_CP1_F0_GR				(1 << 4)
> +#define ISIF_CCOLP_CP1_F0_GR				(BIT(4))
>  #define ISIF_CCOLP_CP1_F0_B				(3 << 4)
>  #define ISIF_CCOLP_CP1_F0_GB				(2 << 4)
>  #define ISIF_CCOLP_CP2_F0_R				(0 << 2)
> -#define ISIF_CCOLP_CP2_F0_GR				(1 << 2)
> +#define ISIF_CCOLP_CP2_F0_GR				(BIT(2))
>  #define ISIF_CCOLP_CP2_F0_B				(3 << 2)
>  #define ISIF_CCOLP_CP2_F0_GB				(2 << 2)
>  #define ISIF_CCOLP_CP3_F0_R				(0 << 0)
> -#define ISIF_CCOLP_CP3_F0_GR				(1 << 0)
> +#define ISIF_CCOLP_CP3_F0_GR				(BIT(0))
>  #define ISIF_CCOLP_CP3_F0_B				(3 << 0)
>  #define ISIF_CCOLP_CP3_F0_GB				(2 << 0)
> 
> @@ -377,12 +377,12 @@
>  #define IPIPEIF_CFG1					(0x0004)
>  #define IPIPEIF_CFG1_INPSRC1_MASK			(3 << 14)
>  #define IPIPEIF_CFG1_INPSRC1_VPORT_RAW			(0 << 14)
> -#define IPIPEIF_CFG1_INPSRC1_SDRAM_RAW			(1 << 14)
> +#define IPIPEIF_CFG1_INPSRC1_SDRAM_RAW			(BIT(14))
>  #define IPIPEIF_CFG1_INPSRC1_ISIF_DARKFM		(2 << 14)
>  #define IPIPEIF_CFG1_INPSRC1_SDRAM_YUV			(3 << 14)
>  #define IPIPEIF_CFG1_INPSRC2_MASK			(3 << 2)
>  #define IPIPEIF_CFG1_INPSRC2_ISIF			(0 << 2)
> -#define IPIPEIF_CFG1_INPSRC2_SDRAM_RAW			(1 << 2)
> +#define IPIPEIF_CFG1_INPSRC2_SDRAM_RAW			(BIT(2))
>  #define IPIPEIF_CFG1_INPSRC2_ISIF_DARKFM		(2 << 2)
>  #define IPIPEIF_CFG1_INPSRC2_SDRAM_YUV			(3 << 2)
> 
> @@ -406,25 +406,25 @@
> 
>  #define IPIPE_SRC_FMT					(0x0008)
>  #define IPIPE_SRC_FMT_RAW2YUV				(0 << 0)
> -#define IPIPE_SRC_FMT_RAW2RAW				(1 << 0)
> +#define IPIPE_SRC_FMT_RAW2RAW				(BIT(0))
>  #define IPIPE_SRC_FMT_RAW2STATS				(2 << 0)
>  #define IPIPE_SRC_FMT_YUV2YUV				(3 << 0)
> 
>  #define IPIPE_SRC_COL					(0x000c)
>  #define IPIPE_SRC_COL_OO_R				(0 << 6)
> -#define IPIPE_SRC_COL_OO_GR				(1 << 6)
> +#define IPIPE_SRC_COL_OO_GR				(BIT(6))
>  #define IPIPE_SRC_COL_OO_B				(3 << 6)
>  #define IPIPE_SRC_COL_OO_GB				(2 << 6)
>  #define IPIPE_SRC_COL_OE_R				(0 << 4)
> -#define IPIPE_SRC_COL_OE_GR				(1 << 4)
> +#define IPIPE_SRC_COL_OE_GR				(BIT(4))
>  #define IPIPE_SRC_COL_OE_B				(3 << 4)
>  #define IPIPE_SRC_COL_OE_GB				(2 << 4)
>  #define IPIPE_SRC_COL_EO_R				(0 << 2)
> -#define IPIPE_SRC_COL_EO_GR				(1 << 2)
> +#define IPIPE_SRC_COL_EO_GR				(BIT(2))
>  #define IPIPE_SRC_COL_EO_B				(3 << 2)
>  #define IPIPE_SRC_COL_EO_GB				(2 << 2)
>  #define IPIPE_SRC_COL_EE_R				(0 << 0)
> -#define IPIPE_SRC_COL_EE_GR				(1 << 0)
> +#define IPIPE_SRC_COL_EE_GR				(BIT(0))
>  #define IPIPE_SRC_COL_EE_B				(3 << 0)
>  #define IPIPE_SRC_COL_EE_GB				(2 << 0)
> 
> diff --git a/drivers/staging/media/omap4iss/iss_video.h b/drivers/staging/media/omap4iss/iss_video.h
> index 8b3dd92021e1..c0d021636224 100644
> --- a/drivers/staging/media/omap4iss/iss_video.h
> +++ b/drivers/staging/media/omap4iss/iss_video.h
> @@ -56,17 +56,17 @@ enum iss_pipeline_state {
>  	/* The stream has been started on the input video node. */
>  	ISS_PIPELINE_STREAM_INPUT = 1,
>  	/* The stream has been started on the output video node. */
> -	ISS_PIPELINE_STREAM_OUTPUT = (1 << 1),
> +	ISS_PIPELINE_STREAM_OUTPUT = (BIT(1)),
>  	/* At least one buffer is queued on the input video node. */
> -	ISS_PIPELINE_QUEUE_INPUT = (1 << 2),
> +	ISS_PIPELINE_QUEUE_INPUT = (BIT(2)),
>  	/* At least one buffer is queued on the output video node. */
> -	ISS_PIPELINE_QUEUE_OUTPUT = (1 << 3),
> +	ISS_PIPELINE_QUEUE_OUTPUT = (BIT(3)),
>  	/* The input entity is idle, ready to be started. */
> -	ISS_PIPELINE_IDLE_INPUT = (1 << 4),
> +	ISS_PIPELINE_IDLE_INPUT = (BIT(4)),
>  	/* The output entity is idle, ready to be started. */
> -	ISS_PIPELINE_IDLE_OUTPUT = (1 << 5),
> +	ISS_PIPELINE_IDLE_OUTPUT = (BIT(5)),
>  	/* The pipeline is currently streaming. */
> -	ISS_PIPELINE_STREAM = (1 << 6),
> +	ISS_PIPELINE_STREAM = (BIT(6)),
>  };
> 
>  /*
> @@ -120,9 +120,9 @@ struct iss_buffer {
> 
>  enum iss_video_dmaqueue_flags {
>  	/* Set if DMA queue becomes empty when ISS_PIPELINE_STREAM_CONTINUOUS */
> -	ISS_VIDEO_DMAQUEUE_UNDERRUN = (1 << 0),
> +	ISS_VIDEO_DMAQUEUE_UNDERRUN = (BIT(0)),
>  	/* Set when queuing buffer to an empty DMA queue */
> -	ISS_VIDEO_DMAQUEUE_QUEUED = (1 << 1),
> +	ISS_VIDEO_DMAQUEUE_QUEUED = (BIT(1)),
>  };

No need for parentheses in all the hunks above.

-- 
Stefano


