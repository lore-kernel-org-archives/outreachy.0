X-GM-THRID: 6339053517033963520
X-Received: by 10.194.82.170 with SMTP id j10mr461646wjy.14.1476217347316;
        Tue, 11 Oct 2016 13:22:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.201.84 with SMTP id z81ls216489lff.54.gmail; Tue, 11 Oct
 2016 13:22:26 -0700 (PDT)
X-Received: by 10.25.33.208 with SMTP id h199mr459415lfh.31.1476217346345;
        Tue, 11 Oct 2016 13:22:26 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 13si25970wmq.1.2016.10.11.13.22.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 13:22:26 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,330,1473112800"; 
   d="scan'208";a="196433487"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 11 Oct 2016 22:22:08 +0200
Date: Tue, 11 Oct 2016 22:22:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
In-Reply-To: <fd933dbe-c8ef-4f38-ae1c-7f75a8bab6c7@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1610112221080.3192@hadrien>
References: <20161008112506.GA12694@euri> <alpine.DEB.2.10.1610081940270.3259@hadrien> <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com> <d15336f4-5027-4b19-b3fd-52f4fac150c0@googlegroups.com> <alpine.DEB.2.10.1610091553500.5891@hadrien>
 <fd933dbe-c8ef-4f38-ae1c-7f75a8bab6c7@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1749328245-1476217328=:3192"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1749328245-1476217328=:3192
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 11 Oct 2016, Varsha Rao wrote:

> :
>       >
>       >             Is the macro never used?  It is strange to change
>       a
>       >             definition without at
>       >             least one use.  If there is no use, then the macro
>       >             can be dropped.
>       >
>       >
>       >           No,it is not used anywhere else.I have checked it
>       using grep
>       >       command .
>       >           I will remove it.
>       >
>       >
>       >      On executing make command ,after it's removal  gives
>       error.
>       >
>       >       In file included from
>       drivers/staging/vt6655/device_main.c:53:0:
>       >      drivers/staging/vt6655/baseband.h:62:34: error: "0xB1"
>       may not appear
>       > in
>       >       macro parameter list
>       >       #define BBbWriteEmbedded(iobase, 0xB1, 0)
>
>       Where did this code come from?  You should remove the whole
>       definition of
>       the macro, not just the header line.
>
>
>    I have tried using grep and gcc -dN -E to find the definition of it.But
> couldn't find through them.

The above code is not a proper macro definition.  What is the actual
change that you made?  You can see this by doing git diff on the file.

julia

>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/fd933dbe-c8ef-4f38-ae1c-
> 7f75a8bab6c7%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1749328245-1476217328=:3192--

