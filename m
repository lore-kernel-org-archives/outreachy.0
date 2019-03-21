X-GM-THRID: 6670745270189293568
X-Received: by 2002:a9d:7602:: with SMTP id k2mr3768189otl.357.1553194699179;
        Thu, 21 Mar 2019 11:58:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:764b:: with SMTP id o11ls675520otl.4.gmail; Thu, 21 Mar
 2019 11:58:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyOOG0rmLPMZuwuLLEmcmkTHZ6JsfdPFhsJ63sbvyQ7STEg148fcLHIHal3v02UXKMfyfLr
X-Received: by 2002:a9d:7602:: with SMTP id k2mr3768136otl.357.1553194698088;
        Thu, 21 Mar 2019 11:58:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553194698; cv=none;
        d=google.com; s=arc-20160816;
        b=l65RMDAHDZoIDIwHvyn8YMh6xD8kf3uc7yaUxENSXms+3+YjX2oT6HfE1ou20qakgm
         tMNa72z5W31JMTNdVRbDM0wzw6mtMsk1Yvo6gJ8VCz4w4sNb3+o6u7WpSZmiClyvsp0b
         5xanjzrqpnNcmCFJuC1ORJzHgmm73BCjmmSF2Q1newwuXXGHaslbxxLndK38dulYjyl1
         FTn29KkRijizYeCIi8YS9ZnVNuyhFsn8NU4diM3xVajC0OR1mfAU7Il4y2y8Z5uu3hT3
         XZnurMwxRrMduAxbEsTuDWUdOxLoxHZzj37mALYPey9r7DSG5HuqwMbO346wAvfYLmTY
         JQiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fXVZF5E0Y0d2ItwLrIBtGdiAJEwlif52/JNq1ZSMmx8=;
        b=jSAnuzI17+BimEsqqudoY/E40XW5zsbptLEZR0qLXVTBQyca3hyk8mL28QdCfM75BG
         ZTgSlO6eGK18+Vf6soh5lbG53lDPiZgDrDfJIkEpSuCLgfm34krrl8WEa4rsS8JPmLss
         hiXqIIdtLmZllJGOhVuJo0/zTVl9EQchTTYEzT4iSBOrsbFWQo1Uw9YJdvhyDuhk9G8Y
         y7IXjJDmA9hoAPvpJujb8tkG0gkq/fMzjujEifnDtDAL7K6TPe2NPgGwiPq7EeY+Zvm+
         r/XFqTWfS88L7GlORoLwn4JvB6P7LxP9NKCbCPnqbQHsC9r6o+8V3q3i/99kG/fuKRMk
         Jbag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2SelcKmm;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l23si373996otn.4.2019.03.21.11.58.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:58:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2SelcKmm;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B7ED321873;
	Thu, 21 Mar 2019 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553194697;
	bh=6pQ4bPvx8cMZmZddLNdJZkYioiJ3LoSvub88vdPp4UQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=2SelcKmmp3alnUV9S/P4Fw4pSWnyMPr8OTrxHwPiHkM2+1k/nywWOtEeR9Al0bxF8
	 JHtuNVZI5yiv2v/z0VqYPSd3elyOOAmCnj6BKDgFiuBSVb9T4y4EdRPTtzKx6+cDDU
	 vf88B0i0YY+BqIyr9lcaaLq7w4mNG/wIByBZxxSg=
Date: Thu, 21 Mar 2019 19:58:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: greybus: svc_watchdog: Modify char* array
 declaration.
Message-ID: <20190321185814.GA17375@kroah.com>
References: <20190321073819.8333-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190321073819.8333-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 01:08:19PM +0530, Sanjana Sanikommu wrote:
> Modify "static char* array" to "static char* const array".
> Issue found using checkpatch.pl
> 
> WARNING:char* array declaration might be better as static constant
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/greybus/svc_watchdog.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/svc_watchdog.c b/drivers/staging/greybus/svc_watchdog.c
> index 7868ad8211c5..b6aaabcec320 100644
> --- a/drivers/staging/greybus/svc_watchdog.c
> +++ b/drivers/staging/greybus/svc_watchdog.c
> @@ -44,12 +44,12 @@ static int svc_watchdog_pm_notifier(struct notifier_block *notifier,
>  static void greybus_reset(struct work_struct *work)
>  {
>  	static char const start_path[] = "/system/bin/start";
> -	static char *envp[] = {
> +	static char const *envp[] = {
>  		"HOME=/",
>  		"PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin",
>  		NULL,
>  	};
> -	static char *argv[] = {
> +	static char const *argv[] = {
>  		(char *)start_path,
>  		"unipro_reset",
>  		NULL,
> -- 
> 2.17.1
> 

Always test-build your patches before sending them out.  You did not do
that here, why not?  This blows up the build in horrible ways :(

greg k-h

