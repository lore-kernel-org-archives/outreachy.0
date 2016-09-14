X-GM-THRID: 6330141489404837888
X-Received: by 10.36.213.138 with SMTP id a132mr6216620itg.10.1474028066476;
        Fri, 16 Sep 2016 05:14:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.234 with SMTP id y97ls5510835ota.3.gmail; Fri, 16 Sep
 2016 05:14:26 -0700 (PDT)
X-Received: by 10.31.165.71 with SMTP id o68mr1242vke.23.1474028065327;
        Fri, 16 Sep 2016 05:14:25 -0700 (PDT)
Received: by 10.55.97.208 with SMTP id v199msqkb;
        Wed, 14 Sep 2016 05:37:07 -0700 (PDT)
X-Received: by 10.194.172.9 with SMTP id ay9mr474576wjc.2.1473856625746;
        Wed, 14 Sep 2016 05:37:05 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v132si914383wmf.1.2016.09.14.05.37.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 05:37:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,333,1470693600"; 
   d="scan'208";a="193114669"
Received: from unknown (HELO hadrien.local) ([128.93.86.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 14:37:05 +0200
Date: Wed, 14 Sep 2016 14:36:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: adc: Add space around
 '-'
In-Reply-To: <35a8014f-c63b-46eb-87fe-e54db1d9d8a3@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1609141436080.3092@hadrien>
References: <20160914110228.GA3269@sandhya> <alpine.DEB.2.10.1609141427430.3092@hadrien> <35a8014f-c63b-46eb-87fe-e54db1d9d8a3@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-15477121-1473856625=:3092"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-15477121-1473856625=:3092
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 14 Sep 2016, Sandhya Bankar wrote:

>
>
> On Wednesday, September 14, 2016 at 5:58:33 PM UTC+5:30, Julia Lawall wrote:
>       Is there no other maintainer that should receive this?
>
>       julia
>
>       On Wed, 14 Sep 2016, Sandhya Bankar wrote:
>
>       > Add space around operator '-' .
>       > This patch is found by checkpatch.pl script .
>       > CHECK: spaces preferred around that '-' (ctx:VxV) .
>       >
>       > Signed-off-by: Sandhya Bankar <bankarsa...@gmail.com>
>       > ---
>       >  drivers/staging/iio/adc/ad7192.c | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/iio/adc/ad7192.c
>       b/drivers/staging/iio/adc/ad7192.c
>       > index 1cf6b79..5688b29 100644
>       > --- a/drivers/staging/iio/adc/ad7192.c
>       > +++ b/drivers/staging/iio/adc/ad7192.c
>       > @@ -391,7 +391,7 @@ ad7192_show_scale_available(struct device
>       *dev,
>       >  }
>       >
>       >  static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
>       > -                            
>       in_voltage-voltage_scale_available,
>       > +                             in_voltage -
>       voltage_scale_available,
>       >                               S_IRUGO,
>       ad7192_show_scale_available, NULL, 0);
>       >
>       >  static IIO_DEVICE_ATTR(in_voltage_scale_available, S_IRUGO,
>       > --
>       > 1.8.2.3
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20160914110228.GA3269%40
>       sandhya.
>       > For more options, visit https://groups.google.com/d/optout.
>
>
>
>
>
>  Thanks for pointing out. I will do that with v2.

OK.  While you should not top post, it is also good to respond right under
what the other person has said, instead of the end of the message.

julia

>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/35a8014f-c63b-46eb-87fe-
> e54db1d9d8a3%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-15477121-1473856625=:3092--

