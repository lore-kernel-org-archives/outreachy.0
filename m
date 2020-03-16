X-GM-THRID: 6804610075497332736
X-Received: by 2002:adf:8023:: with SMTP id 32mr1010035wrk.189.1584388265980;
        Mon, 16 Mar 2020 12:51:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls290604wme.3.gmail; Mon, 16 Mar
 2020 12:51:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs6jKAwzWZfx2CFB8P77Tl/FweYh1S996K2lk8cLC0NoUDYFY7ZPd/gcWn99gHwFZYJKEVI
X-Received: by 2002:a7b:cb42:: with SMTP id v2mr764454wmj.170.1584388264050;
        Mon, 16 Mar 2020 12:51:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584388264; cv=none;
        d=google.com; s=arc-20160816;
        b=KwmXCUa7CLG5apaHoU9PpdJUlbVvWPG+bSOzQkDlFB4glxfgh49wq5XuELn0FOiTm8
         LIb3CJlGsmc0485mZhtQo1FxTbGErsVIy3/5EE9x/0zQd66X93t6Ev8DdCdqET/oBhYA
         rzZ8waziDibXEi4ElVjBlwPGjG6GXsuBbHYYy4Ye7NQBUv0odGqkhRUn3fSNPRDWSsDG
         PhaDpiT4y0VLlqjF7qpxb3YQmbYwXJNVZeTmpB0AiFo3fqVHxd0gvEOcjburxJ7sLxEU
         +w7RJR3SpcQcBLEjsu9KEW9KDZu7GWx1NmiwSMcUdF2EGk1uj8NBggc957BL7eBJ8KDq
         MIJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=fy+A25Lr6kjHSnQrTn/qJQAAN2FrGqw/6KEHyHTg3JQ=;
        b=dUQlfWaT3M04MEGVhWlSoTHCdBltXT/DOXJgPXkrjr5a1WmGHaaqHeJ/Qab34vSuFs
         iQzxZ/PPIjLv+EZ6rhKhBi8L2mnpWTtwwhLlmNelJKdILl6l2tUaX5FXAshNt8RPbn2g
         HrXGsWyMRC3KY/Q63k+tCxBGJ8151PgDT7NJCb+UhQN4dVBWzI5I0YEcByxbioG9ZJ+r
         W0GT63OxWzsqBTA3N2cvY0atl8B+N3iHn6IDJtwImGBnZblB50EKWD1HIwUO2pNwduxz
         WnCBrDKf69BtXlRou2BicGGeqQy/bnU5oQfLpgMnwxp1y84xIIlUOdl3KA/Qyk2ajAam
         PTZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w17si15295wrn.3.2020.03.16.12.51.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 12:51:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,561,1574118000"; 
   d="scan'208";a="440629834"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2020 20:51:03 +0100
Date: Mon, 16 Mar 2020 20:51:03 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
cc: outreachy-kernel@googlegroups.com, Stefano Brivio <sbrivio@redhat.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] staging: wlan-ng: Fix line going over 80 characters
In-Reply-To: <20200316193723.1247875-1-jbwyatt4@gmail.com>
Message-ID: <alpine.DEB.2.21.2003162050510.5216@hadrien>
References: <20200316012148.1200745-1-jbwyatt4@gmail.com> <20200316193723.1247875-1-jbwyatt4@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 16 Mar 2020, John B. Wyatt IV wrote:

> Add a newline before the second argument for style, readability, and
> consistency.
>
> Please note checkpath reports the third argument as being over 80
> characters, but not the second argument.

checkpatch :)

julia

>
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
> 20200316012148.1200745-1-jbwyatt4@gmail.com
>
>  drivers/staging/wlan-ng/hfa384x_usb.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
> index b71756ab0394..f8485601aead 100644
> --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> @@ -3317,7 +3317,8 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
>  		break;
>
>  	default:
> -		netdev_warn(hw->wlandev->netdev, "Received frame on unsupported port=%d\n",
> +		netdev_warn(hw->wlandev->netdev,
> +			    "Received frame on unsupported port=%d\n",
>  			    HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status));
>  		break;
>  	}
> --
> 2.25.1
>
>

