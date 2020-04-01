X-GM-THRID: 6810510356795883520
X-Received: by 2002:a0c:f5c8:: with SMTP id q8mr19853449qvm.106.1585709746751;
        Tue, 31 Mar 2020 19:55:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:1971:: with SMTP id g46ls9344484qtk.7.gmail; Tue, 31 Mar
 2020 19:55:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvWsCUegUzJ//HW2lXJuF17zM7WIe9IMwljgyczSWOoPjf+CEz1xii1NAxQbIIDRuMmep9r
X-Received: by 2002:aed:2a87:: with SMTP id t7mr8170798qtd.206.1585709745632;
        Tue, 31 Mar 2020 19:55:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585709745; cv=none;
        d=google.com; s=arc-20160816;
        b=g6CMKp7ooaSadGfh6mKGg/dIJO114THZ84SLAobb5aOU6kfGEO8r071Fcou5ZVUOsg
         PEBRLkIRII/R7VQ3WfZdN6CW0wKUrUJRAxvla6SjhgNQQBlRMq0uBrC8kz+8QFIofH65
         JcMxX7R8eU71Gm3FFDGaCw1+SJqHmzXOn7YHDvyTcugCUJyX16FoECEPCuIEKGqLTUoj
         NcaxJWEJfFPc/uJpCg13ajhS8OGfgl4FCfzI70Efdo+AtjC0zQvJim9NK8FzAXdiXI0F
         EFq1rXAE+ZDuVaY/epPj5//p5YZ26oSpaxsOi/wr/WlpObahKzOAZedwizpmWa4uTtqB
         sz7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=CMi+BiSpl058Q3Sv/O9KnjgTApbAYB6QQAPMlynOVO0=;
        b=m+rEz66SvWYOOYuoVxb1MbTPOItY+K+iUsvrCKBVwVB300rNaIvIclOKmtdz2pyrws
         qLmBIgZrZpEH9BipAoVa1kyNqbe+quxdJygjwBukMJqFTglH5huATG2afW6xFB4CNztr
         PFUEkeQDAonUTYM6s06le1OLQ9PQfItbtwUV30LnloXT/81TuDxiMw/VwD9Zy5N5wiWC
         whe0bzPadI0xN5RUabz1kIHmCaDoxUPnYTfMnM6kraJnH3Hdp3qjDVbRaA0YOnr5qgpW
         KED9YzO6FgLr5JKmBabj4Bl47+WmvOIdjHG3VhVOso/UBPRhBA0QT6wf+TJ8CvCfjMRa
         BAUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GbFkmOy8;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id j56si75680qta.0.2020.03.31.19.55.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 19:55:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GbFkmOy8;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585709744;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CMi+BiSpl058Q3Sv/O9KnjgTApbAYB6QQAPMlynOVO0=;
	b=GbFkmOy8BeDJTMHsXJqEDHTPqluB2CGX7E38wzP6zceSXRw/bAqZTGjZn0cG3eQQPeucnj
	xemy/ZQhCRvqeXGmAN06r6L5LVx85Q+2QoqKKAAUeURKj+76ptESnKFlJR4SwRxWZMNJGK
	xznogOE3PcCXV/jQ5eVfsQnn6Qn0Nx8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-307-oRPkeTdkN8GhxJ4sOBCTYg-1; Tue, 31 Mar 2020 22:55:39 -0400
X-MC-Unique: oRPkeTdkN8GhxJ4sOBCTYg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DAA008010F4;
	Wed,  1 Apr 2020 02:55:37 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 13A0C60BE0;
	Wed,  1 Apr 2020 02:55:35 +0000 (UTC)
Date: Wed, 1 Apr 2020 04:55:31 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: omap4iss: Use
 BIT() macro
Message-ID: <20200401045531.5de93729@elisabeth>
In-Reply-To: <20200331225817.14834-1-jane.pnx9@gmail.com>
References: <20200331225817.14834-1-jane.pnx9@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 31 Mar 2020 18:58:17 -0400
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
> -(1 << E)
> +BIT(E)
> |
> -(1 << c)
> +BIT(c)
> )
> 
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
> Change in v2:
> - removed unneeded parentheses around BIT,
>   they are not needed.
> - reverted two hunks in iss_reg.h, using BIT
>   in both places makes the code confusing to
>   understand.
> Changes suggested by Stefano Brivio.
> 
>  drivers/staging/media/omap4iss/iss.c        |  4 +-
>  drivers/staging/media/omap4iss/iss.h        | 22 +++----
>  drivers/staging/media/omap4iss/iss_csiphy.c |  6 +-
>  drivers/staging/media/omap4iss/iss_regs.h   | 72 ++++++++++-----------
>  drivers/staging/media/omap4iss/iss_video.h  | 16 ++---
>  5 files changed, 60 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index 6fb60b58447a..2dc5c1bb34f9 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -243,7 +243,7 @@ static void iss_isr_dbg(struct iss_device *iss, u32 irqstatus)
>  	dev_dbg(iss->dev, "ISS IRQ: ");
> 
>  	for (i = 0; i < ARRAY_SIZE(name); i++) {
> -		if ((1 << i) & irqstatus)
> +		if (BIT(i) & irqstatus)
>  			pr_cont("%s ", name[i]);
>  	}
>  	pr_cont("\n");

