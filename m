X-GM-THRID: 9871294464
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,64a1fb55b3e53cb0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.26.74 with SMTP id j10mr1515834lag.10.1423847427635;
        Fri, 13 Feb 2015 09:10:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.137 with SMTP id y9ls397313laj.59.gmail; Fri, 13 Feb
 2015 09:10:27 -0800 (PST)
X-Received: by 10.112.13.36 with SMTP id e4mr1496022lbc.24.1423847427126;
        Fri, 13 Feb 2015 09:10:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si2712869wif.0.2015.02.13.09.10.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 13 Feb 2015 09:10:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,571,1418079600"; 
   d="scan'208";a="121680436"
Received: from technetium.rsr.lip6.fr ([132.227.76.37])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Feb 2015 18:10:26 +0100
Date: Fri, 13 Feb 2015 18:12:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Katherine Dunne <kdunne@mail.ccsf.edu>
cc: outreachy-kernel@googlegroups.com
Subject: Re: Tutorial Help - Can't detect wifi after reboot
In-Reply-To: <43ec1f66-51aa-434c-9193-74e91c6d21c9@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1502131808180.2995@hadrien>
References: <43ec1f66-51aa-434c-9193-74e91c6d21c9@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 13 Feb 2015, Katherine Dunne wrote:

> I have been going through the tutorial, using Ubuntu 14.04.1
> I am at the point under Test Your Changes under Modifying a Driver on Native
> Linux.
> Since rebooting, my computer can't detect wifi.
> I noticed on rebooting a new message appeared "Bluetooth TX [hex address]
> timeout," but after disabling bluetooth per another tutorial's suggestion,
> the message does not appear, and there is still no wifi detected.
>
> The last time I succesfully rebooted and had a wifi connection was right
> before cloning the staging repository in the Tool Set Up section.
> Would it be helpful to list the commands that I've run between my two reboot
> times?
> The driver I modified was /drivers/net/hamradio/baycom_epp.c

Perhaps the kernel you are compiling does not have the wifi driver that
the ubuntu kernel uses for your laptop?  Maybe it would help to use lspci
with your ubuntu setup to see what wifi driver you are using, and then to
see if that is in the configuration of the one that you are compiling?
One could also wonder if the driver you modified is selected in the
configuration of the kernel you are modifying.  When you compiled your
kernel, did you get a file drivers/net/hamradio/baycom_epp.o?  If you did
not, then your probably has nothing to do with your change, because you
change is not even in the compiled kernel.  But they are probably not
related in any case.

julia

