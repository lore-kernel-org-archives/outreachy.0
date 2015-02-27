X-GM-THRID: 195205005312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d9c8d97a359f39c0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.8.67 with SMTP id p3mr284129wia.7.1425027190495;
        Fri, 27 Feb 2015 00:53:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.231 with SMTP id jf7ls139650lac.92.gmail; Fri, 27 Feb
 2015 00:53:10 -0800 (PST)
X-Received: by 10.112.219.102 with SMTP id pn6mr1855335lbc.12.1425027190045;
        Fri, 27 Feb 2015 00:53:10 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id ta1si68527wic.1.2015.02.27.00.53.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 00:53:09 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0MSrBt-1Y2Hep3BcT-00RpII; Fri, 27 Feb
 2015 09:53:06 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>, Julia Lawall <julia.lawall@lip6.fr>, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace memcpy by ether_addr_copy
Date: Fri, 27 Feb 2015 09:53:06 +0100
Message-ID: <2558044.p0KZ9zyzql@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20150227055349.GA22452@waves>
References: <20150217200055.GA11277@localhost.localdomain> <alpine.DEB.2.10.1502270644080.2709@hadrien> <20150227055349.GA22452@waves>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:LDu4rd859uuuTBtsarb1FJJWJ0p09eiiaTk3dvKCzaAU0gcDvBG
 lEvHyOvu4SnxUOo9Ua+kZRx/ZWpOX0WUSl8RO4jc6qyECkSjWOj5Jenztmxk9BA76iLGwDm
 ysimzg4K5wRGAvCBKW4b/CCaEHvx+IVhd1Ce/UMhAYjnKlzvD8uJgx+d71W1AH4lsKIeQWx
 IaZhL90m3HXRwKFtFZN1w==
X-UI-Out-Filterresults: notjunk:1;

On Friday 27 February 2015 07:53:49 Aya Mahfouz wrote:
> On Fri, Feb 27, 2015 at 06:45:35AM +0100, Julia Lawall wrote:
> > > > It's usually just easiest to build the whole tree, you can do it quicker
> > > > by doing:
> > > >   make -j16
> > > >
> > > > replace the number with 2x the number of cpus you have, and you should
> > > > be fine.
> > > >
> > > > good luck,
> > > >
> > > > greg k-h
> > >
> > > ok, Thanks!
> > 
> > I guess that the problem would have been seen by just compiling make
> > foo/bar/file.o?
> > 
> Yup! works for me and my poor old CPU  Thanks!

It's also what I normally do, or for the whole directory

make foo/bar/

which will build all files that are turned on in the configuration.
Using 'make foo/bar/file.o' will try to build that one file even
if it is disabled in the configuration, which may or may not be what
you want. The advantage is that you don't have to figure out how
to enable it, but the downside is that it may fail to build in your
current configuration because of some other configuration option
rather than something you did.

	Arnd

