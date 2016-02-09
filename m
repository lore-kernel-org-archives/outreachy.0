X-GM-THRID: 6249299693524746240
X-Received: by 10.182.24.199 with SMTP id w7mr32260863obf.48.1455032461571;
        Tue, 09 Feb 2016 07:41:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.22 with SMTP id f22ls770128iod.62.gmail; Tue, 09 Feb
 2016 07:41:01 -0800 (PST)
X-Received: by 10.50.176.231 with SMTP id cl7mr4739868igc.0.1455032460978;
        Tue, 09 Feb 2016 07:41:00 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-oi0-x242.google.com (mail-oi0-x242.google.com. [2607:f8b0:4003:c06::242])
        by gmr-mx.google.com with ESMTPS id hy4si183403igb.2.2016.02.09.07.41.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:41:00 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c06::242 as permitted sender) client-ip=2607:f8b0:4003:c06::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c06::242 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x242.google.com with SMTP id y78so1036544oif.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 07:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=WWPMvVY1MCoEVjavYupgeo9yP58Jgh3IIenUb7VrM5Q=;
        b=ghmsaRnK+zNNy4rzZOzSDIb7KUjnQq03EilUtmEAV+zu/jphwpvGPRGKn+r3j12+18
         N1ktBfa6UTePDYtwoP9sRxRfCrbtOtll7DmAqXZcL27r4IKHjVcT6ERFjOWfm2e+aBvh
         mxbWL+tBQz7F3U81J5u3YTzCigMMLm21vZp51R3F/GHA4Uson93C2zdzILi8TInw6FuQ
         vAoPnW6OV+zqk7Xye7SEnzjRujKZhFeacWwZ8SHHmP5tkx/9KWDOjociINaLrXvPB2dw
         TxVVGV834I6G06YR55eM9J4q6u0P4XzNcyx1JOfwmNFo43KSBSVm4YyiA+P/0L5xNYBG
         AlXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=WWPMvVY1MCoEVjavYupgeo9yP58Jgh3IIenUb7VrM5Q=;
        b=VuGGfzSrAOGMDSADLees8tIjTJAFPSN/xNr/0nWvLJOZK67AcPEwF+57hbwBeQ9kbu
         +JeWamFAOlY5lF0c+NiXxmOD+2X81jx2AP2c7uVrCHSR30L13emjxqXLcl7xuOihFmtr
         70opw1BqKOiTqtGTmBy/eoLmdJWX+tHeOc+hInXoyOASZGP/bvQLlfgoZwllI3+tX8Il
         lXPVRAdal7zeO4dWfs2p4JWH9M7k7jSftXFOhdS4mEXn4U7KFIFHCLH+GWHC0jBH3WnQ
         lB3SANcp1+UvMl/PC5w81YplF+g/NjxC3ZNNemF9HSSpzIpTQBD19vJEbv6zzzEy+KDG
         fmrg==
X-Gm-Message-State: AG10YOQfQau2r1clnfrKP9uyHGxD9aaHDwbbYuLG+vKjP0JBl+J1sdWyioviRr0Fko1b9TBjhWz7C6syadShfA==
MIME-Version: 1.0
X-Received: by 10.202.102.28 with SMTP id a28mr4094786oic.130.1455032460804;
 Tue, 09 Feb 2016 07:41:00 -0800 (PST)
Received: by 10.202.170.195 with HTTP; Tue, 9 Feb 2016 07:41:00 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602091622220.2578@hadrien>
References: <20160209201046.GA6794@janani-Inspiron-3521>
	<alpine.DEB.2.10.1602091622220.2578@hadrien>
Date: Tue, 9 Feb 2016 10:41:00 -0500
Message-ID: <CANnt6XnH0s-XfQj38bDg2AieeTy4dBoY7mgW_q=PoAb5tRw9ow@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rdma: Use kcalloc instead
 of kzalloc
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11408e06f68a4f052b5824b6

