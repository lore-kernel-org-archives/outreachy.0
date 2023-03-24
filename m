Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157772F2D
	for <outreachy@lists.linux.dev>; Fri, 24 Mar 2023 09:09:47 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id r11so990519wrr.12
        for <outreachy@lists.linux.dev>; Fri, 24 Mar 2023 02:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679648986;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=88ILxshJjQlq28Xy5NDNPWP8s0wWv2/84lLK8bMEeuY=;
        b=RYxRm98VxcXBTNTybbUqAu8JkMuENV9e/zwcmO65TH3IIixFqvzZ2IqMNlBZ+ioiST
         WYiJX1Sew1HqCpfkUBPl34h4DLGnVOccWUhL8A8+NNoVZxkOQeQTBvCdIhWqX8t1ZHzd
         OOtykL2RxHeP5iEOKgg50KyTKE4+mRKJ2+WYs9sMLJrc7sn6f5H9BHT7fGx0C+wLn5wf
         bZMXeBievKnF4Y8nLKifGeei6X2wSUUXyqO27Zf/8oMeQH27N62orHuOm15yZn8oqvXR
         nr8he0EFSTKoEeMT8BB60dIgz73P6nhkQrjVO/SbmBZDifARiVZafPlmcVWRX/78KU1z
         AmTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679648986;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=88ILxshJjQlq28Xy5NDNPWP8s0wWv2/84lLK8bMEeuY=;
        b=7eE8kN+cm4yr2UemK/47Xx4D2zt2dEV3ViorZ9ZbV5hCY69NHxWMxtxn7tgSiMKrC0
         pyePUkJmDf6Br9xC+wGclGcnV/Y0ewG5VPKwsQQlk5Yl1ZV3G6K+DdkvUPA8+bYcLLJ+
         F9ulBn4yfHtebvCmCiKtHU2UyetVFJrAf8PVoqGOl1QCLzU7T+ngZ+DqYOfreJNpivQH
         hstNWTGih7IM4P8p8MFrd/O2FzCCPpWpSkSPXyfiXFag2okHdkCcqKAfT6CV4NoogZyZ
         PrYnxKfpHjpZKYIycAT5RtJGd99hmdxpTLt6QaE5KbIREGbh+QfpryKlKYaCEoYKYJ6H
         DNFQ==
X-Gm-Message-State: AAQBX9feMjQOR9DZRltaebm+X/ym6F21CYVKdHBnQRbUxy699Bdv1Dur
	1GIoWmxPWGjFaPnwq4u46XF78D6AdvBCQQ0d
X-Google-Smtp-Source: AKy350a56L6A5vTi74vO3SOJmvOld/EYfTYU0TqsXkLROjnMzGdAxLa46YXIpkuAi/9ka9BWYnMSeg==
X-Received: by 2002:adf:ce8e:0:b0:2dd:3856:4dec with SMTP id r14-20020adfce8e000000b002dd38564decmr891684wrn.61.1679648985880;
        Fri, 24 Mar 2023 02:09:45 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.14.14])
        by smtp.gmail.com with ESMTPSA id d12-20020adffbcc000000b002c54e26bca5sm17984523wrs.49.2023.03.24.02.09.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 02:09:45 -0700 (PDT)
Date: Fri, 24 Mar 2023 14:09:43 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: Paul Moore <paul@paul-moore.com>
Cc: outreachy@lists.linux.dev
Subject: Re: CHECK: Macro argument reuse
Message-ID: <ZB1o1yCg6voDWDEE@khadija-virtual-machine>
References: <ZBy95LDjVu8e0uNi@khadija-virtual-machine>
 <CAHC9VhT714u7e5-E6zyWDX-b6jvJbpDefAZQ_bq4-RQ8aLa=KA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHC9VhT714u7e5-E6zyWDX-b6jvJbpDefAZQ_bq4-RQ8aLa=KA@mail.gmail.com>

On Thu, Mar 23, 2023 at 05:45:53PM -0400, Paul Moore wrote:
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

Okay understood.

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
> correct, we can ignore this checkpatch.pl warning.

Paul,
How can I ensure it is correct? Won't it still cause a problem if we use
any argument with side-effect.

>While
> checkpatch.pl can be used as a source of code improvement suggestions,
> it is important to note that in many cases checkpatch.pl can, and
> should, be ignored after verifying the code is correct and valid;
> checkpatch.pl is not a perfect tool.
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

I can clearly see my mistake here. Thank you for explaining this.

> While looking at the expanded macro, I think you'll also find that the
> for-loop's initializer block is not handled properly; it's not as
> serious a bug in that it likely won't be flagged by checkpatch.pl or
> the compiler, but it might result in bad behaviors when running and
> will likely be difficult to debug!
>

I am sorry, just wanted to confirm, are you talking about this:
> >                 for (; (dir_) <= SND_SOC_DAPM_DIR_OUT; \
> >                         (dir_)++) \


> I hope this was helpful, but if you have any questions about what I've
> written above don't hesitate to ask.  Good luck!
>

Thank you for taking your time out to write a detailed explanation.
This is great help. :)

Regards,
Khadija

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
