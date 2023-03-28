Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58ACD8473
	for <outreachy@lists.linux.dev>; Tue, 28 Mar 2023 19:31:01 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id p34so7598380wms.3
        for <outreachy@lists.linux.dev>; Tue, 28 Mar 2023 12:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680031859;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=09mtn3iO2og+pbE1aoeZ3EsoISFC7hgpVij4ecePvFU=;
        b=QJUnCgoKfzS2fBMRZMp+mVy0HA88YdOdgeGvOC3AE3l/Vs4pjihWC7XR/QCh5FEvrO
         qnqLVuuLFLJ5Og+xSK138XUPIl7ItknWnEo9wJW/PSnt8IebPMUY9lvQzcLnQO8nIycy
         yC7ZAwrTUTSqxHbC4WRNe402Y39KOEncNEC01poqMUh1LXwZQs9yxoK7TTmzGGm3GYL1
         2VQZ+0ZtDFDx81Cbk/gVtfag1JBTnRe/t/D413CScwdO3S/hEQ0J9PWxQOgF9zeu62nE
         F11AAj5UOpIfGiB76QKJCu/KvLelo8HE2M5GwY7Bxm0K4B8xh95n1/98AAy9Lf4j5eF/
         LdPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680031859;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=09mtn3iO2og+pbE1aoeZ3EsoISFC7hgpVij4ecePvFU=;
        b=AJzQGjVH2JFAeNec7ks0+dGV0U5q0VG36+H+XBvAvy7sa3p8M94mcHnzM/93EY+T+h
         Ko5pZnV7sBx2Ij/5c6pfAfDh8CPwHde7Sf6tWRft4NPIr9CGa4hFtCFRwstAhOQPghLW
         A8WhMKtZohV7hlMWzA9PkGoQVwRYvId8+K83PAQG8P4XkQgHZNqbxQD+kBTZwcjNxWH9
         4IObW2D9VajyZxpNI66B8Ip7v88pVg961clx7Nc7fe3d2PB4TjefimSfJJR2WgYtxEMm
         +wOMqny94KJhHt6X1cP4O65I02UTEi8qAtIeA1/l7uu7bHspSHWq8L80j695sCiKg7Hp
         38qA==
X-Gm-Message-State: AAQBX9fm/o6TcCGGSJG7/kZqRosAWylG3vDF3DeCtwCcwLej8YhYLMb0
	C25NJtt083YqpAxLhWczHOTtiZ+goviOYQ==
X-Google-Smtp-Source: AKy350ZuSQDmIcmS9ThDSjnygks+Dd8vcVPjc5UHHJfLu9n0PZYzAos/zRDKragO1RD5gLot9eqdfw==
X-Received: by 2002:a1c:cc1a:0:b0:3ef:622c:26d3 with SMTP id h26-20020a1ccc1a000000b003ef622c26d3mr9574631wmb.35.1680031859037;
        Tue, 28 Mar 2023 12:30:59 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.14.14])
        by smtp.gmail.com with ESMTPSA id f20-20020a05600c4e9400b003ef69873cf1sm10396536wmq.40.2023.03.28.12.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 12:30:58 -0700 (PDT)
Date: Wed, 29 Mar 2023 00:30:56 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: Suggestions on refactoring arche_platform_wd_irq() function
Message-ID: <ZCNAcPBFFpLMYd4D@khadija-virtual-machine>
References: <ZCLFLqNjNawO2KnO@khadija-virtual-machine>
 <a45249-efc2-4772-cdda-c44b6452c1e@inria.fr>
 <ZCM4xlkzDK+lVjX0@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZCM4xlkzDK+lVjX0@aschofie-mobl2>

On Tue, Mar 28, 2023 at 11:58:14AM -0700, Alison Schofield wrote:
> On Tue, Mar 28, 2023 at 12:54:26PM +0200, Julia Lawall wrote:
> > 
> > 
> > On Tue, 28 Mar 2023, Khadija Kamran wrote:
> > 
> > > Hey Outreachy Mentors,
> > > I am working on a check reported by checkpatch.pl saying,
> > >
> > > CHECK: line length of 101 exceeds 100 columns
> > > #182: FILE: drivers/staging/greybus/arche-platform.c:182:
> > > +                                                                            WD_STATE_COLDBOOT_TRIG);
> > >
> > >
> > > To refactor the function Ira sent me a link and suggested the use of
> > > goto statement.
> > >
> > > Alison guided me with this problem and asked to share the diff and start
> > > a thread for discussion. Link to Alison's mail:
> > > https://lore.kernel.org/outreachy/ZCHPokeiKV37uOmr@aschofie-mobl2/
> > 
> > Wasn't there a suggestion to reduce the size of the function names, in the
> > case of static (file-local) functions?  For
> > arche_platform_set_wake_detect_state, just the name of the function is
> > almost as many characters as the code in its definition...
> 
> Hi Julia,
> 
> Yes, Alex Elder commented about looking at the function names.
> I look at it as 2 different problems:
> 
> 1) This file, as a whole, and probably others in greybus, could probably
> benefit from a naming rework. This file alone, that likes to preface
> everything with 'arche_platform_' seems ripe for cleanup.
> 
> 2) Refactoring this function in particular.
> If we renamed things, sure this function would not run over 80 chars,
> and would not have caught our attention so quickly. But, even with
> a naming update, the indentation levels are ugly, and needless.
> 
> For Khadaji, I think the more meaningful exercise is to do the
> code refactoring, just because it gives her a chance to try something
> different, than the cleanups she's completed thus far.
>

