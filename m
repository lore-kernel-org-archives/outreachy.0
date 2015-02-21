X-GM-THRID: 2073319964672
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4c2123e42de5bfb2
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.77.101 with SMTP id r5mr465507lbw.4.1424552191487;
        Sat, 21 Feb 2015 12:56:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.23.98 with SMTP id l2ls398365laf.73.gmail; Sat, 21 Feb
 2015 12:56:31 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr440001lbb.14.1424552191215;
        Sat, 21 Feb 2015 12:56:31 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si374912wib.2.2015.02.21.12.56.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 12:56:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="122824244"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 21:56:30 +0100
Date: Sat, 21 Feb 2015 21:56:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Gulsah Kose <gulsah.1004@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Corrected two type checkpatch.pl
 space errors.
In-Reply-To: <cover.1424548101.git.gulsah.1004@gmail.com>
Message-ID: <alpine.DEB.2.02.1502212156040.2296@localhost6.localdomain6>
References: <cover.1424548101.git.gulsah.1004@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-929471410-1424552190=:2296"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-929471410-1424552190=:2296
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 21 Feb 2015, Gulsah Kose wrote:

> This patch fixes following checkpatch.pl errors in mkbb.c
> ERROR: space required before the open parenthesis '('
> ERROR: foo ** bar" should be "foo **bar
> 
> Gülşah Köse (2):
>   staging: arch: alpha: boot: tools: Deleted unnecessary space.
>   staging: arch: alpha: boot: tools: Added missing spaces after brackets.
> 
>  arch/alpha/boot/tools/mkbb.c | 16 ++++++++--------

As for the other series of patches, you should not be working on files in 
this directory.

julia

>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1424548101.git.gulsah.1004%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
--8323328-929471410-1424552190=:2296--

