X-GM-THRID: 6205566056947253248
X-Received: by 10.180.106.197 with SMTP id gw5mr1213673wib.7.1444846934066;
        Wed, 14 Oct 2015 11:22:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.30.197 with SMTP id e188ls8398lfe.35.gmail; Wed, 14 Oct
 2015 11:22:13 -0700 (PDT)
X-Received: by 10.112.142.195 with SMTP id ry3mr1141309lbb.22.1444846933482;
        Wed, 14 Oct 2015 11:22:13 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id i8si356502wib.1.2015.10.14.11.22.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:22:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id gb1so140991546wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ZniGxv30z8guU7hyAWQsVnorxMNuqc5EbFZOgCpZk7Q=;
        b=Waq7xZd6p+lHlhfB0Px54s5Xif5an72YMQpMmMwpeknlGN9eR4p86WQoCpA+pbVmMc
         5mQv67USadbvaqjjb3BLyWcGR0eog6V4apvjx6Caix6U/CQPXBIxJHDbfPKJScVtH0uk
         RxUIMX/9ImTnh0bbf83cC++bnHtG1UakwgFKFgouSb+9qzqM8nkM2G6eGceUr461t54Q
         QEM2do/Vhc8CCKMTFJUHHd3dJifx/hUCYXjJnyyXMpYXfz4Y2vXJwcDfeUoLyT/NFnIE
         DorpgK8JLQYMztESc+SC00Y9s1ZgtdyyCdAlyIO/YMpnCYBqe2nvDs8TpGjgpJAdaSM2
         i8Pg==
MIME-Version: 1.0
X-Received: by 10.194.175.104 with SMTP id bz8mr5856386wjc.42.1444846932692;
 Wed, 14 Oct 2015 11:22:12 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Wed, 14 Oct 2015 11:22:12 -0700 (PDT)
In-Reply-To: <CA+5yK5H3g3GGtDob2=UNVRdgjn9BMUy7tzkO6EOcd3OLn16Qgw@mail.gmail.com>
References: <cover.1444845733.git.amitoj1606@gmail.com>
	<alpine.DEB.2.10.1510142008470.2421@hadrien>
	<CA+5yK5H3g3GGtDob2=UNVRdgjn9BMUy7tzkO6EOcd3OLn16Qgw@mail.gmail.com>
Date: Wed, 14 Oct 2015 21:22:12 +0300
Message-ID: <CAEnQRZBTpkZi+y_W6sySGxGx-zx-1TJXiXeyvLqP5JgDPPh_3g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/6] staging: lustre: Remove useless
 cast on void pointer
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 9:16 PM, Amitoj Kaur Chawla
<amitoj1606@gmail.com> wrote:
> On Wed, Oct 14, 2015 at 11:39 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> On Wed, 14 Oct 2015, Amitoj Kaur Chawla wrote:
>>
>>> This patchset fixes multiple useless casts on void pointers.
>>>
>>> The semantic patch used to find this is:
>>>
>>> @r@
>>> expression x;
>>> void* e;
>>> type T;
>>> identifier f;
>>> @@
>>>
>>> (
>>>   *((T *)e)
>>> |
>>>   ((T *)x)[...]
>>> |
>>>   ((T *)x)->f
>>> |
>>> - (T *)
>>>   e
>>> )
>>>
>>>
>>> Amitoj Kaur Chawla (6):
>>>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>>>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>>>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>>>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>>
>> The patches haven't arrived in my mailbox yet, but it looks like you will
>> have four with the same subject?
>>
>> julia
>>
> Yes all 4 are doing the same thing. Is this a bad thing?
> Since I'm making changes in separate files I thought it would be
> better to send them as separate patches.
> Should I combine the 4 and resend the series?

It's very good that you've split the patches. The issue here is that
all patches have the same subject.

You can introduce the filename into the equation, thus resulting
different subjects for your patches.

e.g.  staging: lustre: ptlrpc: pinger: Remove useless cast on void pointer

