Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7852AD2E2
	for <outreachy@lists.linux.dev>; Thu, 23 Mar 2023 21:46:05 +0000 (UTC)
Received: by mail-yb1-f177.google.com with SMTP id e65so35872ybh.10
        for <outreachy@lists.linux.dev>; Thu, 23 Mar 2023 14:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paul-moore.com; s=google; t=1679607964;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2hFMFaxnRPAAeL4ZHAZcNtlTUAqV9UnYeS9tD9OiP2Y=;
        b=BeN0m7JSNIrZ7KaCd9X+iyFR1nkwzYIYsWcV/54YVRakI7Jaluuks0Od7fqyY5jw2+
         xAcA8Q/+yBfnDabiVfPeS775HpVJxmy6dQHEI2voKFaqjjRIeNn60PkXCGdixl+Imnxr
         2T3iaf8kfYlDazDmQdzTBPrODGicTzIE5+ZjtJOZgH1gdfiDFM2tlpdWc2Yp79+QuteE
         p+7wnXPRpFyqnVoEdCwK/4bQRb5E2NeLrcycS5DgNcN1bENfpAID/PQ8M2fI3RKwXMGW
         UP0qFZwrPKY+Rz4iVbjBtW0wMHiv9Dz9XV8jU03J2w1BiGIB0zAEP5i20fEeCQUPzXIK
         o17Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679607964;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2hFMFaxnRPAAeL4ZHAZcNtlTUAqV9UnYeS9tD9OiP2Y=;
        b=V7hly2PqXQh8+P6XW65fZC3HV3CPFyX47ow7Scug0jMX7aqvkzNAyUQUsxO5C8sK0F
         XXHsLmqSoSssUKucRIBK7JWrFPVZcIf5rVayUo7u82v9l2E+ovbOhiC6XrNPh4yJkMJa
         iq6WwqA4ZbqoM9U0w+Pg5zLMw0mngT+R5TxiIpyPLSTYul8tV/kFXoCqrj8DnBITcUyi
         4Z60yFqQOWM65W2GuOHv4pDMTl4G9cLOyZNNZNlzPryQpK28jq7BeJeGA3ZhgfPIBlZa
         dcutBmOgXe8CbaNU1/i6opGgE6j5QQE77VXZMhFEFN4Rnr0Cqy3H0v878fjQkiUsJBoi
         CFSw==
X-Gm-Message-State: AAQBX9eCURSthNZ4yz2/EoQrT3nEyzGQympSjoKroGiV292INymmpCjH
	wJ7jVIOedu72X42gszdzWCbjN4nmEPfm2m0zU89NFSOiFyeRtdk9Tw==
X-Google-Smtp-Source: AKy350YoHpaIeb42W3za9Ci+loisKPqAnxDI0d4xqMZRal10EdwGSfRBCQL2z8RhLCrUADHed7rdForHAXnQyYgbRqI=
X-Received: by 2002:a05:6902:1889:b0:b69:bf76:2243 with SMTP id
 cj9-20020a056902188900b00b69bf762243mr61611ybb.3.1679607964187; Thu, 23 Mar
 2023 14:46:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <ZBy95LDjVu8e0uNi@khadija-virtual-machine>
In-Reply-To: <ZBy95LDjVu8e0uNi@khadija-virtual-machine>
From: Paul Moore <paul@paul-moore.com>
Date: Thu, 23 Mar 2023 17:45:53 -0400
Message-ID: <CAHC9VhT714u7e5-E6zyWDX-b6jvJbpDefAZQ_bq4-RQ8aLa=KA@mail.gmail.com>
Subject: Re: CHECK: Macro argument reuse
To: Khadija Kamran <kamrankhadijadj@gmail.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 23, 2023 at 5:00=E2=80=AFPM Khadija Kamran
<kamrankhadijadj@gmail.com> wrote:
> Hey Outreachy Mentors,
>
> I am working on the folowing check reported by checkpatch.pl:
>
> CHECK: Macro argument reuse 'dir' - possible side-effects?
> #11: FILE: drivers/staging/greybus/audio_helper.c:11:
> +#define gbaudio_dapm_for_each_direction(dir) \
> +       for ((dir) =3D SND_SOC_DAPM_DIR_IN; (dir) <=3D SND_SOC_DAPM_DIR_O=
UT; \
> +               (dir)++)
>
>
> I understand that the macro definition has input argument dir and this
> argument is being used inside the definition. This can cause problems if
> dir is an expression with side effect.
>
> I am trying to re-write this macro as following:
>
> #define gbaudio_dapm_for_each_direction(dir) \
>         do { \
>                 snd_soc_dapm_direction dir_ =3D (dir); \
>                 for (; (dir_) <=3D SND_SOC_DAPM_DIR_OUT; \
>                         (dir_)++) \
>         } while (0)
>
> This causes a new warning saying,
> WARNING: suspect code indent for conditional statements
> I am uncertain about whether I am going in the right direction, and I
> need some guidance to continue.

Hi Khadija,

There are a few things worth discussing here, let's start with an easy
one: line length.  Normally a for-loop has a first line that follows
this pattern:

 for (<INIT>; <CONDITIONAL>; <INCREMENT>)

