X-GM-THRID: 6665828102544818176
X-Received: by 2002:a24:29c5:: with SMTP id p188mr11616743itp.4.1552028558776;
        Thu, 07 Mar 2019 23:02:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:5917:: with SMTP id n23ls3256140iob.1.gmail; Thu, 07 Mar
 2019 23:02:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqy+GwIISpsywtUVa4AJceLKj4s8Qbxyj0GspLjuup7hcvyLzXm2Kf23fwFiXR7usGA/KMtQ
X-Received: by 2002:a6b:3115:: with SMTP id j21mr9822826ioa.33.1552028558145;
        Thu, 07 Mar 2019 23:02:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552028558; cv=none;
        d=google.com; s=arc-20160816;
        b=lNf1tRmj3tMio5tLZoyfsss+AMF0LWgJNxegdhXaEX1fv2S1DsrCiZn6ZRgYY6vKk3
         sMRyXQFF6FDK4KGxdoiDzt3rzS466SlOOBI0I1PJvpYurT2PKhqGwX8MJsLGJ/Hp6r0a
         0+LFQEFdQ3hoynf7KQJR0PEHG8vO7cAfaiC49iJ1/lAqNdMuLlZh0cMVRAiesnSVCN87
         vLZntFsgXxdd1QD7joNMZ6b1wDRoml5jZB1hNgvhzf6gXNF0c9pw9OE/y5EHRhv4yJJ9
         jArGEhRQbr/vBO+sbDWi79LsiC/zPirRDddiScKISGFRPSC+5gswWSRWPnRUsfp2SkoJ
         17kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/HreXVLXr8SRB7+oQ0WPmi8KYKwoDgl7Zu3OBcO27TE=;
        b=WehX3KRHqJU6TuXE9Hz4AspYLJrQ7lMTQCLTuPXcEXh7rzF++fjupddi+1gQvJurwz
         UluNjnVA5CbQIjyN8l2H4h/tCE0PZb3Igs8DzzcFAusVZJ2dOy3cJ9dM4uj3NgJVbP2k
         3u/x6wZxAAT97JAz2pQ76Q3VSlvqOS84+lwlSEfHCWi30/Sjr3rLsWIH0qnisc4wPKZi
         mFK0QL4uRO3hUsPfzDpSx8nEDFDScZPwCHnLtJUUF9/HlVnRDIK98ryqfDa+urLvLN9W
         qa9zDT9dnUyl8Qsh1CatOmwlR0Lz3JHU0Pqyx6yqIO5j0HVdsxi8rj4arxcH4P2XdCFB
         HR1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=heqUy1FI;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 77si525707ita.2.2019.03.07.23.02.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:02:38 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=heqUy1FI;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DC1C320811;
	Fri,  8 Mar 2019 07:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552028557;
	bh=y1+5kRR+1hj/J3Yzt9/ne5O3Em6oc29w+JjYREG8ZCA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=heqUy1FIObFxC+IPExysdmhbHq/oig0rsNIWyWWjlY1k7MpXU8tgjToRWg+iU+0U+
	 irppUXSUSKYG956n4RpMdprP2oyeQBxIWxLzM9DvyqsmIUKMnKsDKHuhWIWScFpBqA
	 ORzWLbKCA2LzfbEH3dQSMR+OVTwU74ELd3RWrMvg=
Date: Fri, 8 Mar 2019 08:02:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v1 2/2] staging: zoran: remove license boilerplate text
Message-ID: <20190308070234.GC17194@kroah.com>
References: <20190308013500.27350-1-jbi.octave@gmail.com>
 <20190308013500.27350-3-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190308013500.27350-3-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 08, 2019 at 01:35:00AM +0000, Jules Irenge wrote:
> Remove license boilerplate text.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/media/zoran/videocodec.c | 13 -------------
>  1 file changed, 13 deletions(-)
> 
> diff --git a/drivers/staging/media/zoran/videocodec.c b/drivers/staging/media/zoran/videocodec.c
> index 468e5f33b8c9..c1ee5cb7e66b 100644
> --- a/drivers/staging/media/zoran/videocodec.c
> +++ b/drivers/staging/media/zoran/videocodec.c
> @@ -8,19 +8,6 @@
>   * (c) 2002 Wolfgang Scherr <scherr@net4you.at>
>   *
>   * $Id: videocodec.c,v 1.1.2.8 2003/03/29 07:16:04 rbultje Exp $

Not your fault, but in the future, you can remove these old "CVS"
markings in comments, they make no sense in kernel files.

And wow, 2003...

greg k-h

