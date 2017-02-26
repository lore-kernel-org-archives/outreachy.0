X-GM-THRID: 6391452736831881216
X-Received: by 10.46.88.70 with SMTP id x6mr1225416ljd.22.1488126563441;
        Sun, 26 Feb 2017 08:29:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.3 with SMTP id i3ls364388ljb.9.gmail; Sun, 26 Feb 2017
 08:29:22 -0800 (PST)
X-Received: by 10.46.21.11 with SMTP id s11mr1345296ljd.23.1488126562038;
        Sun, 26 Feb 2017 08:29:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h198si523200wmg.1.2017.02.26.08.29.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 08:29:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,209,1484002800"; 
   d="scan'208";a="214764976"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2017 17:29:21 +0100
Date: Sun, 26 Feb 2017 17:29:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [Task] Find a driver to cleanup
In-Reply-To: <5ab18577-9b91-4173-a82a-fdfd9882c9a0@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702261727580.2056@hadrien>
References: <5ab18577-9b91-4173-a82a-fdfd9882c9a0@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-651205908-1488126561=:2056"

--8323329-651205908-1488126561=:2056
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 26 Feb 2017, Aishwarya Pant wrote:

> Hi
> I am going through the first patch setup and would now like to pick up a
> staging driver to cleanup. I cannot see which tasks are unclaimed since this
> page https://kernelnewbies.org/OutreachyTasks seems to be out of date. 

Cleanups aren't claimed.  Just be sure that your kernel is up to date and
pick any staging driver or which you find checkpatch complaints.

julia
--8323329-651205908-1488126561=:2056--

