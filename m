X-GM-THRID: 1080518770688
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,86373d2d23fa4d80
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.50.161 with SMTP id d1mr8479127obo.28.1424417209674;
        Thu, 19 Feb 2015 23:26:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.20.101 with SMTP id m5ls79458ige.28.canary; Thu, 19 Feb
 2015 23:26:49 -0800 (PST)
X-Received: by 10.66.196.11 with SMTP id ii11mr8441541pac.37.1424417209365;
        Thu, 19 Feb 2015 23:26:49 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-yk0-x22d.google.com (mail-yk0-x22d.google.com. [2607:f8b0:4002:c07::22d])
        by gmr-mx.google.com with ESMTPS id q25si885149yhb.6.2015.02.19.23.26.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 23:26:49 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c07::22d as permitted sender) client-ip=2607:f8b0:4002:c07::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c07::22d as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yk0-f173.google.com with SMTP id 19so6309709ykq.4
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 23:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=QpbEI+596LST+n0Stn6IMfBNpd3RxYS+FAzrt4ByhvM=;
        b=wSFZcNltQxoMuOpLYkUIqd3XmMXDdiBHL1p1UZ4WDu9CuxMM3oEyAVb8vnhjYBFGtf
         cIXEf8Yfpk8IW65pTnWTXsVwFqpF+wIBJOAznm7nknL3KgSkWJpobR8KqkYxHtXv2Uhp
         LmPw1Nui3/TTMKZsHpDfhs5/CFuXJUBUbsdjkDcR4FXM5DlFjxRC0zCBXxkxThdsV5zb
         m50MlN3hfv7bwwXBHhp7Pwns7+3o+6tkYAZbtdk0aIDBdkhihXQmyei/PfBuZbfe6G8R
         M/qFYFWT3F8f/H2i6ZGvnscCt1PhMeXktw/V2V3NTq0OTenC1iwxC7H5wOtvy2ApemXO
         gkkA==
MIME-Version: 1.0
X-Received: by 10.236.109.35 with SMTP id r23mr5329967yhg.149.1424417209239;
 Thu, 19 Feb 2015 23:26:49 -0800 (PST)
Received: by 10.170.132.203 with HTTP; Thu, 19 Feb 2015 23:26:49 -0800 (PST)
In-Reply-To: <54E6E127.4070107@linux.vnet.ibm.com>
References: <cover.1424402536.git.vthakkar1994@gmail.com>
	<a4e97da77ddf7fbcf2908d9ec7f18c9b32d7ad4e.1424402536.git.vthakkar1994@gmail.com>
	<54E6E127.4070107@linux.vnet.ibm.com>
Date: Fri, 20 Feb 2015 12:56:49 +0530
Message-ID: <CAK-LDb+Az4dNVPQ=nFP0v0xDjmAGWvtVY3YArg=5mr2GpZNm0Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: rtl8188eu: Use put_unaligned_le16
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Preeti U Murthy <preeti@linux.vnet.ibm.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 20, 2015 at 12:54 PM, Preeti U Murthy
<preeti@linux.vnet.ibm.com> wrote:
> Hi Vaishali,

Hello Preeti

> On 02/20/2015 09:00 AM, Vaishali Thakkar wrote:
>> Using byte ordering functions and then memcpy() is risky and
>> prone to hide errors which are hard to track down. So, this
>> patch introduces the use of function put_unaligned_le16 which
>> makes the code clear. Here, use of variable tim_bitmap_le
>> and variable itself is removed. Also, to be compatible with the
>> changes header file is added too.
>
> You don't really need to explain the inclusion of header files since it
> would be understood that it is to link the newly introduced functions in
> the patch. But you don't need to send out a new version just for
> correcting this. The patchset looks good to me.

Ok. I will keep this in mind for next patches.

Thank You

> Reviewed-by: Preeti U Murthy <preeti@linux.vnet.ibm.com>
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
>> Changes since v2:
>>       -Edit commit log
>>       -Merge this patch in a patch-series
>>
>> Changes since v1:
>>       -Remove use of variable tim_bitmap_le
>>       -Remove variable tim_bitmap_le
>>       -Add header file to be compatible with the changes
>>       -Edit commit log
>>
>>  drivers/staging/rtl8188eu/core/rtw_ap.c | 8 +++-----
>>  1 file changed, 3 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
>> index da19145..e65ee6e 100644
>> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
>> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
>> @@ -23,6 +23,7 @@
>>  #include <drv_types.h>
>>  #include <wifi.h>
>>  #include <ieee80211.h>
>> +#include <asm/unaligned.h>
>>
>>  #ifdef CONFIG_88EU_AP_MODE
>>
>> @@ -78,11 +79,8 @@ static void update_BCNTIM(struct adapter *padapter)
>>       if (true) {
>>               u8 *p, *dst_ie, *premainder_ie = NULL;
>>               u8 *pbackup_remainder_ie = NULL;
>> -             __le16 tim_bitmap_le;
>>               uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
>>
>> -             tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
>> -
>>               p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, _TIM_IE_, &tim_ielen, pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_);
>>               if (p != NULL && tim_ielen > 0) {
>>                       tim_ielen += 2;
>> @@ -137,9 +135,9 @@ static void update_BCNTIM(struct adapter *padapter)
>>                       *dst_ie++ = 0;
>>
>>               if (tim_ielen == 4) {
>> -                     *dst_ie++ = *(u8 *)&tim_bitmap_le;
>> +                     *dst_ie++ = pstapriv->tim_bitmap & 0xff;
>>               } else if (tim_ielen == 5) {
>> -                     memcpy(dst_ie, &tim_bitmap_le, 2);
>> +                     put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>>                       dst_ie += 2;
>>               }
>>
>



-- 
Vaishali

