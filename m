X-GM-THRID: 6671020394532569088
X-Received: by 2002:aed:23b4:: with SMTP id j49mr6612437qtc.175.1553232424514;
        Thu, 21 Mar 2019 22:27:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:39c3:: with SMTP id m61ls3659712qte.0.gmail; Thu, 21 Mar
 2019 22:27:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqymshIVJjCbLKLw0M2MosXkgZ9bLDSFh6tEmmOCPyPxGvYME/MQJIkNBXql3TrTjnblp5Nn
X-Received: by 2002:ac8:2b53:: with SMTP id 19mr6581143qtv.374.1553232423821;
        Thu, 21 Mar 2019 22:27:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553232423; cv=none;
        d=google.com; s=arc-20160816;
        b=PhuTtQ/L3rn3gCqQA7OJSn3bXqu0vnD/rvAbBnMcZwHeFRgdSgjHAuogwM4sCzmE+i
         lHzsPqs/J368U5cqDuWCHLL6DHTc1ukZghex3/UkIyDXJ9c7eukPvvHQ48555kso3YOX
         uT2wYKzv7uuyzwhIgetL6Yyp9UduNkHzZ7vm8j9b2rb21AtEHijDucitVXfCszKm82ym
         IjnhMaC2kCpvUrKVpyWdXhxrmh1MdTdOU56u4AuCbOAjRP0TeGX5rLN3vzNwVhsG8zEq
         Ihcs2N+8bY8sDnnAw44zCZJdABfGlwnm8tegqxn+n8EOSma3eA3FH4WwQlRydMqoqvvC
         r+qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SH/IhbXYSvJnx3dRSLTcMY1ZkKsoHsT2yNU3MlMyOKU=;
        b=xRgfeoklQUskaGs9GMKnSevrtGGrT1LmJvycbbSYYOj2FzNjGcDBSBHqEy75EV5hmW
         wXr1Mthr4s/cugeOaWX8JY9pnmcRwS68DyNfBcANw+iA+OuQpxjauctNAAEwYTWEAJkA
         lLmpbTvOw/nM9PHfd2kSdwAAFSZ+vKBt6hdO9+XEVE/E/SpMndxfVZe7hAjf7HhEYoSi
         296koTGytwvMT2R8qKYNQh3TbfvPqqIkIj+sHs9NV1ap7pUCrZH8GstNLRKz6CZccjQt
         2nrF2Ns79l2JVtEZzQmVI20xTdxPskWbVp5mIjQ/FJM0hzBf95o4Ibh8SK6zJ+fiE+mq
         +DMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=P4ksLInL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v2si398428qka.0.2019.03.21.22.27.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 22:27:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=P4ksLInL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 68059213F2;
	Fri, 22 Mar 2019 05:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553232422;
	bh=c5gJTvCsCe39ZeJZipcEs916rLwN6ZOpuVBWKHw1Qt4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P4ksLInLlnxt1TQF62EMUnh+JXvHZkndS84ee52Nzr/WA/HwvAQNd49j/Ag5NsoFb
	 oN/JoUhSc+ju9aoA6Vt9Sr4RafbNizMEltKkbljQUSg6XFC9B6LQ6ESafKFd2F6/V9
	 kosuK7VpeZL09V69q7sBllskdyeZpJLsGJ5top6s=
Date: Fri, 22 Mar 2019 06:26:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] Staging: media: davinci_vpfe: Remove RESETBIT macro
 and use BIT macro
Message-ID: <20190322052659.GB29938@kroah.com>
References: <cover.1553217781.git.madhumithabiw@gmail.com>
 <a64c7dd0bf44cc3ac0270a382209e592c8a05987.1553217781.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a64c7dd0bf44cc3ac0270a382209e592c8a05987.1553217781.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 08:26:06PM -0500, Madhumitha Prabakaran wrote:
> Remove RESETBIT macro and use BIT(x) instead of (1 << x) to improve
> codebase.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 8 ++++----
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.h | 1 -
>  2 files changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> index 382d88bee5a7..4f18db127caf 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> @@ -296,14 +296,14 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
>  		case MEDIA_BUS_FMT_YUYV8_1X16:
>  		case MEDIA_BUS_FMT_UYVY8_2X8:
>  		case MEDIA_BUS_FMT_Y8_1X8:
> -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> +			val &= ~BIT(IPIPEIF_CFG2_YUV8_SHIFT);

clear_bit()?

>  			val |= BIT(IPIPEIF_CFG2_YUV16_SHIFT);

set_bit()?

thanks,

greg k-h

