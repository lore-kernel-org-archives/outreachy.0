X-GM-THRID: 9871294464
X-Received: by 10.152.28.71 with SMTP id z7mr2056091lag.7.1423940037401;
        Sat, 14 Feb 2015 10:53:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.130 with SMTP id v2ls356944lae.98.gmail; Sat, 14 Feb
 2015 10:53:56 -0800 (PST)
X-Received: by 10.112.161.201 with SMTP id xu9mr2078707lbb.11.1423940036942;
        Sat, 14 Feb 2015 10:53:56 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si5178491wic.1.2015.02.14.10.53.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 14 Feb 2015 10:53:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,577,1418079600"; 
   d="scan'208";a="121776598"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2015 19:53:56 +0100
Date: Sat, 14 Feb 2015 19:53:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Katherine Dunne <kdunne@mail.ccsf.edu>
cc: Jes Sorensen <jes.sorensen@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: Tutorial Help - Can't detect wifi after
 reboot
In-Reply-To: <CA+Cr939uK+af-cb01Y29-TVwL3ztWv=8AvH++H1BCP+Rz9jbOA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1502141951510.6185@hadrien>
References: <43ec1f66-51aa-434c-9193-74e91c6d21c9@googlegroups.com> <alpine.DEB.2.10.1502131808180.2995@hadrien> <54DE3CA5.80602@gmail.com> <CA+Cr939ZXBcs=7pe4TTQ3XJu3iLfVd0DzCXsMmGftHv=H0pRog@mail.gmail.com> <54DECFFA.7020103@gmail.com> <54DED232.8070101@gmail.com>
 <CA+Cr939uK+af-cb01Y29-TVwL3ztWv=8AvH++H1BCP+Rz9jbOA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1847964508-1423940034=:6185"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1847964508-1423940034=:6185
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 14 Feb 2015, Katherine Dunne wrote:

> Thanks for the help, Julia and Jes, it pointed me in the direction to find
> lots of information.
>
> I fixed the wifi problem by finding this:
> https://bugs.launchpad.net/ubuntu/+source/bcmwl/+bug/1358966
> and downloading the package
> bcmwl-kernel-source_6.30.223.248+bdcom-0ubuntu2_amd64.deb
>
> I am still not able to find the changes that I made in a driver through
> dmesg | less after rebooting.
> The most recent steps I took were
>
> cd git/kernels/staging
> lsmod
> git grep wl -- "*Makefile'
>
> //This gave me a bunch of files that I didn't recognize. I wasn't sure what
> to do with this information so instead I went into the driver folder and
> tried to find a .c file that seemed similar to the example 'e1000_main.c'
> cd drivers/net/wireless
>
> vim atmel_pci.c
>
> //I found the function static int atmel_pci_probe(struct pci_dev *pdev,
>                                      const struct pci_device_id *pent)
> and inserted printk(KERN_DEBUG "I can modify the Linux kernel!\n");
>
> :wq
> make
> sudo make modules_install install
> sudo reboot now
> dmesg | less
>
> when I try /I can the pattern is not found.

Is the C file that you have modified being compiled?  Go to the directory
where it is located and see if you have a .o file for it.  If not, find
some .c file for which you have a .o file and try modifying that one
instead.

julia

--8323329-1847964508-1423940034=:6185--

