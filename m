X-GM-THRID: 7419446951936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,df3cf6baa54f3a11
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.142.196 with SMTP id ry4mr13119008pab.12.1426414473141;
        Sun, 15 Mar 2015 03:14:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.34.195 with SMTP id b3ls889293obj.89.gmail; Sun, 15 Mar
 2015 03:14:32 -0700 (PDT)
X-Received: by 10.182.128.98 with SMTP id nn2mr35467271obb.40.1426414472887;
        Sun, 15 Mar 2015 03:14:32 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si1238207pac.2.2015.03.15.03.14.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:14:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AB68D13;
	Sun, 15 Mar 2015 10:14:31 +0000 (UTC)
Date: Sun, 15 Mar 2015 11:14:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Remove unneeded
 spaces to improve code style.
Message-ID: <20150315101428.GA21913@kroah.com>
References: <20150310120627.GA8543@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20150310120627.GA8543@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 10, 2015 at 05:36:28PM +0530, Vatika Harlalka wrote:
> Remove spaces to improve code style and align the code.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/fbtft/fb_agm1264k-fl.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
> index 7aa9e8c..9d74b23 100644
> --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> @@ -33,13 +33,13 @@
>  #define WIDTH		64
>  #define HEIGHT		64
>  #define TOTALWIDTH	(WIDTH * 2)	 /* because 2 x ks0108 in one display */
> -#define FPS			20
> +#define FPS		20
>  
>  #define EPIN		gpio.wr
> -#define RS			gpio.dc
> -#define RW			gpio.aux[2]
> -#define CS0			gpio.aux[0]
> -#define CS1			gpio.aux[1]
> +#define RS		gpio.dc
> +#define RW		gpio.aux[2]
> +#define CS0		gpio.aux[0]
> +#define CS1		gpio.aux[1]
>  
>  
>  /* diffusing error (“Floyd-Steinberg”) */

This does not apply to my tree :(

