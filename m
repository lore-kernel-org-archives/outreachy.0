X-GM-THRID: 6661151851808817152
X-Received: by 2002:a05:6830:2113:: with SMTP id i19mr5432869otc.9.1550926754190;
        Sat, 23 Feb 2019 04:59:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:ecc:: with SMTP id 70ls3430316otj.1.gmail; Sat, 23 Feb
 2019 04:59:13 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaqK2co8n4RHKUH2EUTrUM2IZDbHMmMms01eAeuK3cjN4HmCnZNuEsVq05F8pvo4oK3uxG0
X-Received: by 2002:a9d:2c61:: with SMTP id f88mr5384182otb.68.1550926752372;
        Sat, 23 Feb 2019 04:59:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550926752; cv=none;
        d=google.com; s=arc-20160816;
        b=lTom7pe7qkGlnZQRp/X/c8Whb4ydo2W/Fruh7xbh3n2eHufSZCqQ7Re6B4sJH8cD9Y
         V7w0YZ31DUb5tIvXtxUs9smAeVnmZGIgx80VLbea6b/JyGyUjOwB5groZigCnUvlcuHG
         Uc5/Fg1RvUvgjxMScOFRGQxaqvA1VNttxVjjdDvWNMQpmyAEbzhPY/Np26V2iCVPf1uI
         hO88QRv9da1rurG23wR0mwZoJmJgWblrot/Vlp07aCswDfAKs3FKl+wG7yC4nWMqotC8
         epZgq0ZPj7KQWQl2fvE3Opte/qgo4RD8THsNNF7vvI8gO45M9KfuhiL7PK1eF8v1etHi
         LMwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Vg4gcx9QnEuW6kg+fcbPcN5ge+Fgod3UZtFQ/Vy+qNs=;
        b=OnqhtVZzlpuL+yuJsIiGcR5cmGSKfJoChREMYAczYiItp+cPSpx5ZSlfGfA5Tw9cu1
         CBaleNFxRi6YX/uIB05fFHONglr5XPyFeRXJ6HJrUA8exW6XM42eMQmhPBmK8/JCJE4L
         GNcCVOcCKjCI3bOYGVkVL5riae3c98Z0a/yWdQXG9CLUqejL2jfRLHLNi0s6Zu1BDbLI
         iwgabxkK7Vfc/qPyOItE6jH3o7gSRU28GEcBEU4CZ2lIpFBBtpwA75HKrV4l80tDcVDg
         OL4f9VsTF8SrT5QqvJ5WYv1sCZUA+R//1eAv2PqD7Z1Ck8Fm1t+cDlvmLSNuUxk3535f
         U1hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FbtnKcfT;
       spf=pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 206si160056oii.4.2019.02.23.04.59.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 04:59:12 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FbtnKcfT;
       spf=pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B220120675;
	Sat, 23 Feb 2019 12:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550926751;
	bh=URtqAbFknCcwvo/VzvLUW5RZFktZe2xJ609TnGFWeg0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FbtnKcfTcqWnBKd7zBR4S3bPJBJyE1Ru424iFFHx/YFl/JXDuik1xo/vOQDeDTYyA
	 9CYA6UoP30d5VOHgFlWrSgMWOztwTzVBVveT7HbQQmw2dfHDayuZZBK1ni3MTGLqiT
	 lFenWzRbfsSM7IZIRQFfAE6yonjXwcw6zqAEwasE=
Date: Sat, 23 Feb 2019 13:58:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: jreuter@yaina.de, linux-hams@vger.kernel.org,
	linux-kernel@vger.kernel.org, davem@davemloft.net,
	ralf@linux-mips.org, netdev@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] net: ax25: Add SPDX License to fix missing License
 warning
Message-ID: <20190223125859.GB16686@kroah.com>
References: <20190223111100.13983-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190223111100.13983-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Feb 23, 2019 at 11:11:00AM +0000, Jules Irenge wrote:
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>

I know I never take patches without any changelog text :(


> ---
>  net/ax25/af_ax25.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/net/ax25/af_ax25.c b/net/ax25/af_ax25.c
> index 5d01edf8d819..5048790a75f6 100644
> --- a/net/ax25/af_ax25.c
> +++ b/net/ax25/af_ax25.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0

That is the incorrect license of this file!

NEVER add or modify a SPDX line if you do not really really really know
what you are doing.  Putting the wrong license tag on a file is worse
than not having any tag at all.

BE VERY CAREFUL ABOUT THESE THINGS, they matter.  If you get them wrong,
lawyers get very grumpy :)

thanks,

greg k-h

