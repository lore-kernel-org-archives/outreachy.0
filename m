X-GM-THRID: 75436654592
X-Received: by 10.42.148.65 with SMTP id q1mr3274267icv.28.1424315088783;
        Wed, 18 Feb 2015 19:04:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.163 with SMTP id e35ls302314ioi.8.gmail; Wed, 18 Feb
 2015 19:04:48 -0800 (PST)
X-Received: by 10.43.161.6 with SMTP id me6mr3221447icc.21.1424315088587;
        Wed, 18 Feb 2015 19:04:48 -0800 (PST)
Return-Path: <preeti@linux.vnet.ibm.com>
Received: from e39.co.us.ibm.com (e39.co.us.ibm.com. [32.97.110.160])
        by gmr-mx.google.com with ESMTPS id e5si2001037qcg.1.2015.02.18.19.04.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 19:04:48 -0800 (PST)
Received-SPF: none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) client-ip=32.97.110.160;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) smtp.mail=preeti@linux.vnet.ibm.com
Received: from /spool/local
	by e39.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <outreachy-kernel@googlegroups.com> from <preeti@linux.vnet.ibm.com>;
	Wed, 18 Feb 2015 20:04:47 -0700
Received: from d03dlp01.boulder.ibm.com (9.17.202.177)
	by e39.co.us.ibm.com (192.168.1.139) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	Wed, 18 Feb 2015 20:04:46 -0700
Received: from b03cxnp08026.gho.boulder.ibm.com (b03cxnp08026.gho.boulder.ibm.com [9.17.130.18])
	by d03dlp01.boulder.ibm.com (Postfix) with ESMTP id DD04C1FF001E
	for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 19:55:57 -0700 (MST)
Received: from d03av03.boulder.ibm.com (d03av03.boulder.ibm.com [9.17.195.169])
	by b03cxnp08026.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id t1J34uhj49610836
	for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 20:05:04 -0700
Received: from d03av03.boulder.ibm.com (localhost [127.0.0.1])
	by d03av03.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id t1J34D0U003654
	for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 20:04:13 -0700
Received: from preeti.in.ibm.com (preeti.in.ibm.com [9.124.35.31])
	by d03av03.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVin) with ESMTP id t1J34B7L001771;
	Wed, 18 Feb 2015 20:04:11 -0700
Message-ID: <54E55292.9030002@linux.vnet.ibm.com>
Date: Thu, 19 Feb 2015 08:33:46 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Jes Sorensen <jes.sorensen@gmail.com>,
        Vaishali Thakkar <vthakkar1994@gmail.com>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Use put_unaligned_le16
References: <20150218114728.GA2888@vaishali-Ideapad-Z570> <54E486A8.1060902@linux.vnet.ibm.com> <CAK-LDb+0xifccLr4kEK-TO3=Bzr6EazcJyU6mP-v=ohpYTqXYA@mail.gmail.com> <54E4C992.7060404@gmail.com>
In-Reply-To: <54E4C992.7060404@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-TM-AS-MML: disable
X-Content-Scanned: Fidelis XPS MAILER
x-cbid: 15021903-0033-0000-0000-000003B80240

Hi Vaishali,

