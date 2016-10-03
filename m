X-GM-THRID: 6336543746979528704
X-Received: by 10.176.66.6 with SMTP id i6mr5556363uai.34.1475492343012;
        Mon, 03 Oct 2016 03:59:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.10 with SMTP id 10ls10357304oty.10.gmail; Mon, 03 Oct
 2016 03:59:02 -0700 (PDT)
X-Received: by 10.129.123.4 with SMTP id w4mr515529ywc.111.1475492342602;
        Mon, 03 Oct 2016 03:59:02 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si7181716pab.2.2016.10.03.03.59.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 03:59:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id hh10so1181022pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 03:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+XMY0YYtJ3VMHISQYzhkykh+lcsrtgdkb/7AZOBDhwg=;
        b=HM6voX+sP4X+4vetbsTOboGHzc2Sss5qYAoFUGNu7t1bMXVdBdMIa3atFoypO4MPAy
         SvppRpYVN7e5htYVWh1u7a0z8FwMZ3y5vFf4VWpWnRK0JQIB002Qc6hqUtqYNzqQqK99
         yNxg5y+hSVV1xlKvWPuYHhVu6OKRxqnC/CAODym6KR2P1rAPmyhtB5sRoJQ7kXC+XEVz
         /yQpGUgVUTeow+Npy6sPhG4MjHfHykKRkmSd/FTz7EeGCg9badCiFoJrJKTs+IeJ6/+E
         pTHta6dL5ACc7tdXAIjxjeTQU6MSJl7fRVn7MGGVQXqXCMZuIxpuZytYPC1rVkNw/1Vw
         tvzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+XMY0YYtJ3VMHISQYzhkykh+lcsrtgdkb/7AZOBDhwg=;
        b=gSGjLpG4Sa81vS1uWyPqSV0fbuJdkBHOL0PPNgG//Nbr10ZkOycX6hyIdC+k5JZ6lT
         ylgIKR+Oz5D28AYH6Tc4fJf7wFz1TIxQA53Xv5KyQO7nKhwnFFGxChMkKjYOt9bChMfl
         tzXgJhecJzuBe6IfzWzEnNkGRYKnZ08ITJYeXnHIWaBRYLW3FhcBFeDFqlJLjrE8Y0vw
         bUTKCY5MH2L3B+n1+z5cmUi3IxOyJxOwSZePLWlVKBrmKNTu5hEibuGY+DjEd5oMafDb
         Y38QUeD5HwmUXx1ZQ2BKDOgD9s6hyKN6adsUz2nfafTVSmTAni7R2RyuJF5sKluR3nMu
         hzOA==
X-Gm-Message-State: AA6/9RmPLDFFjkMR2YKD5JJ6zLs9kiLYG9l/5w9KO0DlgAOEAS/RYcsq35IbhfG5CDmSIQ==
X-Received: by 10.66.237.133 with SMTP id vc5mr14393132pac.24.1475492342352;
        Mon, 03 Oct 2016 03:59:02 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g65sm15558953pfb.77.2016.10.03.03.58.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 03:59:01 -0700 (PDT)
Date: Mon, 3 Oct 2016 16:28:56 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: Constify
 kernel_param_ops structures
Message-ID: <20161003105856.GB19013@toblerone>
References: <20161002182515.GA32326@toblerone>
 <alpine.DEB.2.10.1610022138110.3327@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1610022138110.3327@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 02, 2016 at 09:51:41PM +0200, Julia Lawall wrote:
> 
> 
> On Sun, 2 Oct 2016, Rehas Sachdeva wrote:
> 
> > Check for structs which are not modified and hence can be declared as const.
> > Done using Coccinelle:
> 
> The semantic patch below doesn't fit well with this case.  It probably did
> help you find the issue, but not for the right reason.  The semantic patch
> actually doesn't find any uses of the structure at all.  But it is used,
> via the unfolding of the module_param macro.
> 
Oh yes, I just realised it now.

> Greg gave an interesting hint in his comment, saying that structures
> that are used in this way are typically const in the kernel.  So you could
> instead write a semantic patch that looks for this specific situation.
> This is actually a bit tricky, but it will show some features of
> Coccinelle.
> 
> The first issue is how to match something like:
> 
> module_param(libcfs_debug_mb, debugmb, 0644);
> 
> which looks like a function call, but is not actually inside another
> function.  If you just put a pattern like that, Coccinelle will only look
> for it inside of a function definition.  You need to inform Coccinelle is
> a declaration, which may be at top level.  For that, put in your
> metavariable list the declaration:
> 
> declarer name module_param;
> 
> This will cause Coccinelle to treat module_param in a special way.
> 

