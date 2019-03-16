X-GM-THRID: 6668976439860133888
X-Received: by 2002:a63:288:: with SMTP id 130mr3376302pgc.145.1552745005742;
        Sat, 16 Mar 2019 07:03:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:227:: with SMTP id 36ls4847124plc.8.gmail; Sat, 16
 Mar 2019 07:03:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwuJTS+OD8VsDH5akDCJSuwy44gz0qywGaUWCOfItffET+BTAbmKiZgKedeWgDOUaT7Or4C
X-Received: by 2002:a17:902:1126:: with SMTP id d35mr2934642pla.8.1552745004776;
        Sat, 16 Mar 2019 07:03:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552745004; cv=none;
        d=google.com; s=arc-20160816;
        b=TkspJ5xroMNYYlu0yz94TU2cVcwc1mIoWvk0WhYuNxhw7ZPyHktyTES1wrDhNC6XyH
         7wJ2wZ6HYYUF2mk04FxkKbNduJm3EGs97Y6/fGsIDKN/vLm8i2Qx4+G7b980UIbcOdJ/
         9TX8wKStgGywToYo+Y2dzrAOi3AiURIIfVhCaEjDYjG8ZmNJImpidQttIfFSsSVJG+br
         LhdqxXv9ct2FU7F3g2CYQhH8newDFQNwnEq2yihRNsidR0ShuIprESEmIbMbyYI1Hima
         NbgRzVrXepCqwYJ98pwyY8nj5aNMsTgry1srx3xEIXv99ec1C8UYfY8buJC1DgJJQoBe
         4cSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lnnb1pYSlnDyx2hiES8Mka+7/q0/VqYgQ1MndP/hBsA=;
        b=WPet2UX5Hl7RhUU76U4tSdEJYnOp3qI+4lPwEfW8KfCqWh751FadBYOZrj/YyLq1QX
         D8GtZ2GYN0tvaRtPLP+Ost5dMHKqGH21vCwDF2wcJbtosmpf4yxTr9EjeyVex9GGQo2X
         z+OIA2W8UFTG7e7NV+LN32Xqkg5e4eJ/trB0WB+/G0cnwKGm+2N1gGcw4AZR2m/5Lhi8
         LwyINk9nON5XV97j4I0UJ6YT/5nwbXys+9lzkwN6N2SQ1d4pFNGzi4DJAtr0ZqqZ08Nr
         37SHcAQFoWGcuLHTRz/oxsuRYTZ88WADrU8OvgA05RQpoxXzWX0WtJzfnCsRX2bynDfh
         MvWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KvIwjaJY;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id b38si188983plb.1.2019.03.16.07.03.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 07:03:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KvIwjaJY;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x333.google.com with SMTP id b3so10831001otp.4
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 07:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lnnb1pYSlnDyx2hiES8Mka+7/q0/VqYgQ1MndP/hBsA=;
        b=KvIwjaJY8Ou51UsAe9R7e58tWs/W+XYsSrhaqyllLH/jm1oS3D+qFI2v6X8SST69BO
         vO3IhQQy7kfNtHlp5wFZGlmsFFpwahboN/5PpvJPCh+VfKa2e5Ctn0amvebQS2pq+TWm
         f3KwzXpG2aYcN0jy8HTLncBPTFAqsaFAQCOlvKo2SmsxMNWSdgcb9FjvRv4+5zqqDqu7
         Cdaf6IysmxEv5YzPX50XK1qI4RY1uTgIeltLEc9+J82hGcKg8dltLn6cwRIcNZHpMWQj
         a77Ez5gsa2ow8B9RtDkf0JctI8+6T/oi5jy13Flx0kA1JSA25PtkNWUzpAvnkgvgSvX2
         Bcrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lnnb1pYSlnDyx2hiES8Mka+7/q0/VqYgQ1MndP/hBsA=;
        b=Gahz8n/16A/ujYxWM8q+a+LAw6XmfZ4hvJXEMZA9uf7RH4oc37zUY7NIsOMuDwZdzV
         jFM85BNnAEMbVZSfe2yd3EgQpTVHKrvN4CgSaGRXQtCR6u8IQ3V3cudv8Mzq4k/lcM5p
         7d5+4nxdoMmomArw8cvNN0mEViBjKC6mCKwM/kdSJN4pYGCC3ybjzQrIGkyBOZILqUH/
         dOFBveStBVroNex9IWwUdFn8Gu1XQiSxUce1DBlC9S3FESIe97GBn5MSnRBg5V5dtOSW
         MeNK35q/0M2+4NuPjX+ETEdZ4zrAvLQSGdHWONQeoIc8zg4bdX8Mva3puyhu92hwGlLW
         uh1Q==
