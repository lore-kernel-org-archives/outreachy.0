X-GM-THRID: 6314348770536456192
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.46.9.150 with SMTP id 144mr8673096ljj.0.1470174749477;
        Tue, 02 Aug 2016 14:52:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.16 with SMTP id 16ls712446lja.26.gmail; Tue, 02 Aug 2016
 14:52:28 -0700 (PDT)
X-Received: by 10.46.33.151 with SMTP id h23mr8667448lji.7.1470174748819;
        Tue, 02 Aug 2016 14:52:28 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r74si1480791wme.3.2016.08.02.14.52.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Aug 2016 14:52:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.28,462,1464645600"; 
   d="scan'208";a="186710790"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Aug 2016 23:52:28 +0200
Date: Tue, 2 Aug 2016 23:52:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] difficulty in compiling/installing
In-Reply-To: <2fda1ad7-0822-4736-b802-b09771fe90e9@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1608022351200.3322@hadrien>
References: <2fda1ad7-0822-4736-b802-b09771fe90e9@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-319374136-1470174748=:3322"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-319374136-1470174748=:3322
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 2 Aug 2016, sayli karnik wrote:

>
>
>  Hello, I am Sayli Karnik.
>  I have followed the tutorial at
> https://kernelnewbies.org/Outreachyfirstpatch
>  to insert a printk statement in
> drivers/net/ethernet/intel/e1000/e1000_main.c
> I then ran 'make drivers/net/ethernet/intel/e1000/ ' to compile
> AND
> sudo make install drivers/net/ethernet/intel/e1000/  to install the module.
> But on rebooting, dmesg doesn't not contain the message.
> I also tried :
> make
> rmmod e1000.ko
> insmod e1000.ko
> but no luck.
> Is there somewhere that I might be going wrong?

Perhaps your machine has some other ethernet device and doesn't use this
driver.

Actually, this mailing list is monitored only during the application
period, which starts in September.

julia
--8323329-319374136-1470174748=:3322--

