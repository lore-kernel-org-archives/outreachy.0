X-GM-THRID: 6802694026822680576
X-Received: by 2002:a19:4a13:: with SMTP id x19mr6503641lfa.177.1584046764301;
        Thu, 12 Mar 2020 13:59:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:ae10:: with SMTP id f16ls1084706lfc.10.gmail; Thu, 12
 Mar 2020 13:59:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu3Jzzvpg2nV5mtcwL9FxFxWfS24xhnAhrMN+yjp3U/fjpELBmWsDgjKoBrPYLWdHyhLx7g
X-Received: by 2002:a19:6513:: with SMTP id z19mr6472149lfb.207.1584046762968;
        Thu, 12 Mar 2020 13:59:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584046762; cv=none;
        d=google.com; s=arc-20160816;
        b=tl81oBhh3bkMs6Q1m/GHTQhdv6wddR9qTCIYSTh4cC337DyfdzduWDciKv/MaMk+Ji
         tqygwBfmTgX6awJ/MzUi7naZjq1FLnmAd9oUNi0B0V37KFoV4cYwyzwzrRXP/HpVTHuC
         34AsLDqS6yhmwqIJrR6/pyz8AcFGpi+FnTsSRzgYDyqz/lKQjtaXJjO8OAX4YFi2ShBF
         zDEd7mD7GyB7cZ6b0iDs8Nzc4FtESpcuQL87VFqqKym6+v+QK7hhpm3GrdpdDd2JIYnu
         E+zQrdic5Whu1kTGpYkwaxIN6z1Y3fnx+w/Hg9kdxdjnMn4xFLyNY1bg2z0nyz7vikIU
         ChkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dz891OvWxfaXGOiJGaE61qx6doLNO/XOidxezzhy4oQ=;
        b=kavZ7yf7yEoZjvCq20gB9mD0xwsV5Z9wPt54Qa8g8+GyjGeLzZ2ZmR+wmZf5EV1Q+G
         hOr7HWBgHX/dX060HgRgL4F7YtM8YECMXHr0Su+ekmC4gmhPaX/PmEqcTIxUmAb0SSZ2
         02Ta38nvmEQv3mfu2w7f+IZmf4lSmNKou9JgYn5SuOhwBKNyWyOoSDra+yd7okNGv1V0
         oev0zXith26NlSM7a1Ha17FvgjIoMnC+lU3cnEgBcRN9xl9cEKlvkQq9rnE5ca7LiBq0
         lKc8hHRyyoMGp1wO9ifXi/WjIvl6wHHVN2szahvLNRZjnYBrkSaaAEotfgsR00SwhD1e
         +lKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=TGEzoQMa;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id o24si360490lji.4.2020.03.12.13.59.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 13:59:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=TGEzoQMa;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x442.google.com with SMTP id s14so9343606wrt.8
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 13:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dz891OvWxfaXGOiJGaE61qx6doLNO/XOidxezzhy4oQ=;
        b=TGEzoQMaLglVqweCALZ3mfHsg6T413G0j/+fu6FvVbiAo6TvK6JFNCJ4H0fInpRbd6
         dAoN+h8mdk7EL84LUMUYB8lAK+QTdGNjLNPwPpHOAaPdSxVXpE5eLS7wJBfOv16W2d/2
         3VekxUTDQn/A1rPp4tYtBloBUcIFHOXvFv7JE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dz891OvWxfaXGOiJGaE61qx6doLNO/XOidxezzhy4oQ=;
        b=q52JLrWsKVFfLwpiOHPuhvLjcyswAmO9VSL+iI9DMnQlXERmeXd8KE/Y6yEXqCh+ma
         5qletdilQrig6MTcUNjHO+XqILaSJNsvIsjACcMX1vtSnySWZ5JWTdvy3N6Ev9abK+Rn
         ahduh4nTkccZtKLDzHCzYOoAjDnW7ezBbyMKQJdoHmlg64lggERnEn1OGOy7FYhZnlds
         8nip3Jd9IH8OpnfLVZR4n89jhzL02v+E4r+UdfgezHFOMmZdJJtuUDxbhmQXenp1ChCZ
         ZnNo2y2xCbf8nqzrj98AW9Y2keqT2gSScYqJb98wS1SrPBONpPCoFOEqHqvSGPKQq9pT
         /hrQ==
X-Gm-Message-State: ANhLgQ3IIYLyRb6RrqWg5Vm0j9wKA2dYAuNphdyx/M8SAliM7YOrntkq
	3+1MOe+636QnU8q6W12iQl1zRh+daBLTBA==
X-Received: by 2002:a5d:67c3:: with SMTP id n3mr13256169wrw.156.1584046762404;
        Thu, 12 Mar 2020 13:59:22 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id b82sm8281933wmb.46.2020.03.12.13.59.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 13:59:21 -0700 (PDT)
Date: Thu, 12 Mar 2020 21:59:19 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v4] staging: rtl8192u: r8192U_wx: use
 netdev_warn() instead of printk()
Message-ID: <20200312205919.GB9113@supernova>
References: <20200312161548.5631-1-lu@pplo.net>
 <alpine.DEB.2.21.2003121820420.2418@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003121820420.2418@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 12, 2020 at 06:22:03PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 12 Mar 2020, Lourdes Pedrajas wrote:
> 
> > printk() is deprecated, use netdev_warn() instead, which is a message printing
> > function specific for network devices and uses net_device data structure,
> > defined in include/linux/netdevice.h. Issue found by checkpatch.
> 
> I think that you could drop the part about the net_device structure.  The
> netdev debug functions are widley used in networking code, so anyone
> interested in the patch should know about them already.
> 
> julia
> 
I agree, thank you for your help!

Lourdes

