X-GM-THRID: 3599576858624
X-Received: by 10.152.1.5 with SMTP id 5mr1116775lai.4.1424941539905;
        Thu, 26 Feb 2015 01:05:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.68 with SMTP id y4ls1166558wix.19.canary; Thu, 26 Feb
 2015 01:05:39 -0800 (PST)
X-Received: by 10.180.11.34 with SMTP id n2mr562150wib.2.1424941539545;
        Thu, 26 Feb 2015 01:05:39 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ew5si77466wid.1.2015.02.26.01.05.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:05:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,651,1418079600"; 
   d="scan'208";a="101379163"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Feb 2015 10:05:39 +0100
Date: Thu, 26 Feb 2015 10:05:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: rtl8723au: Remove warning
 quoted string split across lines.
In-Reply-To: <1424937128-16981-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502261005030.2414@hadrien>
References: <1424937128-16981-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 26 Feb 2015, Melike Yurtoglu wrote:

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

DBG_8723A could be replaced by standard kernel printing functions.

julia

>  				  pendp_desc->bInterval);
>  			pdvobjpriv->RtInPipe[pdvobjpriv->RtNumInPipes] =
>  				usb_endpoint_num(pendp_desc);
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424937128-16981-1-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

