X-GM-THRID: 1080518770688
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,86373d2d23fa4d80
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.235.83 with SMTP id g80mr8859892qhc.5.1424417110371;
        Thu, 19 Feb 2015 23:25:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.33.40 with SMTP id o8ls298014obi.43.gmail; Thu, 19 Feb
 2015 23:25:10 -0800 (PST)
X-Received: by 10.182.142.102 with SMTP id rv6mr8581233obb.47.1424417110207;
        Thu, 19 Feb 2015 23:25:10 -0800 (PST)
Return-Path: <preeti@linux.vnet.ibm.com>
Received: from e7.ny.us.ibm.com (e7.ny.us.ibm.com. [32.97.182.137])
        by gmr-mx.google.com with ESMTPS id q6si57201igr.3.2015.02.19.23.25.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 23:25:10 -0800 (PST)
Received-SPF: none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) client-ip=32.97.182.137;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) smtp.mail=preeti@linux.vnet.ibm.com
Received: from /spool/local
	by e7.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <outreachy-kernel@googlegroups.com> from <preeti@linux.vnet.ibm.com>;
	Fri, 20 Feb 2015 02:25:09 -0500
Received: from d01dlp02.pok.ibm.com (9.56.250.167)
	by e7.ny.us.ibm.com (192.168.1.107) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	Fri, 20 Feb 2015 02:25:07 -0500
Received: from b01cxnp23032.gho.pok.ibm.com (b01cxnp23032.gho.pok.ibm.com [9.57.198.27])
	by d01dlp02.pok.ibm.com (Postfix) with ESMTP id 127FF6E8040
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 02:16:58 -0500 (EST)
Received: from d01av03.pok.ibm.com (d01av03.pok.ibm.com [9.56.224.217])
	by b01cxnp23032.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id t1K7P6mr26214646
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 07:25:06 GMT
Received: from d01av03.pok.ibm.com (localhost [127.0.0.1])
	by d01av03.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id t1K7P6b6028343
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 02:25:06 -0500
Received: from preeti.in.ibm.com ([9.77.198.76])
	by d01av03.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVin) with ESMTP id t1K7P33V028247;
	Fri, 20 Feb 2015 02:25:05 -0500
Message-ID: <54E6E14F.3020204@linux.vnet.ibm.com>
Date: Fri, 20 Feb 2015 12:55:03 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Vaishali Thakkar <vthakkar1994@gmail.com>,
        outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] Staging: rtl8723au: Use put_unaligned_le16
References: <cover.1424402536.git.vthakkar1994@gmail.com> <9defe79e0f212c883f260e27a67bff9f9ba013ba.1424402536.git.vthakkar1994@gmail.com>
In-Reply-To: <9defe79e0f212c883f260e27a67bff9f9ba013ba.1424402536.git.vthakkar1994@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-TM-AS-MML: disable
X-Content-Scanned: Fidelis XPS MAILER
x-cbid: 15022007-0037-0000-0000-000000AD57EB

On 02/20/2015 09:01 AM, Vaishali Thakkar wrote:
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
> 
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
Reviewed-by: Preeti U Murthy <preeti@linux.vnet.ibm.com>


