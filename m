Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786328473
	for <outreachy@lists.linux.dev>; Tue, 28 Mar 2023 18:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1680029897; x=1711565897;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=BjHRwYNhK8cXu28LPtYjhXemV2iBS0vjDsH120M09Go=;
  b=UsyZWiCyprrX17jbCr/nNDEdjLyHN8hh93jy6fJAEPiKHvxFLhNSZ94D
   lr8YbZudeibh0NGMhJm2z+oJ6u0O0H+Xh3dh3OLIQmuSbxzqSUHwM/Eum
   NPNHStu6zQ1veePC0k66C58IGbt2JHu5Jad3o9ZcRbH4lCGjvcz65hrGs
   Th/XWFVeM6w1SXFLcyt1H9dksrtJNxYP00y2j23OjHy9qsqfDt3JxRTYA
   c9FwZNxDyobWLuow0NUWWV99FemH5Mf+wtOm08CCBYiU3GPxQQUqN2vU/
   8IpKPcm9uw9bPJ9HvJcIt+bfMh8Zmr1nS4sf/85c/VWMou22WLINasiB3
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="426932751"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; 
   d="scan'208";a="426932751"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2023 11:58:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="807926672"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; 
   d="scan'208";a="807926672"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.62.61])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2023 11:58:16 -0700
Date: Tue, 28 Mar 2023 11:58:14 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Khadija Kamran <kamrankhadijadj@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Suggestions on refactoring arche_platform_wd_irq() function
Message-ID: <ZCM4xlkzDK+lVjX0@aschofie-mobl2>
References: <ZCLFLqNjNawO2KnO@khadija-virtual-machine>
 <a45249-efc2-4772-cdda-c44b6452c1e@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a45249-efc2-4772-cdda-c44b6452c1e@inria.fr>

On Tue, Mar 28, 2023 at 12:54:26PM +0200, Julia Lawall wrote:
> 
> 
> On Tue, 28 Mar 2023, Khadija Kamran wrote:
> 
> > Hey Outreachy Mentors,
> > I am working on a check reported by checkpatch.pl saying,
> >
> > CHECK: line length of 101 exceeds 100 columns
> > #182: FILE: drivers/staging/greybus/arche-platform.c:182:
> > +                                                                            WD_STATE_COLDBOOT_TRIG);
> >
> >
> > To refactor the function Ira sent me a link and suggested the use of
> > goto statement.
> >
> > Alison guided me with this problem and asked to share the diff and start
> > a thread for discussion. Link to Alison's mail:
> > https://lore.kernel.org/outreachy/ZCHPokeiKV37uOmr@aschofie-mobl2/
> 
> Wasn't there a suggestion to reduce the size of the function names, in the
> case of static (file-local) functions?  For
> arche_platform_set_wake_detect_state, just the name of the function is
> almost as many characters as the code in its definition...

Hi Julia,

Yes, Alex Elder commented about looking at the function names.
I look at it as 2 different problems:

1) This file, as a whole, and probably others in greybus, could probably
benefit from a naming rework. This file alone, that likes to preface
everything with 'arche_platform_' seems ripe for cleanup.

2) Refactoring this function in particular.
If we renamed things, sure this function would not run over 80 chars,
and would not have caught our attention so quickly. But, even with
a naming update, the indentation levels are ugly, and needless.

For Khadaji, I think the more meaningful exercise is to do the
code refactoring, just because it gives her a chance to try something
different, than the cleanups she's completed thus far.

I'll throw out a TODO item here, maybe Khadaji can pick this up rather
than picking up the actual work at the moment:

Add an item to the drivers/staging/greybus/TODO file, something like:

Consider a naming overhaul in arche-platform.c to alleviate some of
the line length issues due to prefacing most functions and data
structure with the complete 'arche_platform'

By submitting a patch with that TODO, we can find out if maintainers
are amenable to a naming overhaul. And we get the work recorded in
the TODO list.

Thanks,
Alison


