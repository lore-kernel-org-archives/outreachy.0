X-GM-THRID: 6391874178049376256
X-Received: by 10.25.217.24 with SMTP id q24mr2209159lfg.26.1488230598796;
        Mon, 27 Feb 2017 13:23:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.83 with SMTP id v19ls515789ljd.15.gmail; Mon, 27 Feb
 2017 13:23:17 -0800 (PST)
X-Received: by 10.46.22.68 with SMTP id 4mr2317405ljw.14.1488230597525;
        Mon, 27 Feb 2017 13:23:17 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b186si9034wme.1.2017.02.27.13.23.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 13:23:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,215,1484002800"; 
   d="scan'208";a="262318056"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2017 22:23:16 +0100
Date: Mon, 27 Feb 2017 22:23:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org, 
    knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org, 
    linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
    devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: accel: Move header file
 content to source file
In-Reply-To: <20170227193815.GA32728@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1702272221550.2127@hadrien>
References: <20170227193815.GA32728@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> diff --git a/drivers/staging/iio/accel/adis16201_core.c b/drivers/staging/iio/accel/adis16201_core.c
> index 7963d4a..210699e 100644
> --- a/drivers/staging/iio/accel/adis16201_core.c
> +++ b/drivers/staging/iio/accel/adis16201_core.c
> @@ -20,7 +20,150 @@
>  #include <linux/iio/buffer.h>
>  #include <linux/iio/imu/adis.h>
>
> -#include "adis16201.h"
> +#ifndef SPI_ADIS16201_H_
> +#define SPI_ADIS16201_H_

I guess you wouldn't need the ifndef and define in the C file?  This is
usually used to guard against including a header file more than once.

julia

