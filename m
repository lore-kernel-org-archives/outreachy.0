X-GM-THRID: 6208528687273345024
X-Received: by 10.129.39.65 with SMTP id n62mr18533431ywn.13.1445761860005;
        Sun, 25 Oct 2015 01:31:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.154.4 with SMTP id vk4ls25407igb.30.canary; Sun, 25 Oct
 2015 01:30:59 -0700 (PDT)
X-Received: by 10.50.78.170 with SMTP id c10mr10937512igx.6.1445761859764;
        Sun, 25 Oct 2015 01:30:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id el2si3040884pbb.0.2015.10.25.01.30.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:30:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D3ECC67;
	Sun, 25 Oct 2015 08:30:58 +0000 (UTC)
Date: Sat, 24 Oct 2015 19:11:25 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: xgifb: Loop optimization.
Message-ID: <20151025021125.GA12287@kroah.com>
References: <20151022174214.GA17978@navya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151022174214.GA17978@navya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 22, 2015 at 11:12:14PM +0530, Navya Sri Nizamkari wrote:
> Put operations involving loop constants outside
> the loop.
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index c886dd2..78ee191 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -1138,19 +1138,18 @@ static void XGI_LoadDAC(struct vb_device_info *pVBInfo)
>  		dl = 0;
>  
>  		for (n = 0; n < 3; n++) {
> +			ah = table[di];
> +			al = table[bx];
>  			for (o = 0; o < 5; o++) {
>  				dh = table[si];
> -				ah = table[di];
> -				al = table[bx];
>  				si++;
>  				XGI_WriteDAC(dl, ah, al, dh, pVBInfo);
>  			}
>  
>  			si -= 2;
> -
> +			dh = table[bx];
> +			ah = table[di];
>  			for (o = 0; o < 3; o++) {
> -				dh = table[bx];
> -				ah = table[di];
>  				al = table[si];
>  				si--;
>  				XGI_WriteDAC(dl, ah, al, dh, pVBInfo);

Doesn't the compiler already do this?

Can you measure a difference here?

thanks,

greg k-h

