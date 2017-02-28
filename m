X-GM-THRID: 6392026082663464960
X-Received: by 10.129.41.84 with SMTP id p81mr275435ywp.36.1488264560099;
        Mon, 27 Feb 2017 22:49:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.105 with SMTP id r38ls341775otd.15.gmail; Mon, 27 Feb
 2017 22:49:19 -0800 (PST)
X-Received: by 10.237.60.12 with SMTP id t12mr220832qte.38.1488264559697;
        Mon, 27 Feb 2017 22:49:19 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id g205si1959598ita.2.2017.02.27.22.49.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 22:49:19 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id 203so619007ith.2
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 22:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=0dR2OFegLJaA/Iay4Z0dQar5d5c1QJgwc1lh/JRrcAo=;
        b=CIVl/rrsruLvwkAwXCZnLXXvbRXHUcvVTgJjCNt8W8lCamW9vnGFUkuAqePVPVWQ4w
         6DJ8Ly6qP0dJUs22rDw44CkYcIS9uYLwnqY7VDADUKNJF87qMMCTHtwb+u+NGTugOrGF
         Rc2NrQioaf8z6I4PXNW7w/j1kJbYg4iNLH0xHOZrmZgU3kikLlxnzcZjmlnnETdE/OOU
         CAoHUoaTTl127AOVbqqsumiQRGJZAJLGYiXCNLJiJa3rxhthmIv4CHRauUI2rUEcprxJ
         46SGEg/lppK2QJO3EYqAaim/H26sXXhOmaI2ZbXnU4csIRKRsOagNg7qdv0bDFcWJ592
         6b5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=0dR2OFegLJaA/Iay4Z0dQar5d5c1QJgwc1lh/JRrcAo=;
        b=c3PpOZub+YjwHV1wCmyDdM3HY7hdrSnL4vbIZr37VS68o7c/91L1CePwW5k6dmTYVA
         XZfmIRa/IAmp35UDRXpxwwLG1a9Lpu3/QptyIX8Eg+6gihbr/cec+yQOzuD4T06UvecO
         Lkjnz+tST9mOTrhL1u47KYW0ZlFy+7AtyYDPpmsF8ySr3MQRkdwilh56sSP6vVH89cs7
         SjzS5xaNsS+wL0F2aT5a2feYuyBZ/qRvcJpyUxjYpusP5flDvZhPZrqH4it0LvYvQZ72
         GoOANpCX9v/Dzx+8NfrN/Ep9z4Ch32eheKwDq14KgD6UxN32rC8BJc4PxEh+2MSjIxrd
         0Xww==
X-Gm-Message-State: AMke39k/WNXc1zMdkDPayMxaks17HN6EWTmXKrZqc2u1JOqhjQ17tXl2C5g4RnIHZ7gITxmRRiDiKtD/z5EjLA==
X-Received: by 10.36.0.130 with SMTP id 124mr18884180ita.89.1488264559418;
 Mon, 27 Feb 2017 22:49:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Mon, 27 Feb 2017 22:48:49 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702280744060.2078@hadrien>
References: <1488259405-19730-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1702280744060.2078@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 28 Feb 2017 12:18:49 +0530
Message-ID: <CAOCi2DF+Fk0NBasd6QD4mfkpEY1o4r0HAyewQVgdfMd=OAyW9w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: Replace typedef with struct
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>, 
	oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org
Content-Type: multipart/alternative; boundary=001a11402d966565bf0549919887

--001a11402d966565bf0549919887
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 12:14 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Tue, 28 Feb 2017, Gargi Sharma wrote:
>
> > As per the Linux kernel coding style guidelines, using typedef for a
> > structure type is not recommended. Hence, occurences of typedefs have
> > been removed.
>

> You have only changed the type definitions and not any uses.  Were there
> no uses?

I used grep for both the structures and did not find any uses. I also
compiled the
kernel after making these changes and it compiled without any
errors/warnings.

