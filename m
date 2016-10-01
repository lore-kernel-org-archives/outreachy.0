X-GM-THRID: 6336463317212594176
X-Received: by 10.25.234.9 with SMTP id i9mr759447lfh.5.1475326833689;
        Sat, 01 Oct 2016 06:00:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.150 with SMTP id 144ls627237ljf.16.gmail; Sat, 01 Oct
 2016 06:00:32 -0700 (PDT)
X-Received: by 10.46.71.203 with SMTP id u194mr777753lja.29.1475326832870;
        Sat, 01 Oct 2016 06:00:32 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c13si668799wme.3.2016.10.01.06.00.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 06:00:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,426,1473112800"; 
   d="scan'208";a="195288522"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Oct 2016 15:00:32 +0200
Date: Sat, 1 Oct 2016 15:00:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: MsMimansa <mimansa.mimansa4@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] First Patch Issue
In-Reply-To: <580c645b-313a-4c8d-bd66-db91349e4c58@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1610011459440.3458@hadrien>
References: <580c645b-313a-4c8d-bd66-db91349e4c58@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1762992876-1475326832=:3458"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1762992876-1475326832=:3458
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 1 Oct 2016, MsMimansa wrote:

> Hello everyone
> I was following the tutorial OutreachyFirstPatch .
> During the steps where we are supposed to make some changes in the driver and have to reboot the system.
> I did that but the system is not rebooting. It shows an error , "Kernel panic not syncing trying to kill init".
> How do I fix this?

Did you try google?  There may be some relevant information here:

http://stackoverflow.com/questions/12867591/how-to-solve-kernel-panic-not-syncing-attempted-to-kill-init-without-er

Searching for the message shows some other links as well.

julia

> thank you 
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/580c645b-313a-4c8d-bd66-db91349e4c58%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1762992876-1475326832=:3458--

