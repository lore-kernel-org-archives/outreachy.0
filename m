X-GM-THRID: 6331894376811200512
X-Received: by 10.28.21.17 with SMTP id 17mr529395wmv.16.1474292260842;
        Mon, 19 Sep 2016 06:37:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.37.67 with SMTP id l64ls239269lfl.19.gmail; Mon, 19 Sep
 2016 06:37:40 -0700 (PDT)
X-Received: by 10.46.1.84 with SMTP id 81mr654232ljb.20.1474292260189;
        Mon, 19 Sep 2016 06:37:40 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si2005505wmd.1.2016.09.19.06.37.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 06:37:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,361,1470693600"; 
   d="scan'208";a="193919976"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 15:37:39 +0200
Date: Mon, 19 Sep 2016 15:37:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eva Rachel Retuya <eraretuya@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: most: hdm-usb: convert
 pr_warn() to dev_warn()
In-Reply-To: <20160919133516.GA4397@Socrates-DK>
Message-ID: <alpine.DEB.2.10.1609191536390.3203@hadrien>
References: <1474259034-10535-1-git-send-email-eraretuya@gmail.com> <alpine.DEB.2.10.1609191153570.3203@hadrien> <20160919133516.GA4397@Socrates-DK>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 19 Sep 2016, Eva Rachel Retuya wrote:

> On Mon, Sep 19, 2016 at 11:56:46AM +0200, Julia Lawall wrote:
> > > @a@
> > > identifier f, dev;
> > > expression fmt, E;
> > > @@
> > >
> > > f(...) {
> > > 	...
> > > 	struct device *dev = E;
> > > 	<+... when != dev == NULL
> > > - pr_warn(
> > > + dev_warn(dev,
> > > 		fmt, ...);
> > > 	...+>
> > > }
> >
> > This is a good idea, but it is unnecessarily inefficient in the details.
> > You don't use the function name f, so there is no need to match the entire
> > function.  Matching the entire function causes Coccinelle to go through
> > all of its possible control-flow paths (loops, conditional branches,
> > etc.), which can be expensive.  You can instead just start at struct
> > device *dev = E;.  Also, you don't do anything with fmt, so you can drop
> > that, and just put ... for the remaining arguments.
> >
> > julia
>
> I appreciate the input. I'm going to amend my script according to what
> you stated here. Do I have to send v2 for this patch?

Yes, please.  It would be better to have better semantic patches in the
git history, for people to be inspired from :)

thanks,
julia

