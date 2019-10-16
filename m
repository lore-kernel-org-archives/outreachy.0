X-GM-THRID: 6748157701463736320
X-Received: by 2002:a1c:4e:: with SMTP id 75mr1669228wma.104.1571202157350;
        Tue, 15 Oct 2019 22:02:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:1a96:: with SMTP id a144ls617876wma.3.gmail; Tue, 15 Oct
 2019 22:02:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzpsKk9EhaSmnYQ1kp55zjet1FeTM+InPEHn2Bgu3jvGGAG8svBTU5mNpGPoe4AlgnCZlu/
X-Received: by 2002:a7b:c631:: with SMTP id p17mr1605087wmk.5.1571202156429;
        Tue, 15 Oct 2019 22:02:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571202156; cv=none;
        d=google.com; s=arc-20160816;
        b=a93dIBIKrynGbcv3gNdDzL0QiKCPLdIQ/qmj4yWKsCiHkLdePkDHCc0eY6FPblCpAA
         Zo9Sml7YhUkpsv3pUXklgXEWpb2mUTPYADmuQtfAJNm3RySDmTmvULhm/HlmVpCWgJQn
         cIe8SqcUB+A3VQSIvUM9Tbyd795JheAXztf32TSA9gnwntP55w0R6Qeau36L6ne1U736
         KemAu1bhbobhgXvxHxhZPwCAb8Q9uIQNrBQpSgBN0yvewwbFwYuzvs1kIPidEcxtH6eZ
         u05MXkb7hbAnhqvhBi+LBXSgtousrgHE/VuXVXPRYlNnDVI/OLT6cpKPo4aUpQbjWeWX
         4DSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=/bIsM++U3jeb8svmLD6Ask7PP9vi7O3H7OMhVlkh4M8=;
        b=AhVQTOR7cCrSoyk6MB+wfIOAv4GfgUekBplQJbgK/AMuBU1gWEmZrmvgCeI4ay6hb7
         g2E+PgDKV3ULqyLB5KFQXMg7+DeKt8NeJY4lrMPtdAtxN+J+83gw0WAmbD3SuQh09Xn5
         m7gxY8es8dtxLXIChx41mVo13ChB9vA6SQK8lgEcS/Y/yEpnceIL0naowQ077+DHgab2
         M/3VDi17C9OQLYPB0PPJa9NSpdpSIuOW53NBqS5CUDzn3+23hlkbwDFTNzMkhoes5NIZ
         rXY6AU1GoQmrBQ1cD1mrxKNK7lwCI4UeOQOWeGkJZhCDfpdZE2SbQmZ22Biho2KNqecW
         FeFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 5si339392wmf.1.2019.10.15.22.02.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Oct 2019 22:02:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,302,1566856800"; 
   d="scan'208";a="406360284"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Oct 2019 07:02:13 +0200
Date: Wed, 16 Oct 2019 07:02:13 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] doubt on the "Make a driver change" part
In-Reply-To: <d504514a-93eb-4a60-a99c-8a50bce81677@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1910160701150.2732@hadrien>
References: <d504514a-93eb-4a60-a99c-8a50bce81677@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 15 Oct 2019, Cristiane Naves wrote:

>
> Hello, I have a question in one part of the tutorial and I am unable to access outreachy irc.
>
> I'm stuck in the "Make a driver change" part of the tutorial.
> I am following these steps:
> First I check the file path using git grep memstick -- '* Makefile'.
> Then I access the file using vim drivers/memstick/core/ms_block.c.
> Then I add printk(KERN_DEBUG "I can modify") to the msb_probe function.
> Then I compile the changes using sudo make -j4 and then install the changes using sudo make modules_install install.
> Finally i restart my computer and i check if the text "I can modify" is present in dmesg | less using "/I can modify".
> But every time I've tried this or something, it always gives Pattern not found (press return).
> Has anyone else had a similar problem and can help me?

Maybe you don't actually use the module you changed.  You can check lsmod.
Here is a random URL that explains the module related commands:

http://edoceo.com/howto/kernel-modules

julia

>
> And Can anyone help me access outreachy IRC? I 'm not getting access.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d504514a-93eb-4a60-a99c-8a50bce81677%40googlegroups.com.
>
>