--001a11408e06f68a4f052b5824b6
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 9, 2016 at 10:23 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Tue, 9 Feb 2016, Janani Ravichandran wrote:
>
> > Use kcalloc rather than kzalloc when multiplied with size to prevent
> > integer overflows. This change also makes code nicer to read.
> >
> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> > ---
> > Changes since v1:
> >  * Removed unneeded parentheses around kzalloc's first parameter
>
> You don't have to send a v3 for this, but it would be nicer to put a blank
> line between this comment and the diffstat information.
>
> I wonder though if GFP_KERNEL would now fit on the same line with the
> rest?
>
It actually does, Julia, the statement ends at column 79 if when I fit
GFP_KERNEL on the same line. Do I make this change and send a v3?

>
> julia
>
> >  drivers/staging/rdma/hfi1/efivar.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rdma/hfi1/efivar.c
> b/drivers/staging/rdma/hfi1/efivar.c
> > index feef163..b8711f3 100644
> > --- a/drivers/staging/rdma/hfi1/efivar.c
> > +++ b/drivers/staging/rdma/hfi1/efivar.c
> > @@ -83,7 +83,7 @@ static int read_efi_var(const char *name, unsigned
> long *size,
> >       if (!efi_enabled(EFI_RUNTIME_SERVICES))
> >               return -EOPNOTSUPP;
> >
> > -     uni_name = kcalloc((strlen(name) + 1), sizeof(efi_char16_t),
> > +     uni_name = kcalloc(strlen(name) + 1, sizeof(efi_char16_t),
> >                          GFP_KERNEL);
> >       temp_buffer = kzalloc(EFI_DATA_SIZE, GFP_KERNEL);
> >
> > --
> > 2.5.0
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20160209201046.GA6794%40janani-Inspiron-3521
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a11408e06f68a4f052b5824b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Feb 9, 2016 at 10:23 AM, Julia Lawall <span dir=3D"ltr">&lt;<a =
href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">O=
n Tue, 9 Feb 2016, Janani Ravichandran wrote:<br>
<br>
&gt; Use kcalloc rather than kzalloc when multiplied with size to prevent<b=
r>
&gt; integer overflows. This change also makes code nicer to read.<br>
&gt;<br>
&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchnd=
rn@gmail.com">janani.rvchndrn@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; Changes since v1:<br>
&gt;=C2=A0 * Removed unneeded parentheses around kzalloc&#39;s first parame=
ter<br>
<br>
</span>You don&#39;t have to send a v3 for this, but it would be nicer to p=
ut a blank<br>
line between this comment and the diffstat information.<br>
<br>
I wonder though if GFP_KERNEL would now fit on the same line with the<br>
rest?<br></blockquote><div>It actually does, Julia, the statement ends at c=
olumn 79 if when I fit <br></div><div>GFP_KERNEL on the same line. Do I mak=
e this change and send a v3? <br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;=C2=A0 drivers/staging/rdma/hfi1/efivar.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rdma/hfi1/efivar.c b/drivers/staging/rdma=
/hfi1/efivar.c<br>
&gt; index feef163..b8711f3 100644<br>
&gt; --- a/drivers/staging/rdma/hfi1/efivar.c<br>
&gt; +++ b/drivers/staging/rdma/hfi1/efivar.c<br>
&gt; @@ -83,7 +83,7 @@ static int read_efi_var(const char *name, unsigned l=
ong *size,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!efi_enabled(EFI_RUNTIME_SERVICES))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EOPNOTSU=
PP;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0uni_name =3D kcalloc((strlen(name) + 1), sizeof(e=
fi_char16_t),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0uni_name =3D kcalloc(strlen(name) + 1, sizeof(efi=
_char16_t),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 GFP_KERNEL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0temp_buffer =3D kzalloc(EFI_DATA_SIZE, GFP_K=
ERNEL);<br>
&gt;<br>
&gt; --<br>
&gt; 2.5.0<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20160209201046.GA6794%40janani-Inspiron-35=
21" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/=
outreachy-kernel/20160209201046.GA6794%40janani-Inspiron-3521</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a11408e06f68a4f052b5824b6--

