X-GM-THRID: 6529310178951561216
X-Received: by 10.80.202.69 with SMTP id e5mr3865569edi.9.1520229684577;
        Sun, 04 Mar 2018 22:01:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.213.199 with SMTP id g7ls2211382edj.2.gmail; Sun, 04 Mar
 2018 22:01:23 -0800 (PST)
X-Google-Smtp-Source: AG47ELv6N1rzqFqSsJN9xLdh7k2Y2L/brLqbR0GnFlYefao6EWkkGXF/oGLbEflxdaLeQdVB3c5c
X-Received: by 10.80.243.7 with SMTP id p7mr3868120edm.1.1520229683275;
        Sun, 04 Mar 2018 22:01:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520229683; cv=none;
        d=google.com; s=arc-20160816;
        b=YpOIyFmDRTILsTUJJJlZOOyw83jgkR7NaCyT72eDV7xgClQXOpFs/yY3FigLAcXh2B
         s2fu+02ZOUvvgMDDhozaW8LPTp/eQuC209az3Mdxm74mRCzJq6jZvtrIIfSS7uYncjgS
         Wr/MGQHOn5/GgWojxAp/PYvjtsy6Yvfhw3EcaJxGpI1QKrP46wPA0SxnA97O5SqWh6KA
         UnoJhuItzHdhjzfF2rS8SoJrH57cFKVU5rTXIFWVvS/gunJp0UKznOajZN/84T/j6FVB
         JqeYIGmjj3RIqPINjHnDMxmhTN4B0JEBO52vETla2lPzLY0jMcDpvLvSqF3A70ZokLh+
         i3Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=sqcvagXxUI3rcmRrKzqG6Avc6wFiu4UE5Vs3/YAunAA=;
        b=KY0y5pmZG4K3ieJwHoXA0g11cta0p5CVRl8A/ESZ+dXJS2mkF+ZS10ecLiYvG78eWp
         uQMaiw26mmB4f/nAQxaQresbFqCSH8ey264HSirT8toGOQQxtZxNk3kh+2XoFQJdatdR
         I7Klb0KZzIGKwTvX5Q98FJe9KJz5br4P+XpquqeI/AYyczngI+DyLA9oZs5bP19g+zlI
         ENzHTDUrSmkieH3kzOGSV7l948zg23dGazHp33y54A8DtEHuixJFwp0WPm+dliV/u0lh
         bjU9QBP5otI0y8ZsINitQGzEmnECxn3/sDFfAYQMzddPlYAZBGKaPQDC24df7+UQMxSC
         Bz1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y16si751496edc.1.2018.03.04.22.01.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 22:01:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (smbcdgpass.hotspot.hub-one.net [213.174.99.145])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 325251301;
	Mon,  5 Mar 2018 06:01:21 +0000 (UTC)
Date: Mon, 5 Mar 2018 07:01:21 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: ipx: Replace printk() with appropriate
 net_*macro_ratelimited()
Message-ID: <20180305060121.GD6670@kroah.com>
References: <20180305041740.GA23378@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180305041740.GA23378@seema-Inspiron-15-3567>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Mon, Mar 05, 2018 at 09:47:40AM +0530, Arushi Singhal wrote:
> Replace printk having a log level with the appropriate
> net_*macro_ratelimited.
> It's better to use actual device name as a prefix in error messages.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> changes in v2
> *In v1 printk was changed to pr_*macro(), which is used
> in kernel instead of calling printk() directly. And for drivers,
> dev_*macro() or net_*macro_ratelimited() should be used for calling
> printk() directly.
> 
> changes in v3
> *Indentation is not changed, as line is exceeding 80 characters limit.
> 
>  drivers/staging/ipx/af_ipx.c | 2 +-

Did you read drivers/staging/ipx/TODO?

Please go do so.

sorry,

greg k-h

