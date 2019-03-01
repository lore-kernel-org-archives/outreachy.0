X-GM-THRID: 6663442013681090560
X-Received: by 2002:a24:55c7:: with SMTP id e190mr3468110itb.30.1551454779596;
        Fri, 01 Mar 2019 07:39:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b14:: with SMTP id c20ls3295162jaa.1.gmail; Fri, 01 Mar
 2019 07:39:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqyHCGevlSMefGadPb0mmmb9vAqfoLb3q4pYYnZUxEIZbiAyzbUTAKTMUrtZwmyKfnrAVlXH
X-Received: by 2002:a02:c486:: with SMTP id t6mr2972716jam.14.1551454778760;
        Fri, 01 Mar 2019 07:39:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551454778; cv=none;
        d=google.com; s=arc-20160816;
        b=whe4kj/HjbuN+7VPNyKXKXf26vByIV5EhW/fCwh9LUWaV/YUAOj63Z60l+UOjZRGHQ
         A6gc3z5LGRax5AtPpc+uGXQp69KWNUHff15fq6RytTCbHFJ7daOYfo/PkT0e/JdGrSao
         IE1qLdhdYtqAwzJKNypubsgm9MjuCWW/SxS0gmjmM4hqOLgYImlN6fRiheVlagoMpW7n
         lnZ2nlhWGqm1d+72zQiK8vfpxdfKnisXMl6IatuiOYThlmdeQZkTGmpTjIWbFWX9fuOd
         e2Z9rcxrXsK+7ZOHL1SMzwPO91TZsdt51do18ZrBBRkflmEF0NkvZBC9xHA3nI+Joh0R
         yReA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fn9FW8DgZfTczGkcr1mhF1Qam1t+0TC+tRaUUroYt+w=;
        b=piIlx7ugDSP5wC+7tbyH1zAYzt0gUKePEqH4usjW1UyHw4VwjhBHG/wPpHHcgcvVoQ
         JprXUZb3t4k+E4jEuRoNE4LA118oRTDTzhhZ5nEMBGmet3Rue9BpO4gP/mt4BOEgWo30
         jTRtdk1cWRXkNd3rqRYGWeqlpJdqk1MBJ5GPZLzGSwfWZ3WpdVcazzKpODeaI2lwSJLi
         rOSxVrqqV9RX35pPhxZAn9iGBaCtOTNzIlh1GDOZXhqLJ728QxQypwa89QnVVjOKzcSJ
         7otxTCDZ048D6cvVk2v2VJzKTWNKDX+OPjNB64P/Zpy8RPyTB5uV/D7+1omh/wn2klZy
         jQ5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JCCY4gzT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j6si256743itb.0.2019.03.01.07.39.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 07:39:38 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JCCY4gzT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8C39B2084D;
	Fri,  1 Mar 2019 15:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551454778;
	bh=xlpEqlARGlHjGUYgYxSVNl8QI0PX17OXmKkO6aVO7JQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JCCY4gzTyJv7C8GtDvdd7J6Tw0KtKFGFxjyAWny58sFXuDk/NWMweBTBd9ZLCgGg9
	 raTcnW8B78qWvRvJidTA4VasHI1VoiWmuOuFTQZ1GX3r9sxjqm+72LLQzlqPXXKO2x
	 /+b/uxejp5At7v1PcR/5CID+jzg7TAgHPKCirpKk=
Date: Fri, 1 Mar 2019 16:39:35 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/2] staging: mt7621-dma: add SPDX GPL-2.0 or later
 version license identifier
Message-ID: <20190301153935.GA3877@kroah.com>
References: <20190301151801.7886-1-jbi.octave@gmail.com>
 <20190301151801.7886-2-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190301151801.7886-2-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 01, 2019 at 03:18:00PM +0000, Jules Irenge wrote:
> Add SPDX GPL-2.0-or-later license to fix missing SPDX warning
>  reported by checkpatch.pl.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index d67a2504adb1..7d69586f23c0 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later

Shouldn't this be:

// SPDX-License-Identifier: GPL-2.0+

The "or later" is starting to get used, but I don't think it's all that
prelevant yet.  What did you read to decide to use that format instead
of the "+" format?

thanks,

greg k-h

