Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB72E4DA
	for <outreachy@lists.linux.dev>; Tue, 28 Mar 2023 10:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=I9nASz7yARfAZB5AeuuAoX/0vKI0mWpS3kaHxmVtfE0=;
  b=Plpfd9Ia0hYz2P6ky4zWn82TtWf3lnitNj8sbEPM+rz0Rw2/CmKkg2h6
   m44kjkcOx337Llq9NBT73BV6CqO+Qkv8Xa96jTdmSu6Qi90cumPuwdBTU
   EldYtrsY2ZaMeKRun4lXgAc+NhixwKrpLWUMHxYTvTuoP/Um0sG+G/GIH
   Q=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,297,1673910000"; 
   d="scan'208";a="99493902"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2023 12:54:26 +0200
Date: Tue, 28 Mar 2023 12:54:26 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Khadija Kamran <kamrankhadijadj@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Suggestions on refactoring arche_platform_wd_irq() function
In-Reply-To: <ZCLFLqNjNawO2KnO@khadija-virtual-machine>
Message-ID: <a45249-efc2-4772-cdda-c44b6452c1e@inria.fr>
References: <ZCLFLqNjNawO2KnO@khadija-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 28 Mar 2023, Khadija Kamran wrote:

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

Wasn't there a suggestion to reduce the size of the function names, in the
case of static (file-local) functions?  For
arche_platform_set_wake_detect_state, just the name of the function is
almost as many characters as the code in its definition...

I guess the main purpose of the function is to allow placing a comment
about a locking requirement.

julia

>
> Kindly review the following diff:
>
> static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
>
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
> -                       } else {
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
> +               if (time_before(jiffies,
> +                               arche_pdata->wake_detect_start +
> +                               msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
> +                       arche_platform_set_wake_detect_state(arche_pdata,
> +                                                            WD_STATE_IDLE);
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
> +                                                                    WD_STATE_COLDBOOT_TRIG);
> +                               spin_unlock_irqrestore(&arche_pdata->wake_lock,
> +                                                      flags);
> +                               return IRQ_WAKE_THREAD;
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
>
> Thank you!
>
> Regards,
> Khadija
>
>
>
>
