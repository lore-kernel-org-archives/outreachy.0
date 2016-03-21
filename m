X-GM-THRID: 6262913708245123072
X-Received: by 10.129.83.85 with SMTP id h82mr18642614ywb.18.1458588818332;
        Mon, 21 Mar 2016 12:33:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.98.234 with SMTP id o97ls4087762qge.31.gmail; Mon, 21 Mar
 2016 12:33:37 -0700 (PDT)
X-Received: by 10.129.155.147 with SMTP id s141mr25226247ywg.5.1458588817507;
        Mon, 21 Mar 2016 12:33:37 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si4157741pfa.2.2016.03.21.12.33.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 12:33:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id DE4542C;
	Mon, 21 Mar 2016 19:33:36 +0000 (UTC)
Date: Mon, 21 Mar 2016 15:33:34 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: use kernel preferred
 block commenting style
Message-ID: <20160321193334.GA26529@kroah.com>
References: <20160317070333.GA7276@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160317070333.GA7276@d830.WORKGROUP>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Mar 17, 2016 at 12:03:46AM -0700, Alison Schofield wrote:
> Use * on subsequent lines and trailing */ on a separate
> line in block comments.
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7192.c                | 20 ++++++++++----------
>  drivers/staging/iio/impedance-analyzer/ad5933.c |  5 +++--
>  drivers/staging/iio/light/tsl2x7x_core.c        | 24 +++++++++++++++---------
>  drivers/staging/iio/meter/ade7753.c             |  3 ++-
>  drivers/staging/iio/meter/ade7754.c             |  3 ++-
>  drivers/staging/iio/meter/ade7758_core.c        |  3 ++-
>  drivers/staging/iio/meter/ade7759.c             |  3 ++-
>  drivers/staging/iio/meter/ade7854.c             |  3 ++-
>  8 files changed, 38 insertions(+), 26 deletions(-)

Patch does not apply to my tree :(

