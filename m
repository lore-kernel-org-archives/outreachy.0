X-GM-THRID: 6250350811445985280
X-Received: by 10.112.167.136 with SMTP id zo8mr233945lbb.10.1455284419054;
        Fri, 12 Feb 2016 05:40:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.40 with SMTP id h40ls367585lfi.1.gmail; Fri, 12 Feb 2016
 05:40:18 -0800 (PST)
X-Received: by 10.25.154.129 with SMTP id c123mr238000lfe.1.1455284418434;
        Fri, 12 Feb 2016 05:40:18 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c143si81007wmd.1.2016.02.12.05.40.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 05:40:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,436,1449529200"; 
   d="scan'208";a="202834212"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 14:40:18 +0100
Date: Fri, 12 Feb 2016 14:40:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rakhi Sharma <rakhish1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Fixed a comparision
 coding style warning.
In-Reply-To: <1455276064-16426-1-git-send-email-rakhish1994@gmail.com>
Message-ID: <alpine.DEB.2.10.1602121440010.2510@hadrien>
References: <1455276064-16426-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

You need to explain why it is v2, under the ---

julia

On Fri, 12 Feb 2016, Rakhi Sharma wrote:

> WARNING: Comparisons should place the constant on the right side of the test
> Fixed this warning by placing the constant on right side.
>
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
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455276064-16426-1-git-send-email-rakhish1994%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