X-Gm-Message-State: APjAAAXXkyX38hNOkqjAKMbLYJCrt3P3togH9k2fIPkjYJT47Abnz3+N
	Az4+H6v5HqQPgsmJGEoSE9sV7/8E3hH7h4IwAQU=
X-Received: by 2002:a9d:5e8d:: with SMTP id f13mr5013117otl.309.1552745003754;
 Sat, 16 Mar 2019 07:03:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190316123251.24875-1-himadri18.07@gmail.com> <alpine.DEB.2.21.1903161424100.2487@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903161424100.2487@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Sat, 16 Mar 2019 18:51:34 +0530
Message-ID: <CAPnhUpY5CXsD=uH2Y-vRYRROWBa9nMK5pZ3uC=mUJNvrp1CGfQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 0/4] staging: rtl8723bs: hal: Remove
 and modify NULL comparisons
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000006028480584369e99"

--0000000000006028480584369e99
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 16, 2019 at 6:55 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 16 Mar 2019, Himadri Pandya wrote:
>
> > - This patchset removes comparision to NULL in various files of
> > drivers/staging/rtl8723bs/hal/ .
> >
> > - The changes are broken into separate patches to keep the length of
> > each patch below/near 100 lines for convinient reviewing.
> >
> > v2:
> > - Change subject lines of patches
> > - Include a new patch to modify comparision with a constant
> >
> > Himadri Pandya (4):
> >   staging: rtl8723bs: hal: Remove comparisions to NULL
> >   staging: rtl8723bs: hal: Remove NULL comparisions
> >   staging: rtl8723bs: hal: Replace variable==NULL comparisions with
> >     !variable
>
> Sorry to be picky, but this is not the best way to make unique subjects.
> The different patches affect different files, so you can put something
> related to the affected file(s) in the subject line.  You may just want to
> make a series of one file per patch, rather than aiming for 100 lines of
> changes.
>
> julia
>

That is absolutely a better option. I will do that and send a new version.

Thank you.

- Himadri


>
> >   staging: rtl8723bs: hal: Modify comparision to keep constant at right
> >
> >  drivers/staging/rtl8723bs/hal/hal_btcoex.c     |  8 ++++----
> >  drivers/staging/rtl8723bs/hal/hal_com.c        |  8 ++++----
> >  drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 18 +++++++++---------
> >  drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c   |  8 ++++----
> >  drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c |  6 +++---
> >  5 files changed, 24 insertions(+), 24 deletions(-)
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190316123251.24875-1-himadri18.07%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903161424100.2487%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000006028480584369e99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, Mar 16, 2019 at 6:55 PM Julia=
 Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br=