Hey Alison,

Okay, great! Is it okay to submit a patch bsaed on the diff I sent on
your suggestion?
Link to patch with diff:
https://lore.kernel.org/outreachy/ZCLFLqNjNawO2KnO@khadija-virtual-machine/


> I'll throw out a TODO item here, maybe Khadaji can pick this up rather
> than picking up the actual work at the moment:
> 
> Add an item to the drivers/staging/greybus/TODO file, something like:
> 
> Consider a naming overhaul in arche-platform.c to alleviate some of
> the line length issues due to prefacing most functions and data
> structure with the complete 'arche_platform'
> 
> By submitting a patch with that TODO, we can find out if maintainers
> are amenable to a naming overhaul. And we get the work recorded in
> the TODO list.
> 

Okay, noted. I will submit a TODO file with the patch.

Also, just to avoid any confusion, my name is spelled 'Khadija', not
'Khadaji'. :)

Regards,
Khadija


> Thanks,
> Alison
> 
> 
> > 
> > I guess the main purpose of the function is to allow placing a comment
> > about a locking requirement.
> > 
> > julia
> > 
> > >
> > > Kindly review the following diff:
> > >
> > > static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
> > >
> > >         spin_lock_irqsave(&arche_pdata->wake_lock, flags);
> > >
> > > -       if (gpiod_get_value(arche_pdata->wake_detect)) {
> > > -               /* wake/detect rising */
> > > -
> > > -               /*
> > > -                * If wake/detect line goes high after low, within less than
> > > -                * 30msec, then standby boot sequence is initiated, which is not
> > > -                * supported/implemented as of now. So ignore it.
> > > -                */
> > > -               if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
> > > -                       if (time_before(jiffies,
> > > -                                       arche_pdata->wake_detect_start +
> > > -                                       msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
> > > -                               arche_platform_set_wake_detect_state(arche_pdata,
> > > -                                                                    WD_STATE_IDLE);
> > > -                       } else {
> > > -                               /*
> > > -                                * Check we are not in middle of irq thread
> > > -                                * already
> > > -                                */
> > > -                               if (arche_pdata->wake_detect_state !=
> > > -                                               WD_STATE_COLDBOOT_START) {
> > > -                                       arche_platform_set_wake_detect_state(arche_pdata,
> > > -                                                                            WD_STATE_COLDBOOT_TRIG);
> > > -                                       spin_unlock_irqrestore(&arche_pdata->wake_lock,
> > > -                                                              flags);
> > > -                                       return IRQ_WAKE_THREAD;
> > > -                               }
> > > -                       }
> > > -               }
> > > -       } else {
> > > +       if (!gpiod_get_value(arche_pdata->wake_detect)) {
> > >                 /* wake/detect falling */
> > > -               if (arche_pdata->wake_detect_state == WD_STATE_IDLE) {
> > > -                       arche_pdata->wake_detect_start = jiffies;
> > > +               goto falling;
> > > +       }
> > > +
> > > +       /* wake/detect rising */
> > > +
> > > +       /*
> > > +        * If wake/detect line goes high after low, within less than
> > > +        * 30msec, then standby boot sequence is initiated, which is not
> > > +        * supported/implemented as of now. So ignore it.
> > > +        */
> > > +       if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
> > > +               if (time_before(jiffies,
> > > +                               arche_pdata->wake_detect_start +
> > > +                               msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
> > > +                       arche_platform_set_wake_detect_state(arche_pdata,
> > > +                                                            WD_STATE_IDLE);
> > > +               } else {
> > >                         /*
> > > -                        * In the beginning, when wake/detect goes low
> > > -                        * (first time), we assume it is meant for coldboot
> > > -                        * and set the flag. If wake/detect line stays low
> > > -                        * beyond 30msec, then it is coldboot else fallback
> > > -                        * to standby boot.
> > > +                        * Check we are not in middle of irq thread
> > > +                        * already
> > >                          */
> > > -                       arche_platform_set_wake_detect_state(arche_pdata,
> > > -                                                            WD_STATE_BOOT_INIT);
> > > +                       if (arche_pdata->wake_detect_state !=
> > > +                                       WD_STATE_COLDBOOT_START) {
> > > +                               arche_platform_set_wake_detect_state(arche_pdata,
> > > +                                                                    WD_STATE_COLDBOOT_TRIG);
> > > +                               spin_unlock_irqrestore(&arche_pdata->wake_lock,
> > > +                                                      flags);
> > > +                               return IRQ_WAKE_THREAD;
> > > +                       }
> > >                 }
> > > +               goto out;
> > >         }
> > >
> > > +falling:
> > > +       if (arche_pdata->wake_detect_state == WD_STATE_IDLE) {
> > > +               arche_pdata->wake_detect_start = jiffies;
> > > +               /*
> > > +                * In the beginning, when wake/detect goes low
> > > +                * (first time), we assume it is meant for coldboot
> > > +                * and set the flag. If wake/detect line stays low
> > > +                * beyond 30msec, then it is coldboot else fallback
> > > +                * to standby boot.
> > > +                */
> > > +               arche_platform_set_wake_detect_state(arche_pdata,
> > > +                                                    WD_STATE_BOOT_INIT);
> > > +
> > > +out:
> > >         spin_unlock_irqrestore(&arche_pdata->wake_lock, flags);
> > >
> > >         return IRQ_HANDLED;
> > >
> > > Thank you!
> > >
> > > Regards,
> > > Khadija
> > >
> > >
> > >
> > >
> > 
