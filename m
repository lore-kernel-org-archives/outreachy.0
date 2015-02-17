X-GM-THRID: 80310435840
X-Received: by 10.180.182.44 with SMTP id eb12mr338947wic.4.1424163778323;
        Tue, 17 Feb 2015 01:02:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.230 with SMTP id u6ls945393wia.45.gmail; Tue, 17 Feb
 2015 01:02:58 -0800 (PST)
X-Received: by 10.194.221.65 with SMTP id qc1mr3422117wjc.7.1424163777976;
        Tue, 17 Feb 2015 01:02:57 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cl5si8431951wib.3.2015.02.17.01.02.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 01:02:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,593,1418079600"; 
   d="scan'208";a="100314207"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2015 10:02:57 +0100
Date: Tue, 17 Feb 2015 10:02:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com, 
    Vaishali Thakkar <vthakkar1994@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: lirc: Use
 setup_timer
In-Reply-To: <3457005.LTXKFus5ps@wuerfel>
Message-ID: <alpine.DEB.2.10.1502171001270.3396@hadrien>
References: <20150217045149.GA3532@vaishali-Ideapad-Z570> <3457005.LTXKFus5ps@wuerfel>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 17 Feb 2015, Arnd Bergmann wrote:

> On Tuesday 17 February 2015 10:21:49 Vaishali Thakkar wrote:
> > This patch introduces the use of function setup_timer.
> >
> > This is done using Coccinelle and semantic patch used is
> > as follows:
> >
> > @@
> > expression x,y,z;
> > @@
> >
> > - init_timer (&x);
> > + setup_timer (&x, y, z);
> > - x.function = y;
> > - x.data = z;
> >
> > Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>
> The patch looks great to me, but try to be more explicit about
> why this change is done in the description. Rather than just
> repeating the subject in the patch description here, explain
> why this is useful. In particular, is the only benefit to shorten
> the function by two lines and make it more readable, or is there
> also a functional change where the new code avoid a potential
> problem?

Another question is that the data value is 0xabadcafe.  This looks at
least sort of like a nonsense value, and indeed the timer handler function
doesn't use it.  Would 0 be a better choice?

julia

