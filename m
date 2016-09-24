X-GM-THRID: 6333893619528761344
X-Received: by 10.25.141.85 with SMTP id p82mr634887lfd.10.1474724839762;
        Sat, 24 Sep 2016 06:47:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.166.2 with SMTP id p2ls722843wme.4.canary; Sat, 24 Sep 2016
 06:47:19 -0700 (PDT)
X-Received: by 10.28.167.216 with SMTP id q207mr403365wme.4.1474724839358;
        Sat, 24 Sep 2016 06:47:19 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y6si68303wmg.0.2016.09.24.06.47.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 06:47:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,388,1470693600"; 
   d="scan'208";a="194519115"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Sep 2016 15:47:18 +0200
Date: Sat, 24 Sep 2016 15:47:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: amsfield22@gmail.com, daniel.baluta@gmail.com, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Doubt regarding iio task 01
In-Reply-To: <CAKG5xWjTCC4oyXcHC5du3imeE9VP2nwL=3c9XwvvHzYTB0zCSA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609241545400.3447@hadrien>
References: <CAKG5xWjTCC4oyXcHC5du3imeE9VP2nwL=3c9XwvvHzYTB0zCSA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-109991394-1474724838=:3447"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-109991394-1474724838=:3447
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 24 Sep 2016, sayli karnik wrote:

> Hello,
>
> I ran the following compilation command:
> make drivers/iio/dummy/iio_dummy_evgen.ko
>
> The following is the error encountered:
> https://www.irccloud.com/pastebin/aO6XB4Le
>
> I have enabled the config options required:
>  #
>  # IIO dummy driver
>  #
>  CONFIG_IIO_DUMMY_EVGEN=m
>  CONFIG_IIO_SIMPLE_DUMMY=m
>  CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y
>  CONFIG_IIO_SIMPLE_DUMMY_BUFFER=y
>
> Could you point me towards a solution to this?

I don't know anything about this case specifically, but maybe it would
help to do make clean, make allmodconfig, then check on the above
configuration variables, and then make.

If you already this, ie started your kernel compile from scratch, then you
will have to wait for Alison or Daniel :)

julia


>
> Thanks!
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAKG5xWjTCC4oyXcHC5du3i
> meE9VP2nwL%3D3c9XwvvHzYTB0zCSA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-109991394-1474724838=:3447--

