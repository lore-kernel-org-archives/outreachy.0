X-GM-THRID: 6256792083376373760
X-Received: by 10.25.88.211 with SMTP id m202mr2431202lfb.8.1456857027125;
        Tue, 01 Mar 2016 10:30:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.173.205 with SMTP id w196ls215263wme.47.canary; Tue, 01 Mar
 2016 10:30:26 -0800 (PST)
X-Received: by 10.28.226.132 with SMTP id z126mr78097wmg.2.1456857026509;
        Tue, 01 Mar 2016 10:30:26 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w197si23522wmw.3.2016.03.01.10.30.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 10:30:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,524,1449529200"; 
   d="scan'208";a="205306500"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2016 19:30:26 +0100
Date: Tue, 1 Mar 2016 19:30:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sandhya bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, Daniel Baluta <Daniel.baluta@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 3/5] Staging: iio: ade7758_core:
 Remove unnecessary goto.
In-Reply-To: <CAA3ASzkQGGZ9bzG5jNykQ-9rjHSvZP-hp0chad_LLPS-XFcLew@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1603011929140.2624@hadrien>
References: <CAA3ASzkQGGZ9bzG5jNykQ-9rjHSvZP-hp0chad_LLPS-XFcLew@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1497758217-1456857020=:2624"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1497758217-1456857020=:2624
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 1 Mar 2016, sandhya bankar wrote:

> Hello,
>     If We remove  all occurrence of goto then next code below the goto, will
> execute even if error come.
> So what exactly i have to change?

As Daniel suggested, if you change the first goto to just return ret,
which is allowed by the Linux kernel coding style, then you don't need the
ending label at all, because there will be no more jump to it.  This will
simplify the code a lot.

julia

>
>
> Thanks
> Sandhya
>
>
> Thanks
> Sandhya
>
> On Mon, Feb 29, 2016 at 4:53 PM, Sandhya Bankar <bankarsandhya512@gmail.com>
> wrote:
>       Remove unnecessary goto.
>       Used below semantic patch to detect the unnecessary goto:
>       @r@
>       expression ret;
>       identifier f,l;
>       statement S;
>       position p;
>       @@
>
>       (
>       if (<+...f(...)...+>) S
>       |
>       if@p (...) return ret;
>       return ret;
>       |
>       if@p (...) goto l;
>       l:
>       return ret;
>       )
>
>       Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
>       ---
>        drivers/staging/iio/meter/ade7758_core.c | 2 --
>        1 file changed, 2 deletions(-)
>
>       diff --git a/drivers/staging/iio/meter/ade7758_core.c
>       b/drivers/staging/iio/meter/ade7758_core.c
>       index 0db23e4..32792d0 100644
>       --- a/drivers/staging/iio/meter/ade7758_core.c
>       +++ b/drivers/staging/iio/meter/ade7758_core.c
>       @@ -432,8 +432,6 @@ int ade7758_set_irq(struct device *dev, bool
>       enable)
>                       irqen &= ~BIT(16);
>
>               ret = ade7758_spi_write_reg_24(dev, ADE7758_MASK,
>       irqen);
>       -       if (ret)
>       -               goto error_ret;
>
>        error_ret:
>               return ret;
>       --
>       1.8.3.4
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAA3ASzkQGGZ9bzG5jNykQ-9
> rjHSvZP-hp0chad_LLPS-XFcLew%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1497758217-1456857020=:2624--

