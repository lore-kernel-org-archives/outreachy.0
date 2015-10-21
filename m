X-GM-THRID: 6208125602285748224
X-Received: by 10.182.44.138 with SMTP id e10mr252491obm.32.1445443675632;
        Wed, 21 Oct 2015 09:07:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.10 with SMTP id a10ls561672ioj.25.gmail; Wed, 21 Oct
 2015 09:07:55 -0700 (PDT)
X-Received: by 10.66.152.230 with SMTP id vb6mr8191130pab.46.1445443675088;
        Wed, 21 Oct 2015 09:07:55 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id vy6si1139608pbc.1.2015.10.21.09.07.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 09:07:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AE67F90;
	Wed, 21 Oct 2015 16:07:54 +0000 (UTC)
Date: Wed, 21 Oct 2015 09:07:54 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: xgifb: Replace udelay
 function with usleep_range
Message-ID: <20151021160754.GA24814@kroah.com>
References: <20151021153800.GA3140@navya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151021153800.GA3140@navya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 21, 2015 at 09:08:00PM +0530, Navya Sri Nizamkari wrote:
> This patch fixes the checkpatch.pl check:
> 
> CHECK: usleep_range is preferred over udelay
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/xgifb/vb_init.c | 78 ++++++++++++++++++++---------------------
>  1 file changed, 39 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
> index 2b233af..ea358a0 100644
> --- a/drivers/staging/xgifb/vb_init.c
> +++ b/drivers/staging/xgifb/vb_init.c
> @@ -10,7 +10,7 @@ static const unsigned short XGINew_DDRDRAM_TYPE340[4][2] = {
>  	{ 16, 0x45},
>  	{  8, 0x35},
>  	{  4, 0x31},
> -	{  2, 0x21} };
> +	{  2, 0x21} };e

I don't think you build this patch :(


