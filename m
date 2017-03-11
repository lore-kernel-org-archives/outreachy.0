X-GM-THRID: 6396079372840730624
X-Received: by 10.46.80.82 with SMTP id v18mr4139420ljd.27.1489257308438;
        Sat, 11 Mar 2017 10:35:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.70 with SMTP id x6ls1331391ljd.21.gmail; Sat, 11 Mar
 2017 10:35:07 -0800 (PST)
X-Received: by 10.46.83.76 with SMTP id t12mr4620766ljd.26.1489257307987;
        Sat, 11 Mar 2017 10:35:07 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id l138si304889wmg.0.2017.03.11.10.35.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 10:35:07 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 6EA4D4063D;
	Sat, 11 Mar 2017 18:35:07 +0000 (GMT)
Subject: Re: [PATCH v1 00/10] staging: iio: Remove exceptional & on functions
 name
To: simran singhal <singhalsimran0@gmail.com>, lars@metafoo.de
References: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
Cc: Michael.Hennerich@analog.com, knaack.h@gmx.de,
 gregkh@linuxfoundation.org, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <51f4d827-550d-fb4f-0fc3-a5ba9b3c16f8@kernel.org>
Date: Sat, 11 Mar 2017 18:35:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 11/03/17 14:26, simran singhal wrote:
> This patch-series removes exceptional & on functions name.
> 
> v1:
>   -Change the commit message of all the patches of the patch-series
Usual convention is to call the first (unlabelled) revision v1
implicitly which would have made this V2.  Doesn't really matter
though!

Jonathan
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


