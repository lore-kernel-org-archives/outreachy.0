X-GM-THRID: 6397390793328295936
X-Received: by 10.99.61.79 with SMTP id k76mr6366061pga.3.1489715864595;
        Thu, 16 Mar 2017 18:57:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.39 with SMTP id i36ls5958667otb.24.gmail; Thu, 16 Mar
 2017 18:57:44 -0700 (PDT)
X-Received: by 10.157.1.33 with SMTP id 30mr5576677otu.101.1489715864194;
        Thu, 16 Mar 2017 18:57:44 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id t8si94255ith.0.2017.03.16.18.57.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 18:57:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id g138so1568081itb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Mar 2017 18:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=y7COSZ2x5nnnpXDIxLcmKnXLamR9j+Z7TZdNvqE8RNI=;
        b=sv6klo/R4eDbTvUGeEqWoeFCm+A9jY5SDbhsF39RIa6fs5ZxVI48gViXoIo+48P6E6
         wtvnn6EHYHPoLdusiVOa6RD4ljFAM1DQ0itZ2GBVYF/BzH9Z/J1VbUOU82hl2/9pevCV
         kl7j4tHUzH2zQPS1hs8LYMbPA+WZAwtnulrv+ej27qopDtCpfKmN94A7q4kgg9gXnEX6
         JL4FaMxaR55kwRGTza0mL0hZ29pnxFfbJ0o3ktfQpbMbsLiXbB0YFzJrKRekPAv0NzkA
         lkCNpN6L3ftsxukOfbaoN+EK671VGG9COuSFeO3Ruit2e2lC96GsnseyrIA7kSGZz+RP
         PVsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=y7COSZ2x5nnnpXDIxLcmKnXLamR9j+Z7TZdNvqE8RNI=;
        b=gDnm3jubNo083AMm2sk5/WBFXqzoobu7MXCV3Hv6n1sHG86z+VQI6+5iqC1e4nGkJZ
         rpzuOhhzcRTLTTYf0eaqGB585BaLe+OO7CVyZuU+LbSxW8WJmGH15Ms04Bb+L71LrEBt
         vf6mqz7Pu5v5t93GcO6KEDxZQuxN7QfNHW3QA9VSlj2aFU4UaFym1dunA841fKCBgWkY
         +svgo3ZB2wUaunSHIlG2s2YQu23dPnZNMJ8AqLX2uwzFvP7PR5AjGidvO/rZ7zAAXUyM
         4J5Y1QzQr8tJiIy/LYZeIfwxQcNLlrKfJimjvxOjaRa4C01HNiMUQBRbDJBqw+1pOfcW
         2JFg==
X-Gm-Message-State: AFeK/H1LRNFad2revgrKTxxVPd/5qzYb7K5kuXIJtHVaBYfa6JEQlG/ZrPHyMamfmaTdzGSzn6rvGfh9I6iUVA==
X-Received: by 10.36.47.213 with SMTP id j204mr684896itj.7.1489715863962; Thu,
 16 Mar 2017 18:57:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.51.74 with HTTP; Thu, 16 Mar 2017 18:57:03 -0700 (PDT)
In-Reply-To: <39a0f2ff-5771-b287-60ca-b62ba330f31b@kernel.org>
References: <58c81906.42d5620a.3e22a.7a2b@mx.google.com> <39a0f2ff-5771-b287-60ca-b62ba330f31b@kernel.org>
From: Varsha Rao <rvarsha016@gmail.com>
Date: Fri, 17 Mar 2017 07:27:03 +0530
Message-ID: <CAAFX7JRUMKQU1MvuO0nQb7DyoEG7pnGXy27RYv1_9wZbP_75Jg@mail.gmail.com>
Subject: Re: [PATCH v2] staging: iio: adis16240: Remove mutex_lock() and
 mutex_unlock() function call.
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Barry Song <21cnbao@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

Hello,

> It's a bit obscure, but isn't there the potential to get the check_status
> call spitting out text for the wrong read, or potentially miss a status
> value entirely?

adis_read_reg()  function calls spi_sync(), which is inside mutex block,
then how will it misread wrong value?
Will not spi_sync() help, which also has mutex block in its definition?
Otherwise are changes to be made to if condition
(val & ADIS16240_ERROR_ACTIVE)?, which depends on the value of val.

I understand that we cannot use txrx_lock private lock in
adis16240_read_12bit_signed.
If the txrx_lock value is set, then it would cause deadlock as in
adis_read_reg again,
it will try to lock txrx_lock variable.

> (kind of more for Lars really, but feel free to comment Varsha!)
>
> The various faults look like this wouldn't be an issue, but I'm not
> totally sure about the SPI failure and whether a following good read
> at exactly the wrong time might result in the error not being reported...

  Was this case eliminated when mutex lock was used before
  adis16240_spi_read_signed() function call?

  Thanks,
  Varsha

