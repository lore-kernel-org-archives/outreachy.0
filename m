X-GM-THRID: 6671020394532569088
X-Received: by 2002:a02:1b54:: with SMTP id l81mr5627300jad.87.1553232374302;
        Thu, 21 Mar 2019 22:26:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls3301016ioc.3.gmail; Thu, 21 Mar
 2019 22:26:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwGS8YAIn3poNNZFeSCjFkPvWNP4x0pfx76gPXGiLfujW2leMUNdUG2MS4VXMkj8R01LaKa
X-Received: by 2002:a6b:7f49:: with SMTP id m9mr5630969ioq.288.1553232373400;
        Thu, 21 Mar 2019 22:26:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553232373; cv=none;
        d=google.com; s=arc-20160816;
        b=UDFSjFPekUfm33cjTeC6LJwv+pBHl+3cFKqojhibgmG9QzolCaXEr9LGWk6baHPa3s
         wBzLlZwCOz2NrG0vHEC41Uxup584Bx/s9aO5f/Oq7RUz1xktO/Vf9YU4XVEJ57EoFXFQ
         6cRNENoJLkiU+Y6Y9AmRsQRZDPQFAEEq8Us5OjcZV9uuOKbdv6iXSxKNR8cZqhMm/kUT
         OWjp5RmGT4raSW1pRbf/PvMpx/74pwaEurHir9E+IoA5ytUA8k0UXOS148h8EAGhhohL
         lzxBiJFry6GhKupviFXsp1D/9xBoVNucsxZGHGiUnAEf19WTQc2VotlErTfwMCLUvtfA
         nYtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uj4HC2w+2GGtsJST2mHZiUVIhKG/V9QoAXLBMLRzqQU=;
        b=o91Ve/AkU4KWdIK0HuBssu00TpDCfE1EsKWomAZ4VtIhm8Gs2A44EqGIYi9LDZCeXd
         +ln8UWYGFjwLm7YUOtdi1bET7hL0lkHqZXKN+VhiE3SjTo2itSJgMktlPCHjntUmitLq
         UNfwQ3f8iSBpUTa/bzAfrKD0Sd54+A7F0xnCy4xS5gHj8zqjCNcPt1n0cg7+7cqoKLtm
         ALzX5GaGehHtyCvPo88MzAAjLx7sjZgZ5KdmoTR0mKo6/MP0c81PS3zN9Uv9C44wWPP7
         VNURbqGDpBFEqXPL5XZ/3lUjNA0jHfIqmRebhJSOby3YlEMOMuE4D0raLHBcjfwUpReh
         Nemw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Z4N02ZWi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l23si371231ioc.2.2019.03.21.22.26.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 22:26:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Z4N02ZWi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 09DED213F2;
	Fri, 22 Mar 2019 05:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553232372;
	bh=IGpVohhrGnI6JlAZ44SYeTWlvVOSKlfaiPZFAfspHhA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z4N02ZWi4s7ha/wbNNEMl/2anO4sg1LOg3b3+XvTvcUKRcZeZWCWdvt/JfhvYRBwA
	 O8I/19t6GIFhMSrivXNwm4/nq9B6DLgR051X6/Wj6LFqiHAm01D/95EN1HcxwfSkLa
	 CUxQ52XzDMdp5hgUGDVaNz7vqIkYRit/tO/cw2Wc=
Date: Fri, 22 Mar 2019 06:26:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/2] Staging: media: davinci_vpfe: Remove SETBIT macro
 and use BIT macro
Message-ID: <20190322052610.GA29938@kroah.com>
References: <cover.1553217781.git.madhumithabiw@gmail.com>
 <97904fceb0de0988ffc889026b33d0705db988a0.1553217781.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <97904fceb0de0988ffc889026b33d0705db988a0.1553217781.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 08:26:05PM -0500, Madhumitha Prabakaran wrote:
> Remove SETBIT macro and use BIT(x) instead of (1 << x) to maintain Linux
> kernel coding style.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 8 ++++----
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.h | 1 -
>  2 files changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> index 4380e0a8e6dc..382d88bee5a7 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> @@ -297,7 +297,7 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
>  		case MEDIA_BUS_FMT_UYVY8_2X8:
>  		case MEDIA_BUS_FMT_Y8_1X8:
>  			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> +			val |= BIT(IPIPEIF_CFG2_YUV16_SHIFT);

Ick, that's harder to read now, right?

Why not just use the set_bit() function instead?  That seems like the
easier thing to do here, right?

thanks,

greg k-h

