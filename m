X-GM-THRID: 6673915321016909824
X-Received: by 2002:ab0:2396:: with SMTP id b22mr4021441uan.1.1553934426384;
        Sat, 30 Mar 2019 01:27:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7c4a:: with SMTP id x71ls1004740vsc.0.gmail; Sat, 30 Mar
 2019 01:27:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxu9P+2EgL/gBAGF7PztznnD+Ng9Q2mq4nUhCxDqqcKva9+eUZozKm9V0YOeJHbq0DkOd8G
X-Received: by 2002:a67:f24f:: with SMTP id y15mr5177982vsm.25.1553934425969;
        Sat, 30 Mar 2019 01:27:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553934425; cv=none;
        d=google.com; s=arc-20160816;
        b=zeeL1K3BMgdJdBfPlzyYbUro69TEjko/F8+p9Kp8U0OsH8oKF7FmPpJ1iNmxgq5mcd
         4iB4Ks/xfTkhaR/RGjA7naVw34jMgeyPPqHXftnz64wtsMCtjx34PbxYaicJgNBubyzO
         3ZNacxqrq/Q9cbcAjZoIO6K3KEbcUSev2DtSvaq2Nm9lMLVDMIcsMucFH5VzDepbUNhZ
         N+ACwn6WXk9M+/Qn3xjnmidmZVL9O4hAXmjVMudC5jvvV4WKouygYiHCAaKo/P8ZjuxP
         seGUAnsE9N8JTE86I8n5XNHQKw0BxIgFWEwLXQCetVot/4H3HAPTkj2mFa/8/yufvZ/X
         BBKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Cdq94drGAZw7Xk/3eL6jxK2nZIMNjNCpLdJwFdfvHMw=;
        b=LMxC35HG/8kMw/T0t1ubVCjiSUnT7CFNDmk1Z/0Ol1RR9ZRkdGZMLSojMjmTX0S5h4
         OVEbFY//ZkwGHhaOTeeLuiHoikS9YyKH0yi/vopnPFC/EaNZbuxavW0KcJmNlrR9iZYs
         fCdPkJo4ey0ZPp54oeovYGOde6lgxlyH0gKALqdm1YTj9xFC9LWv6jZ8pzBrshmJ//Qi
         J86Wots1oPWDihNy3QvIn19ColMtNuL9P8v1pcqqVqBsxJXEAPOXBGhFqzPPktenr1Eh
         sOvmXN9/COAtI2AHCnIrEEOyJlzYNPxTvSzJISsjjavGD54ymeiWVftr1q1Ff6fzqV5X
         FPig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=utg3LpKP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k77si264479vke.3.2019.03.30.01.27.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 01:27:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=utg3LpKP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.119.166.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 321082173C;
	Sat, 30 Mar 2019 08:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553934424;
	bh=v/S7vY6AaGU3fDqcl/I+L048MdPMqnvBna9vLjOiaI8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=utg3LpKPXw+Q9HtktePwAMNNiV85xgFt0tKxBapEHl2SSsEWW3+7uE7U8huCKBRTc
	 G/Z7rRo6/L2jYdSDbeO15EDb5hswHT4MsZy5meE6vrAf1jx9RafYI0PeEXNnHJhx6E
	 8g4P0yUB0vlzboOTkv6yuRHzdVPDDZG9douvsAww=
Date: Sat, 30 Mar 2019 09:27:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, elder@kernel.org, johan@kernel.org,
	hvaibhav.linux@gmail.com
Subject: Re: [Outreachy kernel] Subject: [PATCH] staging: greybus: line over
 80 characters
Message-ID: <20190330082701.GB24272@kroah.com>
References: <1b8f45c76effdf0b4483c71afd02b2f773812788.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1b8f45c76effdf0b4483c71afd02b2f773812788.camel@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 29, 2019 at 01:39:56PM -0700, Briana Oursler wrote:
> Replace function call within if-statement with variable to shorten line
> length. Issue found by checkpatch.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
>  drivers/staging/greybus/arche-platform.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index 6eb842040c22..b839a9eecc55 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -155,7 +155,9 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
>  {
>  	struct arche_platform_drvdata *arche_pdata = devid;
>  	unsigned long flags;
> +	unsigned long cold_jiffies;
>  
> +	cold_jiffies = msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS);
>  	spin_lock_irqsave(&arche_pdata->wake_lock, flags);
>  
>  	if (gpiod_get_value(arche_pdata->wake_detect)) {
> @@ -169,7 +171,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
>  		if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
>  			if (time_before(jiffies,
>  					arche_pdata->wake_detect_start +
> -					msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
> +					cold_jiffies)) {

In looking at this again, the original code is fine, no need for this
change at all.

thanks,

greg k-h

