X-GM-THRID: 6251387013409275904
X-Received: by 10.112.160.168 with SMTP id xl8mr2353377lbb.17.1455616327743;
        Tue, 16 Feb 2016 01:52:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.195 with SMTP id u186ls179872wmd.6.gmail; Tue, 16 Feb
 2016 01:52:07 -0800 (PST)
X-Received: by 10.28.6.14 with SMTP id 14mr1795459wmg.6.1455616327233;
        Tue, 16 Feb 2016 01:52:07 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h73si599673wme.0.2016.02.16.01.52.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 01:52:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,454,1449529200"; 
   d="scan'208";a="164883320"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Feb 2016 10:52:05 +0100
Date: Tue, 16 Feb 2016 10:52:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eva Rachel Retuya <eraretuya@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: wilc1000: Remove
 whitespace checkpatch errors
In-Reply-To: <20160216072957.GA4367@Socrates-Mint>
Message-ID: <alpine.DEB.2.10.1602161051180.2621@hadrien>
References: <cover.1455513866.git.eraretuya@gmail.com> <bf2ba268e14b1a664ffecb075bc4b6bdb8f520c9.1455513866.git.eraretuya@gmail.com> <20160216021948.GB31337@kroah.com> <20160216072957.GA4367@Socrates-Mint>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> > >  	priv = wiphy_priv(wiphy);
> > >  	vif = netdev_priv(dev);
> > > -	wl = vif ->wilc;
> > > +	wl = vif->wilc;
> >
> > That's just odd.  The original code compiles?
> >
> > thanks,
> >
> > greg k-h
>
> Yes the original code compiles. I used 'make -j2' and also 'make
> drivers/staging/wilc1000'. The latter produced the .o files fine.

The compiler doesn't care about spaces around ->.  Newlines are also
possible,

julia

