Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F943D8A
	for <outreachy@lists.linux.dev>; Tue, 28 Mar 2023 23:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1680046140; x=1711582140;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=RyQibLFYIzZxEFkMWH0nJrV8NJ6FFyPZ8a/UKndzJsU=;
  b=GTeOQ2Kg0rk0ZWPka9YOqE2bbSL1eo6MwxpMNlaktu5u9mM8aIEJ8whF
   C7sqoLIIndkEVv3swgiBWzFYlh5JBGiThCYWsTYlntkHzJaqN7rELNveE
   nyD9uq3dSt0ZEPRU2DNRKw21vhqU/NVPcpVQrFq8XclPABpl23ejlECUX
   zAyuIZXbLSBK4ZHjgJ6HZQC1JjVUZPN51BqqEvGWkVfg6lQeLeNyllhuw
   Ig7lTdUL+8VFbKn2TCKjkMsD+WTC+0vPb3177RCxIgWlR41h/Ov6vEpLY
   VGrntDtZ57+IKeSFn+b2sPKucJfdsoS+nq49s7uNkjpYNmKtHEKJ0f+jv
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="368491294"
X-IronPort-AV: E=Sophos;i="5.98,299,1673942400"; 
   d="scan'208";a="368491294"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2023 16:28:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="684062052"
X-IronPort-AV: E=Sophos;i="5.98,299,1673942400"; 
   d="scan'208";a="684062052"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.62.61])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2023 16:28:39 -0700
Date: Tue, 28 Mar 2023 16:28:37 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Khadija Kamran <kamrankhadijadj@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Suggestions on refactoring arche_platform_wd_irq() function
Message-ID: <ZCN4JePPsLRqP0sQ@aschofie-mobl2>
References: <ZCLFLqNjNawO2KnO@khadija-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZCLFLqNjNawO2KnO@khadija-virtual-machine>

On Tue, Mar 28, 2023 at 03:45:02PM +0500, Khadija Kamran wrote:
> Hey Outreachy Mentors,
> I am working on a check reported by checkpatch.pl saying,
> 
> CHECK: line length of 101 exceeds 100 columns
> #182: FILE: drivers/staging/greybus/arche-platform.c:182:
> +                                                                            WD_STATE_COLDBOOT_TRIG);
> 
> 
> To refactor the function Ira sent me a link and suggested the use of
> goto statement.
> 
> Alison guided me with this problem and asked to share the diff and start
> a thread for discussion. Link to Alison's mail:
> https://lore.kernel.org/outreachy/ZCHPokeiKV37uOmr@aschofie-mobl2/
> 
> Kindly review the following diff:

Khadaji,

When you share a diff via email, it's useful to use 'git diff' and
send that.  $ git diff arche-platform.c > mychanges.diff

This diff does tuck the code in. I think it can be tucked in further
by addng that single shared exit. That allows re-ordering of the work
in the 'rising' case.

More comments inline below...

We can work that more in the chat.

Alison

> 
> static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
> 
	irqreturn_t rc = IRQ_HANDLED;

Above will help you make a single exit path. Default to IRQ_HANDLED,
and only change where needed.

>         spin_lock_irqsave(&arche_pdata->wake_lock, flags);
> 
> -       if (gpiod_get_value(arche_pdata->wake_detect)) {
> -               /* wake/detect rising */
> -
> -               /*
> -                * If wake/detect line goes high after low, within less than
> -                * 30msec, then standby boot sequence is initiated, which is not
> -                * supported/implemented as of now. So ignore it.
> -                */
> -               if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
> -                       if (time_before(jiffies,
> -                                       arche_pdata->wake_detect_start +
> -                                       msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
> -                               arche_platform_set_wake_detect_state(arche_pdata,
> -                                                                    WD_STATE_IDLE);
> -                       }
			else {
> -                               /*
> -                                * Check we are not in middle of irq thread
> -                                * already
> -                                */
> -                               if (arche_pdata->wake_detect_state !=
> -                                               WD_STATE_COLDBOOT_START) {
> -                                       arche_platform_set_wake_detect_state(arche_pdata,
> -                                                                            WD_STATE_COLDBOOT_TRIG);
> -                                       spin_unlock_irqrestore(&arche_pdata->wake_lock,
> -                                                              flags);
> -                                       return IRQ_WAKE_THREAD;
> -                               }
> -                       }
> -               }
> -       } else {
> +       if (!gpiod_get_value(arche_pdata->wake_detect)) {
>                 /* wake/detect falling */
> -               if (arche_pdata->wake_detect_state == WD_STATE_IDLE) {
> -                       arche_pdata->wake_detect_start = jiffies;
> +               goto falling;
> +       }
> +
> +       /* wake/detect rising */
> +
> +       /*
> +        * If wake/detect line goes high after low, within less than
> +        * 30msec, then standby boot sequence is initiated, which is not
> +        * supported/implemented as of now. So ignore it.
> +        */
> +       if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {

Notice that when (arche_pdata->wake_detect_state != WD_STATE_BOOT_INIT),
work is done! So, perhaps flip the check, and make a quick escape here.

That allows you to un-indent this next piece:

> +               if (time_before(jiffies,
> +                               arche_pdata->wake_detect_start +
> +                               msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
> +                       arche_platform_set_wake_detect_state(arche_pdata,
> +                                                            WD_STATE_IDLE);

Another chance for a jump to out. There is no more work after this.
By jumping to out, rather than if-then-else'ing you are making the
code stream-lined, hence readable.

> +               } else {
>                         /*
> -                        * In the beginning, when wake/detect goes low
> -                        * (first time), we assume it is meant for coldboot
> -                        * and set the flag. If wake/detect line stays low
> -                        * beyond 30msec, then it is coldboot else fallback
> -                        * to standby boot.
> +                        * Check we are not in middle of irq thread
> +                        * already
>                          */
> -                       arche_platform_set_wake_detect_state(arche_pdata,
> -                                                            WD_STATE_BOOT_INIT);
> +                       if (arche_pdata->wake_detect_state !=
> +                                       WD_STATE_COLDBOOT_START) {
> +                               arche_platform_set_wake_detect_state(arche_pdata,
> +                                                                    WD_STATE_COLDBOOT_TRIG)

use the single exit path, rather than unlock and exit here.
> +                               spin_unlock_irqrestore(&arche_pdata->wake_lock,
> +                                                      flags);
> +                               return IRQ_WAKE_THREAD;

rc = IRQ_WAKE_THREAD;
goto out;

> +                       }
>                 }
> +               goto out;
>         }
> 
> +falling:
> +       if (arche_pdata->wake_detect_state == WD_STATE_IDLE) {
> +               arche_pdata->wake_detect_start = jiffies;
> +               /*
> +                * In the beginning, when wake/detect goes low
> +                * (first time), we assume it is meant for coldboot
> +                * and set the flag. If wake/detect line stays low
> +                * beyond 30msec, then it is coldboot else fallback
> +                * to standby boot.
> +                */
> +               arche_platform_set_wake_detect_state(arche_pdata,
> +                                                    WD_STATE_BOOT_INIT);
> +
> +out:
>         spin_unlock_irqrestore(&arche_pdata->wake_lock, flags);
> 
>         return IRQ_HANDLED;

now you'll have an 'rc' to return, which is default IRQ_HANDLED.

> 
> Thank you!
> 
> Regards,
> Khadija
> 
> 
> 
