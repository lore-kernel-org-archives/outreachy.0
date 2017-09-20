X-GM-THRID: 6467597635831201792
X-Received: by 10.46.80.65 with SMTP id v1mr382099ljd.14.1505889538329;
        Tue, 19 Sep 2017 23:38:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.35.68 with SMTP id j65ls251901wmj.19.canary-gmail; Tue, 19
 Sep 2017 23:38:57 -0700 (PDT)
X-Received: by 10.28.22.4 with SMTP id 4mr338322wmw.13.1505889537562;
        Tue, 19 Sep 2017 23:38:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505889537; cv=none;
        d=google.com; s=arc-20160816;
        b=IbrzQUM5xhqWWM3UA5Pw2id0uhr+MCOpzCegtZIhv2BFIX4nAvFgPtgF4LSo/k0BvP
         kpimBYhjUnoLBv5uTYMCb8iQUiX8O2q+dbiXEfiHhd3GEmtMBDe1/aj0jM4zaWSQaXOo
         MVptLxEa5APye50AyU96IIfeyUNQwTDsy+nMl1VpzQyaiE/NmDZJ7DurZ6sjq/lNS+BU
         ODZxAugqv0VRXtv0Ed32123iyBuQszf33tEBDRqLi4s7eaegT8Wzf6yOmv9RYk+QmaHC
         fF3M/bs0zp0guHleheQO87XlIc5FRsmIxqtNkI2EkU6qMvWjEQS3ksPN5F8fMIELtI1/
         ydjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=TAUnlyV51Dvf6Z00pAV4bwZHXtSaDsGXQehdCguh53Y=;
        b=hqnGvB+KMZtd4VFfWNdWEbvFTwyOFFO9Xo5Eoh1cJj2OgHGQqiKU+EM4TCVY/DXTtH
         s2kGayt9anK8sI0m+Bv5GzmKYQa5+lvb8uOldw84T1pm3n5KTHTtuK9oOLAYlXcMa/ou
         cG4245j0a6hqNJ5rlAaKY69UFtbUjlPYiyapqJoKlramZ3OnzvR8Ty1zX5N4agsTheUj
         TkLT2v3ydIWokS05hMEMDytkC3HJ16lyy4NcEdG9/ro3P0ANh2/WbOL0FNjoK6FPEidn
         ZE1LdtVxxFGN9kbo3Vfh+fVz8yStzCPuMXQx7AjndfKJ8CFX4VHsDe6azrKvGz7e2YaS
         ui4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rsFBjSH5;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id l133si72154wmb.3.2017.09.19.23.38.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 23:38:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rsFBjSH5;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id e64so1490371wmi.2
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 23:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=TAUnlyV51Dvf6Z00pAV4bwZHXtSaDsGXQehdCguh53Y=;
        b=rsFBjSH55jmiXc4qUW1hZULMK0zyXe6dv2VHRJqcUuFIFpBuWba+9ldt7wT71QYu+I
         rAJ5Hw+xuMcjdT6mJLR7bL2ELxl3vDsyIt6XMyHyc6R/L/le/+gN7pgDNaBsWSsOCGjq
         NumJz3lAy0Ca9hgkk0KJGdXteYmAha93CQfRwUXQM+uKT0OhVptUbvisSGUKRDSwYzma
         Aenn8l3IBjiQ1vN/X6QzFsJs2GIvb0PbpvrXMnXMMrWxMcjwTS3d9BOLjm2PGuUA/hPV
         uBavlA9RleRul9Xyil3ZGDtPqJa/JC4JJThBpzW4JewHAlYiifbiC6YyIe2LcDxAH8Nf
         IGQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=TAUnlyV51Dvf6Z00pAV4bwZHXtSaDsGXQehdCguh53Y=;
        b=SiHDjr/P2YU7qVPSmFA60mKcl+6hN4lVV4xGbz6bVaQB+Yt4d8hQW0jO13KXrCoa4q
         gkX5YX/66BB1Lk65RaDJPjbUAjaGuDBtyp8twSzNKGD83vQaL4UHt7ec7pR6++RqLdeI
         JYaWZgZ/DmEPTuiKTOLPKYoN9wrw6NnjlxlVNxFixJqQmbTEvqLNQKdmzddsyBvXhmym
         g5GCUm7gQvVvbquZRU5hydEh0YtLFlzwx1tj5qFu9UwjBrsHAQ9pjL9pRiMikhMGMOKv
         +SAg4o9gI5pprlruywxpO/u81Un6m9ZUEUrgvuOZLK1YJrvtr1v6AB7LmCjGHvQdtTE8
         wrdQ==
X-Gm-Message-State: AHPjjUgFb2SJVCiSu8adGA1SAFK4lfyyYWeEs1XjyQACgfNGuVIpCDub
	8sMFUdeNJIwZmQj2vk6//dwE3/IzPoc/VIYUszQ=
X-Google-Smtp-Source: AOwi7QCSnxNy5L41yOED0TCMXIssmDPL3mldhGdU2W6cMOrML3SN2esRZofMwuarPRmQurBTnt4SArSGtFIFo2BBkps=
X-Received: by 10.80.165.23 with SMTP id y23mr3825303edb.155.1505889537236;
 Tue, 19 Sep 2017 23:38:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.172.163 with HTTP; Tue, 19 Sep 2017 23:38:56 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709192333260.2518@hadrien>
References: <20170919210157.44uf4sm27tjshxn6@fireworks> <alpine.DEB.2.20.1709192312550.2518@hadrien>
 <CALta04xQ91BxdN4KmXMGWTS2gpX_QOLrm4dLjQMZtcWPw=870w@mail.gmail.com> <alpine.DEB.2.20.1709192333260.2518@hadrien>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 20 Sep 2017 09:38:56 +0300
Message-ID: <CAEnQRZAs8jiSyng-0QWyfFmSZ-RY_Otv+R6WUPEd21_AHjUcbw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtlwifi: halmac: Remove
 unnecessary 'out of memory' messages
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Georgiana Chelu <georgiana.chelu93@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 20, 2017 at 12:33 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 20 Sep 2017, Georgiana Chelu wrote:
>
>> On 20 September 2017 at 00:13, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Wed, 20 Sep 2017, Georgiana Chelu wrote:
>> >
>> >> Remove unnecessary messages because OOM (Out Of Memory Manager)
>> >> reports memory allocation fail messages.
>> >>
>> >> Fix issue found by by checkpatch.pl.
>> >> WARNING: Possible unnecessary 'out of memory' message.
>> >
>> > Do you need to add the comments?  Looking at the code, it seems pretty
>> > obvious from the few lines above what the problem is.
>> >
>> > julia
>> >
>> >
>>
>> I saw similar comments in this file, so I thought it would be nice
>> to have uniformity in the code. But, as you say, the return error is
>> obvious. So, I will send a second version of the patch without the
>> 'out of memory' comments.
>
> If the other ones are similarly obvious, perhaps they could go too :)

Agree with Julia. The comments are superfluous here.

