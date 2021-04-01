X-GM-THRID: 6946094101193293824
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a2e:b4a5:: with SMTP id q5mr4585067ljm.7.1617264307048;
        Thu, 01 Apr 2021 01:05:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3d16:: with SMTP id d22ls4225478lfv.1.gmail; Thu,
 01 Apr 2021 01:05:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzrCNaY3tpS3BLPH7egkhLNLiPs+ioHO+jKtw4TOmLl/OC1+Ws5O7hjTWPhxy60XxhmRaZV
X-Received: by 2002:ac2:5937:: with SMTP id v23mr4771741lfi.82.1617264305218;
        Thu, 01 Apr 2021 01:05:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617264305; cv=none;
        d=google.com; s=arc-20160816;
        b=z2UYeHv6afeqmgwSreorq1Nv2cXbBtl9Lz3ZjyX4YJLGK5n9Hai4OJiKG525miO1vm
         JQRXwXku8MLSRktnOYww7OR7VrN4A+E0spNBC0Wu9YTs/R775CjFcZE5YSuEg0paDE44
         wfYbkzLLd06fZ7JphdkEcaezNaVaZ4dJbxXvJznhJq5gzPQRsq4kqLHwCozkFS3ABBlF
         t6wrsNyoWAPewPj/BSZKshmIaV24F8jbLTxehVjSBbPGLeok9UmcPb6uGHe4YPBA3QMo
         aqoukZ9aaeqI7g0TLRfAGwVFPOs8XEMfh/H5DpgLgocn1++uduCweq02YYEMcWP8hNJ/
         8hgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=rV8XRQsERlOQ5qc4wcGXRPg92lqIDx0q7BdRgJmfH/U=;
        b=WlmJNSrIVsuNvFEGtLgO5Qn9Nb8/vhjKIYjFTZJIQp1Ft005skmBRxc4w13w736ZAb
         yrT4/+0vPzTk4qxVrm7yZRIkOTutZWEfYPg3VjBfWZoiJEwIZs41qgcrkuNJw0pkne15
         8fjVt1jNQnhKvNbcZGa5ycDt0cfbHQ9CWrY9O5dUYGiAHbgPiN8Q516LTTgkg7IVsDaQ
         c0yslYqgYOnJ/BT67BaTrZv4L3cOaEB4rsM3KdqmT+44biBg3fxIauL4LovjmzYS2620
         DleaVeK7qqOZGwwo95z8Ws3SkPPh/0G/QvJlz0yZVbqh5w2jac3QcFd24FDswy7Y7pKu
         b1oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z2si548704ljm.0.2021.04.01.01.05.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 01:05:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A/Zycy6xe7iBhYv5x0frQKrPwzb1zdoIgy1kn?=
 =?us-ascii?q?xilNYDZSddGVkN3roeQD2XbP+VIscVwphNzoAsK9aFzG85od2+MsFJekGDLroW?=
 =?us-ascii?q?65aLxlhLGC/xTFOwnTstFQzr1hda8WMqyUMXFfgdzh6Ae1V/YMqePmzImSie3T?=
 =?us-ascii?q?z2hgQGhRAsldxjx0BQqBHkp9SBMuP+tbKLOn+sFFqzC8EE54Uu2HABA+M9Trm8?=
 =?us-ascii?q?fGj9bPbxIAGnccmWuzpALt2frBHx+U0gx2aV5y6L0pmFKrrzDE?=
X-IronPort-AV: E=Sophos;i="5.81,296,1610406000"; 
   d="scan'208";a="377472288"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Apr 2021 10:04:52 +0200
Date: Thu, 1 Apr 2021 10:04:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Issues regarding fixing error generated during
 compiling changes.
In-Reply-To: <bfc3ac12-e9c3-4b16-b53a-fdf1aeee5e97n@googlegroups.com>
Message-ID: <alpine.DEB.2.22.394.2104011002060.2908@hadrien>
References: <bfc3ac12-e9c3-4b16-b53a-fdf1aeee5e97n@googlegroups.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1865368028-1617264292=:2908"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1865368028-1617264292=:2908
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 1 Apr 2021, Mitali Borkar wrote:

> Hello, I am Mitali from India. I am newbie. I am using Linux 2021.1 in

What is Linux 2021.1?

> VirtualBox. In first patch tutorial under "Compile your changes section"
> after running "make -j2" command,

In my experience, until you have good confidence that your code is
correct, it can be helpful not to use -j when you are first compiling the
files that you have just changed.

I don't see anything obviously wrong in your code below.  Perhaps also
send the change that you have made (git diff), in case there is actually
some problem in the context.

julia

> I am getting these errors:In file included
> from ./include/linux/printk.h:7,
>                  from ./include/linux/kernel.h:16,
>                  from ./include/linux/list.h:9,
>                  from ./include/linux/module.h:12,
>                  from drivers/net/ethernet/intel/e1000/e1000.h:10,
>                  from drivers/net/ethernet/intel/e1000/e1000_main.c:4:
> ./include/linux/kern_levels.h:5:18: error: expected declaration specifiers
> or ‘...’ before string constant
>     5 | #define KERN_SOH "\001"  /* ASCII Start Of Header */
>       |                  ^~~~~~
> ./include/linux/kern_levels.h:15:20: note: in expansion of macro ‘KERN_SOH’
>    15 | #define KERN_DEBUG KERN_SOH "7" /* debug-level messages */
>       |                   ^~~~~~~~
> drivers/net/ethernet/intel/e1000/e1000_main.c:90:10: note: in expansion of
> macro ‘KERN_DEBUG’
>    90 |   printk(KERN_DEBUG "I can modify the Linux kernel!\n");
>       |                  ^~~~~~~~~~
> make[5]: *** [scripts/Makefile.build:271:
> drivers/net/ethernet/intel/e1000/e1000_main.o] Error 1
> make[4]: *** [scripts/Makefile.build:514: drivers/net/ethernet/intel/e1000]
> Error 2
> make[3]: *** [scripts/Makefile.build:514: drivers/net/ethernet/intel] Error
> 2
> make[2]: *** [scripts/Makefile.build:514: drivers/net/ethernet] Error 2
> make[1]: *** [scripts/Makefile.build:514: drivers/net] Error 2
> make: *** [Makefile:1851: drivers] Error 2
> make: *** Waiting for unfinished jobs....
>
> I am not sure how to fix this error. Please help me out.
>
> Thanks
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/bfc3ac12-e9c3-4b16-b53a-
> fdf1aeee5e97n%40googlegroups.com.
>
>
--8323329-1865368028-1617264292=:2908--

