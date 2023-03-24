Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E2A5662
	for <outreachy@lists.linux.dev>; Fri, 24 Mar 2023 13:23:17 +0000 (UTC)
Received: by mail-yb1-f170.google.com with SMTP id y5so2119541ybu.3
        for <outreachy@lists.linux.dev>; Fri, 24 Mar 2023 06:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paul-moore.com; s=google; t=1679664196;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5qGaFfyK0iml9cPtq2KmQMYG/b0CHCZASBDtpll/rWs=;
        b=dOBylf3grI6q8HTv1BZBY7mVSPVoiIs8jGrriF7/VLVwu70bOmjOAwfPpDWOx0KuFE
         hGhXJyLNA+mJQDf+seakfLgov4fqLH5S5wm/g+06x2DfvEfWFqhBBt76wFxMlL4cCpIG
         sLJxF7NcxVqTDKIbi9sL6/wjTR0L6k8iPL7qqhPwygOIA/LnnshgzChpUJnKcWEyRkdF
         NO8f1ODLlzq2wN9eyOdWEUjlOuGDaApbKZisATzzQKEbmmt/0s80zrHkiqsxsN/OFlJB
         0ZZ+qZOKj8wvkhFQYldX0vwcR470SRPyib35/W1EuoF2twcUgsV6ifA6NfsQqM3iYBrt
         4SaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679664196;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5qGaFfyK0iml9cPtq2KmQMYG/b0CHCZASBDtpll/rWs=;
        b=MbSFAkBued4e7Ri0BCnStF3KXHmCyPciBi0MCphXwbkmBXBwNeGX8ktSjBFcE3Jtvm
         L5qz4emM7hdgXxHqnseJ7kCewqzcRXGMSmeXSgJlsvsACPswS12Ar0JsrVdUuj/LtkTW
         B20BIxcLapN7lq6rMkXQwxqS8Rtc/gN1bGV1/Q+ZHYjohyLZsK3P6VpJeVW7MqeXiLih
         3DJaIPb73+I27ZyrjZsafjKnJTCT0ByZu4zBLlh/6y/GRUshTczsInKz4mRpnnUX/GlA
         l6u+1xPA8QSZUcqw/5chWNgEUgqdSfpQNBJSd8wkKApz/s7YdfzDCqh0ptULYq5RP3fd
         dcaQ==
X-Gm-Message-State: AAQBX9f3kNXckRWhtsWdPjQpSIKt5AhzP9ak0PJ+J5yvKUHs4aCoeenm
	VB/N4GtgmjDuRaUgNfY60YwZgZeNk5FmR1ZlV27Jk4XOq5Y5k45a0A==
X-Google-Smtp-Source: AKy350YDqXwivEgRrLagICLgUxTWoHL7yJ+aB12p2JtAbyoxabcDlXvcQQj8qEy6vgpzt+bvrMW3JFksKowiWGszSx8=
X-Received: by 2002:a05:6902:102a:b0:b71:f49f:8d22 with SMTP id
 x10-20020a056902102a00b00b71f49f8d22mr1090061ybt.3.1679664196455; Fri, 24 Mar
 2023 06:23:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <ZBy95LDjVu8e0uNi@khadija-virtual-machine> <CAHC9VhT714u7e5-E6zyWDX-b6jvJbpDefAZQ_bq4-RQ8aLa=KA@mail.gmail.com>
 <ZB1o1yCg6voDWDEE@khadija-virtual-machine>
In-Reply-To: <ZB1o1yCg6voDWDEE@khadija-virtual-machine>
From: Paul Moore <paul@paul-moore.com>
Date: Fri, 24 Mar 2023 09:23:05 -0400
Message-ID: <CAHC9VhQ+tRobVuOn6Pa+N0JLwOX2TAM=zV8MvRcv==sfBcqixA@mail.gmail.com>
Subject: Re: CHECK: Macro argument reuse
To: Khadija Kamran <kamrankhadijadj@gmail.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 24, 2023 at 5:09=E2=80=AFAM Khadija Kamran
<kamrankhadijadj@gmail.com> wrote:
> On Thu, Mar 23, 2023 at 05:45:53PM -0400, Paul Moore wrote:
> > On Thu, Mar 23, 2023 at 5:00=E2=80=AFPM Khadija Kamran
> > <kamrankhadijadj@gmail.com> wrote:

...

> > However, line length isn't what likely caused you to start working on
> > this macro; the "Macro reuse" warning from scripts/checkpatch.pl was
> > the problem.  Looking at the original macro code, I didn't see
> > anything obviously wrong so I took a look at the checkpatch.pl tool
> > itself to see what it was looking for that caused this warning/check
> > notice.  Searching for the "Macro argument reuse" string I saw the
> > following code snippet:
> >
> > >>>
> >   my $use_cnt =3D () =3D $tmp_stmt =3D~ /\b$arg\b/g;
> >   if ($use_cnt > 1) {
> >   CHK("MACRO_ARG_REUSE",
> >       "Macro argument reuse '$arg' - possible side-effects?\n" . "$here=
ctx");
> >   }
> > >>>
> >
> > ... which basically means that anytime a macro parameter is used
> > multiple times in the macro it will cause checkpatch.pl to emit this
> > notice.  As long as we carefully review the macro to ensure it is
> > correct, we can ignore this checkpatch.pl warning.
>
> Paul,
> How can I ensure it is correct? Won't it still cause a problem if we use
> any argument with side-effect.

Julia provided a more thorough explanation, if you haven't read her
email in this thread, please do.  My advice above was to review the
macro carefully, and careful review includes examining where and how
the macro is used, as that can have a significant impact.  If you are
ever in doubt, do the macro substitution manually and I believe you
will find the problems much easier to identify.

> > While looking at the expanded macro, I think you'll also find that the
> > for-loop's initializer block is not handled properly; it's not as
> > serious a bug in that it likely won't be flagged by checkpatch.pl or
> > the compiler, but it might result in bad behaviors when running and
> > will likely be difficult to debug!
> >
>
> I am sorry, just wanted to confirm, are you talking about this:
>
> > >                 for (; (dir_) <=3D SND_SOC_DAPM_DIR_OUT; \
> > >                         (dir_)++) \

Yes, that's correct.  The original macro would have set 'dir_' to
'SND_SOC_DAPM_DIR_IN' at the start of the for-loop.

> > I hope this was helpful, but if you have any questions about what I've
> > written above don't hesitate to ask.  Good luck!
> >
>
> Thank you for taking your time out to write a detailed explanation.
> This is great help. :)

I'm happy to hear that.  I think all of us here are able to do what we
do because people took the time to explain things so we could
understand; please remember that when you are an experienced developer
and someone asks you for help ;)

Good luck!

--=20
paul-moore.com
