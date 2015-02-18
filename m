X-GM-THRID: 75436654592
X-Received: by 10.182.50.161 with SMTP id d1mr334565obo.28.1424279410268;
        Wed, 18 Feb 2015 09:10:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.130 with SMTP id h2ls163989qgf.43.gmail; Wed, 18 Feb
 2015 09:10:10 -0800 (PST)
X-Received: by 10.236.14.196 with SMTP id d44mr296076yhd.52.1424279410105;
        Wed, 18 Feb 2015 09:10:10 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x231.google.com (mail-qc0-x231.google.com. [2607:f8b0:400d:c01::231])
        by gmr-mx.google.com with ESMTPS id kt5si4666164qcb.3.2015.02.18.09.10.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 09:10:10 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::231 as permitted sender) client-ip=2607:f8b0:400d:c01::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::231 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x231.google.com with SMTP id s11so1909759qcv.8
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 09:10:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=iAtzCgEDf4aMJtaCf80iDF5tYml1hRqB0HxU5phNwok=;
        b=pm/Xw5DD/Aax93ucnsEeByiFZtndyfQP4PZbdOxtKhK466Zz2wNXJBG1l3Ug2Xklxx
         n2ULJ+JE4kfUypcUitypigT1mwOnghJncjLy6fA2riFhBxXTiHGMh+FgiZfBWn+IbohC
         Q3/pSCvyr5JQ12RJVYio+l/qgPZPqzdEn/Ug2/y6wu1f1tMiVOCmt1jPeqk8uo32HwRU
         DLYZwqcGb2sKkSDWSbfQ7J6D503BA9pEeABgCp89SkSWkOa2oSLaakRMgWIR9QF1FqTS
         vAXleZJvwno23XgOfGwy+10aLY5SNnr2sWHfWMts4++Ollot/uITs/6i64Is/u/uNVuP
         3+Rw==
X-Received: by 10.140.109.164 with SMTP id l33mr1866306qgf.91.1424279410000;
        Wed, 18 Feb 2015 09:10:10 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-71-190-187-138.nycmny.fios.verizon.net. [71.190.187.138])
        by mx.google.com with ESMTPSA id i185sm8056589qhc.18.2015.02.18.09.10.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 09:10:09 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E4C770.8090301@gmail.com>
Date: Wed, 18 Feb 2015 12:10:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel@googlegroups.com
CC: Vaishali Thakkar <vthakkar1994@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Use put_unaligned_le16
References: <20150217044257.GA3424@vaishali-Ideapad-Z570> <54E392AB.2020405@gmail.com> <CAK-LDbLbpQ0d7eyGbYfJPLWGASC9CJLfebpY+QwYeVFrdFssMg@mail.gmail.com> <57794805.aPSQI7lfOj@wuerfel>
In-Reply-To: <57794805.aPSQI7lfOj@wuerfel>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 02/18/15 05:50, Arnd Bergmann wrote:
> On Wednesday 18 February 2015 07:02:34 Vaishali Thakkar wrote:
>> On Wed, Feb 18, 2015 at 12:42 AM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
>>> On 02/17/15 05:11, Vaishali Thakkar wrote:
>>> Your use of put_unaligned_le16() if good, the main issue is the above
>>> assignment as you mention. Since you got rid of the tim_bitmap_le =
>>> portion, the *dst_ie++ = is going to assigning random garbage since
>>> tim_bitmap_le is not set.
>>>
>>> One way to solve the problem would be to make that line say
>>>
>>>                 if (tim_ielen == 4) {
>>> -                       *dst_ie++ = *(u8 *)&tim_bitmap_le;
>>> +                       *dst_ie++ = pstapriv->tim_bitmap & 0xff;
>>>                 } else if (tim_ielen == 5) {
>>> -                       memcpy(dst_ie, &tim_bitmap_le, 2);
>>> +                       put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>>>
>>> and hopefully eliminate the tim_bitmap_le variable completely.
>>
>> Yes. This makes sense. And as there is only one use of tim_bitmap_le
>> variable this will eliminate it completely. Should I go for v2 now, with this
>> change?? I have one more such case in rtl8723au driver also. I think now
>> I can go for it also.
> 
> Yes, please submit the change for both drivers as separate patches.

As Arnd says, please use two patches. The reason is that the two drivers
are completely independent and also have separate maintainers (me owning
rtl8723au fwiw).

Cheers,
Jes