... and while it is sometimes necessary to split a long for-loop line
across multiple lines, you should split the line as you did, along the
semi-colons between the INIT, CONDITIONAL, and INCREMENT blocks.
However, if you can fit everything on one 80 characters-or-less[1]
line you shouldn't split the for-loop.  If one were to choose a single
character macro parameter, e.g. 'X', it should be possible to write
this in a single line, here is a quick untested example:

>>>
diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greyb=
us/au
dio_helper.c
index 223987616e07..16860d451285 100644
--- a/drivers/staging/greybus/audio_helper.c
+++ b/drivers/staging/greybus/audio_helper.c
@@ -8,9 +8,8 @@
#include <sound/soc-dapm.h>
#include "audio_helper.h"

-#define gbaudio_dapm_for_each_direction(dir) \
-       for ((dir) =3D SND_SOC_DAPM_DIR_IN; (dir) <=3D SND_SOC_DAPM_DIR_OUT=
; \
-               (dir)++)
+#define gbaudio_dapm_for_each_direction(X) \
+       for ((X) =3D SND_SOC_DAPM_DIR_IN; (X) <=3D SND_SOC_DAPM_DIR_OUT; (X=
)++)

static void gbaudio_dapm_link_dai_widget(struct snd_soc_dapm_widget *dai_w,
                                        struct snd_soc_card *card)
>>>

However, line length isn't what likely caused you to start working on
this macro; the "Macro reuse" warning from scripts/checkpatch.pl was
the problem.  Looking at the original macro code, I didn't see
anything obviously wrong so I took a look at the checkpatch.pl tool
itself to see what it was looking for that caused this warning/check
notice.  Searching for the "Macro argument reuse" string I saw the
following code snippet:

>>>
  my $use_cnt =3D () =3D $tmp_stmt =3D~ /\b$arg\b/g;
  if ($use_cnt > 1) {
  CHK("MACRO_ARG_REUSE",
      "Macro argument reuse '$arg' - possible side-effects?\n" . "$herectx"=
);
  }
>>>

... which basically means that anytime a macro parameter is used
multiple times in the macro it will cause checkpatch.pl to emit this
notice.  As long as we carefully review the macro to ensure it is
correct, we can ignore this checkpatch.pl warning.  While
checkpatch.pl can be used as a source of code improvement suggestions,
it is important to note that in many cases checkpatch.pl can, and
should, be ignored after verifying the code is correct and valid;
checkpatch.pl is not a perfect tool.

Finally, and perhaps most importantly, the code snippet you shared
while trying to fix this checkpatch.pl warning has a serious bug which
I think is worth discussing.  I'm going to copy-and-paste it here for
easier reference:

> #define gbaudio_dapm_for_each_direction(dir) \
>         do { \
>                 snd_soc_dapm_direction dir_ =3D (dir); \
>                 for (; (dir_) <=3D SND_SOC_DAPM_DIR_OUT; \
>                         (dir_)++) \
>         } while (0)

While you are correct in that it is normally considered a good
practice to wrap preprocessor macros in a do-while loop, especially if
adding a local variable to the macro, in this particular case it
breaks the macro.  If we look at the original macro we see that it is
a single line, the first line of a for-loop:

> #define gbaudio_dapm_for_each_direction(dir) \
>        for ((dir) =3D SND_SOC_DAPM_DIR_IN; (dir) <=3D SND_SOC_DAPM_DIR_OU=
T; \
>                (dir)++)

... and if we look at how it is used in gbaudio_dapm_free_widget() we
can see how the macro is used as a shortcut, or template, for writing
a for-loop:

>>>
static void gbaudio_dapm_free_widget(struct snd_soc_dapm_widget *w)
{

  /* ... snip ... */

  gbaudio_dapm_for_each_direction(dir) {
    snd_soc_dapm_widget_for_each_path_safe(w, dir, p, next_p)
    gbaudio_dapm_free_path(p);
  }

  /* ... snip ... */

}
>>>

If we expand this macro we can see how it would behave as a normal for-loop=
:

>>>
  for (dir =3D SND_SOC_DAPM_DIR_IN; dir <=3D SND_SOC_DAPM_DIR_OUT; dir++) {
    snd_soc_dapm_widget_for_each_path_safe(w, dir, p, next_p)
    gbaudio_dapm_free_path(p);
  }
>>>

However, if we wrap the macro in a do-while loop this
shortcut/template falls apart as the for-loop no longer works.  As an
exercise, you can do the substitution manually in the code and see
what it looks like; this is exactly what the preprocessor does, so
when in doubt you can always do this to double check your macro code.
While looking at the expanded macro, I think you'll also find that the
for-loop's initializer block is not handled properly; it's not as
serious a bug in that it likely won't be flagged by checkpatch.pl or
the compiler, but it might result in bad behaviors when running and
will likely be difficult to debug!

I hope this was helpful, but if you have any questions about what I've
written above don't hesitate to ask.  Good luck!

-Paul

[1] Not too long ago the 80 character line limit was relaxed to 100
characters, but there are still some subsystem maintainers that still
enforce an 80 character limit (full disclosure: I'm one of them).
When in doubt, stick to 80 characters unless you have previous
experience with the subsystem.

--=20
paul-moore.com
