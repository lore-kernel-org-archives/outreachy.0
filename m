Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B32CF3C24
	for <outreachy@lists.linux.dev>; Fri, 24 Mar 2023 09:15:53 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id j24so1058123wrd.0
        for <outreachy@lists.linux.dev>; Fri, 24 Mar 2023 02:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679649351;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=br7JlhHi20f7YSj5Yv8t7+oWp5AvHE0vhuN5qArQnIA=;
        b=El61eoAwoQV0uhCSQkuf4v74cihWB67r998G2HTvBCRgpsvoAPO6ajfxg/gurkaVq2
         snPWXWH126diXAoLFF+AtX4KnjPqAUSyNSL1Cu/xLKgYTxcx6/yWt+5wnaQT2xwEKEH8
         FhcPEyJu7qlKdLDD1W9FICXl3+s3a0IoKSXS76XASDMNJOJLnRJoVZheeNX2vFsAwhlT
         T2fgolYMthwiDN/wmrKtXFNFlJc7yq0n2UniN0aBtW5eGTm1cmw0qB28XHms7cGbm4h3
         +D1Z4ca4mTPvJgIwY7AHLud00wNhfCbXyjhvnA8i4Cc+L3z40n/WNvNlWwVhaUinRQ2y
         42cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679649351;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=br7JlhHi20f7YSj5Yv8t7+oWp5AvHE0vhuN5qArQnIA=;
        b=VOh0npfYhCb8X449Ka/+WSgtNM66SzkeLkrKPeE+i0xZAq91RReLZ9Or7KjpumBTIk
         HQnXchkLeP1mZa6xV7k3mwi40RnF/ZB44SNQsCybWxLeFOmL0oEfKCpWD1YnjfHYuhVI
         wiRnBZyyqFpgqLLNYGj/vaEUa4+hd2Orx3OExYgCyPFNIQmFCiPd/a2jLoHmOvyR5Sgu
         Fx+30mnpTPs7eMCtQfWduJYrE5nOGsz9Qmwr0JLjwY4rJrd3ZqsoUYY0+iYx5v65wYQW
         6tAbtA+MZE9Tcf/+qyb4qfqA4Ckw12bsiC9KPVeq9t19XNEXKg74TxtTmnJV0iEJSOCx
         Nhgg==
X-Gm-Message-State: AAQBX9cB+fh49W5Paq0OMqWyoXc2etXUBsyzTJgVN+XCyCFXRllzeOnc
	BkZNJ27kkrs+G7DoaYVnmLQSvUwoqK96vMJa
X-Google-Smtp-Source: AKy350YtNSYsCjQ1EuUedU2R5NnSp87wvTOIZMCa7gwRGSZD8oTBl8B92LNDbIQN60cgjVrq3XV4+w==
X-Received: by 2002:adf:ed43:0:b0:2d1:ac83:d94f with SMTP id u3-20020adfed43000000b002d1ac83d94fmr1593375wro.55.1679649351635;
        Fri, 24 Mar 2023 02:15:51 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.14.14])
        by smtp.gmail.com with ESMTPSA id v7-20020a5d4b07000000b002c56af32e8csm17872169wrq.35.2023.03.24.02.15.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 02:15:51 -0700 (PDT)
Date: Fri, 24 Mar 2023 14:15:48 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Paul Moore <paul@paul-moore.com>, outreachy@lists.linux.dev
Subject: Re: CHECK: Macro argument reuse
Message-ID: <ZB1qRMbsRoqeqsih@khadija-virtual-machine>
References: <ZBy95LDjVu8e0uNi@khadija-virtual-machine>
 <CAHC9VhT714u7e5-E6zyWDX-b6jvJbpDefAZQ_bq4-RQ8aLa=KA@mail.gmail.com>
 <edd8ca3e-43bf-473e-9496-9f94771f3568@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <edd8ca3e-43bf-473e-9496-9f94771f3568@inria.fr>

