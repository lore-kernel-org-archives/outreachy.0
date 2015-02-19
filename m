X-GM-THRID: 75436654592
X-Received: by 10.194.86.1 with SMTP id l1mr278559wjz.0.1424315404302;
        Wed, 18 Feb 2015 19:10:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.9 with SMTP id bc9ls113722lab.101.gmail; Wed, 18 Feb
 2015 19:10:03 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr269735lan.1.1424315403790;
        Wed, 18 Feb 2015 19:10:03 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com. [74.125.82.171])
        by gmr-mx.google.com with ESMTPS id r6si4412270wix.0.2015.02.18.19.10.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 19:10:03 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 74.125.82.171 as permitted sender) client-ip=74.125.82.171;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 74.125.82.171 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesq59 with SMTP id q59so4837173wes.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 19:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=w+ZCYiINU0x1i4G5aIHEW97oekypzPSXdkTASkE7jNg=;
        b=IYfQNn5r9nxyUS+BctkcS+n6fbETQWF78UdWUCpWObxDgYjdYJBOJP/ZRi7bFa9DJX
         EXbWEaCoWNq5Skb05zrY83JaKHKM58z6WyDvNiSH90bbQbFUwvwS7cF+QK+KX0+icDMN
         Sllq0rD5yxEsdEgP7DmQum6LVAOXoujPS1TeytnErCT6cxa+E/KesqfNLa9BQ2/+IuCw
         xYxiOgvhZOIBient7kV94c/iNKNeV5A0c7clBWAu6g8oug4PiRiSKQdaXI1KSWPO8hXl
         pNW1C4RHyTsfxT/6GBAiHnkrAxhrceYjPLBVxk+C9tqtEmlZ87bAYB3TzYETUkBBlJie
         +HMw==
MIME-Version: 1.0
X-Received: by 10.194.200.68 with SMTP id jq4mr4659835wjc.128.1424315403695;
 Wed, 18 Feb 2015 19:10:03 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Wed, 18 Feb 2015 19:10:03 -0800 (PST)
In-Reply-To: <54E55292.9030002@linux.vnet.ibm.com>
References: <20150218114728.GA2888@vaishali-Ideapad-Z570>
	<54E486A8.1060902@linux.vnet.ibm.com>
	<CAK-LDb+0xifccLr4kEK-TO3=Bzr6EazcJyU6mP-v=ohpYTqXYA@mail.gmail.com>
	<54E4C992.7060404@gmail.com>
	<54E55292.9030002@linux.vnet.ibm.com>
Date: Thu, 19 Feb 2015 08:40:03 +0530
Message-ID: <CAK-LDbLrpsghmJvq3HftAxSB97_Yo_HOQ1f4XtLB4eiCpZHQrA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Use put_unaligned_le16
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Preeti U Murthy <preeti@linux.vnet.ibm.com>
Cc: Jes Sorensen <jes.sorensen@gmail.com>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 19, 2015 at 8:33 AM, Preeti U Murthy
<preeti@linux.vnet.ibm.com> wrote:
> Hi Vaishali,

Hello Preeti

