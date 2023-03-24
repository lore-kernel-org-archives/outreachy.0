Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387F87E
	for <outreachy@lists.linux.dev>; Fri, 24 Mar 2023 08:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=jdAfW+8nn7M2oLTvDW4yZNAYoO9KVrJCpym90LfomXg=;
  b=sM6K6KBTGanF7Yqgt0muAmLfkBtFLmJMy+XkXiWkp5z3f1ozDKAAqkds
   dpL9CuepPAYiJZZ8IsXVm+LBbmeJR/A4zuy39tCN+OZZxpKPpN7en69QK
   ZgeeQCbwvbLKoyS1xyqA5HrXUxmQC7dMgb+2fX2dLbjO71pUomK3A8fhQ
   Y=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,287,1673910000"; 
   d="scan'208";a="51115682"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2023 09:26:56 +0100
Date: Fri, 24 Mar 2023 09:26:56 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Paul Moore <paul@paul-moore.com>
cc: Khadija Kamran <kamrankhadijadj@gmail.com>, outreachy@lists.linux.dev
Subject: Re: CHECK: Macro argument reuse
In-Reply-To: <CAHC9VhT714u7e5-E6zyWDX-b6jvJbpDefAZQ_bq4-RQ8aLa=KA@mail.gmail.com>
Message-ID: <edd8ca3e-43bf-473e-9496-9f94771f3568@inria.fr>
References: <ZBy95LDjVu8e0uNi@khadija-virtual-machine> <CAHC9VhT714u7e5-E6zyWDX-b6jvJbpDefAZQ_bq4-RQ8aLa=KA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-958693275-1679646416=:3667"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-958693275-1679646416=:3667
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 23 Mar 2023, Paul Moore wrote:

> On Thu, Mar 23, 2023 at 5:00 PM Khadija Kamran
> <kamrankhadijadj@gmail.com> wrote:
> > Hey Outreachy Mentors,
> >
> > I am working on the folowing check reported by checkpatch.pl:
> >
> > CHECK: Macro argument reuse 'dir' - possible side-effects?
> > #11: FILE: drivers/staging/greybus/audio_helper.c:11:
> > +#define gbaudio_dapm_for_each_direction(dir) \
> > +       for ((dir) = SND_SOC_DAPM_DIR_IN; (dir) <= SND_SOC_DAPM_DIR_OUT; \
> > +               (dir)++)
> >
> >
> > I understand that the macro definition has input argument dir and this
> > argument is being used inside the definition. This can cause problems if
> > dir is an expression with side effect.
> >
> > I am trying to re-write this macro as following:
> >
> > #define gbaudio_dapm_for_each_direction(dir) \
> >         do { \
> >                 snd_soc_dapm_direction dir_ = (dir); \
> >                 for (; (dir_) <= SND_SOC_DAPM_DIR_OUT; \
> >                         (dir_)++) \
> >         } while (0)
> >
> > This causes a new warning saying,
> > WARNING: suspect code indent for conditional statements
> > I am uncertain about whether I am going in the right direction, and I
> > need some guidance to continue.
>
> Hi Khadija,
>
> There are a few things worth discussing here, let's start with an easy
> one: line length.  Normally a for-loop has a first line that follows
> this pattern:
>
>  for (<INIT>; <CONDITIONAL>; <INCREMENT>)
>
> ... and while it is sometimes necessary to split a long for-loop line
> across multiple lines, you should split the line as you did, along the
> semi-colons between the INIT, CONDITIONAL, and INCREMENT blocks.
> However, if you can fit everything on one 80 characters-or-less[1]
> line you shouldn't split the for-loop.  If one were to choose a single
> character macro parameter, e.g. 'X', it should be possible to write
> this in a single line, here is a quick untested example:
>
> >>>
> diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greybus/au
> dio_helper.c
> index 223987616e07..16860d451285 100644
> --- a/drivers/staging/greybus/audio_helper.c
> +++ b/drivers/staging/greybus/audio_helper.c
> @@ -8,9 +8,8 @@
> #include <sound/soc-dapm.h>
> #include "audio_helper.h"
>
> -#define gbaudio_dapm_for_each_direction(dir) \
> -       for ((dir) = SND_SOC_DAPM_DIR_IN; (dir) <= SND_SOC_DAPM_DIR_OUT; \
> -               (dir)++)
> +#define gbaudio_dapm_for_each_direction(X) \
> +       for ((X) = SND_SOC_DAPM_DIR_IN; (X) <= SND_SOC_DAPM_DIR_OUT; (X)++)
>
> static void gbaudio_dapm_link_dai_widget(struct snd_soc_dapm_widget *dai_w,
>                                         struct snd_soc_card *card)
> >>>
>
> However, line length isn't what likely caused you to start working on
> this macro; the "Macro reuse" warning from scripts/checkpatch.pl was
> the problem.  Looking at the original macro code, I didn't see
> anything obviously wrong so I took a look at the checkpatch.pl tool
> itself to see what it was looking for that caused this warning/check
> notice.  Searching for the "Macro argument reuse" string I saw the
> following code snippet:
>
> >>>
>   my $use_cnt = () = $tmp_stmt =~ /\b$arg\b/g;
>   if ($use_cnt > 1) {
>   CHK("MACRO_ARG_REUSE",
>       "Macro argument reuse '$arg' - possible side-effects?\n" . "$herectx");
>   }
> >>>
>
> ... which basically means that anytime a macro parameter is used
> multiple times in the macro it will cause checkpatch.pl to emit this
> notice.  As long as we carefully review the macro to ensure it is
> correct, we can ignore this checkpatch.pl warning.  While
> checkpatch.pl can be used as a source of code improvement suggestions,
> it is important to note that in many cases checkpatch.pl can, and
> should, be ignored after verifying the code is correct and valid;
> checkpatch.pl is not a perfect tool.