On Fri, Mar 24, 2023 at 09:26:56AM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 23 Mar 2023, Paul Moore wrote:
> 
> > On Thu, Mar 23, 2023 at 5:00 PM Khadija Kamran
> > <kamrankhadijadj@gmail.com> wrote:
> > > Hey Outreachy Mentors,
> > >
> > > I am working on the folowing check reported by checkpatch.pl:
> > >
> > > CHECK: Macro argument reuse 'dir' - possible side-effects?
> > > #11: FILE: drivers/staging/greybus/audio_helper.c:11:
> > > +#define gbaudio_dapm_for_each_direction(dir) \
> > > +       for ((dir) = SND_SOC_DAPM_DIR_IN; (dir) <= SND_SOC_DAPM_DIR_OUT; \
> > > +               (dir)++)
> > >
> > >
> > > I understand that the macro definition has input argument dir and this
> > > argument is being used inside the definition. This can cause problems if
> > > dir is an expression with side effect.
> > >
> > > I am trying to re-write this macro as following:
> > >
> > > #define gbaudio_dapm_for_each_direction(dir) \
> > >         do { \
> > >                 snd_soc_dapm_direction dir_ = (dir); \
> > >                 for (; (dir_) <= SND_SOC_DAPM_DIR_OUT; \
> > >                         (dir_)++) \
> > >         } while (0)
> > >
> > > This causes a new warning saying,
> > > WARNING: suspect code indent for conditional statements
> > > I am uncertain about whether I am going in the right direction, and I
> > > need some guidance to continue.
> >
> > Hi Khadija,
> >
> > There are a few things worth discussing here, let's start with an easy
> > one: line length.  Normally a for-loop has a first line that follows
> > this pattern:
> >
> >  for (<INIT>; <CONDITIONAL>; <INCREMENT>)
> >
> > ... and while it is sometimes necessary to split a long for-loop line
> > across multiple lines, you should split the line as you did, along the
> > semi-colons between the INIT, CONDITIONAL, and INCREMENT blocks.
> > However, if you can fit everything on one 80 characters-or-less[1]
> > line you shouldn't split the for-loop.  If one were to choose a single
> > character macro parameter, e.g. 'X', it should be possible to write
> > this in a single line, here is a quick untested example:
> >
> > >>>
> > diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greybus/au
> > dio_helper.c
> > index 223987616e07..16860d451285 100644
> > --- a/drivers/staging/greybus/audio_helper.c
> > +++ b/drivers/staging/greybus/audio_helper.c
> > @@ -8,9 +8,8 @@
> > #include <sound/soc-dapm.h>
> > #include "audio_helper.h"
> >
> > -#define gbaudio_dapm_for_each_direction(dir) \
> > -       for ((dir) = SND_SOC_DAPM_DIR_IN; (dir) <= SND_SOC_DAPM_DIR_OUT; \
> > -               (dir)++)
> > +#define gbaudio_dapm_for_each_direction(X) \
> > +       for ((X) = SND_SOC_DAPM_DIR_IN; (X) <= SND_SOC_DAPM_DIR_OUT; (X)++)
> >
> > static void gbaudio_dapm_link_dai_widget(struct snd_soc_dapm_widget *dai_w,
> >                                         struct snd_soc_card *card)
> > >>>
> >
> > However, line length isn't what likely caused you to start working on
> > this macro; the "Macro reuse" warning from scripts/checkpatch.pl was
> > the problem.  Looking at the original macro code, I didn't see
> > anything obviously wrong so I took a look at the checkpatch.pl tool
> > itself to see what it was looking for that caused this warning/check
> > notice.  Searching for the "Macro argument reuse" string I saw the
> > following code snippet:
> >
> > >>>
> >   my $use_cnt = () = $tmp_stmt =~ /\b$arg\b/g;
> >   if ($use_cnt > 1) {
> >   CHK("MACRO_ARG_REUSE",
> >       "Macro argument reuse '$arg' - possible side-effects?\n" . "$herectx");
> >   }
> > >>>
> >
> > ... which basically means that anytime a macro parameter is used
> > multiple times in the macro it will cause checkpatch.pl to emit this
> > notice.  As long as we carefully review the macro to ensure it is
> > correct, we can ignore this checkpatch.pl warning.  While
> > checkpatch.pl can be used as a source of code improvement suggestions,
> > it is important to note that in many cases checkpatch.pl can, and
> > should, be ignored after verifying the code is correct and valid;
> > checkpatch.pl is not a perfect tool.
> 
> The explanation seems not completely clear.  The point is that the
> parameter of the macro is used as the left side of an assignment.  Often
> the left side of an assignment is just a variable that would not have any
> side effects, like x in x = 3.  But there is nothing that forces that.  For
> example the left side of an assignment could be a[foo()] where each call to
> foo() would have some side effects (print something, update some variables,
> etc).  To check for such concerns, you would have to look at the places
> where the macro is used, not the definition.
> 
> julia
>

