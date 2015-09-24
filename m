X-GM-THRID: 6198081352243347456
X-Received: by 10.112.158.202 with SMTP id ww10mr6240956lbb.13.1443103783906;
        Thu, 24 Sep 2015 07:09:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.109.193 with SMTP id hu1ls115436wib.37.canary; Thu, 24 Sep
 2015 07:09:43 -0700 (PDT)
X-Received: by 10.180.89.104 with SMTP id bn8mr1470484wib.4.1443103783443;
        Thu, 24 Sep 2015 07:09:43 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTP id fj10si431147wib.1.2015.09.24.07.09.43
        for <outreachy-kernel@googlegroups.com>;
        Thu, 24 Sep 2015 07:09:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,581,1437429600"; 
   d="scan'208";a="179277200"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Sep 2015 16:09:43 +0200
Date: Thu, 24 Sep 2015 16:09:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Supriya Srivatsa <sup0508@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Problem with building the kernel
In-Reply-To: <979eb3fd-be55-4cad-8c74-8bb99fa095c9@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1509241609050.2370@hadrien>
References: <979eb3fd-be55-4cad-8c74-8bb99fa095c9@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-2097602711-1443103781=:2370"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2097602711-1443103781=:2370
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 24 Sep 2015, Supriya Srivatsa wrote:

> Hello.
> I am trying to build the kernel code. I am following instructions from the
> tutorial page.
> However, I have run into a problem.
> When I run the 'make' command, I land at the following errors and
> compilation is terminated.
>
>
>   CHK     include/config/kernel.release
>   CHK     include/generated/uapi/linux/version.h
>   CHK     include/generated/utsrelease.h
>   CHK     include/generated/bounds.h
>   CHK     include/generated/timeconst.h
>   CHK     include/generated/asm-offsets.h
>   CALL    scripts/checksyscalls.sh
>   HOSTCC  scripts/sign-file
> scripts/sign-file.c:20:25: fatal error: openssl/bio.h: No such file or
> directory
>  #include <openssl/bio.h>
>                          ^
> compilation terminated.
> make[1]: *** [scripts/sign-file] Error 1
> make: *** [scripts] Error 2
>
>
> I am not able to proceed and will be really grateful for guidance.

An old stack overflow response suggests that you need to install
libssl-dev.  Did you try that?

julia


> Thank you. :)
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/979eb3fd-be55-4cad-8c74-
> 8bb99fa095c9%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2097602711-1443103781=:2370--

