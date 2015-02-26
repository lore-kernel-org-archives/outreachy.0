X-GM-THRID: 3599576858624
X-Received: by 10.68.192.10 with SMTP id hc10mr9782209pbc.4.1424984678452;
        Thu, 26 Feb 2015 13:04:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.6 with SMTP id l6ls317416iod.34.gmail; Thu, 26 Feb
 2015 13:04:38 -0800 (PST)
X-Received: by 10.66.224.42 with SMTP id qz10mr10093710pac.0.1424984678243;
        Thu, 26 Feb 2015 13:04:38 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id nt14si236417pab.2.2015.02.26.13.04.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:04:38 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E1D64B58;
	Thu, 26 Feb 2015 21:04:37 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:04:37 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: rtl8723au: Remove
 warning quoted string split across lines.
Message-ID: <20150226210437.GA7376@kroah.com>
References: <1424937128-16981-1-git-send-email-aysemelikeyurtoglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424937128-16981-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 09:52:06AM +0200, Melike Yurtoglu wrote:
> WARNING: quoted string split across lines
> That was found by running checkpatch.
> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/rtl8723au/os_dep/usb_intf.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/os_dep/usb_intf.c b/drivers/staging/rtl8723au/os_dep/usb_intf.c
> index 05755b8..e8158c2 100644
> --- a/drivers/staging/rtl8723au/os_dep/usb_intf.c
> +++ b/drivers/staging/rtl8723au/os_dep/usb_intf.c
> @@ -130,8 +130,8 @@ static struct dvobj_priv *usb_dvobj_init(struct usb_interface *usb_intf)
>  				usb_endpoint_num(pendp_desc);
>  			pdvobjpriv->RtNumInPipes++;
>  		} else if (usb_endpoint_is_int_in(pendp_desc)) {
> -			DBG_8723A("usb_endpoint_is_int_in = %x, Interval = "
> -				  "%x\n", usb_endpoint_num(pendp_desc),
> +			DBG_8723A("usb_endpoint_is_int_in = %x",
> +				  "Interval =%x\n", usb_endpoint_num(pendp_desc),

That change does not look correct at all, did you compile this?

thanks,

greg k-h

