X-GM-THRID: 5368833900544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,df23be8587a10da9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.243.104 with SMTP id wx8mr3501728pbc.3.1425233459901;
        Sun, 01 Mar 2015 10:10:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.168 with SMTP id 37ls1492083qgp.18.gmail; Sun, 01 Mar
 2015 10:10:59 -0800 (PST)
X-Received: by 10.236.50.227 with SMTP id z63mr23730776yhb.4.1425233459648;
        Sun, 01 Mar 2015 10:10:59 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-ob0-x231.google.com (mail-ob0-x231.google.com. [2607:f8b0:4003:c01::231])
        by gmr-mx.google.com with ESMTPS id nt6si681695igb.2.2015.03.01.10.10.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 10:10:59 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:4003:c01::231 as permitted sender) client-ip=2607:f8b0:4003:c01::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:4003:c01::231 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x231.google.com with SMTP id wp18so26408010obc.8
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 10:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=/H0E4H6OyX3FsN9V76ke9RCyMYyYZaW/Xp2pmzgNKwo=;
        b=TRjTGdAnSAUvtK0/qo82F7wPkxE3mTZ+NDZWzTkyCHUz1RpOaJiX8KOCYp4T5KwPYF
         Lf7u00UCd287U+Ev2cCUb5HPYq34qXG0I2cSFqhDeD/XSf6lagEIe8KMBl7ji8fvn+NJ
         3Mbka7mYTTaqVEpCHUs1fknWDB5pX6J1YL6sn1MlqVxGNCX1tac/e1q9q8ONPwhVgGOE
         hN3RPUl0EqQ66psudZ1tikUmAPDHmySMXYuFBJEfPhycweTkSd88APbTLXCtdFuJ1+6x
         Z6qrixJ9p8YVdo178MwXyvbPxcZOcc9d/l7pVDqL5dBshimTsTw49i5514OXdJbBoIp9
         SfaA==
MIME-Version: 1.0
X-Received: by 10.182.94.204 with SMTP id de12mr4635317obb.24.1425233459470;
 Sun, 01 Mar 2015 10:10:59 -0800 (PST)
Received: by 10.202.72.69 with HTTP; Sun, 1 Mar 2015 10:10:59 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1503010630450.2545@hadrien>
References: <cover.1425211235.git.navyasri.tech@gmail.com>
	<556953cddf889e94753d5fd09201cc94dbe201f6.1425211236.git.navyasri.tech@gmail.com>
	<alpine.DEB.2.10.1503010630450.2545@hadrien>
Date: Sun, 1 Mar 2015 23:40:59 +0530
Message-ID: <CAAJLE+333g9Da-s4CsiVqTXw4oRSmVp-kV9MV1j5MvBdXgLtmA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 09/12] staging: media: Use kcalloc,
 instead of kzalloc.
From: navya sri nizamkari <navyasri.tech@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=e89a8f83964f12e8e105103e06a0

--e89a8f83964f12e8e105103e06a0
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 1, 2015 at 6:04 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> Could you redo with a much smaller commit message?  It would be reasonable
> to put the whole semantic patch in the cover letter.  For the individual
> patches, you can just put something that gives the idea, but perhaps
> something that does not avoid all false positives, like the big one tries
> to do.
>
> It could also be better to send separate series for kmalloc -> k{z,c}alloc
> and kzalloc -> kcalloc.
>
> Finally, whne you introduce kcalloc, you may end up with some unneeded
> parentheses in the argument list.  For example if the original code was
> kzalloc ((a+b) * c, ...).  You should remove the parentheses in the result
> (you can extend the semantic patch to do this).
>
> julia
>

Hi,

I'll only keep the relevant changes from the coccinelle script for every
patch and send a new one.

Thanks,
Navya.