> On 02/18/2015 10:49 PM, Jes Sorensen wrote:
>> On 02/18/15 08:21, Vaishali Thakkar wrote:
>>> On Wed, Feb 18, 2015 at 6:03 PM, Preeti U Murthy
>>> <preeti@linux.vnet.ibm.com> wrote:
>>>> Hi Vaishali,
>>>
>>> Hello Preeti,
>>>
>>>> On 02/18/2015 05:17 PM, Vaishali Thakkar wrote:
>>>>> This patch introduces the use of function put_unaligned_le16.
>>>>
>>>> Why is the use of put_unaligned_le16 better than memcpy here ?
>>>> Can this be figured out?
>>>
>>> As per the definition of put_unaligned_* functions (Here:
>>> http://lxr.free-electrons.com/source/arch/c6x/include/asm/unaligned.h#L34)
>>> , we can use
>>> put_unaligned_* functions in following kind of cases:
>>>
>>> Whenever we have two lines like these:
>>>
>>> __le16 tmp = cpu_to_le16(y);
>>>     memcpy(ptr, &tmp, sizeof(tmp));
>>>
>>> We can go for using put_unaligned_* functions instead:
>>>
>>>     put_unaligned_le16(y, ptr);
>>>
>>> This change can be applied for all put_unaligned-* functions
>>> [ little endian and big endian] listed in this header file.
>>>
>>> This is my understanding about these functions. Bob suggested me these
>>> functions at first place. I worked on solving such bugs using
>>> Coccinelle considering
>>> many different cases and wrote semantic patch for solving all those
>>> bugs. Though I
>>> had some endianness issue for some cases, and I am working on it. It
>>> may be possible
>>> that I am missing something. If it is such a case, then it would be
>>> good if you can correct
>>> me. If you want me to be more specific in change log then also I can go for v3.
>>
>> Just a comment on this - playing with byte ordering macros and then
>> memcpy() is always risky, and prone to hide errors which are hard to
>> track down. The use of put_unaligned_le16() makes it very clear what is
>> happening in the code, so it is a good solution to apply here.
>
> Sorry I was ambiguous in pointing out my expectation in my comment. Yes
> I was looking for a clearer changelog thats all. Including Jes's above
> comment in your changelog would clarify the purpose of this patch.

Yes. I got your point and it makes sense too. I will add Jes's comment
in next version and will keep my change log short and clear.

Thank You

> Regards
> Preeti u Murthy
>>
>> Cheers,
>> Jes
>>
>>> Thank You
>>>
>>>> Regards
>>>> Preeti U Murthy
>>>>>
>>>>> This is done using Coccinelle and semantic patch used is as follows:
>>>>>
>>>>> @a@
>>>>> typedef u16, __le16, uint16_t;
>>>>> {u16,__le16,uint16_t} e16;
>>>>> identifier tmp;
>>>>> expression ptr;
>>>>> expression y,e;
>>>>> type T;
>>>>> @@
>>>>>
>>>>> - tmp = cpu_to_le16(y);
>>>>>
>>>>> <+... when != tmp
>>>>> (
>>>>> - memcpy(ptr, (T)&tmp, \(2\|sizeof(u16)\|sizeof(__le16)\|sizeof(uint16_t)\|sizeof(e16)\));
>>>>> + put_unaligned_le16(y,ptr);
>>>>> |
>>>>> - memcpy(ptr, (T)&tmp, ...);
>>>>> + put_unaligned_le16(y,ptr);
>>>>> )
>>>>> ...+>
>>>>> ? tmp = e
>>>>>
>>>>> @@ type T; identifier a.tmp; @@
>>>>>
>>>>> - T tmp;
>>>>> ...when != tmp
>>>>>
>>>>> Here, use of variable tim_bitmap_le and variable itself is removed. To be compatible
>>>>> with changes header file is added too.
>>>>>
>>>>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>>>>> ---
>>>>> Changes since v1:
>>>>>       -Use of variable tim_bitmap_le is removed
>>>>>       -Variable tim_bitmap_le is removed
>>>>>       -To be compatible with changes header file is added
>>>>>       -Commit log is edited
>>>>>
>>>>>  drivers/staging/rtl8188eu/core/rtw_ap.c | 8 +++-----
>>>>>  1 file changed, 3 insertions(+), 5 deletions(-)
>>>>>
>>>>> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
>>>>> index da19145..e65ee6e 100644
>>>>> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
>>>>> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
>>>>> @@ -23,6 +23,7 @@
>>>>>  #include <drv_types.h>
>>>>>  #include <wifi.h>
>>>>>  #include <ieee80211.h>
>>>>> +#include <asm/unaligned.h>
>>>>>
>>>>>  #ifdef CONFIG_88EU_AP_MODE
>>>>>
>>>>> @@ -78,11 +79,8 @@ static void update_BCNTIM(struct adapter *padapter)
>>>>>       if (true) {
>>>>>               u8 *p, *dst_ie, *premainder_ie = NULL;
>>>>>               u8 *pbackup_remainder_ie = NULL;
>>>>> -             __le16 tim_bitmap_le;
>>>>>               uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
>>>>>
>>>>> -             tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
>>>>> -
>>>>>               p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, _TIM_IE_, &tim_ielen, pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_);
>>>>>               if (p != NULL && tim_ielen > 0) {
>>>>>                       tim_ielen += 2;
>>>>> @@ -137,9 +135,9 @@ static void update_BCNTIM(struct adapter *padapter)
>>>>>                       *dst_ie++ = 0;
>>>>>
>>>>>               if (tim_ielen == 4) {
>>>>> -                     *dst_ie++ = *(u8 *)&tim_bitmap_le;
>>>>> +                     *dst_ie++ = pstapriv->tim_bitmap & 0xff;
>>>>>               } else if (tim_ielen == 5) {
>>>>> -                     memcpy(dst_ie, &tim_bitmap_le, 2);
>>>>> +                     put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>>>>>                       dst_ie += 2;
>>>>>               }
>>>>>
>>>>
>>>
>>>
>>>
>>
>



-- 
Vaishali

