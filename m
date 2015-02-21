X-GM-THRID: 1969702830080
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4dff6f9f1e12e8c3
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.35 with SMTP id o3mr415045wix.0.1424543713581;
        Sat, 21 Feb 2015 10:35:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.226 with SMTP id cx2ls301364wib.43.canary; Sat, 21 Feb
 2015 10:35:13 -0800 (PST)
X-Received: by 10.180.104.101 with SMTP id gd5mr364837wib.6.1424543713346;
        Sat, 21 Feb 2015 10:35:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew5si357686wid.1.2015.02.21.10.35.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 10:35:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="122817158"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 19:35:12 +0100
Date: Sat, 21 Feb 2015 19:35:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8192u: Convert from
 printk into netdev_dbg or pr_dbg
In-Reply-To: <d408a19a-e57f-46b9-9a81-cc78e6c7de1e@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1502211934400.2480@hadrien>
References: <cover.1424538520.git.navyasri.tech@gmail.com> <4025a37966c3b0a3a3e210fad8740f0673ab5a92.1424538520.git.navyasri.tech@gmail.com> <alpine.DEB.2.10.1502211850160.2480@hadrien> <d408a19a-e57f-46b9-9a81-cc78e6c7de1e@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1150200161-1424543707=:2480"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1150200161-1424543707=:2480
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 21 Feb 2015, Navya Sri Nizamkari wrote:

>
>
> On Saturday, February 21, 2015 at 11:21:21 PM UTC+5:30, Julia Lawall wrote:
>       On Sat, 21 Feb 2015, Navya Sri Nizamkari wrote:
>
>       > Convert printk(KERN_DEBUG.. ) to netdev_dbg if its a network
>       driver
>       > and pr_dbg if its not a driver, to fix the checkpatch.pl
>       warning:
>
>       This message is rather confusing.  The patch affects only one
>       file, so it
>       either is a network driver or it is not.  The issue is that some
>       functions
>       don't have the right set of arguments that allow you to call the
>       netdev
>       functions.
>
>       julia
>
> I made the change and sent in v2 of that patch.Should I send the whole
> patchset again ?

Yes.  (Remember to put a space after punctuation)

julia
--8323329-1150200161-1424543707=:2480--

