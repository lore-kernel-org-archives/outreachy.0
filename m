X-GM-THRID: 6392026082663464960
X-Received: by 10.129.72.200 with SMTP id v191mr325617ywa.150.1488268290915;
        Mon, 27 Feb 2017 23:51:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.200 with SMTP id w8ls476402otw.23.gmail; Mon, 27 Feb
 2017 23:51:30 -0800 (PST)
X-Received: by 10.31.164.141 with SMTP id n135mr179507vke.26.1488268290475;
        Mon, 27 Feb 2017 23:51:30 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id d20si1780650itc.1.2017.02.27.23.51.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 23:51:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id r141so741419ita.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 23:51:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=JgA5nI/sw9L5Dhh+he1bPCkxtxCqxcme9Kmt5PmshQE=;
        b=u21TTrUihz9GvvVx8mL6ZM5QgUyInhlCvKkuN/tjvO+tiwL2Ke0gzPrIKyeMHn/KbE
         x9YFihxxBmxeWICkuJQnaFkQCNiV884lRLCT7bDByt7gdc6O1eYPUKOZsxT0avYjQJRe
         Q9wvaj0NXUU6N49X71bnt+IO2MhIQLVdrRr2+i+dCNxl35VrDl+yZB50oprb2gD/O/0V
         xvb8vkgy5G4y+1oNLpppekHWTehoG/e6CKvnWrgQQNaGHDGoNrG4YPJOYgGsU7gnYPnu
         NEyXTbkCZK7Jr2u60Z+wTS5gSEHpJA4LX9XTPUPbpUvW34eLeaD8W6VOfR8GPj8zwbnS
         k7lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=JgA5nI/sw9L5Dhh+he1bPCkxtxCqxcme9Kmt5PmshQE=;
        b=NHl28S8ceGlZYJHvymLzRB3sm+/fqpP5H3I30DwUGjnsJxs1fUKb8XMiqkKVN5jown
         oR9yNm2d0QZzBGrONhpURQw6xIXPBALsQ3UZ850KpU1Qu+vYwSMUkQ49vd/AW3stOv5F
         QJZ4B7JPevE1TMjkr5U9PgKJF8s0908Q3diRcfobkVQgER1+RvlFMElxzV0xxAjziYa7
         YWSTbMr/1ZoRSc8lbToqG5ULRlzd0r3p0mJPQE+0yDGad2J+6/nDIptzqLvQ8UbdL4Jr
         HtozqqIhHVOkgionD0fDfRcTYK4f9Maziv4wZTK0NwIKFfOVgFlTpeyHCVrpLBVnt62m
         hr/Q==
X-Gm-Message-State: AMke39lS4jjUDkW0LsWM9qjeQm+MYnRBizm9BT3ew7JKx3MonKoGltVF4G4lcvbQCQ4AKYJlSDq4oL26ZGikcQ==
X-Received: by 10.36.17.7 with SMTP id 7mr1309078itf.113.1488268290236; Mon,
 27 Feb 2017 23:51:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Mon, 27 Feb 2017 23:50:59 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702280805150.2078@hadrien>
References: <1488265307-24641-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1702280805150.2078@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 28 Feb 2017 13:20:59 +0530
Message-ID: <CAOCi2DEvajT69tumvzBPYQjBBOkVB49FO+paGJSGasY+BZSeyg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: Replace typedef
 with struct
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>, 
	oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org
Content-Type: multipart/alternative; boundary=001a11442fb2c5290f0549927665

--001a11442fb2c5290f0549927665
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 12:36 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Tue, 28 Feb 2017, Gargi Sharma wrote:
>
> > As per the Linux kernel coding style guidelines, using typedef for a
> > structure type is not recommended. Hence, occurences of typedefs have
> > been removed. To find the occurences of the structures grep was used
> > and no uses were found.
>
> Actually, I'm not sure to understand.  No uses of the structures were
> found at all?  If so, they should just be dropped.  Or are there uses, but
> they already have the word "struct" in front of them?

The first structure "ext_acl_xattr_entry" is used as one of the fields in
the
other structure "ext_acl_xattr_header". I could not find any uses of the
structure
"ext_acl_xattr_header" inside the staging directory. Should I drop these two
structures then?

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
> > Changes in v2:
> >       - Improved the commit message.
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
> > To view this discussion on the web visit https://groups.google.com/d/
msgid/outreachy-kernel/1488265307-24641-1-git-send-
email-gs051095%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

--001a11442fb2c5290f0549927665
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tue, Feb 28, 2017 at 12:36 PM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>=
&gt; wrote:<br>&gt;<br>&gt;<br>&gt;<br>&gt; On Tue, 28 Feb 2017, Gargi Shar=
ma wrote:<br>&gt;<br>&gt; &gt; As per the Linux kernel coding style guideli=
nes, using typedef for a<br>&gt; &gt; structure type is not recommended. He=
nce, occurences of typedefs have<br>&gt; &gt; been removed. To find the occ=
urences of the structures grep was used<br>&gt; &gt; and no uses were found=
.<br>&gt;<br>&gt; Actually, I&#39;m not sure to understand.=C2=A0 No uses o=
f the structures were<br>&gt; found at all?=C2=A0 If so, they should just b=
e dropped.=C2=A0 Or are there uses, but<br>&gt; they already have the word =
&quot;struct&quot; in front of them?<div><br></div><div>The first structure=
 &quot;<span style=3D"font-size:12.8px">ext_acl_xattr_entry&quot; is used a=
