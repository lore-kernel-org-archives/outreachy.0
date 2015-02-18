X-GM-THRID: 75436654592
X-Received: by 10.112.174.36 with SMTP id bp4mr91216lbc.15.1424283618921;
        Wed, 18 Feb 2015 10:20:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.7.229 with SMTP id m5ls1112653wia.14.canary; Wed, 18 Feb
 2015 10:20:18 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr547810wib.5.1424283618596;
        Wed, 18 Feb 2015 10:20:18 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id ew5si8867928wid.1.2015.02.18.10.20.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 10:20:18 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id bs8so4098684wib.4
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 10:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=WTVX2H1xBeG8iVRqaDPTnvMikP7+oZAkforFeWzeDiY=;
        b=qwE9n4D3IbxqJBOkZfVTx0okhgwolQxFsJOmxvQxS9CxgJOLxk/1F4xOjEU5X1u02r
         eDkw6QC2ie3D/IeB+m6SUynP84yL/ZIi823wy+NyuzUgJG2GTIJUHgIkkFo4em8ilzy1
         /c4MdgDxLx21VFTP4UCf3aOC+IcXBptgLSo7h6yxVMTw8KYYmwrsvLmH/KSSHDp/uNV8
         YeE//nPXy0OBuP+z+WMQKbq13sbSsTtWIRWLWNQ8oPdjuwjab9Lhi9zNfYv6xtUZC0aS
         ijtU00btwHYi3rX1wMx91pywJILoWJPETMurFibX+uB6QDLNkDo+ot1Tz5PfWDWid1X9
         9KIw==
MIME-Version: 1.0
X-Received: by 10.180.85.103 with SMTP id g7mr7257082wiz.19.1424283618463;
 Wed, 18 Feb 2015 10:20:18 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Wed, 18 Feb 2015 10:20:18 -0800 (PST)
In-Reply-To: <54E4C992.7060404@gmail.com>
References: <20150218114728.GA2888@vaishali-Ideapad-Z570>
	<54E486A8.1060902@linux.vnet.ibm.com>
	<CAK-LDb+0xifccLr4kEK-TO3=Bzr6EazcJyU6mP-v=ohpYTqXYA@mail.gmail.com>
	<54E4C992.7060404@gmail.com>
Date: Wed, 18 Feb 2015 23:50:18 +0530
Message-ID: <CAK-LDb+2qNoy6S4jJ4dsrs86jY7Rd46Kwmsfd7Q5yDQ6YErJ9g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Use put_unaligned_le16
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: Preeti U Murthy <preeti@linux.vnet.ibm.com>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 18, 2015 at 10:49 PM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
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

Yes. This makes sense. Thanks for the comment.

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



-- 
Vaishali

