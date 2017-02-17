X-GM-THRID: 6388170133905342464
X-Received: by 10.28.153.75 with SMTP id b72mr325612wme.14.1487363062163;
        Fri, 17 Feb 2017 12:24:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.89 with SMTP id 25ls267349lju.4.gmail; Fri, 17 Feb 2017
 12:24:21 -0800 (PST)
X-Received: by 10.25.150.212 with SMTP id y203mr558406lfd.30.1487363061097;
        Fri, 17 Feb 2017 12:24:21 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p185si217486wme.1.2017.02.17.12.24.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 12:24:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,173,1484002800"; 
   d="scan'208";a="213780609"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2017 21:24:20 +0100
Date: Fri, 17 Feb 2017 21:24:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Larry Finger <Larry.Finger@lwfinger.net>, 
    Florian Schilhabel <florian.c.schilhabel@googlemail.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8712: Match alignment
 with open parenthesis.
In-Reply-To: <58a756e2.0a9d630a.ca478.ffbb@mx.google.com>
Message-ID: <alpine.DEB.2.20.1702172123560.2118@hadrien>
References: <cover.1487359493.git.varshar186@gmail.com> <58a756e2.0a9d630a.ca478.ffbb@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 18 Feb 2017, Varsha Rao wrote:

> Matched function arguments alignment with it's open parenthesis. This patch
> fixes the following checkpatch issue:

it's -> its.  it's means "it is".

julia

>
> CHECK: Alignment should match open parenthesis
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/rtl8712/os_intfs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
> index 1141ab3..8836b31 100644
> --- a/drivers/staging/rtl8712/os_intfs.c
> +++ b/drivers/staging/rtl8712/os_intfs.c
> @@ -388,7 +388,7 @@ static int netdev_open(struct net_device *pnetdev)
>  		if (!r8712_initmac)
>  			/* Use the mac address stored in the Efuse */
>  			memcpy(pnetdev->dev_addr,
> -				padapter->eeprompriv.mac_addr, ETH_ALEN);
> +			       padapter->eeprompriv.mac_addr, ETH_ALEN);
>  		else {
>  			/* We have to inform f/w to use user-supplied MAC
>  			 * address.
> @@ -405,7 +405,7 @@ static int netdev_open(struct net_device *pnetdev)
>  			 * users specify.
>  			 */
>  			memcpy(padapter->eeprompriv.mac_addr,
> -				pnetdev->dev_addr, ETH_ALEN);
> +			       pnetdev->dev_addr, ETH_ALEN);
>  		}
>  		if (start_drv_threads(padapter) != _SUCCESS)
>  			goto netdev_open_error;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58a756e2.0a9d630a.ca478.ffbb%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

