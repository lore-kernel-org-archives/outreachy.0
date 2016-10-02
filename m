X-GM-THRID: 6336543746979528704
X-Received: by 10.46.9.87 with SMTP id 84mr171747ljj.12.1475417832903;
        Sun, 02 Oct 2016 07:17:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.37.196 with SMTP id l187ls1108326wml.16.canary; Sun, 02 Oct
 2016 07:17:12 -0700 (PDT)
X-Received: by 10.28.31.7 with SMTP id f7mr315035wmf.0.1475417832127;
        Sun, 02 Oct 2016 07:17:12 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u64si394788wmf.0.2016.10.02.07.17.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 07:17:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,285,1473112800"; 
   d="scan'208";a="195344563"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Oct 2016 16:17:11 +0200
Date: Sun, 2 Oct 2016 16:17:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rehas Sachdeva <aquannie@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: Constify kernel_param_ops
 structures
In-Reply-To: <20161002125804.GA22828@toblerone>
Message-ID: <alpine.DEB.2.10.1610021615360.3327@hadrien>
References: <20161001170549.GA2965@toblerone> <alpine.DEB.2.10.1610011911530.3445@hadrien> <20161002102817.GA18602@kroah.com> <20161002125804.GA22828@toblerone>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 2 Oct 2016, Rehas Sachdeva wrote:

> Hello,
>
> I looked into the module_param macro.
>
> Consider the struct kernel_param_ops param_ops_debugmb.
>
> It gets used in the call module_param(libcfs_debug_mb, debugmb, 0644), which
>
> converts to module_param_named(libcfs_debug_mb, libcfs_debug_mb, debugmb, 0644)
>
> which converts to module_param_cb(libcfs_debug_mb, &param_ops_debugmb,
> 				  &libcfs_debug_mb, 0644)
>
> which converts to __module_param_call(MODULE_PARAM_PREFIX, libcfs_debug_mb,
> 				      &param_ops_debugmb, &libcfs_debug_mb,
> 				      0644, -1, 0)
>
> Now this translates to declaration of a variable of type struct kernel_param
> whose field const struct kernel_param_ops* is assigned the value of
> &param_ops_debugmb. Since this field is const, we can originally declare
> struct kernel_param_ops param_ops_debugmb as const as well.
>
> A small doubt:
> Is a successful build after this constification change not sufficient to
> verify its correctness? Since the preprocessor translates the macros before
> compilation anyways.

Yes, but there are always small details.  For example, something could be
done differently for a different architecture.  Or there could be a cast
that does not contain the const annotation.  In that case the compiler
will not complain, but there will be an error at run time if the value
turns out to be updated.

Thanks for the analysis.  Everything seems fine.

julia

>
> Thanks,
> Rehas
>
> On Sun, Oct 02, 2016 at 12:28:17PM +0200, Greg Kroah-Hartman wrote:
> > On Sat, Oct 01, 2016 at 07:13:16PM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Sat, 1 Oct 2016, Rehas Sachdeva wrote:
> > >
> > > > Check for structs which can are not modified and hence can be declared as
> > > > const. Done using Coccinelle:
> > >
> > > "can are" -> "are"
> > >
> > > This merits a little more discussion, though.  I have the impression that
> > > these structures are used via the module_param macro.  It would be useful
> > > to look at the expansion of the macros and see what exactly is going on.
> >
> > Based on other uses of this structure in the kernel, I think this is
> > safe.  But verification would be good...
> >
> > thanks,
> >
> > greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161002125804.GA22828%40toblerone.
> For more options, visit https://groups.google.com/d/optout.
>

