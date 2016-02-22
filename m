X-GM-THRID: 6249498218591158272
X-Received: by 10.67.1.165 with SMTP id bh5mr27172651pad.35.1456146461534;
        Mon, 22 Feb 2016 05:07:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.195 with SMTP id l3ls576569igx.6.gmail; Mon, 22 Feb 2016
 05:07:41 -0800 (PST)
X-Received: by 10.50.23.113 with SMTP id l17mr7109290igf.13.1456146461141;
        Mon, 22 Feb 2016 05:07:41 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qk0-x22b.google.com (mail-qk0-x22b.google.com. [2607:f8b0:400d:c09::22b])
        by gmr-mx.google.com with ESMTPS id l85si1191643ywb.2.2016.02.22.05.07.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 05:07:41 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) client-ip=2607:f8b0:400d:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) smtp.mailfrom=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22b.google.com with SMTP id s68so54872583qkh.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 05:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:subject:to:references:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-type:content-transfer-encoding;
        bh=T70az11pG5Kv1ludQ8RHwoLPTd3roDNDo8l1KmVry4w=;
        b=Lp4v1oscDC4HI3I0ofzl7rPVgSTkhJCi2861ZFJ7cFzkT1wljVOsjRyAGSdLS54IFb
         SosZTXSyp3ZFqLQ+ZL1wEOJ8E/IgteNFV9lovwp5IwAEriC9LFkmg+P1Jv5B2e/qZ+QU
         QmAw8/3oiUtEt6HxlBvM2/yQluf8hRA51rBjACE1MrzGEaIXTvIFf6esmvmudiIePW2b
         b+le0YjEMTje3WjNtPPevnm2PBFM8DIReHPZxhWApcUs/Ya6Lvt0oZFX19WpkPZO5AZy
         rNgL5m1NbAI+Xcx8Sp2mUU5tdlgDgLf5GPivFfhRtYcarTAO5aJjZMr/vxXGwr6BDxTs
         cT/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:subject:to:references:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-type
         :content-transfer-encoding;
        bh=T70az11pG5Kv1ludQ8RHwoLPTd3roDNDo8l1KmVry4w=;
        b=mX7oZ306mPmFoyJPT1ZdSX4kApaWbcdVFYSyBtIZ/tIpP0uf/c4wx5D2nT5Gd7gny9
         /RxlkHW4cnqCT9qxLds/AA6L4ABkz8Mzq6++aUibpIt1XyMtdYetMboA0xx/X13JLgki
         m4HlMqGICa57CcwP8Du92hSD6ljJqEzzwf+8NLlVpTIkb5Im5CooUqZQdFKLj2KMGuHK
         OCPnzPgqhEWs8ZNGhdrxuV+pxWH7sm4QbYgyOcKlR6Xa8FwSfw22XoDIwfKz+du/1bj5
         EW05iUuw5+dZgyfScYyHZuw4lbFjq1V90NNqZkK45k8jQGzGwl8YED4OLFEr4Wqxwh5n
         msUw==
X-Gm-Message-State: AG10YORSWKfNVItKUqN11GADPcs2l28ww8FAj2VHhm9vjYxTDDmi80Fdja5NmyGkt/N79g==
X-Received: by 10.55.78.207 with SMTP id c198mr33537380qkb.34.1456146460969;
        Mon, 22 Feb 2016 05:07:40 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from ?IPv6:2604:2000:1281:1b5:250:b6ff:fec0:39f5? ([2604:2000:1281:1b5:250:b6ff:fec0:39f5])
        by smtp.gmail.com with ESMTPSA id w1sm10188745qha.3.2016.02.22.05.07.39
        (version=TLSv1/SSLv3 cipher=OTHER);
        Mon, 22 Feb 2016 05:07:39 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: Modify boolean
 assignment
To: Greg KH <gregkh@linuxfoundation.org>
References: <20160210082412.GA2645@janani-Inspiron-3521>
 <alpine.DEB.2.02.1602100825150.2050@localhost6.localdomain6>
 <207e6b2c-07b0-48a8-a414-37c59ed7a3e6@googlegroups.com>
 <alpine.DEB.2.10.1602100954070.2486@hadrien> <56C4B515.3020301@gmail.com>
 <20160217180323.GA23677@kroah.com> <56C4B787.2030302@gmail.com>
 <20160220233034.GA19538@kroah.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
 Janani Ravichandran <janani.rvchndrn@gmail.com>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-ID: <56CB081A.1030103@gmail.com>
Date: Mon, 22 Feb 2016 08:07:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <20160220233034.GA19538@kroah.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 02/20/16 18:30, Greg KH wrote:
> On Wed, Feb 17, 2016 at 01:10:15PM -0500, Jes Sorensen wrote:
>> On 02/17/16 13:03, Greg KH wrote:
>>> On Wed, Feb 17, 2016 at 12:59:49PM -0500, Jes Sorensen wrote:
>>>> You also need to CC the driver author, not just the outreachy list.
>>>
>>> For the outreachy application process, the author doesn't need to be
>>>  cc:ed, but they can be if the patch author wants to.
>>
>> If the patches are dropped and not pushed upstream, please ignore CC's,
>> sure. If they are meant to go upstream, the author must be CC'ed.
>>
>> I for one find it really annoying and rude to have patches go into
>> upstream for code I actively maintain, without being CC'ed on them.
> 
> That happens all the time, and is just the way things have always been
> for kernel changes.  Maintainership isn't "absolute" ownership, you know
> this :)

Of course, however it's common courtesy to CC a maintainer. If the code
has been untouched for a long time, sure, but if it's actively being
developed that is a different story.

>> I know Unisys is trying to fix up their code, and knowing conflicting
>> patches are in flight saves work.
> 
> These should all be trivial to work around, and really, if they were
> trying to fix up their code, they would have already resolved "trivial"
> changes like this a long time ago.

It really depends, checkpatch claims errors on a lot of things that
aren't broken in the first place. It is also a question of what to fix
first, real bugs or moving commas around. Either way, this is no excuse
for not being courteous and CC'ing the maintainer on the changes.

Jes



