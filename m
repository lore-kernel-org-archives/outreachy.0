X-GM-THRID: 447976833024
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ba918805c55279ee
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.39.164 with SMTP id q4mr188929wik.5.1424327678929;
        Wed, 18 Feb 2015 22:34:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.84.98 with SMTP id x2ls1345659wiy.51.canary; Wed, 18 Feb
 2015 22:34:37 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr460813wid.1.1424327677657;
        Wed, 18 Feb 2015 22:34:37 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si6333401wic.1.2015.02.18.22.34.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 22:34:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,607,1418079600"; 
   d="scan'208";a="100560557"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 07:34:36 +0100
Date: Thu, 19 Feb 2015 07:34:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: navya sri nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: fbtft: removed space
 before ')' and after '(' parenthesis.
In-Reply-To: <6ffbe89f-e71b-4eec-93b4-b881d5aab211@googlegroups.com>
Message-ID: <alpine.DEB.2.02.1502190728450.2009@localhost6.localdomain6>
References: <20150218221315.GA14737@localhost> <6ffbe89f-e71b-4eec-93b4-b881d5aab211@googlegroups.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1406080478-1424327385=:2009"
Content-ID: <alpine.DEB.2.02.1502190730040.2009@localhost6.localdomain6>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1406080478-1424327385=:2009
Content-Type: TEXT/PLAIN; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.02.1502190730041.2009@localhost6.localdomain6>

On Wed, 18 Feb 2015, navya sri nizamkari wrote:

> The open parenthesis error is with respect to the mdelay() function.�

Hi,

I think this is in response to my mail.  When you respond, you should keep 
a bit of text from the other person, and your patch if it is appropriate, 
so that one can get the context.

I think that you need to redo your patch (send a v2) so that it only 
includes the space and parenthesis change, and not the space and comma 
change that you submitted previously.  Probably you did not commit your 
file after the first change?  You can use git add -p to add just part of a 
change, and then commit that.  More information is available here, at the 
bottom of the page:

http://git-scm.com/book/en/v2/Git-Tools-Interactive-Staging

julia


> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/6ffbe89f-e71b-4eec-93b4-
> b881d5aab211%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-1406080478-1424327385=:2009--

