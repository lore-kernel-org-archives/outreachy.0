X-GM-THRID: 6250350811445985280
X-Received: by 10.50.50.208 with SMTP id e16mr1708316igo.12.1455274202228;
        Fri, 12 Feb 2016 02:50:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.138 with SMTP id r10ls703654ioi.57.gmail; Fri, 12 Feb
 2016 02:50:01 -0800 (PST)
X-Received: by 10.107.7.200 with SMTP id g69mr1743694ioi.3.1455274201792;
        Fri, 12 Feb 2016 02:50:01 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ff2si1375377pad.2.2016.02.12.02.50.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 02:50:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,435,1449529200"; 
   d="scan'208";a="202806019"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 11:49:59 +0100
Date: Fri, 12 Feb 2016 11:49:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Rakhi Sharma <rakhish1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 4/4] staging: rtl8712: Fixed a comparision coding style
 warning.
In-Reply-To: <1455273194-15848-1-git-send-email-rakhish1994@gmail.com>
Message-ID: <alpine.DEB.2.02.1602121149350.2055@localhost6.localdomain6>
References: <1455273194-15848-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 12 Feb 2016, Rakhi Sharma wrote:

> WARNING: Comparisons should place the constant on the right side of the test
> Fixed this warning by placing the constant on right side.

This says patch 4/4, but did you send the other three?

julia

> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_efuse.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
> index eaa93fb..76f60ba 100644
> --- a/drivers/staging/rtl8712/rtl8712_efuse.c
> +++ b/drivers/staging/rtl8712/rtl8712_efuse.c
> @@ -161,7 +161,7 @@ static u8 efuse_is_empty(struct _adapter *padapter, u8 *empty)
>  
>  	/* read one byte to check if E-Fuse is empty */
>  	if (efuse_one_byte_rw(padapter, true, 0, &value)) {
> -		if (0xFF == value)
> +		if (value == 0xFF)
>  			*empty = true;
>  		else
>  			*empty = false;
> @@ -345,7 +345,7 @@ static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
>  				ret = false;
>  			} else if (pkt.data[i * 2] != value) {
>  				ret = false;
> -				if (0xFF == value) /* write again */
> +				if (value == 0xFF) /* write again */
>  					efuse_one_byte_write(padapter, addr,
>  							pkt.data[i * 2]);
>  			}
> @@ -353,7 +353,7 @@ static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
>  				ret = false;
>  			} else if (pkt.data[i * 2 + 1] != value) {
>  				ret = false;
> -				if (0xFF == value) /* write again */
> +				if (value == 0xFF) /* write again */
>  					efuse_one_byte_write(padapter, addr + 1,
>  							     pkt.data[i * 2 +
>  								      1]);
> @@ -420,7 +420,7 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
>  		}
>  		/* write header fail */
>  		bResult = false;
> -		if (0xFF == efuse_data)
> +		if (efuse_data == 0xFF)
>  			return bResult; /* nothing damaged. */
>  		/* call rescue procedure */
>  		if (!fix_header(padapter, efuse_data, efuse_addr))
> -- 
> 1.9.1
> 
> 

