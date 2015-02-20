X-GM-THRID: 1080518770688
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,86373d2d23fa4d80
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.60.132 with SMTP id q4mr9065475ich.5.1424417064021;
        Thu, 19 Feb 2015 23:24:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.224.129 with SMTP id rc1ls284434obc.5.gmail; Thu, 19 Feb
 2015 23:24:23 -0800 (PST)
X-Received: by 10.182.171.2 with SMTP id aq2mr8116326obc.23.1424417063777;
        Thu, 19 Feb 2015 23:24:23 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-yh0-x22b.google.com (mail-yh0-x22b.google.com. [2607:f8b0:4002:c01::22b])
        by gmr-mx.google.com with ESMTPS id u27si885803yhu.4.2015.02.19.23.24.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 23:24:23 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c01::22b as permitted sender) client-ip=2607:f8b0:4002:c01::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c01::22b as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by yhai57 with SMTP id i57so2596342yha.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 23:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=zoV1yMMQ6KMyXxx3Itc7OTJJ+AR9wBEnnMYX1DsYECE=;
        b=fsRtkd6wAjwtmh7hR9QyjhDdxqlZihniTU7YGnGvBvjevXluUCUxUHKEpudgvhvoiG
         K6ckhcQ8hUFcOBIMs/p1SR0oi3eWj0SpvrgXBaNvYcqaMtS5yfeOEGg7TYpR5+ogTXII
         nRXYTVvaH900FLvjT8Ezqq5rsGsjdSW73WZU16zHCSdEMDaWqFRCOqLgRSvuxkoCZtBP
         5SAhDEk8vYz65xtMsvluvvdLXIsgTo7ck72wDIuk5di/VNwd5E8Wmix897pXiyvPeXXo
         2E5WpKDkL/Vssm1RLEbOBVE7qR7OWF1jr7bM0ULbdI7dcI0tF2ibJAkYerUY0+EJaywg
         D+0A==
MIME-Version: 1.0
X-Received: by 10.236.89.171 with SMTP id c31mr2387249yhf.160.1424417063588;
 Thu, 19 Feb 2015 23:24:23 -0800 (PST)
Received: by 10.170.132.203 with HTTP; Thu, 19 Feb 2015 23:24:23 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1502200816570.2045@localhost6.localdomain6>
References: <cover.1424402536.git.vthakkar1994@gmail.com>
	<9defe79e0f212c883f260e27a67bff9f9ba013ba.1424402536.git.vthakkar1994@gmail.com>
	<alpine.DEB.2.02.1502200816570.2045@localhost6.localdomain6>
Date: Fri, 20 Feb 2015 12:54:23 +0530
Message-ID: <CAK-LDbKo2E2gua_=z+5ibpnY-Qf3qnzaJZLW6AdG_KekBH9BZQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] Staging: rtl8723au: Use put_unaligned_le16
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 20, 2015 at 12:47 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Fri, 20 Feb 2015, Vaishali Thakkar wrote:
>
>> Using byte ordering functions and then memcpy() is risky and
>> prone to hide errors which are hard to track down. So, this
>> patch introduces the use of function put_unaligned_le16 which
>> makes the code clear. Here, use of variable tim_bitmap_le
>> and variable itself is removed. Also, to be compatible with the
>> changes header file is added too.
>>
>> Coccinelle is used to do this change and semantic patch used for
>> this is as follows:
>>
>> @a@
>> typedef __le16;
>> __le16 e16;
>> identifier tmp;
>> expression ptr;
>> expression y,e;
>> type T;
>> @@
>>
>> - tmp = cpu_to_le16(y);
>>
>> <+... when != tmp
>> (
>> - memcpy(ptr, (T)&tmp, \(2\|sizeof(__le16)\|sizeof(e16)\));
>> + put_unaligned_le16(y,ptr);
>> |
>> - memcpy(ptr, (T)&tmp, ...);
>> + put_unaligned_le16(y,ptr);
>> )
>> ...+>
>> ? tmp = e
>>
>> @@ type T; identifier a.tmp; @@
>>
>> - T tmp;
>> ...when != tmp
>>
>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>> ---
>> Changes since v1:
>>       -Edit commit log
>>       -Merge this patch in a patch series
>
> So in this case there is no change since v2?  Maybe it would be better to
> make that explicit.

Actually there is no v2 of this patch but as this patch is merged in a
series with
v3 of patch Staging: rtl8188eu: Use put_unaligned_le16 it comes as a v3.

Should I clear this in a cover letter and then resend the patch series?

> julia
>
>
>>  drivers/staging/rtl8723au/core/rtw_ap.c | 8 +++-----
>>  1 file changed, 3 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
>> index c6327c0..7fa4352 100644
>> --- a/drivers/staging/rtl8723au/core/rtw_ap.c
>> +++ b/drivers/staging/rtl8723au/core/rtw_ap.c
>> @@ -20,6 +20,7 @@
>>  #include <wifi.h>
>>  #include <rtl8723a_cmd.h>
>>  #include <rtl8723a_hal.h>
>> +#include <asm/unaligned.h>
>>
>>  extern unsigned char WMM_OUI23A[];
>>  extern unsigned char WPS_OUI23A[];
>> @@ -72,11 +73,8 @@ static void update_BCNTIM(struct rtw_adapter *padapter)
>>       struct wlan_bssid_ex *pnetwork_mlmeext = &pmlmeinfo->network;
>>       unsigned char *pie = pnetwork_mlmeext->IEs;
>>       u8 *p, *dst_ie, *premainder_ie = NULL, *pbackup_remainder_ie = NULL;
>> -     __le16 tim_bitmap_le;
>>       uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
>>
>> -     tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
>> -
>>       p = rtw_get_ie23a(pie, WLAN_EID_TIM, &tim_ielen,
>>                         pnetwork_mlmeext->IELength);
>>       if (p != NULL && tim_ielen > 0) {
>> @@ -143,9 +141,9 @@ static void update_BCNTIM(struct rtw_adapter *padapter)
>>               *dst_ie++ = 0;
>>
>>       if (tim_ielen == 4) {
>> -             *dst_ie++ = *(u8 *)&tim_bitmap_le;
>> +             *dst_ie++ = pstapriv->tim_bitmap & 0xff;
>>       } else if (tim_ielen == 5) {
>> -             memcpy(dst_ie, &tim_bitmap_le, 2);
>> +             put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>>               dst_ie += 2;
>>       }
>>
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9defe79e0f212c883f260e27a67bff9f9ba013ba.1424402536.git.vthakkar1994%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Vaishali