Understood.

> The next issue is how to go from eg param_ops_debugmb to debugmb, as found
> in:
> 
> module_param(libcfs_debug_mb, debugmb, 0644);
> 
> For this, you will need to use python code (or ocaml code) to make a new
> metavariable that inherits the name of the declared structure and cuts the
> "param_ops_" part off the front.  For this, you can look at
> coccinelle/demos/pythontococci.cocci.  In your case, you would have
> something like the following, after your rule r that obtains the structure
> name, i:
> 
> @script:python s@
> i << r.i;
> short;
> @@
> 
> short = {now some python code to remove "param_ops_" from the beginning of i}
> 
> Then your subsequent rules can refer to s.short, for the string that
> should be in the second argument of module_param
>

Understood. Thanks a lot. I'll try writing script for this case.

Rehas

> julia
> 
> 
> > // <smpl>
> > @r disable optional_qualifier@
> > identifier s != {peri_clk_data,threshold_attr,tracer_flags,tracer};
> > identifier i;
> > position p;
> > @@
> > static struct s i@p = { ... };
> >
> > @ok@
> > identifier r.i;
> > expression e;
> > position p;
> > @@
> > e = i@p
> >
> > @bad@
> > position p != {r.p,ok.p};
> > identifier r.i;
> > identifier r.s;
> > struct s e;
> > @@
> > e@i@p
> >
> > @depends on !bad disable optional_qualifier@
> > identifier r.i;
> > identifier r.s;
> > @@
> > static
> > +const
> > struct s i = { ... };
> > // </smpl>
> >
> > File size before:
> > 	text	data	bss	dec	hex	filename
> > 	4651	4296	1344	10291	2833
> > 	drivers/staging/lustre/lnet/libcfs/debug.o
> >
> > File size after:
> > 	text	data	bss	dec	hex	filename
> > 	4779	4128	1344	10251	280b
> > 	drivers/staging/lustre/lnet/libcfs/debug.o
> >
> > Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> > ---
> >  drivers/staging/lustre/lnet/libcfs/debug.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lnet/libcfs/debug.c b/drivers/staging/lustre/lnet/libcfs/debug.c
> > index 23b36b8..f9194f3 100644
> > --- a/drivers/staging/lustre/lnet/libcfs/debug.c
> > +++ b/drivers/staging/lustre/lnet/libcfs/debug.c
> > @@ -80,7 +80,7 @@ static int libcfs_param_debug_mb_set(const char *val,
> >   * it needs quite a bunch of extra processing, so we define special
> >   * debugmb parameter type with corresponding methods to handle this case
> >   */
> > -static struct kernel_param_ops param_ops_debugmb = {
> > +static const struct kernel_param_ops param_ops_debugmb = {
> >  	.set = libcfs_param_debug_mb_set,
> >  	.get = param_get_uint,
> >  };
> > @@ -138,7 +138,7 @@ static int param_set_console_max_delay(const char *val,
> >  				      libcfs_console_min_delay, INT_MAX);
> >  }
> >
> > -static struct kernel_param_ops param_ops_console_max_delay = {
> > +static const struct kernel_param_ops param_ops_console_max_delay = {
> >  	.set = param_set_console_max_delay,
> >  	.get = param_get_delay,
> >  };
> > @@ -156,7 +156,7 @@ static int param_set_console_min_delay(const char *val,
> >  				      1, libcfs_console_max_delay);
> >  }
> >
> > -static struct kernel_param_ops param_ops_console_min_delay = {
> > +static const struct kernel_param_ops param_ops_console_min_delay = {
> >  	.set = param_set_console_min_delay,
> >  	.get = param_get_delay,
> >  };
> > @@ -188,7 +188,7 @@ static int param_set_uintpos(const char *val, const struct kernel_param *kp)
> >  	return param_set_uint_minmax(val, kp, 1, -1);
> >  }
> >
> > -static struct kernel_param_ops param_ops_uintpos = {
> > +static const struct kernel_param_ops param_ops_uintpos = {
> >  	.set = param_set_uintpos,
> >  	.get = param_get_uint,
> >  };
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161002182515.GA32326%40toblerone.
> > For more options, visit https://groups.google.com/d/optout.
> >

