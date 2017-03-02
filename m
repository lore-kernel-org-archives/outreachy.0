X-GM-THRID: 6392925539112321024
X-Received: by 10.46.33.82 with SMTP id h79mr2278401ljh.7.1488480538994;
        Thu, 02 Mar 2017 10:48:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.28 with SMTP id u28ls771768ljd.10.gmail; Thu, 02 Mar
 2017 10:48:58 -0800 (PST)
X-Received: by 10.46.20.72 with SMTP id 8mr2381522lju.19.1488480538310;
        Thu, 02 Mar 2017 10:48:58 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id i76si1810722wmh.1.2017.03.02.10.48.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:48:58 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id y193so5132297lfd.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:48:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=oBEYE2Y5MYrdSBHhjGiVWxUY/JN+6hWIkqFoAOLFCro=;
        b=pw2GcEEJYivUvdyImPo3dfIeE47GqGtk6ZV5lhUSQroGLz7o87FM09EgRg1IBYu3uQ
         NbKW6SAuUFxbVm3oUu4V6GdcV3p/3K0pxaM97VeiS3OMwtPVGNBbrIbFsyBb97hnpJER
         chvkLje5zqOUKkdwZCmTjebTmxJtvQcAx1kZxAD+oifzi4FqsHkeFHL40e9d9y7FxRw3
         Z5BlA5/k7vNI2nbZWyqjeVLnKV19eNSCGpaz7mjyu5qiV1ZxaiAgdOYTYhnqsZkDTd6p
         pC4DsEhaN4WndHrhSO2eBrBY16sWHL5cSinF98Trj+CkTdoRGj2eywx+Rwdk9oknKxrf
         z0+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=oBEYE2Y5MYrdSBHhjGiVWxUY/JN+6hWIkqFoAOLFCro=;
        b=KIeJZBEJTWiqyAi7/TRNeUI33hKgZaBkd8x+ppweMKgYiYkS76Zx9Kd5e+hK3Z7wPm
         3rU/GH7JscTIn+ogaMQfLk94OspXMSKvtgV3VRF9M26i3JrWVcUWf8zdprcrGQqMR7sw
         BikzMteZPOdM+MRkDLiy/Xlm/hJ1AxiPDIlmoexibgALtGCDHcdPDNh3ToR0iUuJLyC0
         WrSO0y4Ys29vSmrTdniNTlnfyiu8bPc7S3UAXv8jYWLmHDz/d5OJMawLKOoNy3a4Fl3Q
         P/7AKfMSbjcDt6zC9wcegRofRYle1Gh5aAXSSV2taO9DmbkTL4PW48FrKbozYmx5HscW
         O4lQ==
X-Gm-Message-State: AMke39lphXE+PPnUfUnO1A5EgLKml+JtLdVRRE70+Rha5YzVT4xlNgUQ5jmAaY8DA222tTeTNfkKUFVZ+5GFfQ==
X-Received: by 10.46.15.9 with SMTP id 9mr5609391ljp.108.1488480538067; Thu,
 02 Mar 2017 10:48:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.151.142 with HTTP; Thu, 2 Mar 2017 10:48:57 -0800 (PST)
In-Reply-To: <20170302165126.GB2182@d830.WORKGROUP>
References: <20170302153600.13803-1-arushisinghal19971997@gmail.com> <20170302165126.GB2182@d830.WORKGROUP>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Fri, 3 Mar 2017 00:18:57 +0530
Message-ID: <CA+XqjF-Y2Ywo-D8MV+feqvu87kf7bxf1gV=22D_dTtX=o9-eoA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: speakup: Placed Logical
 on the previous line
To: Alison Schofield <amsfield22@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>, Chris Brannon <chris@the-brannons.com>, 
	outreachy-kernel@googlegroups.com, Kirk Reiser <kirk@reisers.ca>, 
	Samuel Thibault <samuel.thibault@ens-lyon.org>, Greg KH <gregkh@linuxfoundation.org>, 
	speakup@linux-speakup.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org
Content-Type: multipart/alternative; boundary=f4030436012cba19d10549c3e169

--f4030436012cba19d10549c3e169
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 2, 2017 at 10:21 PM, Alison Schofield <amsfield22@gmail.com>
wrote:

> On Thu, Mar 02, 2017 at 09:05:57PM +0530, Arushi Singhal wrote:
> > Placed Logical continuations on the previous line as reported by
> > checkpatch.pl.
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
>
> Hi Arushi,
> I'm not seeing the patch cover letter for this one.  That would be
> your [PATCH 0/4] and would come first and then 1 through 4 follow
> threaded as your've done.
>
> Stating in imperative might look like this:
>
> place logical continuation on previous line
> insert spaces around operator
> use tabs for indentation
> align open parenthesis
>
> I didn't look into the changes themselves.
>
> alisons
>
> Thanks Alisons
I will attach the cover letter and will send again

