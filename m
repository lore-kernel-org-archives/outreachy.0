X-GM-THRID: 6336543746979528704
X-Received: by 10.200.48.72 with SMTP id g8mr179334qte.63.1475342850829;
        Sat, 01 Oct 2016 10:27:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.37.162 with SMTP id q31ls2297418ota.44.gmail; Sat, 01 Oct
 2016 10:27:30 -0700 (PDT)
X-Received: by 10.159.48.84 with SMTP id i20mr3679911uab.6.1475342850485;
        Sat, 01 Oct 2016 10:27:30 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id z73si543860pfa.1.2016.10.01.10.27.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 10:27:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id t6so2637823pae.2
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 10:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ylz8946xMEueXAshQPQF3SFTUhHx76Qx9z3bi66PFcg=;
        b=Mf/vKxq0JidKFpDu8/eUCC9y9vsF3q1oJfkPUj9Vhb4DMd1MqBHISBjPGxPvVNJE/N
         2smuXROkVnD5Y+8F5IWJaMRwyQbn+13pj++bqdxKF2NV2biFrmkb+Gnj3PgTkp6Pi7t0
         m9xUxUhKYPdqrDRyzQl8ULPs0PSilHY+LMJtqbOR7MQU20PeQ7TtstZWWgPcAwaGoM6C
         xy4iSHp6hN1hPNbgbk1Lwedld1E26VMkpAQNQv4E/qJuX7D0T87h++0sn7R+O5tcGMpa
         ZUUXnxOxsjBGBiCHwuYMigDRFhS4chq3iGgroOFkXTmg+eII27yWx63MSJ0vzFs1mkXn
         Xj7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ylz8946xMEueXAshQPQF3SFTUhHx76Qx9z3bi66PFcg=;
        b=jrq0PvA3Q8QrerpMcASVjj7mTR1702u5WHRGFBxGiJT79bIDwcZepfQ5O4gB1uvKyz
         OztKIsNrUcw1LbSQPB4C3aOuHq1rdjR3VYsd9Q3B2Dx/xr1Dk28Nn9cGfvsQ7+sK9zvx
         RtwurR009rj9EdvSHMvGQupDsJyHI81aTp+7RWTVWLNYShb+Lp1RQSE4EIZPSrZOSixC
         dPDK1QHc/1f0Sa8vcWMxtUJonq4ovnL3fWqs0hrLmp8Udz/ixIN2jNWBSr5C5jIotfMt
         ObPHtnn0ugRUMf1rdJmLneeBUUIVGopwG6GEINOH3OZENi5Yxp+RNZ/M1OkRmWbsUnuG
         tFDA==
X-Gm-Message-State: AA6/9RmzpTXB1DnJDScIlhOPwOdTsfvKWsRBgMyTXHOzz+3lFSwijW4W/0XdzQGHCYf4nw==
X-Received: by 10.66.193.135 with SMTP id ho7mr22565011pac.12.1475342850273;
        Sat, 01 Oct 2016 10:27:30 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q8sm36279698pac.32.2016.10.01.10.27.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 10:27:29 -0700 (PDT)
Date: Sat, 1 Oct 2016 22:57:24 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: lustre: Constify kernel_param_ops structures
Message-ID: <20161001172724.GA3299@toblerone>
References: <20161001170549.GA2965@toblerone>
 <alpine.DEB.2.10.1610011911530.3445@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1610011911530.3445@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 01, 2016 at 07:13:16PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 1 Oct 2016, Rehas Sachdeva wrote:
> 
> > Check for structs which can are not modified and hence can be declared as
> > const. Done using Coccinelle:
> 
> "can are" -> "are"

Noted. Thanks

> 
> This merits a little more discussion, though.  I have the impression that
> these structures are used via the module_param macro.  It would be useful
> to look at the expansion of the macros and see what exactly is going on.
>

Oh. I'll take a look at that. Thanks
Rehas

> julia
> 
> >
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
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161001170549.GA2965%40toblerone.
> > For more options, visit https://groups.google.com/d/optout.
> >

