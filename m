X-GM-THRID: 6206327457482539008
X-Received: by 10.112.55.69 with SMTP id q5mr4859771lbp.24.1445078689896;
        Sat, 17 Oct 2015 03:44:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.169 with SMTP id hd9ls307400wib.31.gmail; Sat, 17 Oct
 2015 03:44:49 -0700 (PDT)
X-Received: by 10.180.10.135 with SMTP id i7mr2352559wib.2.1445078689517;
        Sat, 17 Oct 2015 03:44:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cm6si319669wib.1.2015.10.17.03.44.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 03:44:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,692,1437429600"; 
   d="scan'208";a="183233459"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Oct 2015 12:44:48 +0200
Date: Sat, 17 Oct 2015 12:44:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Aybuke Ozdemir <aybuke.147@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: sm750fb: Include
 appropriate KERN_ facility level
In-Reply-To: <CAEAX3JrU=56tg94bo1w6gHNBr9nEtcgRauXfa+GFxa8r477hmw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1510171244100.2056@localhost6.localdomain6>
References: <1445033073-10154-1-git-send-email-aybuke.147@gmail.com> <20151017050641.GA3052@kroah.com> <CAEAX3JrU=56tg94bo1w6gHNBr9nEtcgRauXfa+GFxa8r477hmw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1575651864-1445078689=:2056"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1575651864-1445078689=:2056
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 17 Oct 2015, Aybuke Ozdemir wrote:

> Hi Greg,
> 
> I used this command "make drivers/staging/sm750fb/" before applying the
> patch.
> I sent that I faced no problems. :( command output:
> 
> aybuke@kripton:~/git/kernels/staging$ make drivers/staging/sm750fb/
>   CHK     include/config/kernel.release
>   CHK     include/generated/uapi/linux/version.h
>   CHK     include/generated/utsrelease.h
>   CHK     include/generated/bounds.h
>   CHK     include/generated/timeconst.h
>   CHK     include/generated/asm-offsets.h
>   CALL    scripts/checksyscalls.sh
> aybuke@kripton:~/git/kernels/staging$

It doesn't look like it compiled anything.  You would have a CC command if 
it had. Do you have a .o file for the .c file that you changed?

julia

> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAEAX3JrU%3D56tg94bo1w6g
> HNBr9nEtcgRauXfa%2BGFxa8r477hmw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-1575651864-1445078689=:2056--

