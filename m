X-GM-THRID: 8179991707648
X-Received: by 10.236.60.202 with SMTP id u50mr16195426yhc.9.1426518668989;
        Mon, 16 Mar 2015 08:11:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.221 with SMTP id 90ls1877424iot.55.gmail; Mon, 16 Mar
 2015 08:11:08 -0700 (PDT)
X-Received: by 10.50.117.8 with SMTP id ka8mr12748851igb.6.1426518668829;
        Mon, 16 Mar 2015 08:11:08 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ni4si1953888pdb.2.2015.03.16.08.11.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 08:11:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A89DCAF3;
	Mon, 16 Mar 2015 15:11:07 +0000 (UTC)
Date: Mon, 16 Mar 2015 16:11:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/8] Staging: iio: Remove parentheses
 around right side an assignment
Message-ID: <20150316151105.GA20104@kroah.com>
References: <1426268725-7786-1-git-send-email-hamohammed.sa@gmail.com>
 <1426268842-7889-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1426268842-7889-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 13, 2015 at 08:47:22PM +0300, Haneen Mohammed wrote:
> Parentheses are not needed around the right hand side of an assignment.
> This patch remove parenthese of such occurenses. Issue was detected and
> solved using the following coccinelle script:
> 
> @rule1@
> identifier x, y, z;
> expression E1, E2;
> @@
> 
> (
> x = (y == z);
> |
> x = (E1 == E2);
> |
>  x =
> -(
> ...
> -)
>  ;
> )
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/iio/accel/adis16240_core.c | 2 +-
>  drivers/staging/iio/light/tsl2x7x_core.c   | 4 ++--
>  drivers/staging/iio/meter/ade7753.c        | 2 +-
>  drivers/staging/iio/meter/ade7754.c        | 2 +-
>  drivers/staging/iio/meter/ade7759.c        | 2 +-
>  5 files changed, 6 insertions(+), 6 deletions(-)

This does not apply to my tree, I think someone else did this right
before you did :(

