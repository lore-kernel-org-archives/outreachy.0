X-GM-THRID: 75436654592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bead06cd7830e23e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.13.236 with SMTP id fb12mr214061wid.1.1424282925575;
        Wed, 18 Feb 2015 10:08:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.100 with SMTP id i4ls43911laa.106.gmail; Wed, 18 Feb
 2015 10:08:45 -0800 (PST)
X-Received: by 10.112.99.37 with SMTP id en5mr85171lbb.17.1424282925109;
        Wed, 18 Feb 2015 10:08:45 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id l8si6223902wia.0.2015.02.18.10.08.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 10:08:45 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id l2so2688560wgh.9
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 10:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=hOhiDcR7QYlc1Kc24Gc4hRO8ZG+MvDCCOCAHX+bTxYs=;
        b=XoatwESjVjKhF5USlyeIV/7ErTWAxwbG0LjlUqqbrvo3b9EZJxwqjsxRgkUwv/Ne3z
         z9yzO1/Q3jd4JvxJBBXr7r4KIzXsIb0OD1chzIIyGrU1cJ/h2c0QGTOHLU9KXyD5EhOA
         /5UM4ud7bK2URH76TyaXJDs/WrbbPR0pOKWl5ANv+4Cm6mIlDCPaigfEKq/1RXTtlf9t
         MSkbLkwxw5dbdViQXmLRcfcm5UGj46ebD5m2f12Dvt3tDz4TmTN8IacOJ5U2jbmG5mme
         nWCn0ZD+VcPIkhmqUHfTNfsSi4YDnwt2KQIZpgORDUoWMs0bNndzcDSlHXUGgKjjNcF3
         BDng==
MIME-Version: 1.0
X-Received: by 10.194.77.99 with SMTP id r3mr617138wjw.149.1424282925010; Wed,
 18 Feb 2015 10:08:45 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Wed, 18 Feb 2015 10:08:44 -0800 (PST)
In-Reply-To: <54E4C770.8090301@gmail.com>
References: <20150217044257.GA3424@vaishali-Ideapad-Z570>
	<54E392AB.2020405@gmail.com>
	<CAK-LDbLbpQ0d7eyGbYfJPLWGASC9CJLfebpY+QwYeVFrdFssMg@mail.gmail.com>
	<57794805.aPSQI7lfOj@wuerfel>
	<54E4C770.8090301@gmail.com>
Date: Wed, 18 Feb 2015 23:38:44 +0530
Message-ID: <CAK-LDbJAJGtD=4tw7D8v0AT-RBiX-Hdn0drK01UqfnhNdgbt8A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Use put_unaligned_le16
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 18, 2015 at 10:40 PM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
> On 02/18/15 05:50, Arnd Bergmann wrote:
>> On Wednesday 18 February 2015 07:02:34 Vaishali Thakkar wrote:
>>> On Wed, Feb 18, 2015 at 12:42 AM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
>>>> On 02/17/15 05:11, Vaishali Thakkar wrote:
>>>> Your use of put_unaligned_le16() if good, the main issue is the above
>>>> assignment as you mention. Since you got rid of the tim_bitmap_le =
>>>> portion, the *dst_ie++ = is going to assigning random garbage since
>>>> tim_bitmap_le is not set.
>>>>
>>>> One way to solve the problem would be to make that line say
>>>>
>>>>                 if (tim_ielen == 4) {
>>>> -                       *dst_ie++ = *(u8 *)&tim_bitmap_le;
>>>> +                       *dst_ie++ = pstapriv->tim_bitmap & 0xff;
>>>>                 } else if (tim_ielen == 5) {
>>>> -                       memcpy(dst_ie, &tim_bitmap_le, 2);
>>>> +                       put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>>>>
>>>> and hopefully eliminate the tim_bitmap_le variable completely.
>>>
>>> Yes. This makes sense. And as there is only one use of tim_bitmap_le
>>> variable this will eliminate it completely. Should I go for v2 now, with this
>>> change?? I have one more such case in rtl8723au driver also. I think now
>>> I can go for it also.
>>
>> Yes, please submit the change for both drivers as separate patches.
>
> As Arnd says, please use two patches. The reason is that the two drivers
> are completely independent and also have separate maintainers (me owning
> rtl8723au fwiw).

Sorry I didn't get you.

Yes, I know both drivers are independent. So, I will send 2 different patches.
Here, I sent only one patch for rtl8188eu. I didn't send any patch for
rtl8723au.
I am working on it and supposed to send it now.

> Cheers,
> Jes
>
>



-- 
Vaishali

