X-GM-THRID: 6670815133562830848
X-Received: by 2002:ac2:4355:: with SMTP id o21mr2070298lfl.85.1553174905101;
        Thu, 21 Mar 2019 06:28:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4352:: with SMTP id o18ls571956lfl.11.gmail; Thu, 21 Mar
 2019 06:28:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyD9rAqUXriAoJ1kJHLdmbMJGOIawz+4t6gzVICZM+e1/U2ytssK8vTOl+PsaW00tzlE/zQ
X-Received: by 2002:a19:ae11:: with SMTP id f17mr2176701lfc.12.1553174904198;
        Thu, 21 Mar 2019 06:28:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553174904; cv=none;
        d=google.com; s=arc-20160816;
        b=QKoQQCAxz4ZbOx4e8rj/C8h/AuBDlNRobdIMeM1k+k4rYYa4oO/fQUmrk+kUtjPVVd
         yroBFRlomDp4jsMQyhaHr0TfSxlXguY1LmaVruZ3HyP2CQAe4cDtn0RouDa9Tm5OB6t1
         p+JcKWKBIeT3UukFGqxvRtmdvEOwuVTOTXGxD7OpzM6TfgUkYFRuKlEXjnhLQhjUK4QW
         s8d+eCPo6y19L3ODJL/Q2eUUdxWSH+Fq1748F7V0OgfyDqNFIh3fVcceFH2jB81TY4Qd
         elOTIldFq/fDoRVWzHxScnDRtwQzwRYQg/5g81trP6ZHblH8iCfkzEiBJWyYPGa4vd8g
         cosg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7OZoxlkD6vI9fCEwfJn/7aZf0wIHTZ+9SzNevoizR7c=;
        b=ivswFhGkBWbbZaLB0t4GEwMiTw14c5t0kcU5Xpt39HwpCtyEA+eyuhPADZlcodjqRn
         ms8m49DBZea3tjp+DmEjLku7r0O6nCH0/i9D1WOJHE3mHp9TUkUj2GlJqbwJuLOQn1yf
         OR9qmL2it6ZsaRWmsgNEOXE+2eijkwmC8n4ht460kwE/EpvWpfl1KmVbQ2Bl5q4KEpws
         z6USm3AGW7+6pWfFQZIRmRa3wUvowQd176U7biyyh0xOXMgMN2qE7GtU8FiA4lN1vleT
         xZbPP2BRzn/DCAk/j1j5mTFXZ8jxKUs0/AZI2o2FFXNOepLV9ExG9RN9MZJTBfhVVdlW
         654g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u4si74017lfl.3.2019.03.21.06.28.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 06:28:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,252,1549926000"; 
   d="scan'208";a="300246158"
Received: from wifi-eduroam-85-116.paris.inria.fr ([128.93.85.116])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2019 14:28:23 +0100
Date: Thu, 21 Mar 2019 14:28:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: rtl8723bs: include:
 remove typedef for struct pno_nlo_info
In-Reply-To: <20190321120908.43680-2-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.20.1903211426570.4279@hadrien>
References: <20190321120908.43680-1-himadri18.07@gmail.com> <20190321120908.43680-2-himadri18.07@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 21 Mar 2019, Himadri Pandya wrote:

> Remove typedef for struct pno_nlo_info as the Linux kernel coding style
> guidelines discourage the use of typedefs for struct types.
>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> index e2a4c680125f..011a5685c2ff 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> @@ -159,7 +159,7 @@ enum PS_DENY_REASON {
>  };
>
>  #ifdef CONFIG_PNO_SUPPORT
> -typedef struct pno_nlo_info
> +struct pno_nlo_info
>  {
>  	u32 fast_scan_period;				/* Fast scan period */
>  	u32 ssid_num;				/* number of entry */
> @@ -168,7 +168,7 @@ typedef struct pno_nlo_info
>  	u8 ssid_length[MAX_PNO_LIST_COUNT];	/* SSID Length Array */
>  	u8 ssid_cipher_info[MAX_PNO_LIST_COUNT];	/* Cipher information for security */
>  	u8 ssid_channel_info[MAX_PNO_LIST_COUNT];	/* channel information */
> -}pno_nlo_info_t;
> +};
>
>  typedef struct pno_ssid {
>  	u32 	SSID_len;
> @@ -279,7 +279,7 @@ struct pwrctrl_priv
>  #ifdef CONFIG_PNO_SUPPORT
>  	u8 pno_in_resume;
>  	u8 pno_inited;
> -	pno_nlo_info_t	*pnlo_info;
> +	struct pno_nlo_info	*pnlo_info;

I don't think the big space is needed before pnlo_info.  It was to line up
with the other fields, but it doesn't align any more.

julia

>  	pno_scan_info_t	*pscan_info;
>  	pno_ssid_list_t	*pno_ssid_list;
>  #endif
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190321120908.43680-2-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