>
>
>
>
>
> > ---
> >  drivers/staging/speakup/main.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/
> main.c
> > index a12ec2b061fe..25acebb9311f 100644
> > --- a/drivers/staging/speakup/main.c
> > +++ b/drivers/staging/speakup/main.c
> > @@ -2144,10 +2144,10 @@ speakup_key(struct vc_data *vc, int shift_state,
> int keycode, u_short keysym,
> >       if (up_flag || spk_killed || type == KT_SHIFT)
> >               goto out;
> >       spk_shut_up &= 0xfe;
> > -     kh = (value == KVAL(K_DOWN))
> > -         || (value == KVAL(K_UP))
> > -         || (value == KVAL(K_LEFT))
> > -         || (value == KVAL(K_RIGHT));
> > +     kh = (value == KVAL(K_DOWN)) ||
> > +           (value == KVAL(K_UP))  ||
> > +           (value == KVAL(K_LEFT)) ||
> > +           (value == KVAL(K_RIGHT));
> >       if ((cursor_track != read_all_mode) || !kh)
> >               if (!spk_no_intr)
> >                       spk_do_flush();
> > --
> > 2.11.0
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20170302153600.13803-1-
> arushisinghal19971997%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
>

--f4030436012cba19d10549c3e169
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Mar 2, 2017 at 10:21 PM, Alison Schofield <span dir=3D"ltr">&lt=
;<a href=3D"mailto:amsfield22@gmail.com" target=3D"_blank">amsfield22@gmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D=
"">On Thu, Mar 02, 2017 at 09:05:57PM +0530, Arushi Singhal wrote:<br>
&gt; Placed Logical continuations on the previous line as reported by<br>
&gt; <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_blank">=
checkpatch.pl</a>.<br>
&gt;<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
<br>
</span>Hi Arushi,<br>
I&#39;m not seeing the patch cover letter for this one.=C2=A0 That would be=
<br>
your [PATCH 0/4] and would come first and then 1 through 4 follow<br>
threaded as your&#39;ve done.<br>
<br>
Stating in imperative might look like this:<br>
<br>
place logical continuation on previous line<br>
insert spaces around operator<br>
use tabs for indentation<br>
align open parenthesis<br>
<br>
I didn&#39;t look into the changes themselves.<br>
<br>
alisons<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div>T=
hanks Alisons<br></div><div>I will attach the cover letter and will send ag=
ain <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div cla=
ss=3D"h5">
<br>
<br>
<br>
<br>
<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/speakup/main.c | 8 ++++----<br>
&gt;=C2=A0 1 file changed, 4 insertions(+), 4 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/speakup/<wbr>main.c b/drivers/staging/spe=
akup/<wbr>main.c<br>
&gt; index a12ec2b061fe..25acebb9311f 100644<br>
&gt; --- a/drivers/staging/speakup/<wbr>main.c<br>
&gt; +++ b/drivers/staging/speakup/<wbr>main.c<br>
&gt; @@ -2144,10 +2144,10 @@ speakup_key(struct vc_data *vc, int shift_stat=
e, int keycode, u_short keysym,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (up_flag || spk_killed || type =3D=3D KT_=
SHIFT)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spk_shut_up &amp;=3D 0xfe;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0kh =3D (value =3D=3D KVAL(K_DOWN))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|| (value =3D=3D KVAL(K_UP))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|| (value =3D=3D KVAL(K_LEFT))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|| (value =3D=3D KVAL(K_RIGHT));<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0kh =3D (value =3D=3D KVAL(K_DOWN)) ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(value =3D=3D KVAL(K_UP))=C2=
=A0 ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(value =3D=3D KVAL(K_LEFT)) =
||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(value =3D=3D KVAL(K_RIGHT))=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if ((cursor_track !=3D read_all_mode) || !kh=
)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!spk_no_intr=
)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0spk_do_flush();<br>
&gt; --<br>
&gt; 2.11.0<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20170302153600.13803-1-arushisinghal199719=
97%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.=
com/d/<wbr>msgid/outreachy-kernel/<wbr>20170302153600.13803-1-<wbr>arushisi=
nghal19971997%40gmail.<wbr>com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
</font></span></blockquote></div><br></div></div>

--f4030436012cba19d10549c3e169--

