X-GM-THRID: 75436654592
X-Received: by 10.140.231.139 with SMTP id b133mr24921671qhc.1.1424262891515;
        Wed, 18 Feb 2015 04:34:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.130 with SMTP id h2ls40152qgf.43.gmail; Wed, 18 Feb
 2015 04:34:51 -0800 (PST)
X-Received: by 10.52.244.198 with SMTP id xi6mr29843404vdc.0.1424262891381;
        Wed, 18 Feb 2015 04:34:51 -0800 (PST)
Return-Path: <preeti@linux.vnet.ibm.com>
Received: from e35.co.us.ibm.com (e35.co.us.ibm.com. [32.97.110.153])
        by gmr-mx.google.com with ESMTPS id kt5si4531583qcb.3.2015.02.18.04.34.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 04:34:51 -0800 (PST)
Received-SPF: none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) client-ip=32.97.110.153;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) smtp.mail=preeti@linux.vnet.ibm.com
Received: from /spool/local
	by e35.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <outreachy-kernel@googlegroups.com> from <preeti@linux.vnet.ibm.com>;
	Wed, 18 Feb 2015 05:34:50 -0700
Received: from d03dlp01.boulder.ibm.com (9.17.202.177)
	by e35.co.us.ibm.com (192.168.1.135) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	Wed, 18 Feb 2015 05:34:48 -0700
Received: from b03cxnp08027.gho.boulder.ibm.com (b03cxnp08027.gho.boulder.ibm.com [9.17.130.19])
	by d03dlp01.boulder.ibm.com (Postfix) with ESMTP id 58E271FF0040
	for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 05:25:59 -0700 (MST)
Received: from d03av03.boulder.ibm.com (d03av03.boulder.ibm.com [9.17.195.169])
	by b03cxnp08027.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id t1ICYdX427656294
	for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 05:34:47 -0700
Received: from d03av03.boulder.ibm.com (localhost [127.0.0.1])
	by d03av03.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id t1ICYEAb021237
	for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 05:34:15 -0700
Received: from preeti.in.ibm.com ([9.77.120.193])
	by d03av03.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVin) with ESMTP id t1ICY2Yh019315;
	Wed, 18 Feb 2015 05:34:09 -0700
Message-ID: <54E486A8.1060902@linux.vnet.ibm.com>
Date: Wed, 18 Feb 2015 18:03:44 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Vaishali Thakkar <vthakkar1994@gmail.com>,
        outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Use put_unaligned_le16
References: <20150218114728.GA2888@vaishali-Ideapad-Z570>
In-Reply-To: <20150218114728.GA2888@vaishali-Ideapad-Z570>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-TM-AS-MML: disable
X-Content-Scanned: Fidelis XPS MAILER
x-cbid: 15021812-0013-0000-0000-000008D38F32

Hi Vaishali,

On 02/18/2015 05:17 PM, Vaishali Thakkar wrote:
> This patch introduces the use of function put_unaligned_le16.

Why is the use of put_unaligned_le16 better than memcpy here ?
Can this be figured out?

Regards
Preeti U Murthy
> 
> This is done using Coccinelle and semantic patch used is as follows:
> 
> @a@
> typedef u16, __le16, uint16_t;
> {u16,__le16,uint16_t} e16;
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
> - memcpy(ptr, (T)&tmp, \(2\|sizeof(u16)\|sizeof(__le16)\|sizeof(uint16_t)\|sizeof(e16)\));
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
> Here, use of variable tim_bitmap_le and variable itself is removed. To be compatible
> with changes header file is added too.
> 
> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
> Changes since v1:
> 	-Use of variable tim_bitmap_le is removed
> 	-Variable tim_bitmap_le is removed
> 	-To be compatible with changes header file is added
> 	-Commit log is edited
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


