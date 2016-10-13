X-GM-THRID: 6339053517033963520
X-Received: by 10.129.70.133 with SMTP id t127mr1716209ywa.108.1476364514375;
        Thu, 13 Oct 2016 06:15:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.166 with SMTP id y35ls6250998ota.26.gmail; Thu, 13 Oct
 2016 06:15:13 -0700 (PDT)
X-Received: by 10.13.218.197 with SMTP id c188mr1760601ywe.144.1476364513810;
        Thu, 13 Oct 2016 06:15:13 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p70si1702388vkd.0.2016.10.13.06.15.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 06:15:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,339,1473112800"; 
   d="scan'208";a="196661968"
Received: from lstlambert-656-1-236-67.w82-127.abo.wanadoo.fr (HELO hadrien.local) ([82.127.3.67])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Oct 2016 15:15:11 +0200
Date: Thu, 13 Oct 2016 15:15:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
In-Reply-To: <a2bc99d4-a161-429c-a7d6-4e9ba3a8b33b@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1610131510040.3086@hadrien>
References: <20161008112506.GA12694@euri> <alpine.DEB.2.10.1610081940270.3259@hadrien> <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com> <d15336f4-5027-4b19-b3fd-52f4fac150c0@googlegroups.com> <alpine.DEB.2.10.1610091553500.5891@hadrien>
 <fd933dbe-c8ef-4f38-ae1c-7f75a8bab6c7@googlegroups.com> <alpine.DEB.2.10.1610112221080.3192@hadrien> <5a2e45cf-903e-41c4-91d8-37d45aea9ce7@googlegroups.com> <alpine.DEB.2.10.1610120710390.3282@hadrien> <21e853d5-b5bb-4b00-b1b5-7ec1a38145f6@googlegroups.com>
 <alpine.DEB.2.10.1610131418560.3086@hadrien> <a2bc99d4-a161-429c-a7d6-4e9ba3a8b33b@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1608263242-1476364511=:3086"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1608263242-1476364511=:3086
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 13 Oct 2016, Varsha Rao wrote:

>
>       I think this is what you sent before, and that the macro is
>       never used?
>
>
>      Yes, this is the same. 
>
>       I have the impression that what you did wrong is to just remove
>       BBvClearFOE(dwIoBase) and not the entire macro definition (both
>       lines).
>
>   
>      I made a mistake there but my question remains the same like how to
> find in what file a macro is stored if it cannot be found by grep or gcc -dN
> -E? 

Two points:

1.  If you made the change that I guess you made, then you moved what was
in the body of the macro into the parameter list of the macro.  The
parameter list of the macro is very restricted.  It should only be a lit
of variable names, not arbitrary expressions.

2.  A macro that is never used just disappears from the preprocessed code.
It is not included in the code that is compiled.  So it causes no problem
to have a macro definition in Linux like:

#define never_used(a,b,c) Hello my name is Julia

The expansion of the macro is not valid C code, and refers to lots of
undefined variables, but since they are not used, it doesn't matter.

On the other hand, the patch you sent in the most recent message is
different than the code you were showing as erroneous.  If the patch you
sent is really the thing that you did, then it is possible that you
converted a macro that is never used to a macro that actually is used,
because it is shadowing a function of the same name.  In that case too,
you will have references to symbols that might not exist in the kernel.

In any case, the correct approach is to completely remove the definition.

julia


>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/a2bc99d4-a161-429c-a7d6-
> 4e9ba3a8b33b%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1608263242-1476364511=:3086--

