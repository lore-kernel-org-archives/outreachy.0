X-GM-THRID: 75436654592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bead06cd7830e23e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.22.138 with SMTP id d10mr87738obf.37.1424279956591;
        Wed, 18 Feb 2015 09:19:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.228 with SMTP id 91ls186906qgh.14.gmail; Wed, 18 Feb
 2015 09:19:16 -0800 (PST)
X-Received: by 10.236.29.133 with SMTP id i5mr324378yha.3.1424279956326;
        Wed, 18 Feb 2015 09:19:16 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x233.google.com (mail-qa0-x233.google.com. [2607:f8b0:400d:c00::233])
        by gmr-mx.google.com with ESMTPS id kt5si4672262qcb.3.2015.02.18.09.19.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 09:19:16 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::233 as permitted sender) client-ip=2607:f8b0:400d:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::233 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-f51.google.com with SMTP id i13so1739244qae.10
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 09:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=446QYf/v8cHDhj7LONWMHuXqn6kOHVlvFM0E0ZaA/yo=;
        b=y6ljE10zSrDGl4eb4BkT+VWxs/eKqOMs/m6iRKEy1OiUraTtlK2WEs7K0Gv/N1Mht/
         S3fn5521vTPukRVoELH6jthKakFvANqYYbs8nIAv/maIfdYo+OaByyf5707QjD7ESV8M
         soF+TD2qWZHNTs/GquMDyfyiY8B4SRHfZCvWAD5vGgvGE5aP7Pc/SZCzuq2M1wSey46F
         ztNcyv9TQXA3pTVuRChq+SNIaeHMgK5e/Sf2o5kP1xcYAmFNUKvVmVySNpvKykVO+7Cm
         06r0LB7yKOYZ2ARuLRUCV30orFE0nQ7q76WrnqzP4pTNreZ94Bd3Hh8fhVJjKBZ8NvpL
         WTTg==
X-Received: by 10.141.23.1 with SMTP id z1mr2203294qhd.27.1424279956143;
        Wed, 18 Feb 2015 09:19:16 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-71-190-187-138.nycmny.fios.verizon.net. [71.190.187.138])
        by mx.google.com with ESMTPSA id u20sm16337809qah.12.2015.02.18.09.19.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 09:19:15 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E4C992.7060404@gmail.com>
Date: Wed, 18 Feb 2015 12:19:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vaishali Thakkar <vthakkar1994@gmail.com>, 
 Preeti U Murthy <preeti@linux.vnet.ibm.com>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Use put_unaligned_le16
