X-GM-THRID: 6393707457242202112
X-Received: by 10.46.81.66 with SMTP id b2mr1596307lje.3.1488713159664;
        Sun, 05 Mar 2017 03:25:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.6.2 with SMTP id 2ls534053ljg.13.gmail; Sun, 05 Mar 2017
 03:25:58 -0800 (PST)
X-Received: by 10.25.18.219 with SMTP id 88mr1424212lfs.29.1488713158226;
        Sun, 05 Mar 2017 03:25:58 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id f7si700541wmg.3.2017.03.05.03.25.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 03:25:58 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 8E6AF40458;
	Sun,  5 Mar 2017 11:25:57 +0000 (GMT)
Subject: Re: [PATCH v2] staging: iio: accel: Rename source files and update
 Makefile
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>, knaack.h@gmx.de,
 lars@metafoo.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org
References: <1488651002-18415-1-git-send-email-narcisaanamaria12@gmail.com>
 <1488656592-15251-1-git-send-email-narcisaanamaria12@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <9bf1042d-1dcf-91f8-31ce-19a1e6106d7b@kernel.org>
Date: Sun, 5 Mar 2017 11:25:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1488656592-15251-1-git-send-email-narcisaanamaria12@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 04/03/17 19:43, Narcisa Ana Maria Vasile wrote:
> Rename adis162xx_core.c files to adis162xx.c because
> these are the only source files for these drivers.
> 
> Update Makefile to correspond to the new file names.
> 
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Great thanks.

Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it.

Thanks,

Jonathan
> 
>  rename drivers/staging/iio/accel/{adis16201_core.c => adis16201.c} (100%)
>  rename drivers/staging/iio/accel/{adis16203_core.c => adis16203.c} (100%)
>  rename drivers/staging/iio/accel/{adis16209_core.c => adis16209.c} (100%)
>  rename drivers/staging/iio/accel/{adis16240_core.c => adis16240.c} (100%)
> 
> diff --git a/drivers/staging/iio/accel/Makefile b/drivers/staging/iio/accel/Makefile
> index febb137..5d8ad21 100644
> --- a/drivers/staging/iio/accel/Makefile
> +++ b/drivers/staging/iio/accel/Makefile
> @@ -2,14 +2,7 @@
>  # Makefile for industrial I/O accelerometer drivers
>  #
>  
> -adis16201-y             := adis16201_core.o
>  obj-$(CONFIG_ADIS16201) += adis16201.o
> -
> -adis16203-y             := adis16203_core.o
>  obj-$(CONFIG_ADIS16203) += adis16203.o
> -
> -adis16209-y             := adis16209_core.o
>  obj-$(CONFIG_ADIS16209) += adis16209.o
> -
> -adis16240-y             := adis16240_core.o
>  obj-$(CONFIG_ADIS16240) += adis16240.o
> diff --git a/drivers/staging/iio/accel/adis16201_core.c b/drivers/staging/iio/accel/adis16201.c
> similarity index 100%
> rename from drivers/staging/iio/accel/adis16201_core.c
> rename to drivers/staging/iio/accel/adis16201.c
> diff --git a/drivers/staging/iio/accel/adis16203_core.c b/drivers/staging/iio/accel/adis16203.c
> similarity index 100%
> rename from drivers/staging/iio/accel/adis16203_core.c
> rename to drivers/staging/iio/accel/adis16203.c
> diff --git a/drivers/staging/iio/accel/adis16209_core.c b/drivers/staging/iio/accel/adis16209.c
> similarity index 100%
> rename from drivers/staging/iio/accel/adis16209_core.c
> rename to drivers/staging/iio/accel/adis16209.c
> diff --git a/drivers/staging/iio/accel/adis16240_core.c b/drivers/staging/iio/accel/adis16240.c
> similarity index 100%
> rename from drivers/staging/iio/accel/adis16240_core.c
> rename to drivers/staging/iio/accel/adis16240.c
> 


