X-GM-THRID: 2110375591936
X-Received: by 10.152.19.100 with SMTP id d4mr449724lae.7.1424553412648;
        Sat, 21 Feb 2015 13:16:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.6 with SMTP id iy6ls371645lac.38.gmail; Sat, 21 Feb
 2015 13:16:51 -0800 (PST)
X-Received: by 10.112.168.104 with SMTP id zv8mr441195lbb.10.1424553411299;
        Sat, 21 Feb 2015 13:16:51 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ew5si381038wid.1.2015.02.21.13.16.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 13:16:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="100872884"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 22:16:33 +0100
Date: Sat, 21 Feb 2015 22:16:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: { retrieved upper
 row
In-Reply-To: <72ff878e-070b-4eb8-9849-f823194bb84c@googlegroups.com>
Message-ID: <alpine.DEB.2.02.1502212215510.2296@localhost6.localdomain6>
References: <1424550280-22040-1-git-send-email-haticeerturk27@gmail.com> <alpine.DEB.2.02.1502212205090.2296@localhost6.localdomain6> <72ff878e-070b-4eb8-9849-f823194bb84c@googlegroups.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-213687317-1424553393=:2296"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-213687317-1424553393=:2296
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 21 Feb 2015, Hatice ERTÜRK wrote:

> I think the { is ok but the error  there was given. I didn't think of other
> ways.So I've done that.

Check patch is not always correct.  It uses some regular expressions to 
figure out what the different kinds of code might be, but it may be that 
it has misinterpreted something in this case.

julia

> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/72ff878e-070b-4eb8-9849-
> f823194bb84c%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-213687317-1424553393=:2296--

