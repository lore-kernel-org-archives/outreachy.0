X-GM-THRID: 6249320811377721344
X-Received: by 10.66.248.234 with SMTP id yp10mr45711067pac.10.1455248912751;
        Thu, 11 Feb 2016 19:48:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.75 with SMTP id b69ls1250445qgf.53.gmail; Thu, 11 Feb
 2016 19:48:32 -0800 (PST)
X-Received: by 10.140.136.135 with SMTP id 129mr46585336qhi.10.1455248912309;
        Thu, 11 Feb 2016 19:48:32 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tn7si1323287pac.1.2016.02.11.19.48.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 19:48:32 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EDFBFF47;
	Fri, 12 Feb 2016 03:48:31 +0000 (UTC)
Date: Thu, 11 Feb 2016 19:48:31 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: xgifb: Use shorthand operator
Message-ID: <20160212034831.GA23192@kroah.com>
References: <1455033333-31657-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455033333-31657-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 09, 2016 at 09:25:33PM +0530, Bhumika Goyal wrote:
> Use shorthand operator for assignment statement to make code look cleaner.
> Made a coccinelle script for this and did changes.
> @@
> identifier data;
> constant x;
> @@
> 
> (
> - data = data + x
> + data += x
> |
> - data = data - x
> + data -= x
> )
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index de96da1..0daa661 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -289,7 +289,7 @@ static void XGI_SetCRT1Timing_H(struct vb_device_info *pVBInfo,
>  
>  	if (HwDeviceExtension->jChipType >= XG20) {
>  		data = xgifb_reg_get(pVBInfo->P3d4, 0x04);
> -		data = data - 1;
> +		data -= 1;

Sorry, I'm not going to take these kinds of "cleanups" anymore, they
aren't doing much...

greg k-h

