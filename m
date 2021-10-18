X-GM-THRID: 7020448359173324800
X-Received: by 2002:ac2:54b0:: with SMTP id w16mr1624482lfk.190.1634586335897;
        Mon, 18 Oct 2021 12:45:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3f14:: with SMTP id y20ls838889lfa.1.gmail; Mon, 18
 Oct 2021 12:45:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwwJE97M5EFy73YVz8vIcOlGccvvFjS9PVcQPAQZj5nk+8DQw+wgoe6VOwZKEPYETfXmxvd
X-Received: by 2002:a19:c514:: with SMTP id w20mr1623676lfe.265.1634586334210;
        Mon, 18 Oct 2021 12:45:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634586334; cv=none;
        d=google.com; s=arc-20160816;
        b=ZyKs3v6teXEgjDno5WZF3O5A/l93cU1Bz7LGU+PAiPwXCSs4z4eA2gk9aNfb0g2ssY
         upshUDVQkia107jJBmwvNig3IPAi6pdUjruLu0shuRCY0B4UwPrC5txZVCnGCDv36JNB
         a21d/mwGFqoyLtOrXNlwm+ooVcz1P+EL5LI60WgF2jekPrvPBtZNLFdDETXasdj84SVM
         CYmYjt+1d5SwsIhn3KYJg/p9zyMZg+nIvey6k+SPqF4Gn/sduXGufW0fzxdha7wAa218
         MyJmOly1XvQHX2uSiBjoHQyyZha47I29qxQjpI0sFlmosXlrBpMwdXXOeT9+lfLC55Us
         EZrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=lcr6RjZJl/XrPGwPdBr4Hof3Dfa7Jan6N6HKJaaWR0U=;
        b=SKiNsoxGVYALIuGPP4slbo77H983MK3+5rQRi3hvaWC4SUX6EXCj9EDl0fuJciecB7
         GifTHv05LgqHPuoxURC2v+G6r2p+gqJSNdLH6BSi4f0Bo2tew7ApXUxgSmYca1s2sWSW
         YctX8wp+2rKWz3miHR/EuxffOakSOM4bfOw/hj2lcl7tOixBZyfMCCctlzZC+Pt1J6Yg
         VsfH5PMC2YmyYAjidmwovnEaAQ9WNILyO6fqP+HE/hoBItD+JW01qm6oFDpo5desvu/M
         UzoncC9lVeMzj7Yfpf+LD0Pr1FWJpzTGDiLPuwH7r2clOXBP2E2VDKMvjul1bShyVhnN
         jrDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id z21si827553ljn.1.2021.10.18.12.45.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Oct 2021 12:45:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="289200327"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; 
   d="scan'208";a="289200327"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2021 12:45:14 -0700
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; 
   d="scan'208";a="593966244"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2021 12:45:14 -0700
Date: Mon, 18 Oct 2021 12:53:10 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: kushal kothari <kushalkothari285@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: make pointers in
 array const
Message-ID: <20211018195310.GA446900@alison-desk>
References: <20211018164431.26462-1-kushalkothari285@gmail.com>
 <9033544.t7rfKEcqWj@localhost.localdomain>
 <0f0eb2e6b72bc5188d5eca3aa49eba1d8db0effd.camel@perches.com>
 <6124760.3TRdS1uSHU@localhost.localdomain>
 <alpine.DEB.2.22.394.2110182042500.3174@hadrien>
 <cc951a48-8d3f-4243-8dc6-bae3446941c1n@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cc951a48-8d3f-4243-8dc6-bae3446941c1n@googlegroups.com>

On Mon, Oct 18, 2021 at 11:56:30AM -0700, kushal kothari wrote:
> >As I wrote your patch has errors, however, if it had no errors it could 
> not 
> >be taken in any case. I just noticed that you forgot to CC linux- 
> > <https://groups.google.com/>staging@lists.linux.dev. 
> 
> >Some days ago, Greg Kroah-Hartman wrote clearly that he cannot take 
> patches 
> >that are not submitted to linux-staging. 
> 
> Yes, I forgot and CC'ed only to the output of the list of that script . 
> I'll keep this in mind ahead. 
> Thanks.

