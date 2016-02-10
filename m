X-GM-THRID: 6249319551203278848
X-Received: by 10.98.71.209 with SMTP id p78mr35359539pfi.13.1455069166713;
        Tue, 09 Feb 2016 17:52:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.139 with SMTP id m11ls117781qge.62.gmail; Tue, 09 Feb
 2016 17:52:45 -0800 (PST)
X-Received: by 10.129.49.18 with SMTP id x18mr885878ywx.37.1455069165855;
        Tue, 09 Feb 2016 17:52:45 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 79si120354pft.0.2016.02.09.17.52.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 17:52:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7AEFBE27;
	Wed, 10 Feb 2016 01:52:45 +0000 (UTC)
Date: Tue, 9 Feb 2016 17:52:45 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Remove unneeded pointer
 casts in function arguments
Message-ID: <20160210015245.GA19273@kroah.com>
References: <20160209205055.GA8154@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160209205055.GA8154@janani-Inspiron-3521>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 09, 2016 at 03:50:56PM -0500, Janani Ravichandran wrote:
> Remove pointer casts in function arguments as they are not required.
> This patch removes all such casts found in the driver iio by the
> following coccinelle patch.
> @@
> type t;
> expression e;
> identifier f;
> @@
> 
>   f(...,
> - (t *)
>   e,
>   ...)
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/iio/accel/adis16240_core.c      |  2 +-
>  drivers/staging/iio/accel/lis3l02dq_core.c      |  4 ++--
>  drivers/staging/iio/accel/sca3000_core.c        |  2 +-
>  drivers/staging/iio/impedance-analyzer/ad5933.c | 12 ++++++------
>  drivers/staging/iio/light/tsl2583.c             |  4 ++--
>  drivers/staging/iio/light/tsl2x7x_core.c        |  8 ++++----
>  drivers/staging/iio/meter/ade7854-spi.c         |  4 ++--
>  drivers/staging/iio/resolver/ad2s1210.c         |  4 ++--
>  8 files changed, 20 insertions(+), 20 deletions(-)

Please always test-build your patches, this one blows up the build by
adding a ton of warnings :(


