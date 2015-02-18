X-GM-THRID: 75436654592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bead06cd7830e23e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.111.44 with SMTP id if12mr179481igb.0.1424298673800;
        Wed, 18 Feb 2015 14:31:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.167 with SMTP id x7ls2094107igl.40.canary; Wed, 18 Feb
 2015 14:31:12 -0800 (PST)
X-Received: by 10.43.65.211 with SMTP id xn19mr258648icb.0.1424298672036;
        Wed, 18 Feb 2015 14:31:12 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x234.google.com (mail-qa0-x234.google.com. [2607:f8b0:400d:c00::234])
        by gmr-mx.google.com with ESMTPS id kt5si4846825qcb.3.2015.02.18.14.31.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 14:31:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::234 as permitted sender) client-ip=2607:f8b0:400d:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::234 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-x234.google.com with SMTP id v10so3074338qac.11
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 14:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=Sbjwe/HFw9n8fTGQUYssV+F/C9wyoHTm+2RSo2b8vEo=;
        b=nYji3m3DGPtThMdHlAcXhvBZHpODJdbntkwR3u0EwAPkpPIn7ysBur6JNt83SSxNHS
         +7S9vFmO1RImbUTlYhL/Z1Ss32ZRMqUDBvoJBovZnJWkuq/p0DzVI3AH3NXGmWps9/0c
         tiIIcPQbo/OJ5Iy7/b1Fh5INnvI89RX5/MCkAoR3HxKGjBhROIpVYNsoU7Im0POd5wYi
         BT6vAN4SCJraZAib0KQUzgV/Sd7jNMXrGySMB+l62JBGOWJtAgtTg6iMC3jLx3BR8n4P
         v+8X482YVBDBCaOD6BohDLZrxxs3EYFlFbUISbjxTXkU6nCF0Mc0+kmKj2ch5TOW7jVF
         zqFQ==
X-Received: by 10.140.201.84 with SMTP id w81mr5181506qha.19.1424298671918;
        Wed, 18 Feb 2015 14:31:11 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-71-190-187-138.nycmny.fios.verizon.net. [71.190.187.138])
        by mx.google.com with ESMTPSA id l4sm18672169qao.24.2015.02.18.14.31.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 14:31:11 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E512AD.4040303@gmail.com>
Date: Wed, 18 Feb 2015 17:31:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vaishali Thakkar <vthakkar1994@gmail.com>
CC: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Use put_unaligned_le16
References: <20150217044257.GA3424@vaishali-Ideapad-Z570>	<54E392AB.2020405@gmail.com>	<CAK-LDbLbpQ0d7eyGbYfJPLWGASC9CJLfebpY+QwYeVFrdFssMg@mail.gmail.com>	<57794805.aPSQI7lfOj@wuerfel>	<54E4C770.8090301@gmail.com> <CAK-LDbJAJGtD=4tw7D8v0AT-RBiX-Hdn0drK01UqfnhNdgbt8A@mail.gmail.com>
In-Reply-To: <CAK-LDbJAJGtD=4tw7D8v0AT-RBiX-Hdn0drK01UqfnhNdgbt8A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/18/15 13:08, Vaishali Thakkar wrote:
> On Wed, Feb 18, 2015 at 10:40 PM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
>> On 02/18/15 05:50, Arnd Bergmann wrote:
>>> On Wednesday 18 February 2015 07:02:34 Vaishali Thakkar wrote:
>>>> On Wed, Feb 18, 2015 at 12:42 AM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
>>>>> On 02/17/15 05:11, Vaishali Thakkar wrote:
>>>>> Your use of put_unaligned_le16() if good, the main issue is the above
>>>>> assignment as you mention. Since you got rid of the tim_bitmap_le =
>>>>> portion, the *dst_ie++ = is going to assigning random garbage since
>>>>> tim_bitmap_le is not set.
>>>>>
>>>>> One way to solve the problem would be to make that line say
>>>>>
>>>>>                 if (tim_ielen == 4) {
>>>>> -                       *dst_ie++ = *(u8 *)&tim_bitmap_le;
>>>>> +                       *dst_ie++ = pstapriv->tim_bitmap & 0xff;
>>>>>                 } else if (tim_ielen == 5) {
>>>>> -                       memcpy(dst_ie, &tim_bitmap_le, 2);
>>>>> +                       put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>>>>>
>>>>> and hopefully eliminate the tim_bitmap_le variable completely.
>>>>
>>>> Yes. This makes sense. And as there is only one use of tim_bitmap_le
>>>> variable this will eliminate it completely. Should I go for v2 now, with this
>>>> change?? I have one more such case in rtl8723au driver also. I think now
>>>> I can go for it also.
>>>
>>> Yes, please submit the change for both drivers as separate patches.
>>
>> As Arnd says, please use two patches. The reason is that the two drivers
>> are completely independent and also have separate maintainers (me owning
>> rtl8723au fwiw).
> 
> Sorry I didn't get you.
> 
> Yes, I know both drivers are independent. So, I will send 2 different patches.
> Here, I sent only one patch for rtl8188eu. I didn't send any patch for
> rtl8723au.
> I am working on it and supposed to send it now.

Sorry if I wasn't clear here.

The key is to make the changes in two commits. In general you can post
them as part of a multi-commit patch set if you are fixing something in
a large number of places, or changing an API etc. For more independent
changes like these, posting them individually is preferred.

I hope this makes more sense.

Jes


