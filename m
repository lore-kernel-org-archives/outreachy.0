X-GM-THRID: 1969702830080
X-Received: by 10.180.39.164 with SMTP id q4mr414069wik.5.1424553894066;
        Sat, 21 Feb 2015 13:24:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.186.71 with SMTP id fi7ls318213wic.28.canary; Sat, 21 Feb
 2015 13:24:53 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr412255wic.3.1424553893822;
        Sat, 21 Feb 2015 13:24:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id el6si378345wib.2.2015.02.21.13.24.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 13:24:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="100873198"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 22:24:53 +0100
Date: Sat, 21 Feb 2015 22:24:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8192u: Convert from
 printk into netdev_dbg or pr_dbg
In-Reply-To: <8199fe66-21a5-4002-a04b-07bf4068a3d5@googlegroups.com>
Message-ID: <alpine.DEB.2.02.1502212224200.2296@localhost6.localdomain6>
References: <cover.1424538520.git.navyasri.tech@gmail.com> <4025a37966c3b0a3a3e210fad8740f0673ab5a92.1424538520.git.navyasri.tech@gmail.com> <alpine.DEB.2.10.1502211850160.2480@hadrien> <d408a19a-e57f-46b9-9a81-cc78e6c7de1e@googlegroups.com>
 <alpine.DEB.2.10.1502211934400.2480@hadrien> <1352209e-7cb8-4d3f-b819-666fa1c45fa4@googlegroups.com> <8199fe66-21a5-4002-a04b-07bf4068a3d5@googlegroups.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> I added a space after ' : ' in the cover letter of v2 by mistake, I haven't
> sent rest of the patches yet? Do I send a newer version?

No, don't bother.  The cover letter is just to be read by someone 
receiving the patches. It is not preserved.

julia