Hi Kushal,

Thanks for your perserverance. 

I'm not sure this is mentioned anywhere in the first patch tutorial,
but is should be: avoid pruning the recipient list in an ongoing email
thread. I wanted to reply to this, but I see the recipient list got
truncated along the way. 

Adding recipients, but pruning in an ongoing discussion gets confusing.

wrt who to send the patches to - you should not be pruning that list
either. Read back through previous emails on this list about that.
The send to Greg is not a special request. It's default behavior when
get_maintainers is used correctly.

Thanks,
Alison


> 
> On Tuesday, October 19, 2021 at 12:13:47 AM UTC+5:30 Julia....@inria.fr 
> wrote:
> 
> >
> >
> > On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:
> >
> > > On Monday, October 18, 2021 8:22:23 PM CEST Joe Perches wrote:
> > > > On Mon, 2021-10-18 at 19:18 +0200, Fabio M. De Francesco wrote:
> > > > > On Monday, October 18, 2021 7:01:42 PM CEST Julia Lawall wrote:
> > > > > >
> > > > > > On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:
> > > > > >
> > > > > > > On Monday, October 18, 2021 6:44:31 PM CEST Kushal Kothari wrote:
> > > > > > > > Change the parameters of functions from const char *g_fbmode[] 
> > to
> > > > > > > > const char * const g_fbmode[]. This additional const is needed 
> > to
> > > > > > > > allow us to fix checkpatch warning, as well as being good
> > > > > > > > programming practice.
> > > > > > > >
> > > > > > > > For the checkpatch warnings, if we have a set of command line
> > > > > > > > args that we want to check defined as:
> > > > > > > > static const char * g_fbmode[] = {NULL, NULL};
> > > > > > > >
> > > > > > > > checkpatch will complain:
> > > > > > > > WARNING: static const char * array should probably be static
> > > > > const
> > > > > > > char * const
> > > > > > > >
> > > > > > > > Signed-off-by: Kushal Kothari <kushalko...@gmail.com>
> > > > > > > > ---
> > > > > > > >
> > > > > > > > [...]
> > > > > > > >
> > > > > > > > -static const char *g_fbmode[] = {NULL, NULL};
> > > > > > > > +static const char * const g_fbmode[] = {NULL, NULL};
> > > > > > >
> > > > > > > You have introduced a logical change (g_fbmode[] entries cannot 
> > be
> > > > > assigned
> > > > > > > any more) and a build error (because there is code somewhere that
> > > assigns
> > > > > > > values to those slots).
> > > > > >
> > > > > > I wonder if this warning makes much sense when the array elements 
> > are
> > > > > > NULL. I don't know if checkpatch could easily detect that.
> > > >
> > > > No, it couldn't really. It's a line by line parser and most frequently
> > > > these are on separate lines.
> > >
> > > Sorry but I don't get it. For sure I'm missing something...
> > >
> > > I guess that checkpatch.pl warned Kushal because it detected that the 
> > array
> > > of pointers was assigned with something and so it output that "static 
> > const
> > > char * array should probably be static const".
> > >
> > > What I cannot understand is why it _can_ detect that the array is 
> > assigned
> > > with some values but it _cannot_ check that those values are 'NULL' and 
> > so
> > > avoid to warn.
> >
> > In this case it could, but this case is too specific to be worth making a
> > special case for. The problem is that checkpatch only looks at one line
> > at a time, so some values could be on another line.
> >
> > julia
> >
> > >
> > > Thanks,
> > >
> > > Fabio
> > >
> > > >
> > > > > However, it should be an easy fix in whatever programming language:
> > > > > checkpatch should warn if and only if the array elements are assigned
> > > with
> > > > > non 'NULL' values, because it's pretty clear that somewhere else 
> > there
> > > must
> > > > > be some lines that assign values to them.
> > > >
> > > > Don't take checkpatch warning too seriously and do compile
> > > > and test any change you make _before_ you submit a patch.
> > > >
> > > >
> > > >
> > >
> > >
> > >
> > >
> > >
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cc951a48-8d3f-4243-8dc6-bae3446941c1n%40googlegroups.com.