On 02/18/2015 10:49 PM, Jes Sorensen wrote:
> On 02/18/15 08:21, Vaishali Thakkar wrote:
>> On Wed, Feb 18, 2015 at 6:03 PM, Preeti U Murthy
>> <preeti@linux.vnet.ibm.com> wrote:
>>> Hi Vaishali,
>>
>> Hello Preeti,
>>
>>> On 02/18/2015 05:17 PM, Vaishali Thakkar wrote:
>>>> This patch introduces the use of function put_unaligned_le16.
>>>
>>> Why is the use of put_unaligned_le16 better than memcpy here ?
>>> Can this be figured out?
>>
>> As per the definition of put_unaligned_* functions (Here:
>> http://lxr.free-electrons.com/source/arch/c6x/include/asm/unaligned.h#L34)
>> , we can use
>> put_unaligned_* functions in following kind of cases:
>>
>> Whenever we have two lines like these:
>>
>> __le16 tmp = cpu_to_le16(y);
>>     memcpy(ptr, &tmp, sizeof(tmp));
>>
>> We can go for using put_unaligned_* functions instead:
>>
>>     put_unaligned_le16(y, ptr);
>>
>> This change can be applied for all put_unaligned-* functions
>> [ little endian and big endian] listed in this header file.
>>
>> This is my understanding about these functions. Bob suggested me these
>> functions at first place. I worked on solving such bugs using
>> Coccinelle considering
>> many different cases and wrote semantic patch for solving all those
>> bugs. Though I
>> had some endianness issue for some cases, and I am working on it. It
>> may be possible
>> that I am missing something. If it is such a case, then it would be
>> good if you can correct
>> me. If you want me to be more specific in change log then also I can go for v3.
> 
> Just a comment on this - playing with byte ordering macros and then
> memcpy() is always risky, and prone to hide errors which are hard to
> track down. The use of put_unaligned_le16() makes it very clear what is
> happening in the code, so it is a good solution to apply here.

Sorry I was ambiguous in pointing out my expectation in my comment. Yes
I was looking for a clearer changelog thats all. Including Jes's above
comment in your changelog would clarify the purpose of this patch.

Regards
Preeti u Murthy
> 
> Cheers,
> Jes
> 
>> Thank You
>>
>>> Regards
>>> Preeti U Murthy
>>>>
>>>> This is done using Coccinelle and semantic patch used is as follows:
>>>>
>>>> @a@
>>>> typedef u16, __le16, uint16_t;
>>>> {u16,__le16,uint16_t} e16;
>>>> identifier tmp;
>>>> expression ptr;
>>>> expression y,e;
>>>> type T;
>>>> @@
>>>>
>>>> - tmp = cpu_to_le16(y);
>>>>
>>>> <+... when != tmp
>>>> (
>>>> - memcpy(ptr, (T)&tmp, \(2\|sizeof(u16)\|sizeof(__le16)\|sizeof(uint16_t)\|sizeof(e16)\));
>>>> + put_unaligned_le16(y,ptr);
>>>> |
>>>> - memcpy(ptr, (T)&tmp, ...);
>>>> + put_unaligned_le16(y,ptr);
>>>> )
>>>> ...+>
>>>> ? tmp = e
>>>>
>>>> @@ type T; identifier a.tmp; @@
>>>>
>>>> - T tmp;
>>>> ...when != tmp
>>>>
>>>> Here, use of variable tim_bitmap_le and variable itself is removed. To be compatible
>>>> with changes header file is added too.
>>>>
>>>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>>>> ---
>>>> Changes since v1:
>>>>       -Use of variable tim_bitmap_le is removed
>>>>       -Variable tim_bitmap_le is removed
>>>>       -To be compatible with changes header file is added
>>>>       -Commit log is edited
>>>>
>>>>  drivers/staging/rtl8188eu/core/rtw_ap.c | 8 +++-----
>>>>  1 file changed, 3 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
>>>> index da19145..e65ee6e 100644
>>>> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
>>>> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
>>>> @@ -23,6 +23,7 @@
>>>>  #include <drv_types.h>
>>>>  #include <wifi.h>
>>>>  #include <ieee80211.h>
>>>> +#include <asm/unaligned.h>
>>>>
>>>>  #ifdef CONFIG_88EU_AP_MODE
>>>>
>>>> @@ -78,11 +79,8 @@ static void update_BCNTIM(struct adapter *padapter)
>>>>       if (true) {
>>>>               u8 *p, *dst_ie, *premainder_ie = NULL;
>>>>               u8 *pbackup_remainder_ie = NULL;
>>>> -             __le16 tim_bitmap_le;
>>>>               uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
>>>>
>>>> -             tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
>>>> -
>>>>               p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, _TIM_IE_, &tim_ielen, pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_);
>>>>               if (p != NULL && tim_ielen > 0) {
>>>>                       tim_ielen += 2;
>>>> @@ -137,9 +135,9 @@ static void update_BCNTIM(struct adapter *padapter)
>>>>                       *dst_ie++ = 0;
>>>>
>>>>               if (tim_ielen == 4) {
>>>> -                     *dst_ie++ = *(u8 *)&tim_bitmap_le;
>>>> +                     *dst_ie++ = pstapriv->tim_bitmap & 0xff;
>>>>               } else if (tim_ielen == 5) {
>>>> -                     memcpy(dst_ie, &tim_bitmap_le, 2);
>>>> +                     put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>>>>                       dst_ie += 2;
>>>>               }
>>>>
>>>
>>
>>
>>
> 


