X-GM-THRID: 6336543746979528704
X-Received: by 10.66.234.197 with SMTP id ug5mr4285693pac.143.1475413096771;
        Sun, 02 Oct 2016 05:58:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.214.65 with SMTP id o62ls1681825itg.8.canary; Sun, 02 Oct
 2016 05:58:12 -0700 (PDT)
X-Received: by 10.36.76.212 with SMTP id a203mr3686937itb.18.1475413092430;
        Sun, 02 Oct 2016 05:58:12 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 128si897700pfz.2.2016.10.02.05.58.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 05:58:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id r9so6497769paz.1
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 05:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nlvQMLABgEPSXs7YC1BgTYjoZSaYgJoKMCfmbOp+tMs=;
        b=BbhYJMTHgRSW//OvZSYH5b5h35d3dZT8L2TUiBnyXCz+xMhs0jtSucPoLiP3o5sJeu
         WdgcSLvkQS6p5Rd4pIwa7so7Crs/xgmcw4VtBMt2ecDFuZ670CS99q1xx15pEouZBZ6x
         hNr6lvxijUHZ/xTXjq6jYTrqUwDOqmVPsEv0vCDvgrW3nr7IvFGFfyLPHjR6gMVGe/5q
         7DD7yt7mrry6kS8gvSjrQAvBFxnjtP8rUp65jjOBxmc5R54xpLsCWZa4xx5m8b/HLlrK
         9GuJkTIzOqkSyFTLKRFSmBDFcUDUrdWzqw8Ztq6w4/NlWCjqlN1e+XKsZmQ15zynkBCD
         EV6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nlvQMLABgEPSXs7YC1BgTYjoZSaYgJoKMCfmbOp+tMs=;
        b=VYfEQzb1p/bcKkzr7iZgFxCPMSEuYoZhjIobk0nAelwtH7IMbfurdHIZCR0j4Ku9yd
         uYy+onDQtQudiXiRlsuVr94tf+nd2jJm6tpmG7NZmNuzSPi6C/LE4e71dP7p3ZDBLzFW
         CoGdvPXo5wVg/dU0KwhuebieQ+elXSquEhveD1Q6kO7bj3u8hFFicIc8pAz+FicME+ap
         FM5MnIAganKdu7d2hE9sRBgiHRg2N7gvXqiLs99SM5OdYfiIKS4rzhkwpXD3URf4rthA
         JgkJqG2E8YSZYT/X6RDnLpVXvaJxgAx/aezlHa7CvzZOnLodkMxbqPfc1TwNJa0GE6fZ
         pDiw==
X-Gm-Message-State: AA6/9RkNOtH/+V6FCp2k3K0kjuyp6Yvey62wt/J9Qd/gUgygaorEZPs8Uq5vSFJ2L/CGQA==
X-Received: by 10.66.43.230 with SMTP id z6mr28100033pal.150.1475413092235;
        Sun, 02 Oct 2016 05:58:12 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l80sm28896172pfb.25.2016.10.02.05.58.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 05:58:11 -0700 (PDT)
Date: Sun, 2 Oct 2016 18:28:04 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: Constify
 kernel_param_ops structures
Message-ID: <20161002125804.GA22828@toblerone>
References: <20161001170549.GA2965@toblerone>
 <alpine.DEB.2.10.1610011911530.3445@hadrien>
 <20161002102817.GA18602@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161002102817.GA18602@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

I looked into the module_param macro.

Consider the struct kernel_param_ops param_ops_debugmb.

It gets used in the call module_param(libcfs_debug_mb, debugmb, 0644), which

converts to module_param_named(libcfs_debug_mb, libcfs_debug_mb, debugmb, 0644)

which converts to module_param_cb(libcfs_debug_mb, &param_ops_debugmb,
				  &libcfs_debug_mb, 0644)

which converts to __module_param_call(MODULE_PARAM_PREFIX, libcfs_debug_mb,
				      &param_ops_debugmb, &libcfs_debug_mb,
				      0644, -1, 0)

Now this translates to declaration of a variable of type struct kernel_param
whose field const struct kernel_param_ops* is assigned the value of
&param_ops_debugmb. Since this field is const, we can originally declare
struct kernel_param_ops param_ops_debugmb as const as well.

A small doubt:
Is a successful build after this constification change not sufficient to
verify its correctness? Since the preprocessor translates the macros before
compilation anyways.

Thanks,
Rehas

On Sun, Oct 02, 2016 at 12:28:17PM +0200, Greg Kroah-Hartman wrote:
> On Sat, Oct 01, 2016 at 07:13:16PM +0200, Julia Lawall wrote:
> > 
> > 
> > On Sat, 1 Oct 2016, Rehas Sachdeva wrote:
> > 
> > > Check for structs which can are not modified and hence can be declared as
> > > const. Done using Coccinelle:
> > 
> > "can are" -> "are"
> > 
> > This merits a little more discussion, though.  I have the impression that
> > these structures are used via the module_param macro.  It would be useful
> > to look at the expansion of the macros and see what exactly is going on.
> 
> Based on other uses of this structure in the kernel, I think this is
> safe.  But verification would be good...
> 
> thanks,
> 
> greg k-h

