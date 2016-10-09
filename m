X-GM-THRID: 6339093426987859968
X-Received: by 10.66.167.198 with SMTP id zq6mr6006338pab.96.1476024983501;
        Sun, 09 Oct 2016 07:56:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.8 with SMTP id j8ls2489617ita.11.gmail; Sun, 09 Oct 2016
 07:56:22 -0700 (PDT)
X-Received: by 10.66.124.162 with SMTP id mj2mr6211318pab.25.1476024982166;
        Sun, 09 Oct 2016 07:56:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si7456603par.0.2016.10.09.07.56.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:56:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 62311892;
	Sun,  9 Oct 2016 14:56:21 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:56:29 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Keila <laurana5@gmail.com>
Cc: Marc Dietrich <marvin24@gmx.de>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/13] driver/staging/nvec/nvec_power.c Tabstop remove
Message-ID: <20161009145629.GA26220@kroah.com>
References: <20161008020854.GA20114@kheixx-VB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161008020854.GA20114@kheixx-VB>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Oct 08, 2016 at 04:08:54AM +0200, Keila wrote:
> Fixed checkpatch.pl error."No tabstop at the init of the line"
> 
> Signed-off-by: Keila Novo <laurana5@gmail.com>

The "From:" line of your email does not match this name :(

> ---
>  drivers/staging/nvec/nvec_power.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/nvec/nvec_power.c b/drivers/staging/nvec/nvec_power.c
> index fcbb0fa..b16c871 100644
> --- a/drivers/staging/nvec/nvec_power.c
> +++ b/drivers/staging/nvec/nvec_power.c
> @@ -441,8 +441,8 @@ static struct platform_driver nvec_power_driver = {
>  	.probe = nvec_power_probe,
>  	.remove = nvec_power_remove,
>  	.driver = {
> -		   .name = "nvec-power",
> -		   }
> +		 .name = "nvec-power",

You still have a ' ' here that is not needed, why did you not fix it?

thanks,

greg k-h

