X-GM-THRID: 75436654592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bead06cd7830e23e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.171.9 with SMTP id aq9mr9367221pac.20.1424433662852;
        Fri, 20 Feb 2015 04:01:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.178.228 with SMTP id db4ls129330igc.3.canary; Fri, 20 Feb
 2015 04:01:02 -0800 (PST)
X-Received: by 10.66.66.1 with SMTP id b1mr8711630pat.8.1424433662581;
        Fri, 20 Feb 2015 04:01:02 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id q2si5390684qcn.2.2015.02.20.04.01.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 04:01:02 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-f51.google.com with SMTP id z60so13506081qgd.10
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 04:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=MZflbm23zVHWAqoiahlDUrIyrJg9yvMP0eoS0EPfgp4=;
        b=bmV4v5FW3XMT1iKRI8o9u8XYQwIKhugu/Bb0oucCoiJUIl1sbOeewDvK0zqH73FKB8
         wXrEfzgHJKSRUgDBgcIrQgbbm6tbqG+i/K23oyfefBC+qrbyAH0dZkVG+XVdwLqqagrM
         cVOAk2j16nWQlZPMOi6B82eN3Ev2zq2ZfQlicCvNpFtc6peC1+KWJz2dGubHqZmm1fmn
         y3x4H8fCfZSlr5uIW3PaC/70L2ohR5+n/YWWZRPAPNcnajnx6Dm3O6zciN1ZgmVd0uQm
         aEr1Matg1qkOC2z9/PRfy+zQGiJ7AyXYob9bo1iCC/2o/maoKyiRVhTIEp6W0aTJro5M
         ETvA==
X-Received: by 10.229.70.201 with SMTP id e9mr23851211qcj.6.1424433662426;
        Fri, 20 Feb 2015 04:01:02 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-72-68-159-94.nycmny.fios.verizon.net. [72.68.159.94])
        by mx.google.com with ESMTPSA id f8sm647956qaa.10.2015.02.20.04.01.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 04:01:01 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E721FC.6080301@gmail.com>
Date: Fri, 20 Feb 2015 07:01:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vaishali Thakkar <vthakkar1994@gmail.com>, 
 Arnd Bergmann <arnd@arndb.de>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Use put_unaligned_le16
References: <20150217044257.GA3424@vaishali-Ideapad-Z570>	<54E512AD.4040303@gmail.com>	<CAK-LDbLMqPrkKyVuu8TX6jx4xXZom7J-R9gvR0Hi+NOBBFJyTw@mail.gmail.com>	<8353755.unKOhaQ6P4@wuerfel> <CAK-LDbKy8zE9kz_48Ja8wtX6G+xhDZvr4KxpXnQG9H=tw+L5Zg@mail.gmail.com>
In-Reply-To: <CAK-LDbKy8zE9kz_48Ja8wtX6G+xhDZvr4KxpXnQG9H=tw+L5Zg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/19/15 03:43, Vaishali Thakkar wrote:
> On Thu, Feb 19, 2015 at 1:58 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> On Thursday 19 February 2015 08:35:46 Vaishali Thakkar wrote:
>>> On Feb 19, 2015 4:01 AM, "Jes Sorensen" <jes.sorensen@gmail.com> wrote:
>>>>
>>>> The key is to make the changes in two commits. In general you can post
>>>> them as part of a multi-commit patch set if you are fixing something in
>>>> a large number of places, or changing an API etc. For more independent
>>>> changes like these, posting them individually is preferred.
>>>>
>>>> I hope this makes more sense.
>>>
>>> Yes. Ok. I will send this patch as a series of patches. One for
>>> put_unaligned_le16 function and other one for removing use of variable.
>>
>> There are lots of ways for splitting a patch series, and usually doing
>> a multiple smaller changes is better than combining them, but there is a
>> limit. In this case you have four changes that could be done separately:
>>
>> a) use put_unaligned_le16 in rtl8188eu
>> b) remove tim_bitmap_le variable in rtl8188eu
>> c) use put_unaligned_le16 in rtl8723au
>> d) remove tim_bitmap_le variable in rtl8723au
>>
>> What Jes and I were saying is that you should do a) combined with b) as
>> one patch, and c) with d) as a second patch, but send them as a series,
>> not a) and c) combined as one patch followed by b) and d) as you understood.
> 
> Oh. ok. Actually there is one misunderstanding here. I already sent 2 separate
> patches. First one combining a) and b) and second one combining c) and d).
> But after Jes's comment what I thought that he wants me to send 2 patch-series
> with 4 different patches where [ a) and b) ]goes for 1st patch-series
> and [c) and d) ]
> goes for 2nd patch-series. But thanks for clearing this.
> 
> I will send a patch-series[ 2 patches- one patch for rtl8188eu and
> second for  rtl8723au]
> as you explained.

Sorry for being ambiguous on this one, Arnd is absolutely right. The a+b
c+d solution is the right way - you are basically fixing up two small
closely related issues, so it is best to keep them together in the same
patch.

Cheers,
Jes


