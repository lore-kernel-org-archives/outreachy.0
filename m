X-GM-THRID: 6337545646226014208
X-Received: by 10.28.38.134 with SMTP id m128mr505677wmm.11.1475646649529;
        Tue, 04 Oct 2016 22:50:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.10 with SMTP id r10ls1774194wme.20.canary; Tue, 04 Oct
 2016 22:50:48 -0700 (PDT)
X-Received: by 10.28.221.9 with SMTP id u9mr500680wmg.2.1475646648966;
        Tue, 04 Oct 2016 22:50:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w79si673215wmw.0.2016.10.04.22.50.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 22:50:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,447,1473112800"; 
   d="scan'208";a="195652432"
Received: from p57801a74.dip0.t-ipconnect.de (HELO hadrien.local) ([87.128.26.116])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Oct 2016 07:50:46 +0200
Date: Wed, 5 Oct 2016 07:50:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Add log level to
 printk().
In-Reply-To: <20161004231931.GB5862@lennorien.com>
Message-ID: <alpine.DEB.2.10.1610050750160.3061@hadrien>
References: <20161004095344.GA3903@lennorien.com> <alpine.DEB.2.10.1610041214500.2940@hadrien> <20161004231931.GB5862@lennorien.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 4 Oct 2016, Elise Lennion wrote:

> On Tue, Oct 04, 2016 at 12:15:44PM +0200, Julia Lawall wrote:
> >
> >
> > On Tue, 4 Oct 2016, Elise-Lennion wrote:
> >
> > > Fix checkpatch warning:
> > >
> > > WARNING: printk() should include KERN_ facility level
> > >
> > > KERN_ facility levels ensure that unecessary messages, in different steps of driver implemention and testing, don't saturate the log file.
> > >
> > > When log level is not explicited it defaults to DEFAULT_MESSAGE_LOGLEVEL (usually "4"=KERN_WARNING). A module startup message usually isn't a WARNING.
> >
> > When you made this change, I think checkpatch would then suggest you do
> > something else?
> >
>
> Yes, now I see it suggests to replace printk() with other options. Although I'm sure I executed checkpatch after making the changes and didn't see any new warnings.
>
> > > Signed-off-by: Elise-Lennion <elise.lennion@gmail.com>
> >
> > Is this your complete name?  I wonder because of the hyphen.
> >
> > julia
> >
>
> My complete name is Elise Lennion, without the hyphen. I'll fix this in future patches.
>
> I sent a new patch to fix the mentioned issues. In this case should I create a completely new patch or send it as a [PATCH v2]? I chose the latter, even though its subject is different. Thank you.

v2 seems fine.

julia

>
> Elise
>
> v2: https://groups.google.com/forum/#!topic/outreachy-kernel/-YJbFK96SFI
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161004231931.GB5862%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

