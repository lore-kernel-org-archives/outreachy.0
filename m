X-GM-THRID: 6400149763723886592
X-Received: by 10.129.106.70 with SMTP id f67mr19991475ywc.108.1490162513630;
        Tue, 21 Mar 2017 23:01:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.98 with SMTP id 89ls999640otb.22.gmail; Tue, 21 Mar 2017
 23:01:53 -0700 (PDT)
X-Received: by 10.13.224.4 with SMTP id j4mr205661ywe.44.1490162513197;
        Tue, 21 Mar 2017 23:01:53 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si69719pfz.1.2017.03.21.23.01.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 23:01:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 55879504;
	Wed, 22 Mar 2017 06:01:52 +0000 (UTC)
Date: Wed, 22 Mar 2017 07:01:38 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-fbdev@vger.kernel.org,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	linux-kernel@vger.kernel.org,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Subject: Re: staging: iio: Replace a bit shift by a use of BIT.
Message-ID: <20170322060138.GA13416@kroah.com>
References: <20170322024942.GA21242@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170322024942.GA21242@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Wed, Mar 22, 2017 at 08:19:42AM +0530, Arushi Singhal wrote:
> This patch replaces bit shifting on 1 with the BIT(x) macro.
> This was done with coccinelle:
> @@
> constant c;
> @@
> 
> -1 << c
> +BIT(c)
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7816.c |  2 +-
>  drivers/staging/iio/cdc/ad7150.c |  2 +-
>  drivers/staging/iio/cdc/ad7746.c | 22 +++++++++++-----------
>  3 files changed, 13 insertions(+), 13 deletions(-)

Please be careful about your cc: list, you missed the correct list, and
added one not needed at all.  And you forgot the [PATCH] prefix :(

thanks,

greg k-h

