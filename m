X-GM-THRID: 6256392971161174016
X-Received: by 10.28.63.149 with SMTP id m143mr14487wma.0.1456935951244;
        Wed, 02 Mar 2016 08:25:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.50.3 with SMTP id y3ls416041wmy.38.gmail; Wed, 02 Mar 2016
 08:25:50 -0800 (PST)
X-Received: by 10.28.15.82 with SMTP id 79mr121959wmp.3.1456935950871;
        Wed, 02 Mar 2016 08:25:50 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z75si45378wmz.2.2016.03.02.08.25.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:50 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 88B40DBA;
	Wed,  2 Mar 2016 16:25:49 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:49 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: lnet: Remove int
 typecast of offsetof().
Message-ID: <20160302162549.GL987@kroah.com>
References: <20160228092006.GA3627@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160228092006.GA3627@sandhya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 28, 2016 at 02:50:07PM +0530, Sandhya Bankar wrote:
> Remove int typecast of offsetof(). 
> As per below coccinelle rule:
> 
> @@
> type T;
> expression E;
> @@
> 
> - (int)(offsetof(T,E))
> + offsetof(T,E) 
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/lustre/lnet/lnet/api-ni.c | 54 +++++++++++++++----------------
>  1 file changed, 27 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c b/drivers/staging/lustre/lnet/lnet/api-ni.c
> index 3ecc96a..c3fe782 100644
> --- a/drivers/staging/lustre/lnet/lnet/api-ni.c
> +++ b/drivers/staging/lustre/lnet/lnet/api-ni.c
> @@ -197,75 +197,75 @@ static void lnet_assert_wire_constants(void)
>  	CLASSERT((int)sizeof(lnet_handle_wire_t) == 16);
>  	CLASSERT((int)offsetof(lnet_handle_wire_t, wh_interface_cookie) == 0);
>  	CLASSERT((int)sizeof(((lnet_handle_wire_t *)0)->wh_interface_cookie) == 8);
> -	CLASSERT((int)offsetof(lnet_handle_wire_t, wh_object_cookie) == 8);
> +	CLASSERT(offsetof(lnet_handle_wire_t, wh_object_cookie) == 8);
>  	CLASSERT((int)sizeof(((lnet_handle_wire_t *)0)->wh_object_cookie) == 8);

Why did you only change 1 of them here and not all instances?

thanks,

greg k-h

