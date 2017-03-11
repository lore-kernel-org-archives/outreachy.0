X-GM-THRID: 6396079372840730624
X-Received: by 10.25.156.74 with SMTP id f71mr3361251lfe.26.1489214546284;
        Fri, 10 Mar 2017 22:42:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.6.2 with SMTP id 2ls1136138ljg.13.gmail; Fri, 10 Mar 2017
 22:42:25 -0800 (PST)
X-Received: by 10.46.20.74 with SMTP id 10mr2955392lju.0.1489214545161;
        Fri, 10 Mar 2017 22:42:25 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e72si139351wma.0.2017.03.10.22.42.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 22:42:25 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,144,1486422000"; 
   d="scan'208";a="216368093"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2017 07:42:23 +0100
Date: Sat, 11 Mar 2017 07:42:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org, 
    knaack.h@gmx.de, gregkh@linuxfoundation.org, linux-iio@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 00/10] staging: iio: Remove exceptional
 & on functions name
In-Reply-To: <1489203401-17518-1-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703110741530.2202@hadrien>
References: <1489203401-17518-1-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 11 Mar 2017, simran singhal wrote:

> This patch-series removes exceptional & on functions name.

The semantic patch shown does nothing to check that the use of & is
exception in the given file.  It just removes all the & on function names.

julia

>
> simran singhal (10):
>   staging: iio: ad7192: Remove exceptional & on function name
>   staging: iio: ad7780: Remove exceptional & on function name
>   staging: iio: cdc: ad7746: Remove exceptional & on function name
>   staging: iio: cdc: ad7152: Remove exceptional & on function name
>   staging: iio: adis16240: Remove exceptional & on function name
>   staging: iio: adis16201: Remove exceptional & on function name
>   staging: iio: adis16209: Remove exceptional & on function name
>   staging: iio: adis16203: Remove exceptional & on function name
>   staging: iio: resolver: Remove exceptional & on function name
>   staging: iio: gyro: Remove exceptional & on function name
>
>  drivers/staging/iio/accel/adis16201.c     |  4 ++--
>  drivers/staging/iio/accel/adis16203.c     |  4 ++--
>  drivers/staging/iio/accel/adis16209.c     |  4 ++--
>  drivers/staging/iio/accel/adis16240.c     |  4 ++--
>  drivers/staging/iio/adc/ad7192.c          | 12 ++++++------
>  drivers/staging/iio/adc/ad7780.c          |  2 +-
>  drivers/staging/iio/cdc/ad7152.c          |  6 +++---
>  drivers/staging/iio/cdc/ad7746.c          |  4 ++--
>  drivers/staging/iio/gyro/adis16060_core.c |  2 +-
>  drivers/staging/iio/resolver/ad2s1200.c   |  2 +-
>  drivers/staging/iio/resolver/ad2s90.c     |  2 +-
>  11 files changed, 23 insertions(+), 23 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489203401-17518-1-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

