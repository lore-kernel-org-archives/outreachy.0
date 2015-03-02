X-GM-THRID: 4711413448704
X-Received: by 10.66.142.170 with SMTP id rx10mr23293913pab.34.1425255664118;
        Sun, 01 Mar 2015 16:21:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.50.162 with SMTP id d2ls809328igo.25.canary; Sun, 01 Mar
 2015 16:21:03 -0800 (PST)
X-Received: by 10.68.237.8 with SMTP id uy8mr24008682pbc.7.1425255663858;
        Sun, 01 Mar 2015 16:21:03 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si1313283pad.1.2015.03.01.16.21.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:21:03 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 964974D3;
	Mon,  2 Mar 2015 00:21:03 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:21:03 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Refine if
 condition
Message-ID: <20150302002103.GA17196@kroah.com>
References: <20150227175849.GA20418@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150227175849.GA20418@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 11:28:49PM +0530, Vatika Harlalka wrote:
> Variable bound takes maximum value 8 so the if condition
> for odd i is made more compact.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/phy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index 6af72a4..3d0e447 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -1038,7 +1038,7 @@ static bool simularity_compare(struct adapter *adapt, s32 resulta[][8],
>  		bound = 4;
>  
>  	for (i = 0; i < bound; i++) {
> -		if ((i == 1) || (i == 3) || (i == 5) || (i == 7)) {
> +		if (i%2 == 1) {

I find this harder to read now, sorry, '%' is not used often in C code
for a reason :)

thanks,

greg k-h

