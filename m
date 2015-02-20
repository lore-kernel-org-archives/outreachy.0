X-GM-THRID: 1080518770688
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,86373d2d23fa4d80
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.97.97 with SMTP id dz1mr7726823pab.2.1424417073881;
        Thu, 19 Feb 2015 23:24:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.94 with SMTP id u91ls606397ioi.57.gmail; Thu, 19 Feb
 2015 23:24:33 -0800 (PST)
X-Received: by 10.70.42.170 with SMTP id p10mr8201397pdl.3.1424417073705;
        Thu, 19 Feb 2015 23:24:33 -0800 (PST)
Return-Path: <preeti@linux.vnet.ibm.com>
Received: from e7.ny.us.ibm.com (e7.ny.us.ibm.com. [32.97.182.137])
        by gmr-mx.google.com with ESMTPS id x16si330327igx.0.2015.02.19.23.24.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 23:24:33 -0800 (PST)
Received-SPF: none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) client-ip=32.97.182.137;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) smtp.mail=preeti@linux.vnet.ibm.com
Received: from /spool/local
	by e7.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <outreachy-kernel@googlegroups.com> from <preeti@linux.vnet.ibm.com>;
	Fri, 20 Feb 2015 02:24:32 -0500
Received: from d01dlp01.pok.ibm.com (9.56.250.166)
	by e7.ny.us.ibm.com (192.168.1.107) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	Fri, 20 Feb 2015 02:24:31 -0500
Received: from b01cxnp22034.gho.pok.ibm.com (b01cxnp22034.gho.pok.ibm.com [9.57.198.24])
	by d01dlp01.pok.ibm.com (Postfix) with ESMTP id 420D138C8026
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 02:23:12 -0500 (EST)
Received: from d01av03.pok.ibm.com (d01av03.pok.ibm.com [9.56.224.217])
	by b01cxnp22034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id t1K7OVjt19988596
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 07:24:31 GMT
Received: from d01av03.pok.ibm.com (localhost [127.0.0.1])
	by d01av03.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id t1K7OUfu027107
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 02:24:31 -0500
Received: from preeti.in.ibm.com ([9.77.198.76])
	by d01av03.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVin) with ESMTP id t1K7OPXr026907;
	Fri, 20 Feb 2015 02:24:27 -0500
Message-ID: <54E6E127.4070107@linux.vnet.ibm.com>
Date: Fri, 20 Feb 2015 12:54:23 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: outreachy-kernel@googlegroups.com,
        Vaishali Thakkar <vthakkar1994@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: rtl8188eu: Use put_unaligned_le16
References: <cover.1424402536.git.vthakkar1994@gmail.com> <a4e97da77ddf7fbcf2908d9ec7f18c9b32d7ad4e.1424402536.git.vthakkar1994@gmail.com>
In-Reply-To: <a4e97da77ddf7fbcf2908d9ec7f18c9b32d7ad4e.1424402536.git.vthakkar1994@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-TM-AS-MML: disable
X-Content-Scanned: Fidelis XPS MAILER
x-cbid: 15022007-0037-0000-0000-000000AD57D8

Hi Vaishali,

On 02/20/2015 09:00 AM, Vaishali Thakkar wrote:
> Using byte ordering functions and then memcpy() is risky and
> prone to hide errors which are hard to track down. So, this
> patch introduces the use of function put_unaligned_le16 which
> makes the code clear. Here, use of variable tim_bitmap_le
> and variable itself is removed. Also, to be compatible with the
> changes header file is added too.

You don't really need to explain the inclusion of header files since it
would be understood that it is to link the newly introduced functions in
the patch. But you don't need to send out a new version just for
correcting this. The patchset looks good to me.

Reviewed-by: Preeti U Murthy <preeti@linux.vnet.ibm.com>
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
> Changes since v2:
> 	-Edit commit log
> 	-Merge this patch in a patch-series
> 
> Changes since v1:
> 	-Remove use of variable tim_bitmap_le
> 	-Remove variable tim_bitmap_le
> 	-Add header file to be compatible with the changes
> 	-Edit commit log
> 
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index da19145..e65ee6e 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -23,6 +23,7 @@
>  #include <drv_types.h>
>  #include <wifi.h>
>  #include <ieee80211.h>
> +#include <asm/unaligned.h>
> 
>  #ifdef CONFIG_88EU_AP_MODE
> 
> @@ -78,11 +79,8 @@ static void update_BCNTIM(struct adapter *padapter)
>  	if (true) {
>  		u8 *p, *dst_ie, *premainder_ie = NULL;
>  		u8 *pbackup_remainder_ie = NULL;
> -		__le16 tim_bitmap_le;
>  		uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
> 
> -		tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
> -
>  		p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, _TIM_IE_, &tim_ielen, pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_);
>  		if (p != NULL && tim_ielen > 0) {
>  			tim_ielen += 2;
> @@ -137,9 +135,9 @@ static void update_BCNTIM(struct adapter *padapter)
>  			*dst_ie++ = 0;
> 
>  		if (tim_ielen == 4) {
> -			*dst_ie++ = *(u8 *)&tim_bitmap_le;
> +			*dst_ie++ = pstapriv->tim_bitmap & 0xff;
>  		} else if (tim_ielen == 5) {
> -			memcpy(dst_ie, &tim_bitmap_le, 2);
> +			put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>  			dst_ie += 2;
>  		}
> 