The explanation seems not completely clear.  The point is that the
parameter of the macro is used as the left side of an assignment.  Often
the left side of an assignment is just a variable that would not have any
side effects, like x in x = 3.  But there is nothing that forces that.  For
example the left side of an assignment could be a[foo()] where each call to
foo() would have some side effects (print something, update some variables,
etc).  To check for such concerns, you would have to look at the places
where the macro is used, not the definition.

julia


>
> Finally, and perhaps most importantly, the code snippet you shared
> while trying to fix this checkpatch.pl warning has a serious bug which
> I think is worth discussing.  I'm going to copy-and-paste it here for
> easier reference:
>
> > #define gbaudio_dapm_for_each_direction(dir) \
> >         do { \
> >                 snd_soc_dapm_direction dir_ = (dir); \
> >                 for (; (dir_) <= SND_SOC_DAPM_DIR_OUT; \
> >                         (dir_)++) \
> >         } while (0)
>
> While you are correct in that it is normally considered a good
> practice to wrap preprocessor macros in a do-while loop, especially if
> adding a local variable to the macro, in this particular case it
> breaks the macro.  If we look at the original macro we see that it is
> a single line, the first line of a for-loop:
>
> > #define gbaudio_dapm_for_each_direction(dir) \
> >        for ((dir) = SND_SOC_DAPM_DIR_IN; (dir) <= SND_SOC_DAPM_DIR_OUT; \
> >                (dir)++)
>
> ... and if we look at how it is used in gbaudio_dapm_free_widget() we
> can see how the macro is used as a shortcut, or template, for writing
> a for-loop:
>
> >>>
> static void gbaudio_dapm_free_widget(struct snd_soc_dapm_widget *w)
> {
>
>   /* ... snip ... */
>
>   gbaudio_dapm_for_each_direction(dir) {
>     snd_soc_dapm_widget_for_each_path_safe(w, dir, p, next_p)
>     gbaudio_dapm_free_path(p);
>   }
>
>   /* ... snip ... */
>
> }
> >>>
>
> If we expand this macro we can see how it would behave as a normal for-loop:
>
> >>>
>   for (dir = SND_SOC_DAPM_DIR_IN; dir <= SND_SOC_DAPM_DIR_OUT; dir++) {
>     snd_soc_dapm_widget_for_each_path_safe(w, dir, p, next_p)
>     gbaudio_dapm_free_path(p);
>   }
> >>>
>
> However, if we wrap the macro in a do-while loop this
> shortcut/template falls apart as the for-loop no longer works.  As an
> exercise, you can do the substitution manually in the code and see
> what it looks like; this is exactly what the preprocessor does, so
> when in doubt you can always do this to double check your macro code.
> While looking at the expanded macro, I think you'll also find that the
> for-loop's initializer block is not handled properly; it's not as
> serious a bug in that it likely won't be flagged by checkpatch.pl or
> the compiler, but it might result in bad behaviors when running and
> will likely be difficult to debug!
>
> I hope this was helpful, but if you have any questions about what I've
> written above don't hesitate to ask.  Good luck!
>
> -Paul
>
> [1] Not too long ago the 80 character line limit was relaxed to 100
> characters, but there are still some subsystem maintainers that still
> enforce an 80 character limit (full disclosure: I'm one of them).
> When in doubt, stick to 80 characters unless you have previous
> experience with the subsystem.
>
> --
> paul-moore.com
>
>
--8323329-958693275-1679646416=:3667--
