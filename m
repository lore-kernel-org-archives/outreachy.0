X-GM-THRID: 3231867469824
X-Received: by 10.236.229.233 with SMTP id h99mr17275798yhq.42.1424795695353;
        Tue, 24 Feb 2015 08:34:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.43.202 with SMTP id y10ls901336obl.61.gmail; Tue, 24 Feb
 2015 08:34:55 -0800 (PST)
X-Received: by 10.183.3.43 with SMTP id bt11mr18304828obd.7.1424795695114;
        Tue, 24 Feb 2015 08:34:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q6si1134124igr.3.2015.02.24.08.34.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 08:34:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,639,1418079600"; 
   d="scan'208";a="123211769"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2015 17:34:52 +0100
Date: Tue, 24 Feb 2015 17:34:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Katie Dunne <kdunne@mail.ccsf.edu>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Remove unused
 Macro
In-Reply-To: <20150224162637.GA9677@katie-Inspiron-5748>
Message-ID: <alpine.DEB.2.10.1502241734270.18704@hadrien>
References: <20150224162637.GA9677@katie-Inspiron-5748>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 24 Feb 2015, Katie Dunne wrote:

> Removes SetFrameType Macro because its not used elsewhere
>
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
>  drivers/staging/rtl8712/wifi.h | 7 -------
>  1 file changed, 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
> index 5ba7e71..356059b 100644
> --- a/drivers/staging/rtl8712/wifi.h
> +++ b/drivers/staging/rtl8712/wifi.h
> @@ -246,13 +246,6 @@ enum WIFI_REG_DOMAIN {
>  #define GetFrameType(pbuf)	(le16_to_cpu(*(unsigned short *)(pbuf)) & \
>  				(BIT(3) | BIT(2)))
>
> -#define SetFrameType(pbuf, type)	\
> -	do {	\
> -		*(unsigned short *)(pbuf) &= cpu_to_le16(~(BIT(3) | \
> -		BIT(2))); \
> -		*(unsigned short *)(pbuf) |= cpu_to_le16(type); \
> -	} while (0)
> -
>  #define GetFrameSubType(pbuf)	(cpu_to_le16(*(unsigned short *)(pbuf)) & \
>  				(BIT(7) | BIT(6) | BIT(5) | BIT(4) | BIT(3) | \
>  				BIT(2)))

Maybe check on some of the other macros nearby?

julia


> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150224162637.GA9677%40katie-Inspiron-5748.
> For more options, visit https://groups.google.com/d/optout.
>

