X-GM-THRID: 1080518770688
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,86373d2d23fa4d80
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.28.102 with SMTP id f66mr8265366yha.31.1424416667151;
        Thu, 19 Feb 2015 23:17:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.223 with SMTP id c92ls640419ioj.104.gmail; Thu, 19 Feb
 2015 23:17:46 -0800 (PST)
X-Received: by 10.66.142.170 with SMTP id rx10mr7951870pab.34.1424416666880;
        Thu, 19 Feb 2015 23:17:46 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t6si63193igz.3.2015.02.19.23.17.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 23:17:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,613,1418079600"; 
   d="scan'208";a="100695444"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 08:17:26 +0100
Date: Fri, 20 Feb 2015 08:17:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] Staging: rtl8723au: Use
 put_unaligned_le16
In-Reply-To: <9defe79e0f212c883f260e27a67bff9f9ba013ba.1424402536.git.vthakkar1994@gmail.com>
Message-ID: <alpine.DEB.2.02.1502200816570.2045@localhost6.localdomain6>
References: <cover.1424402536.git.vthakkar1994@gmail.com> <9defe79e0f212c883f260e27a67bff9f9ba013ba.1424402536.git.vthakkar1994@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 20 Feb 2015, Vaishali Thakkar wrote:

> Using byte ordering functions and then memcpy() is risky and
> prone to hide errors which are hard to track down. So, this
> patch introduces the use of function put_unaligned_le16 which
> makes the code clear. Here, use of variable tim_bitmap_le
> and variable itself is removed. Also, to be compatible with the
> changes header file is added too.
> 
> Coccinelle is used to do this change and semantic patch used for
> this is as follows:
> 
> @a@
> typedef __le16;
> __le16 e16;
> identifier tmp;
> expression ptr;
> expression y,e;
> type T;
> @@
> 
> - tmp = cpu_to_le16(y);
> 
> <+... when != tmp
> (
> - memcpy(ptr, (T)&tmp, \(2\|sizeof(__le16)\|sizeof(e16)\));
> + put_unaligned_le16(y,ptr);
> |
> - memcpy(ptr, (T)&tmp, ...);
> + put_unaligned_le16(y,ptr);
> )
> ...+>
> ? tmp = e
> 
> @@ type T; identifier a.tmp; @@
> 
> - T tmp;
> ...when != tmp
> 
> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
> Changes since v1:
> 	-Edit commit log
> 	-Merge this patch in a patch series

So in this case there is no change since v2?  Maybe it would be better to 
make that explicit.

julia


>  drivers/staging/rtl8723au/core/rtw_ap.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
> index c6327c0..7fa4352 100644
> --- a/drivers/staging/rtl8723au/core/rtw_ap.c
> +++ b/drivers/staging/rtl8723au/core/rtw_ap.c
> @@ -20,6 +20,7 @@
>  #include <wifi.h>
>  #include <rtl8723a_cmd.h>
>  #include <rtl8723a_hal.h>
> +#include <asm/unaligned.h>
>  
>  extern unsigned char WMM_OUI23A[];
>  extern unsigned char WPS_OUI23A[];
> @@ -72,11 +73,8 @@ static void update_BCNTIM(struct rtw_adapter *padapter)
>  	struct wlan_bssid_ex *pnetwork_mlmeext = &pmlmeinfo->network;
>  	unsigned char *pie = pnetwork_mlmeext->IEs;
>  	u8 *p, *dst_ie, *premainder_ie = NULL, *pbackup_remainder_ie = NULL;
> -	__le16 tim_bitmap_le;
>  	uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
>  
> -	tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
> -
>  	p = rtw_get_ie23a(pie, WLAN_EID_TIM, &tim_ielen,
>  			  pnetwork_mlmeext->IELength);
>  	if (p != NULL && tim_ielen > 0) {
> @@ -143,9 +141,9 @@ static void update_BCNTIM(struct rtw_adapter *padapter)
>  		*dst_ie++ = 0;
>  
>  	if (tim_ielen == 4) {
> -		*dst_ie++ = *(u8 *)&tim_bitmap_le;
> +		*dst_ie++ = pstapriv->tim_bitmap & 0xff;
>  	} else if (tim_ielen == 5) {
> -		memcpy(dst_ie, &tim_bitmap_le, 2);
> +		put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>  		dst_ie += 2;
>  	}
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9defe79e0f212c883f260e27a67bff9f9ba013ba.1424402536.git.vthakkar1994%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

