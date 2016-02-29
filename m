X-GM-THRID: 6256792083376373760
X-Received: by 10.112.151.240 with SMTP id ut16mr1839006lbb.16.1456773095585;
        Mon, 29 Feb 2016 11:11:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.168.82 with SMTP id r79ls515775lfe.85.gmail; Mon, 29 Feb
 2016 11:11:34 -0800 (PST)
X-Received: by 10.112.205.164 with SMTP id lh4mr1762503lbc.6.1456773094685;
        Mon, 29 Feb 2016 11:11:34 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w10si654240wmw.3.2016.02.29.11.11.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 11:11:34 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,521,1449529200"; 
   d="scan'208";a="205113181"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Feb 2016 20:11:34 +0100
Date: Mon, 29 Feb 2016 20:11:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/5] Staging: Remove unnecessary
 goto.
In-Reply-To: <cover.1456743650.git.bankarsandhya512@gmail.com>
Message-ID: <alpine.DEB.2.10.1602292011080.2600@hadrien>
References: <cover.1456743650.git.bankarsandhya512@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 29 Feb 2016, Sandhya Bankar wrote:

> Remove unnecessary goto.
> Semantic patch:
> @r@
> expression ret;
> identifier f,l;
> statement S;
> position p;
> @@
>
> (
> if (<+...f(...)...+>) S
> |
> if@p (...) return ret;
> return ret;
> |
> if@p (...) goto l;
> l:
> return ret;
> )

The semantic patch doesn't remove (or add) anything?

julia

>
> Sandhya Bankar (5):
>   Staging: media: Remove Unnecessary goto.
>   Staging: iio: ade7854: Remove unnecessary goto.
>   Staging: iio: ade7758_core: Remove unnecessary goto.
>   Staging: iio: ade7754: Remove unnecessary goto.
>   Staging: gdm72xx: Remove unnecessary goto.
>
>  drivers/staging/gdm72xx/usb_boot.c            | 3 +--
>  drivers/staging/iio/meter/ade7754.c           | 2 --
>  drivers/staging/iio/meter/ade7758_core.c      | 2 --
>  drivers/staging/iio/meter/ade7854.c           | 2 --
>  drivers/staging/media/bcm2048/radio-bcm2048.c | 2 --
>  5 files changed, 1 insertion(+), 10 deletions(-)
>
> --
> 1.8.3.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1456743650.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

