X-GM-THRID: 6664599067722514432
X-Received: by 2002:a25:dfc6:: with SMTP id w189mr5846052ybg.63.1551726153141;
        Mon, 04 Mar 2019 11:02:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:41d4:: with SMTP id o203ls1269691yba.0.gmail; Mon, 04
 Mar 2019 11:02:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqxLrwRj3j+otE43FEJvufWs8FgwewVw1fA0h61ISrx6KkU0XHN+KL5tTQJH4cbC1g1yTJl/
X-Received: by 2002:a25:bcc8:: with SMTP id l8mr8765974ybm.30.1551726152357;
        Mon, 04 Mar 2019 11:02:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551726152; cv=none;
        d=google.com; s=arc-20160816;
        b=jo9K9LTYt2pfCGwOweImTiCPLSkq98Ur10u388eRWPCsZIZNcwINQEqRFg5ZHdcTsO
         wh6zwPZx3V0+P62O8D4BqfVuGznKPpKtiRhEAW4BCxG4A3rQZQl6HWVHgYVy2DK+s/vd
         ViraTAuKZJMnd/YrHymIhaRTTfLBdSXrHiQfHqtbM9DaPzI8T+GwTBQvkJ59yZ/gkv9z
         dspE8WV4ZV3GJnucH8gfqnZ7d/okkjL/pVPBDL5loewqyW6RhPHdTAZeeuX0vDKP3hbA
         ORamekao4AmXia5GYaJRV3wZis6WLC1galv0VtYZML2Nd30s68eGGBnnV1ubZCGroDwM
         OdCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ptwPcrTr7+ZcbngKt+jbx4dBO1FdH0kwMPK2B2pvWrQ=;
        b=bd81U4seJGXMQinahk0mHrjSr5KEJkmYqG3tb7wyrL96cc4+IDqZ9eFp+4m/ip54de
         or/pzzURy6JUQtcjW4q1gEw4vShyVEwXXjJC9bMWi1LGQgs1pEfDGkN44h7KYV/h1mzd
         QhAQ0HC6l+si71TBV89g1odfxkN9yXU+tGzCXRX2TSg8TaUQARvCKkhpztJeCexrdURr
         MT981uXRJxNnQzh6+zTHXrHyU9DQFkvFFAovmBf1Rozq1lHV3LRXJit0Q1LQxpD6IyTF
         RwcwZd/9qFjsXpTVG5Q6dI3KJ22vWrRAuWUNIpHBAs1/lP3Ec/eKRd2Q3y7wFGo6D+EI
         e/3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZR4JfdvB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d186si355337ywa.1.2019.03.04.11.02.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 11:02:32 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZR4JfdvB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C839220663;
	Mon,  4 Mar 2019 19:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551726151;
	bh=3W8dXxjbkWhKPXbBrvQKzX9ngOql71bqmJ/g5Y5YoT8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZR4JfdvBtOOolR9Ez9xti//BF2XBNCh6CtgOVsR2EGmu6a4zxdI1KsATqfSKqfczS
	 ncR3FoUk1N7mK2Y+QhacGfUObscKUxYplyGjbKpKjOlWYw7SitADfaKah8m6Tzxnfh
	 JurT7Ay7cSIutMdGBb/4YnJP8QzYjPtF/y7f5ap8=
Date: Mon, 4 Mar 2019 20:02:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: johan@kernel.org, elder@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: greybus: Add brackets to avoid precedence issues
Message-ID: <20190304190228.GD13830@kroah.com>
References: <20190304173947.30135-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190304173947.30135-1-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 04, 2019 at 11:09:47PM +0530, Nishka Dasgupta wrote:
> Add parentheses around arguments to avoid precedence issues. Issue found
> by Checkpatch.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/greybus/camera.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> index 615c8e7fd51e..7b653a4fd63f 100644
> --- a/drivers/staging/greybus/camera.c
> +++ b/drivers/staging/greybus/camera.c
> @@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
>  
>  #define GB_CAMERA_MAX_SETTINGS_SIZE	8192
>  
> -#define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
> -#define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
> -#define gcam_err(gcam, format...)	dev_err(&gcam->bundle->dev, format)
> +#define gcam_dbg((gcam), format...)	dev_dbg(&gcam->bundle->dev, format)
> +#define gcam_info((gcam), format...)	dev_info(&gcam->bundle->dev, format)
> +#define gcam_err((gcam), format...)	dev_err(&gcam->bundle->dev, format)

Please explain how adding an extra () helps anything here.

I think checkpatch is very confused.  Always use your brain when running
it, as it is just a perl script and sometimes gets things wrong (like
here.)

thanks,

greg k-h