thanks,
gargi
>
> julia
>
> >
> > Coccinelle script:
> >
> > @r1@
> > type T;
> > @@
> >
> > typedef struct { ... } T;
> >
> > @script:python c1@
> > T2;
> > T << r1.T;
> > @@
> > coccinelle.T2=T;
> >
> > @@
> > type r1.T;
> > identifier c1.T2;
> > @@
> > -typedef
> > struct
> > + T2
> > { ... }
> > -T
> > ;
> >
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> >  drivers/staging/lustre/lustre/include/lustre_eacl.h | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lustre/include/lustre_eacl.h
b/drivers/staging/lustre/lustre/include/lustre_eacl.h
> > index 1e71a86..c198eda 100644
> > --- a/drivers/staging/lustre/lustre/include/lustre_eacl.h
> > +++ b/drivers/staging/lustre/lustre/include/lustre_eacl.h
> > @@ -49,17 +49,17 @@
> >  #include <linux/fs.h>
> >  #include <linux/posix_acl_xattr.h>
> >
> > -typedef struct {
> > +struct ext_acl_xattr_entry {
> >       __u16              e_tag;
> >       __u16              e_perm;
> >       __u32              e_id;
> >       __u32              e_stat;
> > -} ext_acl_xattr_entry;
> > +};
> >
> > -typedef struct {
> > -     __u32              a_count;
> > -     ext_acl_xattr_entry     a_entries[0];
> > -} ext_acl_xattr_header;
> > +struct ext_acl_xattr_header {
> > +     __u32 a_count;
> > +     struct ext_acl_xattr_entry a_entries[0];
> > +};
> >
> >  #define CFS_ACL_XATTR_SIZE(count, prefix) \
> >       (sizeof(prefix ## _header) + (count) * sizeof(prefix ## _entry))
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
https://groups.google.com/d/msgid/outreachy-kernel/1488259405-19730-1-git-send-email-gs051095%40gmail.com
.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups
"outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1702280744060.2078%40hadrien
.
> For more options, visit https://groups.google.com/d/optout.

--001a11402d966565bf0549919887
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tue, Feb 28, 2017 at 12:14 PM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>&gt=
;<br>&gt;<br>&gt;<br>&gt; On Tue, 28 Feb 2017, Gargi Sharma wrote:<br>&gt;<=
br>&gt; &gt; As per the Linux kernel coding style guidelines, using typedef=
 for a<br>&gt; &gt; structure type is not recommended. Hence, occurences of=
 typedefs have<br>&gt; &gt; been removed.<br>&gt;<div><br>&gt; You have onl=
y changed the type definitions and not any uses.=C2=A0 Were there<br>&gt; n=
o uses?<div><br></div><div>I used grep for both the structures and did not =
find any uses. I also compiled the</div><div>kernel after making these chan=
ges and it compiled without any errors/warnings.</div><div><br></div><div>t=
hanks,</div><div>gargi<br>&gt;<br>&gt; julia<br>&gt;<br>&gt; &gt;<br>&gt; &=
gt; Coccinelle script:<br>&gt; &gt;<br>&gt; &gt; @r1@<br>&gt; &gt; type T;<=
br>&gt; &gt; @@<br>&gt; &gt;<br>&gt; &gt; typedef struct { ... } T;<br>&gt;=
 &gt;<br>&gt; &gt; @script:python c1@<br>&gt; &gt; T2;<br>&gt; &gt; T &lt;&=
lt; r1.T;<br>&gt; &gt; @@<br>&gt; &gt; coccinelle.T2=3DT;<br>&gt; &gt;<br>&=
gt; &gt; @@<br>&gt; &gt; type r1.T;<br>&gt; &gt; identifier c1.T2;<br>&gt; =
&gt; @@<br>&gt; &gt; -typedef<br>&gt; &gt; struct<br>&gt; &gt; + T2<br>&gt;=
 &gt; { ... }<br>&gt; &gt; -T<br>&gt; &gt; ;<br>&gt; &gt;<br>&gt; &gt; Sign=
ed-off-by: Gargi Sharma &lt;<a href=3D"mailto:gs051095@gmail.com">gs051095@=
gmail.com</a>&gt;<br>&gt; &gt; ---<br>&gt; &gt; =C2=A0drivers/staging/lustr=
e/lustre/include/lustre_eacl.h | 12 ++++++------<br>&gt; &gt; =C2=A01 file =
changed, 6 insertions(+), 6 deletions(-)<br>&gt; &gt;<br>&gt; &gt; diff --g=
it a/drivers/staging/lustre/lustre/include/lustre_eacl.h b/drivers/staging/=
lustre/lustre/include/lustre_eacl.h<br>&gt; &gt; index 1e71a86..c198eda 100=
644<br>&gt; &gt; --- a/drivers/staging/lustre/lustre/include/lustre_eacl.h<=
br>&gt; &gt; +++ b/drivers/staging/lustre/lustre/include/lustre_eacl.h<br>&=
gt; &gt; @@ -49,17 +49,17 @@<br>&gt; &gt; =C2=A0#include &lt;linux/fs.h&gt;=
<br>&gt; &gt; =C2=A0#include &lt;linux/posix_acl_xattr.h&gt;<br>&gt; &gt;<b=
r>&gt; &gt; -typedef struct {<br>&gt; &gt; +struct ext_acl_xattr_entry {<br=
>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 __u16 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0e_tag;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 __u16 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0e_perm;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0=
 __u32 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0e_id;<br>&gt; &gt; =
=C2=A0 =C2=A0 =C2=A0 __u32 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
e_stat;<br>&gt; &gt; -} ext_acl_xattr_entry;<br>&gt; &gt; +};<br>&gt; &gt;<=
br>&gt; &gt; -typedef struct {<br>&gt; &gt; - =C2=A0 =C2=A0 __u32 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0a_count;<br>&gt; &gt; - =C2=A0 =C2=
=A0 ext_acl_xattr_entry =C2=A0 =C2=A0 a_entries[0];<br>&gt; &gt; -} ext_acl=
_xattr_header;<br>&gt; &gt; +struct ext_acl_xattr_header {<br>&gt; &gt; + =
=C2=A0 =C2=A0 __u32 a_count;<br>&gt; &gt; + =C2=A0 =C2=A0 struct ext_acl_xa=
ttr_entry a_entries[0];<br>&gt; &gt; +};<br>&gt; &gt;<br>&gt; &gt; =C2=A0#d=
efine CFS_ACL_XATTR_SIZE(count, prefix) \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0=
 (sizeof(prefix ## _header) + (count) * sizeof(prefix ## _entry))<br>&gt; &=
gt; --<br>&gt; &gt; 2.7.4<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; You rec=
eived this message because you are subscribed to the Google Groups &quot;ou=
treachy-kernel&quot; group.<br>&gt; &gt; To unsubscribe from this group and=
 stop receiving emails from it, send an email to <a href=3D"mailto:outreach=
y-kernel%2Bunsubscribe@googlegroups.com">outreachy-kernel+unsubscribe@googl=
egroups.com</a>.<br>&gt; &gt; To post to this group, send email to <a href=
=3D"mailto:outreachy-kernel@googlegroups.com">outreachy-kernel@googlegroups=
.com</a>.<br>&gt; &gt; To view this discussion on the web visit <a href=3D"=
https://groups.google.com/d/msgid/outreachy-kernel/1488259405-19730-1-git-s=
end-email-gs051095%40gmail.com">https://groups.google.com/d/msgid/outreachy=
-kernel/1488259405-19730-1-git-send-email-gs051095%40gmail.com</a>.<br>&gt;=
 &gt; For more options, visit <a href=3D"https://groups.google.com/d/optout=
">https://groups.google.com/d/optout</a>.<br>&gt; &gt;<br>&gt;<br>&gt; --<b=
r>&gt; You received this message because you are subscribed to the Google G=
roups &quot;outreachy-kernel&quot; group.<br>&gt; To unsubscribe from this =
group and stop receiving emails from it, send an email to <a href=3D"mailto=
:outreachy-kernel%2Bunsubscribe@googlegroups.com">outreachy-kernel+unsubscr=
ibe@googlegroups.com</a>.<br>&gt; To post to this group, send email to <a h=
ref=3D"mailto:outreachy-kernel@googlegroups.com">outreachy-kernel@googlegro=
ups.com</a>.<br>&gt; To view this discussion on the web visit <a href=3D"ht=
tps://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1702280744=
060.2078%40hadrien">https://groups.google.com/d/msgid/outreachy-kernel/alpi=
ne.DEB.2.20.1702280744060.2078%40hadrien</a>.<br>&gt; For more options, vis=
it <a href=3D"https://groups.google.com/d/optout">https://groups.google.com=
/d/optout</a>.</div></div></div>

--001a11402d966565bf0549919887--

