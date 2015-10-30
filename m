X-GM-THRID: 6211494140664872960
X-Received: by 10.13.202.13 with SMTP id m13mr7933203ywd.57.1446229329226;
        Fri, 30 Oct 2015 11:22:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.241.228 with SMTP id wl4ls448216obc.27.gmail; Fri, 30 Oct
 2015 11:22:08 -0700 (PDT)
X-Received: by 10.182.205.138 with SMTP id lg10mr2604332obc.43.1446229328923;
        Fri, 30 Oct 2015 11:22:08 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22f.google.com (mail-qk0-x22f.google.com. [2607:f8b0:400d:c09::22f])
        by gmr-mx.google.com with ESMTPS id z62si598373ywb.4.2015.10.30.11.22.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 11:22:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) client-ip=2607:f8b0:400d:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x22f.google.com with SMTP id l190so34196989qkb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 11:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=LvRcvuaB1+ZFDuuaqCgfJPHgsl+iCr9xmdPeZUUJ4qc=;
        b=LNBGgXFuSLPkhyIlp3OqsfeyPB3Vf7DLGny1UsKJyhl2si8ty0P/S4UlODn7O9wELZ
         76U7485AVBK/vutvpBh8sBbTJCsZO14CgPqZizK2yAlkTgaScezJ0wxl3FzBHJh+sAwm
         +0j/7eyrT19MRai+cimhP1CNibgf8o2k5iZLF7AW8297R2Y5AhS2S3mKoRBIdb7qDkPM
         5Ds1sfHJ1z2SMUaotHUOHjbJFtBULFK9b5z0Y7uxV8DIwWCh7B+1SL8l8IUcY29Bs8Hf
         1M6FJZqrZxDOzyQ/iBMa5hlCIPNf7ajzZyKbKslMe+1NUfwQFvu6O5x6A92Rl+nfRga0
         0atA==
MIME-Version: 1.0
X-Received: by 10.55.207.3 with SMTP id e3mr11947571qkj.32.1446229328745; Fri,
 30 Oct 2015 11:22:08 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 30 Oct 2015 11:22:08 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510301920270.2364@hadrien>
References: <20151030172932.GA27324@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1510301845500.2364@hadrien>
	<CA+5yK5HzVQj9=c20DaW-s24MjyS2N8zi3kAogTX1bHDVS870Tw@mail.gmail.com>
	<alpine.DEB.2.10.1510301912480.2364@hadrien>
	<CA+5yK5GyT0XnvxR8tRQ859_0yyqtLzDE4tiTER=8sTjpEBAkaA@mail.gmail.com>
	<alpine.DEB.2.10.1510301920270.2364@hadrien>
Date: Fri, 30 Oct 2015 23:52:08 +0530
Message-ID: <CA+5yK5HODOtPyuYRkvJUyUjXwTOeb-HWe9BD-ce-7vf-mZCdnQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: dir: Add
 __user annotations
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 30, 2015 at 11:51 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > Maybe it would have been good to put a comment under the --- explaining
>> > that you were solving part of the problem, but hoped to do the rest later.
>> >
>> > I was worried that a problem was getting swept under the rug, and by doing
>> > the easy cases, you were removing the motivation for people to look at the
>> > more complex cases, but if sparse continues to complain about the other
>> > cases after your patch, then maybe it's OK.
>> >
>> > julia
>> >
>>
>> If you prefer, I can send a v2 mentioning that I've solved part of the problem.
>
> Even though it doesn't have any impat on the final patch, it could be a
> good idea anyway.
>
> julia

Okay. Sending v2.

-- 
Amitoj

