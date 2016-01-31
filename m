X-GM-THRID: 6241048565443985408
X-Received: by 10.28.153.6 with SMTP id b6mr837865wme.2.1454258657349;
        Sun, 31 Jan 2016 08:44:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.21.197 with SMTP id 188ls600110wmv.24.canary; Sun, 31 Jan
 2016 08:44:16 -0800 (PST)
X-Received: by 10.28.126.149 with SMTP id z143mr840731wmc.4.1454258656492;
        Sun, 31 Jan 2016 08:44:16 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s132si197813wmd.1.2016.01.31.08.44.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Jan 2016 08:44:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,376,1449529200"; 
   d="scan'208";a="200305677"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 31 Jan 2016 17:44:16 +0100
Date: Sun, 31 Jan 2016 17:44:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: surabhi bhargava <surabhi9b@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: round 12
In-Reply-To: <14133aa5-7ed6-446f-ac41-ef521f834abd@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1601311741261.4645@hadrien>
References: <alpine.DEB.2.10.1601180953180.2520@hadrien> <14133aa5-7ed6-446f-ac41-ef521f834abd@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-494848588-1454258654=:4645"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-494848588-1454258654=:4645
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sun, 31 Jan 2016, surabhi bhargava wrote:

> Hello, 
> My name is Surabhi and I wish to participate in the upcoming round of
> Outreachy. 
> I am facing some difficulty in making a change in the driver. I have been
> trying to add the command 
> printk(KERN_DEBUG "I can modify the Linux kernel!\n");
> in the e1000_main.c as mentioned on the link, but after make -j4, installing
> and rebooting and dmesg | less, I am not able to find the change that I have
> made. It says pattern not be found.
> Could someone please help me with this?

Maybe your machine is not using this driver?  You can use the command
lsmod to see what modules you have installed.  You can also use the
command lspci to find the hardware that is available on your machine.

julia
--8323329-494848588-1454258654=:4645--

