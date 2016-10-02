X-GM-THRID: 6336543746979528704
X-Received: by 10.237.32.33 with SMTP id 30mr4915502qta.24.1475432447613;
        Sun, 02 Oct 2016 11:20:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.134 with SMTP id 6ls3309978ioq.7.gmail; Sun, 02 Oct
 2016 11:20:46 -0700 (PDT)
X-Received: by 10.66.22.100 with SMTP id c4mr4751785paf.110.1475432446713;
        Sun, 02 Oct 2016 11:20:46 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si6620197pab.2.2016.10.02.11.20.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 11:20:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 190so1800439pfv.1
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 11:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=V3uzhqNWl+EVVDluatQL/cAlXkRIK2uxCYAPscpVcKY=;
        b=bi3D1Z530xOqSf4ZfDVrqbGX0hte4tAtRhIAqRxz1zvJVP4Hc5NWzBYdfCH9UzAkrf
         YSiGSWIz5pHgbKg8nl8NoleP+RhMl9Gmx0Pw1VgH/SP4SLZhPaT4jkGb1wIpLxZCFk1A
         kdHA3xhokgKbxq0q9ZimtfYAfC6xYthfq8jB6rxcErA9HljAOBSSrEWClHskAYKeFAxv
         xCKuaTMaoIPhWqCYemksR6x2JK6j4gU4S6HzC9dcILkLvoVVhL9Q+3pwNeackTU3ohqj
         y4uRWr3HhJSTV7daO26cHPUgTIr5zbHEJDn7vYC5TgsA4rffdPzdNM7k3TIXj4X7EMlC
         Ymaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=V3uzhqNWl+EVVDluatQL/cAlXkRIK2uxCYAPscpVcKY=;
        b=La0NbNBwwj3KGP+AzPpB0LTWV4eV6LTYzX546/RtVE7A21X9qbn+xO/M0c3R1Km/Qa
         KGjMxq5mObSoMxIQOvOVlGlgHBLzJ/p4SdJwlv0ZzlDAP6WXuyiaQfH5LcMMxrnEqUxh
         swJAP/NRDHrA9c336oABaLoDFHr3DGOTrW3ldLs4BoWYYkKrMT7aqezh//xa4naxDb4Y
         y1SDSa0qu32UQNdOmmHFweKe4pZs5a0yRDmCOzMW2rTazuKuaVZs5xegkQKE91sFlhjV
         p7R7fwYgvoGuHb33M79dkgdwNKPMhth+lFN14c4ILdyTzgQgfpdqd1JmdwJj2DNiqDY0
         OwQA==
X-Gm-Message-State: AA6/9Rnwn5R3MAhBjwWBRx1eS739YzOOq6gBMjSe5/OQqAf+WeZtMTBw+cEPg5Ub3vDfIQ==
X-Received: by 10.98.13.149 with SMTP id 21mr30963615pfn.19.1475432446506;
        Sun, 02 Oct 2016 11:20:46 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s82sm41607867pfg.42.2016.10.02.11.20.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 11:20:45 -0700 (PDT)
Date: Sun, 2 Oct 2016 23:50:39 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: Constify
 kernel_param_ops structures
Message-ID: <20161002182039.GA31680@toblerone>
Reply-To: eg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20161001170549.GA2965@toblerone>
 <alpine.DEB.2.10.1610011911530.3445@hadrien>
 <20161002102817.GA18602@kroah.com>
 <20161002125804.GA22828@toblerone>
 <alpine.DEB.2.10.1610021615360.3327@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1610021615360.3327@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 02, 2016 at 04:17:10PM +0200, Julia Lawall wrote:
> 
> 
> On Sun, 2 Oct 2016, Rehas Sachdeva wrote:
> 
> > Hello,
> >
> > I looked into the module_param macro.
> >
> > Consider the struct kernel_param_ops param_ops_debugmb.
> >
> > It gets used in the call module_param(libcfs_debug_mb, debugmb, 0644), which
> >
> > converts to module_param_named(libcfs_debug_mb, libcfs_debug_mb, debugmb, 0644)
> >
> > which converts to module_param_cb(libcfs_debug_mb, &param_ops_debugmb,
> > 				  &libcfs_debug_mb, 0644)
> >
> > which converts to __module_param_call(MODULE_PARAM_PREFIX, libcfs_debug_mb,
> > 				      &param_ops_debugmb, &libcfs_debug_mb,
> > 				      0644, -1, 0)
> >
> > Now this translates to declaration of a variable of type struct kernel_param
> > whose field const struct kernel_param_ops* is assigned the value of
> > &param_ops_debugmb. Since this field is const, we can originally declare
> > struct kernel_param_ops param_ops_debugmb as const as well.
> >
> > A small doubt:
> > Is a successful build after this constification change not sufficient to
> > verify its correctness? Since the preprocessor translates the macros before
> > compilation anyways.
> 
> Yes, but there are always small details.  For example, something could be
> done differently for a different architecture.  Or there could be a cast
> that does not contain the const annotation.  In that case the compiler
> will not complain, but there will be an error at run time if the value
> turns out to be updated.
> 

Alright. Thanks
I'll send a v2 correcting the commit message.

> Thanks for the analysis.  Everything seems fine.
> 
> julia
> 
> >
> > Thanks,
> > Rehas
> >
> > On Sun, Oct 02, 2016 at 12:28:17PM +0200, Greg Kroah-Hartman wrote:
> > > On Sat, Oct 01, 2016 at 07:13:16PM +0200, Julia Lawall wrote:
> > > >
> > > >
> > > > On Sat, 1 Oct 2016, Rehas Sachdeva wrote:
> > > >
> > > > > Check for structs which can are not modified and hence can be declared as
> > > > > const. Done using Coccinelle:
> > > >
> > > > "can are" -> "are"
> > > >
> > > > This merits a little more discussion, though.  I have the impression that
> > > > these structures are used via the module_param macro.  It would be useful
> > > > to look at the expansion of the macros and see what exactly is going on.
> > >
> > > Based on other uses of this structure in the kernel, I think this is
> > > safe.  But verification would be good...
> > >
> > > thanks,
> > >
> > > greg k-h
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161002125804.GA22828%40toblerone.
> > For more options, visit https://groups.google.com/d/optout.
> >

