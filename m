X-GM-THRID: 195205005312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d9c8d97a359f39c0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.161.194 with SMTP id xu2mr1774241wjb.1.1425015941477;
        Thu, 26 Feb 2015 21:45:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.104 with SMTP id ln8ls111948lac.94.gmail; Thu, 26 Feb
 2015 21:45:40 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr1756566lbc.3.1425015940908;
        Thu, 26 Feb 2015 21:45:40 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si44790wic.1.2015.02.26.21.45.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 21:45:40 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,657,1418079600"; 
   d="scan'208";a="101489300"
Received: from ppp-88-217-60-80.dynamic.mnet-online.de (HELO [192.168.1.53]) ([88.217.60.80])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 06:45:39 +0100
Date: Fri, 27 Feb 2015 06:45:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace memcpy by
 ether_addr_copy
In-Reply-To: <20150227015943.GA15393@waves>
Message-ID: <alpine.DEB.2.10.1502270644080.2709@hadrien>
References: <20150217200055.GA11277@localhost.localdomain> <20150226182827.GA1267@kroah.com> <20150226203243.GA12622@waves> <20150226205930.GB21154@kroah.com> <20150227013251.GA14999@waves> <20150227015512.GA29726@kroah.com> <20150227015943.GA15393@waves>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> > It's usually just easiest to build the whole tree, you can do it quicker
> > by doing:
> > 	make -j16
> >
> > replace the number with 2x the number of cpus you have, and you should
> > be fine.
> >
> > good luck,
> >
> > greg k-h
>
> ok, Thanks!

I guess that the problem would have been seen by just compiling make
foo/bar/file.o?

julia