Fine.

> @@ -290,7 +290,7 @@ static void iss_isp_isr_dbg(struct iss_device *iss, u32 irqstatus)
>  	dev_dbg(iss->dev, "ISP IRQ: ");
> 
>  	for (i = 0; i < ARRAY_SIZE(name); i++) {
> -		if ((1 << i) & irqstatus)
> +		if (BIT(i) & irqstatus)
>  			pr_cont("%s ", name[i]);
>  	}
>  	pr_cont("\n");

Fine.

> diff --git a/drivers/staging/media/omap4iss/iss.h b/drivers/staging/media/omap4iss/iss.h
> index b88f9529683c..70371461b5be 100644
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
> +	OMAP4_ISS_SUBCLK_SIMCOP		= BIT(0),
> +	OMAP4_ISS_SUBCLK_ISP		= BIT(1),
> +	OMAP4_ISS_SUBCLK_CSI2_A		= BIT(2),
> +	OMAP4_ISS_SUBCLK_CSI2_B		= BIT(3),
> +	OMAP4_ISS_SUBCLK_CCP2		= BIT(4),
>  };
> 
>  enum iss_isp_subclk_resource {
> -	OMAP4_ISS_ISP_SUBCLK_BL		= (1 << 0),
> -	OMAP4_ISS_ISP_SUBCLK_ISIF	= (1 << 1),
> -	OMAP4_ISS_ISP_SUBCLK_H3A	= (1 << 2),
> -	OMAP4_ISS_ISP_SUBCLK_RSZ	= (1 << 3),
> -	OMAP4_ISS_ISP_SUBCLK_IPIPE	= (1 << 4),
> -	OMAP4_ISS_ISP_SUBCLK_IPIPEIF	= (1 << 5),
> +	OMAP4_ISS_ISP_SUBCLK_BL		= BIT(0),
> +	OMAP4_ISS_ISP_SUBCLK_ISIF	= BIT(1),
> +	OMAP4_ISS_ISP_SUBCLK_H3A	= BIT(2),
> +	OMAP4_ISS_ISP_SUBCLK_RSZ	= BIT(3),
> +	OMAP4_ISS_ISP_SUBCLK_IPIPE	= BIT(4),
> +	OMAP4_ISS_ISP_SUBCLK_IPIPEIF	= BIT(5),
>  };
> 
>  /*

Nice.

> diff --git a/drivers/staging/media/omap4iss/iss_csiphy.c b/drivers/staging/media/omap4iss/iss_csiphy.c
> index 96f2ce045138..e2cad0a31098 100644
> --- a/drivers/staging/media/omap4iss/iss_csiphy.c
> +++ b/drivers/staging/media/omap4iss/iss_csiphy.c
> @@ -179,10 +179,10 @@ int omap4iss_csiphy_config(struct iss_device *iss,
>  		    lanes->data[i].pos > (csi2->phy->max_data_lanes + 1))
>  			return -EINVAL;
> 
> -		if (used_lanes & (1 << lanes->data[i].pos))
> +		if (used_lanes & BIT(lanes->data[i].pos))
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
> +	if (lanes->clk.pos == 0 || used_lanes & BIT(lanes->clk.pos))
>  		return -EINVAL;
> 
>  	csi2_ddrclk_khz = pipe->external_rate / 1000

So far so good.

> diff --git a/drivers/staging/media/omap4iss/iss_regs.h b/drivers/staging/media/omap4iss/iss_regs.h
> index 09a7375c89ac..85c6fefeb13a 100644
> --- a/drivers/staging/media/omap4iss/iss_regs.h
> +++ b/drivers/staging/media/omap4iss/iss_regs.h
> @@ -93,10 +93,10 @@
>  #define CSI2_SYSCONFIG					0x10
>  #define CSI2_SYSCONFIG_MSTANDBY_MODE_MASK		(3 << 12)
>  #define CSI2_SYSCONFIG_MSTANDBY_MODE_FORCE		(0 << 12)
> -#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(1 << 12)
> +#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			BIT(12)
>  #define CSI2_SYSCONFIG_MSTANDBY_MODE_SMART		(2 << 12)

Nope (and many other snippets like this below). This is a region
starting at bit 12. You can write 0, 1, 2, or 3. That doesn't make bit
number 12 any special.

It's a 1 written into this region starting at bit 12. It's not bit 12.
For the compiler it's the same. For humans, and for hardware design,
it's definitely not.

Now, going back to your "somehow" understanding my table... why
"somehow"? :) Please tell me what's not clear, instead.

-- 
Stefano