>
<br>On Sat, 16 Mar 2019, Himadri Pandya wrote:<br>
<br>&gt; - This patchset removes comparision to NULL in various files of<br=
>&gt; drivers/staging/rtl8723bs/hal/ .<br>&gt;<br>&gt; - The changes are br=
oken into separate patches to keep the length of<br>&gt; each patch below/n=
ear 100 lines for convinient reviewing.<br>&gt;<br>&gt; v2:<br>&gt; - Chang=
e subject lines of patches<br>&gt; - Include a new patch to modify comparis=
ion with a constant<br>&gt;<br>&gt; Himadri Pandya (4):<br>&gt;=C2=A0 =C2=
=A0staging: rtl8723bs: hal: Remove comparisions to NULL<br>&gt;=C2=A0 =C2=
=A0staging: rtl8723bs: hal: Remove NULL comparisions<br>&gt;=C2=A0 =C2=A0st=
aging: rtl8723bs: hal: Replace variable=3D=3DNULL comparisions with<br>&gt;=
=C2=A0 =C2=A0 =C2=A0!variable<br>
<br>Sorry to be picky, but this is not the best way to make unique subjects=
.<br>The different patches affect different files, so you can put something=
<br>related to the affected file(s) in the subject line.=C2=A0 You may just=
 want to<br>make a series of one file per patch, rather than aiming for 100=
 lines of<br>changes.<br>
<br>julia<br></blockquote><div><br></div><div>That is absolutely a better o=
ption. I will do that and send a new version.</div><div><br></div><div>Than=
k you.</div><div><br></div><div>- Himadri</div><div>=C2=A0<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
<br>&gt;=C2=A0 =C2=A0staging: rtl8723bs: hal: Modify comparision to keep co=
nstant at right<br>&gt;<br>&gt;=C2=A0 drivers/staging/rtl8723bs/hal/hal_btc=
oex.c=C2=A0 =C2=A0 =C2=A0|=C2=A0 8 ++++----<br>&gt;=C2=A0 drivers/staging/r=
tl8723bs/hal/hal_com.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 8 ++++----<br>&gt=
;=C2=A0 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 18 +++++++++------=
---<br>&gt;=C2=A0 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c=C2=A0 =C2=A0=
|=C2=A0 8 ++++----<br>&gt;=C2=A0 drivers/staging/rtl8723bs/hal/rtl8723bs_xm=
it.c |=C2=A0 6 +++---<br>&gt;=C2=A0 5 files changed, 24 insertions(+), 24 d=
eletions(-)<br>&gt;<br>&gt; --<br>&gt; 2.17.1<br>&gt;<br>&gt; --<br>&gt; Yo=
u received this message because you are subscribed to the Google Groups &qu=
ot;outreachy-kernel&quot; group.<br>&gt; To unsubscribe from this group and=
 stop receiving emails from it, send an email to <a href=3D"mailto:outreach=
y-kernel%2Bunsubscribe@googlegroups.com" target=3D"_blank">outreachy-kernel=
+unsubscribe@googlegroups.com</a>.<br>&gt; To post to this group, send emai=
l to <a href=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_blank"=
>outreachy-kernel@googlegroups.com</a>.<br>&gt; To view this discussion on =
the web visit <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel=
/20190316123251.24875-1-himadri18.07%40gmail.com" rel=3D"noreferrer" target=
=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/201903161232=
51.24875-1-himadri18.07%40gmail.com</a>.<br>&gt; For more options, visit <a=
 href=3D"https://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_=
blank">https://groups.google.com/d/optout</a>.<br>&gt;<br>
<br>-- <br>You received this message because you are subscribed to the Goog=
le Groups &quot;outreachy-kernel&quot; group.<br>To unsubscribe from this g=
roup and stop receiving emails from it, send an email to <a href=3D"mailto:=
outreachy-kernel%2Bunsubscribe@googlegroups.com" target=3D"_blank">outreach=
y-kernel+unsubscribe@googlegroups.com</a>.<br>To post to this group, send e=
mail to <a href=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_bla=
nk">outreachy-kernel@googlegroups.com</a>.<br>To view this discussion on th=
e web visit <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/a=
lpine.DEB.2.21.1903161424100.2487%40hadrien" rel=3D"noreferrer" target=3D"_=
blank">https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1=
903161424100.2487%40hadrien</a>.<br>For more options, visit <a href=3D"http=
s://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blank">https:=
//groups.google.com/d/optout</a>.<br>
</blockquote></div></div>

--0000000000006028480584369e99--