s one of the fields in the=C2=A0</span></div><div><span style=3D"font-size:=
12.8px">other structure &quot;</span><span style=3D"font-size:12.8px">ext_a=
cl_xattr_header</span><span style=3D"font-size:12.8px">&quot;. I could not =
find any uses of the structure</span></div><div><span style=3D"font-size:12=
.8px">&quot;</span><span style=3D"font-size:12.8px">ext_acl_xattr_header&qu=
ot; inside the staging directory. Should I drop these two</span></div><div>=
<span style=3D"font-size:12.8px">structures then?</span></div><div><br></di=
v><div>gargi<br>&gt;<br>&gt; julia<br>&gt;<br>&gt; &gt;<br>&gt; &gt; Coccin=
elle script:<br>&gt; &gt;<br>&gt; &gt; @r1@<br>&gt; &gt; type T;<br>&gt; &g=
t; @@<br>&gt; &gt;<br>&gt; &gt; typedef struct { ... } T;<br>&gt; &gt;<br>&=
gt; &gt; @script:python c1@<br>&gt; &gt; T2;<br>&gt; &gt; T &lt;&lt; r1.T;<=
br>&gt; &gt; @@<br>&gt; &gt; coccinelle.T2=3DT;<br>&gt; &gt;<br>&gt; &gt; @=
@<br>&gt; &gt; type r1.T;<br>&gt; &gt; identifier c1.T2;<br>&gt; &gt; @@<br=
>&gt; &gt; -typedef<br>&gt; &gt; struct<br>&gt; &gt; + T2<br>&gt; &gt; { ..=
. }<br>&gt; &gt; -T<br>&gt; &gt; ;<br>&gt; &gt;<br>&gt; &gt; Signed-off-by:=
 Gargi Sharma &lt;<a href=3D"mailto:gs051095@gmail.com" target=3D"_blank">g=
s051095@gmail.com</a>&gt;<br>&gt; &gt; ---<br>&gt; &gt; Changes in v2:<br>&=
gt; &gt; =C2=A0 =C2=A0 =C2=A0 - Improved the commit message.<br>&gt; &gt; -=
--<br>&gt; &gt; =C2=A0drivers/staging/lustre/<wbr>lustre/include/lustre_eac=
l.h | 12 ++++++------<br>&gt; &gt; =C2=A01 file changed, 6 insertions(+), 6=
 deletions(-)<br>&gt; &gt;<br>&gt; &gt; diff --git a/drivers/staging/lustre=
/<wbr>lustre/include/lustre_eacl.h b/drivers/staging/lustre/<wbr>lustre/inc=
lude/lustre_eacl.h<br>&gt; &gt; index 1e71a86..c198eda 100644<br>&gt; &gt; =
--- a/drivers/staging/lustre/<wbr>lustre/include/lustre_eacl.h<br>&gt; &gt;=
 +++ b/drivers/staging/lustre/<wbr>lustre/include/lustre_eacl.h<br>&gt; &gt=
; @@ -49,17 +49,17 @@<br>&gt; &gt; =C2=A0#include &lt;linux/fs.h&gt;<br>&gt=
; &gt; =C2=A0#include &lt;linux/posix_acl_xattr.h&gt;<br>&gt; &gt;<br>&gt; =
&gt; -typedef struct {<br>&gt; &gt; +struct ext_acl_xattr_entry {<br>&gt; &=
gt; =C2=A0 =C2=A0 =C2=A0 __u16 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0e_tag;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 __u16 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0e_perm;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 __u32 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0e_id;<br>&gt; &gt; =C2=A0 =
=C2=A0 =C2=A0 __u32 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0e_stat;=
<br>&gt; &gt; -} ext_acl_xattr_entry;<br>&gt; &gt; +};<br>&gt; &gt;<br>&gt;=
 &gt; -typedef struct {<br>&gt; &gt; - =C2=A0 =C2=A0 __u32 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0a_count;<br>&gt; &gt; - =C2=A0 =C2=A0 ext=
_acl_xattr_entry =C2=A0 =C2=A0 a_entries[0];<br>&gt; &gt; -} ext_acl_xattr_=
header;<br>&gt; &gt; +struct ext_acl_xattr_header {<br>&gt; &gt; + =C2=A0 =
=C2=A0 __u32 a_count;<br>&gt; &gt; + =C2=A0 =C2=A0 struct ext_acl_xattr_ent=
ry a_entries[0];<br>&gt; &gt; +};<br>&gt; &gt;<br>&gt; &gt; =C2=A0#define C=
FS_ACL_XATTR_SIZE(count, prefix) \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 (sizeo=
f(prefix ## _header) + (count) * sizeof(prefix ## _entry))<br>&gt; &gt; --<=
br>&gt; &gt; 2.7.4<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; You received t=
his message because you are subscribed to the Google Groups &quot;outreachy=
-kernel&quot; group.<br>&gt; &gt; To unsubscribe from this group and stop r=
eceiving emails from it, send an email to <a href=3D"mailto:outreachy-kerne=
l%2Bunsubscribe@googlegroups.com" target=3D"_blank">outreachy-kernel+unsubs=
cribe@<wbr>googlegroups.com</a>.<br>&gt; &gt; To post to this group, send e=
mail to <a href=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_bla=
nk">outreachy-kernel@googlegroups.<wbr>com</a>.<br>&gt; &gt; To view this d=
iscussion on the web visit <a href=3D"https://groups.google.com/d/msgid/out=
reachy-kernel/1488265307-24641-1-git-send-email-gs051095%40gmail.com" targe=
t=3D"_blank">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>1=
488265307-24641-1-git-send-<wbr>email-gs051095%40gmail.com</a>.<br>&gt; &gt=
; For more options, visit <a href=3D"https://groups.google.com/d/optout" ta=
rget=3D"_blank">https://groups.google.com/d/<wbr>optout</a>.<br>&gt; &gt;</=
div></div>

--001a11442fb2c5290f0549927665--