Hey Julia,

So everytime this CHECK is reported, instead of changing the macro
definition, it is better to check that wherever the macro is used, it
should not be passed an argument with side-effects?

Regards,
Khadija

> 
> >
> > Finally, and perhaps most importantly, the code snippet you shared
> > while trying to fix this checkpatch.pl warning has a serious bug which
> > I think is worth discussing.  I'm going to copy-and-paste it here for
> > easier reference:
> >
> > > #define gbaudio_dapm_for_each_direction(dir) \
> > >         do { \
> > >                 snd_soc_dapm_direction dir_ = (dir); \
> > >                 for (; (dir_) <= SND_SOC_DAPM_DIR_OUT; \
> > >                         (dir_)++) \
> > >         } while (0)
> >
> > While you are correct in that it is normally considered a good
> > practice to wrap preprocessor macros in a do-while loop, especially if
> > adding a local variable to the macro, in this particular case it
> > breaks the macro.  If we look at the original macro we see that it is
> > a single line, the first line of a for-loop:
> >
> > > #define gbaudio_dapm_for_each_direction(dir) \
> > >        for ((dir) = SND_SOC_DAPM_DIR_IN; (dir) <= SND_SOC_DAPM_DIR_OUT; \
> > >                (dir)++)
> >
> > ... and if we look at how it is used in gbaudio_dapm_free_widget() we
> > can see how the macro is used as a shortcut, or template, for writing
> > a for-loop:
> >
> > >>>
> > static void gbaudio_dapm_free_widget(struct snd_soc_dapm_widget *w)
> > {
> >
> >   /* ... snip ... */
> >
> >   gbaudio_dapm_for_each_direction(dir) {
> >     snd_soc_dapm_widget_for_each_path_safe(w, dir, p, next_p)
> >     gbaudio_dapm_free_path(p);
> >   }
> >
> >   /* ... snip ... */
> >
> > }
> > >>>
> >
> > If we expand this macro we can see how it would behave as a normal for-loop:
> >
> > >>>
> >   for (dir = SND_SOC_DAPM_DIR_IN; dir <= SND_SOC_DAPM_DIR_OUT; dir++) {
> >     snd_soc_dapm_widget_for_each_path_safe(w, dir, p, next_p)
> >     gbaudio_dapm_free_path(p);
> >   }
> > >>>
> >
> > However, if we wrap the macro in a do-while loop this
> > shortcut/template falls apart as the for-loop no longer works.  As an
> > exercise, you can do the substitution manually in the code and see
> > what it looks like; this is exactly what the preprocessor does, so
> > when in doubt you can always do this to double check your macro code.
> > While looking at the expanded macro, I think you'll also find that the
> > for-loop's initializer block is not handled properly; it's not as
> > serious a bug in that it likely won't be flagged by checkpatch.pl or
> > the compiler, but it might result in bad behaviors when running and
> > will likely be difficult to debug!
> >
> > I hope this was helpful, but if you have any questions about what I've
> > written above don't hesitate to ask.  Good luck!
> >
> > -Paul
> >
> > [1] Not too long ago the 80 character line limit was relaxed to 100
> > characters, but there are still some subsystem maintainers that still
> > enforce an 80 character limit (full disclosure: I'm one of them).
> > When in doubt, stick to 80 characters unless you have previous
> > experience with the subsystem.
> >
> > --
> > paul-moore.com
> >
> >

