X-GM-THRID: 411471708160
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,82a0d380676b09c2
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.86.1 with SMTP id l1mr279141wjz.0.1424315519455;
        Wed, 18 Feb 2015 19:11:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.132 with SMTP id ey4ls62722wid.48.gmail; Wed, 18 Feb
 2015 19:11:59 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr268052wjc.3.1424315519209;
        Wed, 18 Feb 2015 19:11:59 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id o3si4064661wib.2.2015.02.18.19.11.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 19:11:59 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f54.google.com with SMTP id y19so4670243wgg.13
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 19:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=kOGI4XVnBnrL0gxiSPRoWGFKFesMQL2k6t2TevxKXGs=;
        b=sblir5zRkHUUoRhedE+27zHvpR0dgM1wNnSF1lKkAY/X4aYkPmAoUS3x4xpF4mwQ+L
         8AReTfUYnmDFTgl+RPjgTPDb72IjZ2kMbd8Wv7iMf54DtGAFTrKq502zkB66qWixefOV
         Md/5pzhFFxHp8QIRXnrbLR+o3OsDuPUBaFVhmDAISRlaWTCqvs+ZZ6j6nmU9zrC3eCkR
         5zxOJ76vIYdSL798//DdD/H4PCw/qPSx32OdYbkFPi5JIC4i700ZIeJHydEhoxCznlsN
         dX2B7k5AMzUlIKb5xlFnaDZAWrhS13z5cP5Q7g9DpAilBR3XbfJfWrKnJhef1OQq8Hbt
         IEBg==
MIME-Version: 1.0
X-Received: by 10.194.77.99 with SMTP id r3mr4419310wjw.149.1424315519136;
 Wed, 18 Feb 2015 19:11:59 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Wed, 18 Feb 2015 19:11:59 -0800 (PST)
In-Reply-To: <54E503C2.2030009@gmail.com>
References: <20150218195639.GA3189@vaishali-Ideapad-Z570>
	<alpine.DEB.2.02.1502182111570.2248@localhost6.localdomain6>
	<54E503C2.2030009@gmail.com>
Date: Thu, 19 Feb 2015 08:41:59 +0530
Message-ID: <CAK-LDbKDENPCBRB9Na9xGifkjy0nm9OV1dLJO4Hw1Op+vSvHtA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Use put_unaligned_le16
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 19, 2015 at 2:57 AM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
> On 02/18/15 15:12, Julia Lawall wrote:
>>> Here, use of variable tim_bitmap_le and variable itself is removed. To be compatible with
>>> changes header file is added too.
>>
>> Your commit message is too long here.
>>
>> julia
>>
>
> I agree!
>
> In general, as a driver maintainer, I would also prefer a text message
> explaining what is fixed in a, rather than automated Coccinelle output.
> Adding a comment that the issue was discovered using Coccinelle is great
> however.

Ok. I will split this patch in 2 patches also. And will make the commit log
short and more clear.

> Cheers,
> Jes
>



-- 
Vaishali

