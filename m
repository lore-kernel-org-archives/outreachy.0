X-GM-THRID: 6950254518663643136
X-Received: by 2002:adf:f944:: with SMTP id q4mr28004924wrr.281.1618234881526;
        Mon, 12 Apr 2021 06:41:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:4a04:: with SMTP id c4ls747967wmp.1.gmail; Mon, 12
 Apr 2021 06:41:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyVvL2gFT8KYSJnT9EkYbilA14hxGNxU+9N12mifVNAGO+tGJBWElZl7TCXUXSqLzz26NOw
X-Received: by 2002:a05:600c:3515:: with SMTP id h21mr27065588wmq.9.1618234880116;
        Mon, 12 Apr 2021 06:41:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618234880; cv=none;
        d=google.com; s=arc-20160816;
        b=zwP0ykhV1JKo0VD9d6TEHp/dmux50x5s6SSoKSdEboQlRVd1LWP1v03DiEHVC9pefL
         WdQEWTVHkJgk9H5OpYW6TNovk1tOvAwFlVtNoT6exU8tuGXm06vBjSVSCUInnpdo/3sz
         cUHMtgEjCG7/nXX+CMOIDUnxqe4dAXkGmFHuhVPpXHeejVmo6IuiZ1Wj2m2o8js+R00R
         SOhgV6gAS214iluyXP3JUr5FZNgaWoNQxsyh43DT6+gS/6B6B09AugpEBpQGy2bR4eop
         f9pDAyw0hbqvmBdE9bGV/CWFIg/vdmHy2NH/aq0BQPpHn69rpo9sBYMyUOr9rfE+lMv3
         rUWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rQ1W0gpm3aPiAQvjm5pUIn1af2hALbGQL0vPuy1RHsM=;
        b=nWY05EunzXSEgAKm8rkzxykIfI9S+C7XB4hV7uGE5RCYBzythgrAZEFTUqdlCxfFTu
         Nl7lrrlg8peTutFHT2I/eMBlL9ZdNeT/JOTME8d4kEPlHbLzQGs4ghWLrrtQIMBHyF5O
         vlwNJAs0bs8YW9072GQ7l1bC3oaAXWrvbqywt3J+c1ygLPRsBagh4GTuYT0YOq+swvoa
         7TSuwX2+xqL+R3dO8I8g9gdu08EXCTo0hvRMM+tZcxJeo6BWtA024hCz6wBzQ4oli8Wj
         HNw4fkRRRzzOMXep5WDNat/7Gtq8BBYYtrgb1jmOYL+sTJcpVBK6kHV6qdscGGENGFZ1
         /7gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=Pj+KdwAX;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com. [213.167.242.64])
        by gmr-mx.google.com with ESMTPS id p65si2805wmp.0.2021.04.12.06.41.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 06:41:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) client-ip=213.167.242.64;
Authentication-Results: gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=Pj+KdwAX;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 61F3E3F0;
	Mon, 12 Apr 2021 15:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1618234879;
	bh=Yw/wZQVEH1BcaYF1r7FYIcCDtqB03Gdz7x1hGwb4OBc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pj+KdwAXg+afY5joKq2F6Q++4UJPoOO1d3uSkNTq/hIQb6tt0ZWWimHUlfGLQ8Bms
	 TE4w5kqakddjtmc9wgLPmV3PDAMqb2cGf/TW6rbRf58UUW3LzNJOqWVle5GyTyV1SI
	 dKAAPb31/3clW70FJNi6SSOt3h6+8qWHUjV2Wx7c=
Date: Mon, 12 Apr 2021 16:40:30 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel][PATCH 1/4 v2] staging: media: omap4iss:
 Replace macro function by static inline function in file iss.c
Message-ID: <YHRNzq3h3LEp3Dgc@pendragon.ideasonboard.com>
References: <cover.1618231618.git.alinesantanacordeiro@gmail.com>
 <e302566a3d9e5180ab27eb2c2824fd1b678a6d99.1618231618.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <e302566a3d9e5180ab27eb2c2824fd1b678a6d99.1618231618.git.alinesantanacordeiro@gmail.com>

Hi Aline,

While testing on a device isn't a requirement as you can't be expected
to have the necessary hardware, changes are expected to be at least
compile-tested before being submitted.

On Mon, Apr 12, 2021 at 09:57:09AM -0300, Aline Santana Cordeiro wrote:
> Replace macro function by static inline function.
> Issue suggested by Julia.
> 
> Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
> ---
> 
> Changes since v1:
>  - Insert file path in commit message
> 
>  drivers/staging/media/omap4iss/iss.c | 24 +++++++++++++-----------
>  1 file changed, 13 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index c89f268a..3bbc39e 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -27,22 +27,24 @@
>  #include "iss.h"
>  #include "iss_regs.h"
>  
> -#define ISS_PRINT_REGISTER(iss, name)\
> -	dev_dbg(iss->dev, "###ISS " #name "=0x%08x\n", \
> -		iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_##name))
> +static inline iss_print_register(iss, name)
> +{
> +	dev_dbg(iss->dev, "###ISS " #name "=0x%08x\n",
> +		iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_##name));
> +}
>  
>  static void iss_print_status(struct iss_device *iss)
>  {
>  	dev_dbg(iss->dev, "-------------ISS HL Register dump-------------\n");
>  
> -	ISS_PRINT_REGISTER(iss, HL_REVISION);
> -	ISS_PRINT_REGISTER(iss, HL_SYSCONFIG);
> -	ISS_PRINT_REGISTER(iss, HL_IRQSTATUS(5));
> -	ISS_PRINT_REGISTER(iss, HL_IRQENABLE_SET(5));
> -	ISS_PRINT_REGISTER(iss, HL_IRQENABLE_CLR(5));
> -	ISS_PRINT_REGISTER(iss, CTRL);
> -	ISS_PRINT_REGISTER(iss, CLKCTRL);
> -	ISS_PRINT_REGISTER(iss, CLKSTAT);
> +	iss_print_register(iss, HL_REVISION);
> +	iss_print_register(iss, HL_SYSCONFIG);
> +	iss_print_register(iss, HL_IRQSTATUS(5));
> +	iss_print_register(iss, HL_IRQENABLE_SET(5));
> +	iss_print_register(iss, HL_IRQENABLE_CLR(5));
> +	iss_print_register(iss, CTRL);
> +	iss_print_register(iss, CLKCTRL);
> +	iss_print_register(iss, CLKSTAT);
>  
>  	dev_dbg(iss->dev, "-----------------------------------------------\n");
>  }

-- 
Regards,

Laurent Pinchart