> 
> I guess the main purpose of the function is to allow placing a comment
> about a locking requirement.
> 
> julia
> 
> >
> > Kindly review the following diff:
> >
> > static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
> >
> >         spin_lock_irqsave(&arche_pdata->wake_lock, flags);
> >
> > -       if (gpiod_get_value(arche_pdata->wake_detect)) {
> > -               /* wake/detect rising */
> > -
> > -               /*
> > -                * If wake/detect line goes high after low, within less than
> > -                * 30msec, then standby boot sequence is initiated, which is not
> > -                * supported/implemented as of now. So ignore it.
> > -                */
> > -               if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
> > -                       if (time_before(jiffies,
> > -                                       arche_pdata->wake_detect_start +
> > -                                       msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
> > -                               arche_platform_set_wake_detect_state(arche_pdata,
> > -                                                                    WD_STATE_IDLE);
> > -                       } else {
> > -                               /*
> > -                                * Check we are not in middle of irq thread
> > -                                * already
> > -                                */
> > -                               if (arche_pdata->wake_detect_state !=
> > -                                               WD_STATE_COLDBOOT_START) {
> > -                                       arche_platform_set_wake_detect_state(arche_pdata,
> > -                                                                            WD_STATE_COLDBOOT_TRIG);
> > -                                       spin_unlock_irqrestore(&arche_pdata->wake_lock,
> > -                                                              flags);
> > -                                       return IRQ_WAKE_THREAD;
> > -                               }
> > -                       }
> > -               }
> > -       } else {
> > +       if (!gpiod_get_value(arche_pdata->wake_detect)) {
> >                 /* wake/detect falling */
> > -               if (arche_pdata->wake_detect_state == WD_STATE_IDLE) {
> > -                       arche_pdata->wake_detect_start = jiffies;
> > +               goto falling;
> > +       }
> > +
> > +       /* wake/detect rising */
> > +
> > +       /*
> > +        * If wake/detect line goes high after low, within less than
> > +        * 30msec, then standby boot sequence is initiated, which is not
> > +        * supported/implemented as of now. So ignore it.
> > +        */
> > +       if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
> > +               if (time_before(jiffies,
> > +                               arche_pdata->wake_detect_start +
> > +                               msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
> > +                       arche_platform_set_wake_detect_state(arche_pdata,
> > +                                                            WD_STATE_IDLE);
> > +               } else {
> >                         /*
> > -                        * In the beginning, when wake/detect goes low
> > -                        * (first time), we assume it is meant for coldboot
> > -                        * and set the flag. If wake/detect line stays low
> > -                        * beyond 30msec, then it is coldboot else fallback
> > -                        * to standby boot.
> > +                        * Check we are not in middle of irq thread
> > +                        * already
> >                          */
> > -                       arche_platform_set_wake_detect_state(arche_pdata,
> > -                                                            WD_STATE_BOOT_INIT);
> > +                       if (arche_pdata->wake_detect_state !=
> > +                                       WD_STATE_COLDBOOT_START) {
> > +                               arche_platform_set_wake_detect_state(arche_pdata,
> > +                                                                    WD_STATE_COLDBOOT_TRIG);
> > +                               spin_unlock_irqrestore(&arche_pdata->wake_lock,
> > +                                                      flags);
> > +                               return IRQ_WAKE_THREAD;
> > +                       }
> >                 }
> > +               goto out;
> >         }
> >
> > +falling:
> > +       if (arche_pdata->wake_detect_state == WD_STATE_IDLE) {
> > +               arche_pdata->wake_detect_start = jiffies;
> > +               /*
> > +                * In the beginning, when wake/detect goes low
> > +                * (first time), we assume it is meant for coldboot
> > +                * and set the flag. If wake/detect line stays low
> > +                * beyond 30msec, then it is coldboot else fallback
> > +                * to standby boot.
> > +                */
> > +               arche_platform_set_wake_detect_state(arche_pdata,
> > +                                                    WD_STATE_BOOT_INIT);
> > +
> > +out:
> >         spin_unlock_irqrestore(&arche_pdata->wake_lock, flags);
> >
> >         return IRQ_HANDLED;
> >
> > Thank you!
> >
> > Regards,
> > Khadija
> >
> >
> >
> >
> 
