X-GM-THRID: 6474221644274466816
X-Received: by 10.80.139.209 with SMTP id n17mr4192637edn.10.1508334815875;
        Wed, 18 Oct 2017 06:53:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.170.121 with SMTP id p54ls1865010edc.7.gmail; Wed, 18 Oct
 2017 06:53:35 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBe05acgEYrLtepDCOIMUI6Oc/5hhMB0kpG3qTacdY9VUl8Ri4b7wCceQAdWEfSBg7BKDFN
X-Received: by 10.80.139.209 with SMTP id n17mr4192630edn.10.1508334815173;
        Wed, 18 Oct 2017 06:53:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508334815; cv=none;
        d=google.com; s=arc-20160816;
        b=aNbSqweHYNe2ZVOzfWvG4BthnpxgbWmgrrnhkDI4qoLHdayb7o0mIFHbnxEKwZY8Fi
         VMl8fBVgf39Yl+e0nIA6t8XCPKtgFZe16MhEdJcHv48s+5yq5c94E+28QJYWLI4huAVR
         7nHMFviFlRkTmqkX8cR/m3BnzfgYtA9vthBOgYPLaIZ/K1W5CFQ5lqRi/XyWokc6W8Ql
         50wBc77Pp2CeAkd5rkrrADbOn772wgVaSJPQajY1j6PTP6vnQ1T8Y8O1PB3PmZWaAXV9
         nzEa2hlonlAgKyjdNMujVfzI5vMaDBsT40GuNexA3QQ2J2065AKsSkal3y3PEcxhRToG
         vNxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=+Y41m4TDrOt6BKjW00igKQqlryROWj7J9M3AyQgVDdc=;
        b=bcyx/NgW2nAQI3q+nhPHZZus1Pjbjj7Jp0an/yhaO7boYgkZKaUsYhm2knvKX74Kwd
         pJscBx0qtpjGONGarlOjGVx8444MFQf6JAt3CXVZBz8FdIlsyP7cK5L4rRWX1PiYluZ+
         NbJtVOZuUc4litqfxBJqTGFj7Z5oCS8UX2J4TTnUOxiTVjy4tYWE2dyUlB787YhnpMO8
         b1kf3He1WGkxKnPzd9mXFeCfeJ3Xjr+A/dyoySgYBF9HV22w1afnKtBKrZ21XGWEBufL
         hUefJF+dEI2O8qhoS2ODZH+fjx3WCAoWX8vw9CHpqrHMIi9sAo6duKn/UZ84pNmpe72v
         vIEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w24si586645edl.5.2017.10.18.06.53.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 06:53:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6B69440F;
	Wed, 18 Oct 2017 13:53:33 +0000 (UTC)
Date: Wed, 18 Oct 2017 15:53:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Staging: rtlwifi: phydm: Use setup_timer
Message-ID: <20171018135342.GA16676@kroah.com>
References: <1507397185-6139-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1507397185-6139-1-git-send-email-srishtishar@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Sat, Oct 07, 2017 at 10:56:25PM +0530, Srishti Sharma wrote:
> Use setup_timer to combine initialization of a timer with the
> initialization of the timer's function and data fields. Done
> using the following semantic patch by coccinelle.
> 
> @r@
> struct timer_list *l;
> expression f, d;
> @@
> 
> -init_timer(l);
> +setup_timer(l,f,d);
> ...
> 
> (
> - l->function = f;
> ...
> - l->data = d;
> |
> - l->data = d;
> ...
> - l->function = f;
> )
> 
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> ---
>  drivers/staging/rtlwifi/phydm/phydm_interface.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Due to other changes in this same function, this patch no longer
applies, sorry.

greg k-h