References: <20150218114728.GA2888@vaishali-Ideapad-Z570>	<54E486A8.1060902@linux.vnet.ibm.com> <CAK-LDb+0xifccLr4kEK-TO3=Bzr6EazcJyU6mP-v=ohpYTqXYA@mail.gmail.com>
In-Reply-To: <CAK-LDb+0xifccLr4kEK-TO3=Bzr6EazcJyU6mP-v=ohpYTqXYA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/18/15 08:21, Vaishali Thakkar wrote:
> On Wed, Feb 18, 2015 at 6:03 PM, Preeti U Murthy
> <preeti@linux.vnet.ibm.com> wrote:
>> Hi Vaishali,
> 
> Hello Preeti,
> 
>> On 02/18/2015 05:17 PM, Vaishali Thakkar wrote:
>>> This patch introduces the use of function put_unaligned_le16.
>>
>> Why is the use of put_unaligned_le16 better than memcpy here ?
>> Can this be figured out?
> 
> As per the definition of put_unaligned_* functions (Here:
> http://lxr.free-electrons.com/source/arch/c6x/include/asm/unaligned.h#L34)
> , we can use
> put_unaligned_* functions in following kind of cases:
> 
> Whenever we have two lines like these:
> 
> __le16 tmp = cpu_to_le16(y);
>     memcpy(ptr, &tmp, sizeof(tmp));
> 
> We can go for using put_unaligned_* functions instead:
> 
>     put_unaligned_le16(y, ptr);
> 
> This change can be applied for all put_unaligned-* functions
> [ little endian and big endian] listed in this header file.
> 
> This is my understanding about these functions. Bob suggested me these
> functions at first place. I worked on solving such bugs using
> Coccinelle considering
> many different cases and wrote semantic patch for solving all those
> bugs. Though I
> had some endianness issue for some cases, and I am working on it. It
> may be possible
> that I am missing something. If it is such a case, then it would be
> good if you can correct
> me. If you want me to be more specific in change log then also I can go for v3.

Just a comment on this - playing with byte ordering macros and then
memcpy() is always risky, and prone to hide errors which are hard to
track down. The use of put_unaligned_le16() makes it very clear what is
happening in the code, so it is a good solution to apply here.

Cheers,
Jes

> Thank You
> 
>> Regards
>> Preeti U Murthy
>>>
>>> This is done using Coccinelle and semantic patch used is as follows:
>>>
>>> @a@
>>> typedef u16, __le16, uint16_t;
>>> {u16,__le16,uint16_t} e16;
>>> identifier tmp;
>>> expression ptr;
>>> expression y,e;
>>> type T;
>>> @@
>>>
>>> - tmp = cpu_to_le16(y);
>>>
>>> <+... when != tmp
>>> (
>>> - memcpy(ptr, (T)&tmp, \(2\|sizeof(u16)\|sizeof(__le16)\|sizeof(uint16_t)\|sizeof(e16)\));
>>> + put_unaligned_le16(y,ptr);
>>> |
>>> - memcpy(ptr, (T)&tmp, ...);
>>> + put_unaligned_le16(y,ptr);
>>> )
>>> ...+>
>>> ? tmp = e
>>>
>>> @@ type T; identifier a.tmp; @@
>>>
>>> - T tmp;
>>> ...when != tmp
>>>
>>> Here, use of variable tim_bitmap_le and variable itself is removed. To be compatible
>>> with changes header file is added too.
>>>
>>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>>> ---
>>> Changes since v1:
>>>       -Use of variable tim_bitmap_le is removed
>>>       -Variable tim_bitmap_le is removed
>>>       -To be compatible with changes header file is added
>>>       -Commit log is edited
>>>
>>>  drivers/staging/rtl8188eu/core/rtw_ap.c | 8 +++-----
>>>  1 file changed, 3 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
>>> index da19145..e65ee6e 100644
>>> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
>>> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
>>> @@ -23,6 +23,7 @@
>>>  #include <drv_types.h>
>>>  #include <wifi.h>
>>>  #include <ieee80211.h>
>>> +#include <asm/unaligned.h>
>>>
>>>  #ifdef CONFIG_88EU_AP_MODE
>>>
>>> @@ -78,11 +79,8 @@ static void update_BCNTIM(struct adapter *padapter)
>>>       if (true) {
>>>               u8 *p, *dst_ie, *premainder_ie = NULL;
>>>               u8 *pbackup_remainder_ie = NULL;
>>> -             __le16 tim_bitmap_le;
>>>               uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
>>>
>>> -             tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
>>> -
>>>               p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, _TIM_IE_, &tim_ielen, pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_);
>>>               if (p != NULL && tim_ielen > 0) {
>>>                       tim_ielen += 2;
>>> @@ -137,9 +135,9 @@ static void update_BCNTIM(struct adapter *padapter)
>>>                       *dst_ie++ = 0;
>>>
>>>               if (tim_ielen == 4) {
>>> -                     *dst_ie++ = *(u8 *)&tim_bitmap_le;
>>> +                     *dst_ie++ = pstapriv->tim_bitmap & 0xff;
>>>               } else if (tim_ielen == 5) {
>>> -                     memcpy(dst_ie, &tim_bitmap_le, 2);
>>> +                     put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>>>                       dst_ie += 2;
>>>               }
>>>
>>
> 
> 
> 


