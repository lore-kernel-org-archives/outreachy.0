X-GM-THRID: 6403369104322854912
X-Received: by 10.99.63.132 with SMTP id m126mr1317242pga.42.1490940372483;
        Thu, 30 Mar 2017 23:06:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.166 with SMTP id t35ls1749692otb.11.gmail; Thu, 30 Mar
 2017 23:06:12 -0700 (PDT)
X-Received: by 10.157.20.8 with SMTP id h8mr1288595oth.102.1490940372085;
        Thu, 30 Mar 2017 23:06:12 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s67si592573pfs.4.2017.03.30.23.06.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 23:06:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4C77C899;
	Fri, 31 Mar 2017 06:06:11 +0000 (UTC)
Date: Fri, 31 Mar 2017 08:05:57 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: lars@metafoo.de, devel@driverdev.osuosl.org,
	Michael.Hennerich@analog.com, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Hartmut Knaack <knaack.h@gmx.de>, jic23@kernel.org
Subject: Re: [PATCH] iio: gyro: adis16060: Change the function's name
Message-ID: <20170331060557.GC5554@kroah.com>
References: <20170330190225.GA18838@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170330190225.GA18838@singhal-Inspiron-5558>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Mar 31, 2017 at 12:32:26AM +0530, simran singhal wrote:
> Change the name of function from adis16060_spi_write_than_read()
> to adis16060_spi_write_then_read(). change "than" to "then" as
> its time depended.
> ---
>  drivers/staging/iio/gyro/adis16060_core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

No signed-off-by:?

Always run your patches through checkpatch.pl to see if you did
something wrong.

thanks,

greg k-h