>
> On Sun, 1 Mar 2015, Navya Sri Nizamkari wrote:
>
> > The semantic patch used for this change is:
> >
> > @@
> > type T, T2;
> > expression x;
> > identifier f,f1;
> > expression E1,E2,E3,E4;
> > statement S,S1,S2;
> > @@
> > - x = (T)kmalloc(E1,E2)
> > + x = kzalloc(E1,E2)
> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> > when != \(while(...) S\|for(...;...;...) S\)
> > (
> > if ((x!=NULL)&&...) {
> > ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
> > when != \(while(...) S1\|for(...;...;...) S1\)
> > - memset((T2)x,0,E1);
> > ...
> > } else S2
> > |
> > - memset((T2)x,0,E1);
> > )
> > @@
> > type T, T2;
> > type T1;
> > T1 *x;
> > T1 *y;
> > identifier f,f1;
> > expression E2,E3,E4;
> > statement S,S1,S2;
> > @@
> > - x = (T)kmalloc(sizeof(T1),E2)
> > + x = kzalloc(sizeof(T1),E2)
> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> > when != \(while(...) S\|for(...;...;...) S\)
> > (
> > if ((x!=NULL)&&...) {
> > ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
> > when != \(while(...) S1\|for(...;...;...) S1\)
> > - memset((T2)x,0,sizeof(*y));
> > ...
> > } else S2
> > |
> > - memset((T2)x,0,sizeof(*y));
> > )
> > @@
> > type T, T2;
> > type T1;
> > T1 *x;
> > T1 *y;
> > identifier f,f1;
> > expression E,E2,E3,E4;
> > statement S,S1,S2;
> > @@
> > - x = (T)kmalloc(sizeof(T1)*E,E2)
> > + x = kzalloc(sizeof(T1)*E,E2)
> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> > when != \(while(...) S\|for(...;...;...) S\)
> > (
> > if ((x!=NULL)&&...) {
> > ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
> > when != \(while(...) S1\|for(...;...;...) S1\)
> > - memset((T2)x,0,sizeof(*y)*E);
> > ...
> > } else S2
> > |
> > - memset((T2)x,0,sizeof(*y)*E);
> > )
> > @@
> > type T, T2;
> > type T1;
> > T1 *x;
> > T1 *y;
> > identifier f,f1;
> > expression E2,E3,E4;
> > statement S,S1,S2;
> > @@
> > - x = (T)kmalloc(sizeof(*y),E2)
> > + x = kzalloc(sizeof(*y),E2)
> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> > when != \(while(...) S\|for(...;...;...) S\)
> > (
> > if ((x!=NULL)&&...) {
> > ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
> > when != \(while(...) S1\|for(...;...;...) S1\)
> > - memset((T2)x,0,sizeof(T1));
> > ...
> > } else S2
> > |
> > - memset((T2)x,0,sizeof(T1));
> > )
> > @@
> > type T, T2;
> > type T1;
> > T1 *x;
> > T1 *y;
> > identifier f,f1;
> > expression E,E2,E3,E4;
> > statement S,S1,S2;
> > @@
> > - x = (T)kmalloc(sizeof(*y)*E,E2)
> > + x = kzalloc(sizeof(*y)*E,E2)
> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> > when != \(while(...) S\|for(...;...;...) S\)
> > (
> > if ((x!=NULL)&&...) {
> > ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
> > when != \(while(...) S1\|for(...;...;...) S1\)
> > - memset((T2)x,0,sizeof(T1)*E);
> > ...
> > } else S2
> > |
> > - memset((T2)x,0,sizeof(T1)*E);
> > )
> > @ disable neg_if, mult_comm @
> > type T, T2;
> > expression x;
> > identifier f,f1;
> > expression E0,E1,E2,E3,E4;
> > statement S,S1,S2;
> > @@
> > - x = (T)kmalloc(E0 * E1,E2)
> > + x = kzalloc(E0 * E1,E2)
> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> > when != \(while(...) S\|for(...;...;...) S\)
> > (
> > if ((x!=NULL)&&...) {
> > ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
> > when != \(while(...) S1\|for(...;...;...) S1\)
> > - memset((T2)x,0,E1 * E0);
> > ...
> > } else S2
> > |
> > - memset((T2)x,0,E1 * E0);
> > )
> > // ---------------------------------------------------------------------
> > // ---------------------------------------------------------------------
> > // have to duplicate everything again to make a version with no braces
> > //\(x->fld\|f(...,x,...)\|x=E\)
> > @@
> > type T, T2;
> > expression x;
> > identifier f;
> > expression E1,E2,E3;
> > statement S,S2;
> > @@
> > - x = (T)kmalloc(E1,E2)
> > + x = kzalloc(E1,E2)
> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> > when != \(while(...) S\|for(...;...;...) S\)
> > (
> > - if ((x!=NULL)&&...) memset((T2)x,0,E1);
> > |
> > + if (!x)
> > - if ((x!=NULL)&&...) memset((T2)x,0,E1); else
> > S2
> > )
> > @ @
> > type T, T2;
> > type T1;
> > T1 *x;
> > T1 *y;
> > identifier f;
> > expression E2,E3;
> > statement S,S2;
> > @@
> > - x = (T)kmalloc(sizeof(T1),E2)
> > + x = kzalloc(sizeof(T1),E2)
> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> > when != \(while(...) S\|for(...;...;...) S\)
> > (
> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y));
> > |
> > + if (!x)
> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y)); else
> > S2
> > )
> > @@
> > type T, T2;
> > type T1;
> > T1 *x;
> > T1 *y;
> > identifier f;
> > expression E,E2,E3;
> > statement S,S2;
> > @@
> > - x = (T)kmalloc(sizeof(T1)*E,E2)
> > + x = kzalloc(sizeof(T1)*E,E2)
> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> > when != \(while(...) S\|for(...;...;...) S\)
> > (
> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y)*E);
> > |
> > + if (!x)
> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y)*E); else
> > S2
> > )
> > @@
> > type T, T2;
> > type T1;
> > T1 *x;
> > T1 *y;
> > identifier f;
> > expression E2,E3;
> > statement S,S2;
> > @@
> > - x = (T)kmalloc(sizeof(*y),E2)
> > + x = kzalloc(sizeof(*y),E2)
> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> > when != \(while(...) S\|for(...;...;...) S\)
> > (
> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1));
> > |
> > + if (!x)
> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1)); else
> > S2
> > )
> > @@
> > type T, T2;
> > type T1;
> > T1 *x;
> > T1 *y;
> > identifier f;
> > expression E,E2,E3;
> > statement S,S2;
> > @@
> > - x = (T)kmalloc(sizeof(*y)*E,E2)
> > + x = kzalloc(sizeof(*y)*E,E2)
> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> > when != \(while(...) S\|for(...;...;...) S\)
> > (
> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1)*E);
> > |
> > + if (!x)
> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1)*E); else
> > S2
> > )
> > @ disable neg_if, mult_comm @
> > type T, T2;
> > expression x;
> > identifier f;
> > expression E0,E1,E2,E3;
> > statement S,S2;
> > @@
> > - x = (T)kmalloc(E0 * E1,E2)
> > + x = kzalloc(E0 * E1,E2)
> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> > when != \(while(...) S\|for(...;...;...) S\)
> > (
> > - if ((x!=NULL)&&...) memset((T2)x,0,E1 * E0);
> > |
> > + if (!x)
> > - if ((x!=NULL)&&...) memset((T2)x,0,E1 * E0); else
> > S2
> > )
> > // ---------------------------------------------------------------------
> > @@
> > expression E;
> > statement S;
> > @@
> > kzalloc(...)
> > ...
> > if (E) S
> > - else { }
> > // ---------------------------------------------------------------------
> > // ---------------------------------------------------------------------
> > @@
> > expression E1,E2,E3;
> > @@
> > - kzalloc(E1*sizeof(E2),E3)
> > + kcalloc(E1,sizeof(E2),E3)
> > @@
> > expression E1,E3;
> > type T;
> > @@
> > - kzalloc(E1*sizeof(T),E3)
> > + kcalloc(E1,sizeof(T),E3)
> > @@
> > expression E1,E2,E3,E4;
> > @@
> > - kzalloc(E1*E2*sizeof(E3),E4)
> > + kcalloc(E1*E2,sizeof(E3),E4)
> > @@
> > expression E1,E2,E3;
> > type T;
> > @@
> > - kzalloc(E1*E2*sizeof(T),E3)
> > + kcalloc(E1*E2,sizeof(T),E3)
> > @@
> > expression E1,E2,E3,E4;
> > @@
> > - kzalloc(sizeof(E3)*E1*E2,E4)
> > + kcalloc(E1*E2,sizeof(E3),E4)
> > @@
> > expression E1,E2,E3;
> > type T;
> > @@
> > - kzalloc(sizeof(T)*E1*E2,E3)
> > + kcalloc(E1*E2,sizeof(T),E3)
> > @@
> > constant E1;
> > expression E2,E3;
> > @@
> > - kzalloc(E1*E2,E3)
> > + kcalloc(E1,E2,E3)
> >
> > Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> > ---
> >  drivers/staging/media/bcm2048/radio-bcm2048.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c
> b/drivers/staging/media/bcm2048/radio-bcm2048.c
> > index 5382506..c68fa4a 100644
> > --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> > +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> > @@ -1792,7 +1792,7 @@ static int bcm2048_get_rds_data(struct
> bcm2048_device *bdev, char *data)
> >               goto unlock;
> >       }
> >
> > -     data_buffer = kzalloc(BCM2048_MAX_RDS_RADIO_TEXT*5, GFP_KERNEL);
> > +     data_buffer = kcalloc(BCM2048_MAX_RDS_RADIO_TEXT, 5, GFP_KERNEL);
> >       if (!data_buffer) {
> >               err = -ENOMEM;
> >               goto unlock;
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/556953cddf889e94753d5fd09201cc94dbe201f6.1425211236.git.navyasri.tech%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--e89a8f83964f12e8e105103e06a0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Mar 1, 2015 at 6:04 PM, Julia Lawall <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Could you redo with=
 a much smaller commit message?=C2=A0 It would be reasonable<br>
to put the whole semantic patch in the cover letter.=C2=A0 For the individu=
al<br>
patches, you can just put something that gives the idea, but perhaps<br>
something that does not avoid all false positives, like the big one tries<b=
r>
to do.<br>
<br>
It could also be better to send separate series for kmalloc -&gt; k{z,c}all=
oc<br>
and kzalloc -&gt; kcalloc.<br>
<br>
Finally, whne you introduce kcalloc, you may end up with some unneeded<br>
parentheses in the argument list.=C2=A0 For example if the original code wa=
s<br>
kzalloc ((a+b) * c, ...).=C2=A0 You should remove the parentheses in the re=
sult<br>
(you can extend the semantic patch to do this).<br>
<br>
julia<br></blockquote><div><br></div><div>Hi,<br><br></div><div>I&#39;ll on=
ly keep the relevant changes from the coccinelle script for every patch and=
 send a new one.<br><br></div><div>Thanks,<br></div><div>Navya.<br></div><d=
iv>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Sun, 1 Mar 2015, Navya Sri Nizamkari wrote:<br>
<br>
&gt; The semantic patch used for this change is:<br>
&gt;<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; expression x;<br>
&gt; identifier f,f1;<br>
&gt; expression E1,E2,E3,E4;<br>
&gt; statement S,S1,S2;<br>
&gt; @@<br>
&gt; - x =3D (T)kmalloc(E1,E2)<br>
&gt; + x =3D kzalloc(E1,E2)<br>
&gt; ... when !=3D \(f(...,x,...)\|&lt;+...x...+&gt;=3DE3\)<br>
&gt; when !=3D \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; if ((x!=3DNULL)&amp;&amp;...) {<br>
&gt; ... when !=3D \(f1(...,x,...)\|&lt;+...x...+&gt;=3DE4\)<br>
&gt; when !=3D \(while(...) S1\|for(...;...;...) S1\)<br>
&gt; - memset((T2)x,0,E1);<br>
&gt; ...<br>
&gt; } else S2<br>
&gt; |<br>
&gt; - memset((T2)x,0,E1);<br>
&gt; )<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f,f1;<br>
&gt; expression E2,E3,E4;<br>
&gt; statement S,S1,S2;<br>
&gt; @@<br>
&gt; - x =3D (T)kmalloc(sizeof(T1),E2)<br>
&gt; + x =3D kzalloc(sizeof(T1),E2)<br>
&gt; ... when !=3D \(f(...,x,...)\|&lt;+...x...+&gt;=3DE3\)<br>
&gt; when !=3D \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; if ((x!=3DNULL)&amp;&amp;...) {<br>
&gt; ... when !=3D \(f1(...,x,...)\|&lt;+...x...+&gt;=3DE4\)<br>
&gt; when !=3D \(while(...) S1\|for(...;...;...) S1\)<br>
&gt; - memset((T2)x,0,sizeof(*y));<br>
&gt; ...<br>
&gt; } else S2<br>
&gt; |<br>
&gt; - memset((T2)x,0,sizeof(*y));<br>
&gt; )<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f,f1;<br>
&gt; expression E,E2,E3,E4;<br>
&gt; statement S,S1,S2;<br>
&gt; @@<br>
&gt; - x =3D (T)kmalloc(sizeof(T1)*E,E2)<br>
&gt; + x =3D kzalloc(sizeof(T1)*E,E2)<br>
&gt; ... when !=3D \(f(...,x,...)\|&lt;+...x...+&gt;=3DE3\)<br>
&gt; when !=3D \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; if ((x!=3DNULL)&amp;&amp;...) {<br>
&gt; ... when !=3D \(f1(...,x,...)\|&lt;+...x...+&gt;=3DE4\)<br>
&gt; when !=3D \(while(...) S1\|for(...;...;...) S1\)<br>
&gt; - memset((T2)x,0,sizeof(*y)*E);<br>
&gt; ...<br>
&gt; } else S2<br>
&gt; |<br>
&gt; - memset((T2)x,0,sizeof(*y)*E);<br>
&gt; )<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f,f1;<br>
&gt; expression E2,E3,E4;<br>
&gt; statement S,S1,S2;<br>
&gt; @@<br>
&gt; - x =3D (T)kmalloc(sizeof(*y),E2)<br>
&gt; + x =3D kzalloc(sizeof(*y),E2)<br>
&gt; ... when !=3D \(f(...,x,...)\|&lt;+...x...+&gt;=3DE3\)<br>
&gt; when !=3D \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; if ((x!=3DNULL)&amp;&amp;...) {<br>
&gt; ... when !=3D \(f1(...,x,...)\|&lt;+...x...+&gt;=3DE4\)<br>
&gt; when !=3D \(while(...) S1\|for(...;...;...) S1\)<br>
&gt; - memset((T2)x,0,sizeof(T1));<br>
&gt; ...<br>
&gt; } else S2<br>
&gt; |<br>
&gt; - memset((T2)x,0,sizeof(T1));<br>
&gt; )<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f,f1;<br>
&gt; expression E,E2,E3,E4;<br>
&gt; statement S,S1,S2;<br>
&gt; @@<br>
&gt; - x =3D (T)kmalloc(sizeof(*y)*E,E2)<br>
&gt; + x =3D kzalloc(sizeof(*y)*E,E2)<br>
&gt; ... when !=3D \(f(...,x,...)\|&lt;+...x...+&gt;=3DE3\)<br>
&gt; when !=3D \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; if ((x!=3DNULL)&amp;&amp;...) {<br>
&gt; ... when !=3D \(f1(...,x,...)\|&lt;+...x...+&gt;=3DE4\)<br>
&gt; when !=3D \(while(...) S1\|for(...;...;...) S1\)<br>
&gt; - memset((T2)x,0,sizeof(T1)*E);<br>
&gt; ...<br>
&gt; } else S2<br>
&gt; |<br>
&gt; - memset((T2)x,0,sizeof(T1)*E);<br>
&gt; )<br>
&gt; @ disable neg_if, mult_comm @<br>
&gt; type T, T2;<br>
&gt; expression x;<br>
&gt; identifier f,f1;<br>
&gt; expression E0,E1,E2,E3,E4;<br>
&gt; statement S,S1,S2;<br>
&gt; @@<br>
&gt; - x =3D (T)kmalloc(E0 * E1,E2)<br>
&gt; + x =3D kzalloc(E0 * E1,E2)<br>
&gt; ... when !=3D \(f(...,x,...)\|&lt;+...x...+&gt;=3DE3\)<br>
&gt; when !=3D \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; if ((x!=3DNULL)&amp;&amp;...) {<br>
&gt; ... when !=3D \(f1(...,x,...)\|&lt;+...x...+&gt;=3DE4\)<br>
&gt; when !=3D \(while(...) S1\|for(...;...;...) S1\)<br>
&gt; - memset((T2)x,0,E1 * E0);<br>
&gt; ...<br>
&gt; } else S2<br>
&gt; |<br>
&gt; - memset((T2)x,0,E1 * E0);<br>
&gt; )<br>
&gt; // -------------------------------------------------------------------=
--<br>
&gt; // -------------------------------------------------------------------=
--<br>
&gt; // have to duplicate everything again to make a version with no braces=
<br>
&gt; //\(x-&gt;fld\|f(...,x,...)\|x=3DE\)<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; expression x;<br>
&gt; identifier f;<br>
&gt; expression E1,E2,E3;<br>
&gt; statement S,S2;<br>
&gt; @@<br>
&gt; - x =3D (T)kmalloc(E1,E2)<br>
&gt; + x =3D kzalloc(E1,E2)<br>
&gt; ... when !=3D \(f(...,x,...)\|&lt;+...x...+&gt;=3DE3\)<br>
&gt; when !=3D \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; - if ((x!=3DNULL)&amp;&amp;...) memset((T2)x,0,E1);<br>
&gt; |<br>
&gt; + if (!x)<br>
&gt; - if ((x!=3DNULL)&amp;&amp;...) memset((T2)x,0,E1); else<br>
&gt; S2<br>
&gt; )<br>
&gt; @ @<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f;<br>
&gt; expression E2,E3;<br>
&gt; statement S,S2;<br>
&gt; @@<br>
&gt; - x =3D (T)kmalloc(sizeof(T1),E2)<br>
&gt; + x =3D kzalloc(sizeof(T1),E2)<br>
&gt; ... when !=3D \(f(...,x,...)\|&lt;+...x...+&gt;=3DE3\)<br>
&gt; when !=3D \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; - if ((x!=3DNULL)&amp;&amp;...) memset((T2)x,0,sizeof(*y));<br>
&gt; |<br>
&gt; + if (!x)<br>
&gt; - if ((x!=3DNULL)&amp;&amp;...) memset((T2)x,0,sizeof(*y)); else<br>
&gt; S2<br>
&gt; )<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f;<br>
&gt; expression E,E2,E3;<br>
&gt; statement S,S2;<br>
&gt; @@<br>
&gt; - x =3D (T)kmalloc(sizeof(T1)*E,E2)<br>
&gt; + x =3D kzalloc(sizeof(T1)*E,E2)<br>
&gt; ... when !=3D \(f(...,x,...)\|&lt;+...x...+&gt;=3DE3\)<br>
&gt; when !=3D \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; - if ((x!=3DNULL)&amp;&amp;...) memset((T2)x,0,sizeof(*y)*E);<br>
&gt; |<br>
&gt; + if (!x)<br>
&gt; - if ((x!=3DNULL)&amp;&amp;...) memset((T2)x,0,sizeof(*y)*E); else<br>
&gt; S2<br>
&gt; )<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f;<br>
&gt; expression E2,E3;<br>
&gt; statement S,S2;<br>
&gt; @@<br>
&gt; - x =3D (T)kmalloc(sizeof(*y),E2)<br>
&gt; + x =3D kzalloc(sizeof(*y),E2)<br>
&gt; ... when !=3D \(f(...,x,...)\|&lt;+...x...+&gt;=3DE3\)<br>
&gt; when !=3D \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; - if ((x!=3DNULL)&amp;&amp;...) memset((T2)x,0,sizeof(T1));<br>
&gt; |<br>
&gt; + if (!x)<br>
&gt; - if ((x!=3DNULL)&amp;&amp;...) memset((T2)x,0,sizeof(T1)); else<br>
&gt; S2<br>
&gt; )<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f;<br>
&gt; expression E,E2,E3;<br>
&gt; statement S,S2;<br>
&gt; @@<br>
&gt; - x =3D (T)kmalloc(sizeof(*y)*E,E2)<br>
&gt; + x =3D kzalloc(sizeof(*y)*E,E2)<br>
&gt; ... when !=3D \(f(...,x,...)\|&lt;+...x...+&gt;=3DE3\)<br>
&gt; when !=3D \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; - if ((x!=3DNULL)&amp;&amp;...) memset((T2)x,0,sizeof(T1)*E);<br>
&gt; |<br>
&gt; + if (!x)<br>
&gt; - if ((x!=3DNULL)&amp;&amp;...) memset((T2)x,0,sizeof(T1)*E); else<br>
&gt; S2<br>
&gt; )<br>
&gt; @ disable neg_if, mult_comm @<br>
&gt; type T, T2;<br>
&gt; expression x;<br>
&gt; identifier f;<br>
&gt; expression E0,E1,E2,E3;<br>
&gt; statement S,S2;<br>
&gt; @@<br>
&gt; - x =3D (T)kmalloc(E0 * E1,E2)<br>
&gt; + x =3D kzalloc(E0 * E1,E2)<br>
&gt; ... when !=3D \(f(...,x,...)\|&lt;+...x...+&gt;=3DE3\)<br>
&gt; when !=3D \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; - if ((x!=3DNULL)&amp;&amp;...) memset((T2)x,0,E1 * E0);<br>
&gt; |<br>
&gt; + if (!x)<br>
&gt; - if ((x!=3DNULL)&amp;&amp;...) memset((T2)x,0,E1 * E0); else<br>
&gt; S2<br>
&gt; )<br>
&gt; // -------------------------------------------------------------------=
--<br>
&gt; @@<br>
&gt; expression E;<br>
&gt; statement S;<br>
&gt; @@<br>
&gt; kzalloc(...)<br>
&gt; ...<br>
&gt; if (E) S<br>
&gt; - else { }<br>
&gt; // -------------------------------------------------------------------=
--<br>
&gt; // -------------------------------------------------------------------=
--<br>
&gt; @@<br>
&gt; expression E1,E2,E3;<br>
&gt; @@<br>
&gt; - kzalloc(E1*sizeof(E2),E3)<br>
&gt; + kcalloc(E1,sizeof(E2),E3)<br>
&gt; @@<br>
&gt; expression E1,E3;<br>
&gt; type T;<br>
&gt; @@<br>
&gt; - kzalloc(E1*sizeof(T),E3)<br>
&gt; + kcalloc(E1,sizeof(T),E3)<br>
&gt; @@<br>
&gt; expression E1,E2,E3,E4;<br>
&gt; @@<br>
&gt; - kzalloc(E1*E2*sizeof(E3),E4)<br>
&gt; + kcalloc(E1*E2,sizeof(E3),E4)<br>
&gt; @@<br>
&gt; expression E1,E2,E3;<br>
&gt; type T;<br>
&gt; @@<br>
&gt; - kzalloc(E1*E2*sizeof(T),E3)<br>
&gt; + kcalloc(E1*E2,sizeof(T),E3)<br>
&gt; @@<br>
&gt; expression E1,E2,E3,E4;<br>
&gt; @@<br>
&gt; - kzalloc(sizeof(E3)*E1*E2,E4)<br>
&gt; + kcalloc(E1*E2,sizeof(E3),E4)<br>
&gt; @@<br>
&gt; expression E1,E2,E3;<br>
&gt; type T;<br>
&gt; @@<br>
&gt; - kzalloc(sizeof(T)*E1*E2,E3)<br>
&gt; + kcalloc(E1*E2,sizeof(T),E3)<br>
&gt; @@<br>
&gt; constant E1;<br>
&gt; expression E2,E3;<br>
&gt; @@<br>
&gt; - kzalloc(E1*E2,E3)<br>
&gt; + kcalloc(E1,E2,E3)<br>
&gt;<br>
&gt; Signed-off-by: Navya Sri Nizamkari &lt;<a href=3D"mailto:navyasri.tech=
@gmail.com">navyasri.tech@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/media/bcm2048/radio-bcm2048.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/s=
taging/media/bcm2048/radio-bcm2048.c<br>
&gt; index 5382506..c68fa4a 100644<br>
&gt; --- a/drivers/staging/media/bcm2048/radio-bcm2048.c<br>
&gt; +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c<br>
&gt; @@ -1792,7 +1792,7 @@ static int bcm2048_get_rds_data(struct bcm2048_d=
evice *bdev, char *data)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto unlock;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0data_buffer =3D kzalloc(BCM2048_MAX_RDS_RADIO_TEX=
T*5, GFP_KERNEL);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0data_buffer =3D kcalloc(BCM2048_MAX_RDS_RADIO_TEX=
T, 5, GFP_KERNEL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!data_buffer) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D -ENOMEM;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto unlock;<br>
&gt; --<br>
&gt; 1.9.1<br>
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
gle.com/d/msgid/outreachy-kernel/556953cddf889e94753d5fd09201cc94dbe201f6.1=
425211236.git.navyasri.tech%40gmail.com" target=3D"_blank">https://groups.g=
oogle.com/d/msgid/outreachy-kernel/556953cddf889e94753d5fd09201cc94dbe201f6=
.1425211236.git.navyasri.tech%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 target=3D"_blank">https://groups.google.com/d/optout</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--e89a8f83964f12e8e105103e06a0--

