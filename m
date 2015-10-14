X-GM-THRID: 6205566056947253248
X-Received: by 10.182.29.41 with SMTP id g9mr3831132obh.27.1444847048037;
        Wed, 14 Oct 2015 11:24:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.105 with SMTP id j102ls276905iod.85.gmail; Wed, 14 Oct
 2015 11:24:07 -0700 (PDT)
X-Received: by 10.50.30.37 with SMTP id p5mr4316118igh.11.1444847047728;
        Wed, 14 Oct 2015 11:24:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22e.google.com (mail-qg0-x22e.google.com. [2607:f8b0:400d:c04::22e])
        by gmr-mx.google.com with ESMTPS id t64si701284ywd.2.2015.10.14.11.24.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:24:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) client-ip=2607:f8b0:400d:c04::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22e.google.com with SMTP id z77so50694381qge.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ZBAOHVctGWMnZklOPDsCvDlOhLLWy2il4A33EBhGm/I=;
        b=iyUDh/LWAE169c0sp4Ro0FKv4+iRG6NTlL+kNSxjBAkkPEd+O+cUtdte6STfI4WRgb
         bZzWZriCx9wEbywXBSZYY83zKDQfJ851UoxUxD6gIoEZYXHxZcbqjdDItxjliy4Zis7l
         vfjtjzSxjXer2LrQSKC/ZBumwhCAuZArHQZfx9kSqDKOiXdNmW2rtZt4Y16ZISn7LPlK
         ZIy+wqWeu+tslA329In34gdI6h8uvv8++dX8McmJkBmbFdhpD6rUR6/JRIrKSCZwZO1d
         WbxNKeFyxvRxi4oLi1ak7dUdsnVzigCHTk7e8UAdm0t0e1HiWsRBopLul2rJpsxcBlEP
         UGQQ==
MIME-Version: 1.0
X-Received: by 10.140.147.146 with SMTP id 140mr6321346qht.68.1444847047511;
 Wed, 14 Oct 2015 11:24:07 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Wed, 14 Oct 2015 11:24:07 -0700 (PDT)
In-Reply-To: <CAEnQRZBTpkZi+y_W6sySGxGx-zx-1TJXiXeyvLqP5JgDPPh_3g@mail.gmail.com>
References: <cover.1444845733.git.amitoj1606@gmail.com>
	<alpine.DEB.2.10.1510142008470.2421@hadrien>
	<CA+5yK5H3g3GGtDob2=UNVRdgjn9BMUy7tzkO6EOcd3OLn16Qgw@mail.gmail.com>
	<CAEnQRZBTpkZi+y_W6sySGxGx-zx-1TJXiXeyvLqP5JgDPPh_3g@mail.gmail.com>
Date: Wed, 14 Oct 2015 23:54:07 +0530
Message-ID: <CA+5yK5F+8=wUG-Dgc2oDJpp78pUeiV1XzzRTFtmmr3q+YMzKag@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/6] staging: lustre: Remove useless
 cast on void pointer
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 11:52 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> On Wed, Oct 14, 2015 at 9:16 PM, Amitoj Kaur Chawla
> <amitoj1606@gmail.com> wrote:
>> On Wed, Oct 14, 2015 at 11:39 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>> On Wed, 14 Oct 2015, Amitoj Kaur Chawla wrote:
>>>
>>>> This patchset fixes multiple useless casts on void pointers.
>>>>
>>>> The semantic patch used to find this is:
>>>>
>>>> @r@
>>>> expression x;
>>>> void* e;
>>>> type T;
>>>> identifier f;
>>>> @@
>>>>
>>>> (
>>>>   *((T *)e)
>>>> |
>>>>   ((T *)x)[...]
>>>> |
>>>>   ((T *)x)->f
>>>> |
>>>> - (T *)
>>>>   e
>>>> )
>>>>
>>>>
>>>> Amitoj Kaur Chawla (6):
>>>>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>>>>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>>>>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>>>>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>>>
>>> The patches haven't arrived in my mailbox yet, but it looks like you will
>>> have four with the same subject?
>>>
>>> julia
>>>
>> Yes all 4 are doing the same thing. Is this a bad thing?
>> Since I'm making changes in separate files I thought it would be
>> better to send them as separate patches.
>> Should I combine the 4 and resend the series?
>
> It's very good that you've split the patches. The issue here is that
> all patches have the same subject.
>
> You can introduce the filename into the equation, thus resulting
> different subjects for your patches.
>
> e.g.  staging: lustre: ptlrpc: pinger: Remove useless cast on void pointer


Okay will do that!

Thanks,

Amitoj

