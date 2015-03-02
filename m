X-GM-THRID: 5595816001536
X-Received: by 10.236.207.230 with SMTP id n66mr23922404yho.30.1425258070376;
        Sun, 01 Mar 2015 17:01:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.80.229 with SMTP id u5ls533529obx.23.gmail; Sun, 01 Mar
 2015 17:01:10 -0800 (PST)
X-Received: by 10.182.246.198 with SMTP id xy6mr23154084obc.26.1425258070185;
        Sun, 01 Mar 2015 17:01:10 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si1322622pdb.1.2015.03.01.17.01.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 17:01:10 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CF6C64D3;
	Mon,  2 Mar 2015 01:01:09 +0000 (UTC)
Date: Sun, 1 Mar 2015 17:01:09 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: emxx_udc: Remove argument
 test from function
Message-ID: <20150302010109.GA21644@kroah.com>
References: <1425244693-8713-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425244693-8713-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 02, 2015 at 12:18:13AM +0300, Haneen Mohammed wrote:
> This patch removes the test statement for an argument to  _nbu2ss_pullup function,
> for it can't be null due to previous derefrences when its called.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index 0bfd268..b2a89a6 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -2257,11 +2257,6 @@ static int _nbu2ss_pullup(struct nbu2ss_udc *udc, int is_on)
>  {
>  	u32	reg_dt;
>  
> -	if (!udc) {
> -		pr_err("udc: %s, bad param\n", __func__);
> -		return -EINVAL;
> -	}
> -
>  	if (udc->vbus_active == 0)
>  		return -ESHUTDOWN;
>  

Does not apply :(

