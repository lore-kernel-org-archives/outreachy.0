X-GM-THRID: 6249484870068731904
X-Received: by 10.140.136.135 with SMTP id 129mr36405184qhi.10.1455090808489;
        Tue, 09 Feb 2016 23:53:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.130 with SMTP id o124ls161937ioe.1.gmail; Tue, 09 Feb
 2016 23:53:28 -0800 (PST)
X-Received: by 10.107.136.23 with SMTP id k23mr27170241iod.23.1455090808071;
        Tue, 09 Feb 2016 23:53:28 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x230.google.com (mail-ob0-x230.google.com. [2607:f8b0:4003:c01::230])
        by gmr-mx.google.com with ESMTPS id c15si494088igm.1.2016.02.09.23.53.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 23:53:28 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::230 as permitted sender) client-ip=2607:f8b0:4003:c01::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x230.google.com with SMTP id xk3so16307853obc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 23:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=SFlS+HfaF+qI3G3f6O04P5uKlbz034zKGSqKkIFf9Ek=;
        b=oUhIhyknsRDNE2sb/+EVMX9Dl8T0EGMDHHCcvHbYvx+EX3aiDCKYHrfI8mll6D9nZg
         Ad/br78tOpG62UOefL3BfVGHhRsueaeucqFMeeMhyt55EtiTvES7BPqtnY6+GESOJwKL
         b6pZy3SuMnUYugpxhN/TXnqYaXRgnVKQFAF7ldmbDt2zBAzGNicHEzxFZaeUtiIu9nGo
         lozwSy1ComwVAPxDVEO93QkZJRKy4uF4MFUZGyjdELEOrIfQEkOSJL6AVZTsbqtBnSHt
         bXf0EnbVlbiCXnxwGp3EdWrjm/+H9g/cCnqmuTD6UmEqS4FuDQ9mpcNyufGIupuwqsja
         amPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=SFlS+HfaF+qI3G3f6O04P5uKlbz034zKGSqKkIFf9Ek=;
        b=TSs/tEoQ96Gc6d80dZ1lQLvDxOiZIWCiNqIC7pm6NsClWESCw9AA/+Ogwv3H3Uu7h2
         nNdHNbixOjFJlC7G8HqD45Fd+FHqQehZJs3UMRFk1N2pIOv4hU11Z8dzLWD1JyN6zvBC
         XY91bXtLFePywfE4nY+EURRDQWcKgMhKyjv+VLtjhZErx8WlooXvQrVHLAGgj9ph7Ktw
         44ewtYZ1phs+aMUzwZgDB//CRrISVcidA51XWMhGj3qYZ/rsBXhyvMmqTTRo8pHHV0dj
         dRhzDBOOwXQ1RbpLuyGu+5uaxQQb8faFWMT0DKmc5KXFOJmBfIRnZ4BO/c50MGsGw/tb
         wewg==
X-Gm-Message-State: AG10YORPTOGy4yMwFmpRifN33pfO/2rk8eWp7QbJ6bCdBQQRjI/SRk3hFVVNTXUCJ8y/JKaqXTsLtWCgcekEsw==
MIME-Version: 1.0
X-Received: by 10.60.43.170 with SMTP id x10mr37154281oel.68.1455090807898;
 Tue, 09 Feb 2016 23:53:27 -0800 (PST)
Received: by 10.202.170.195 with HTTP; Tue, 9 Feb 2016 23:53:27 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602100751090.2050@localhost6.localdomain6>
References: <20160210073225.GA5118@janani-Inspiron-3521>
	<alpine.DEB.2.02.1602100751090.2050@localhost6.localdomain6>
Date: Wed, 10 Feb 2016 02:53:27 -0500
Message-ID: <CANnt6X=tpDfOvw1934mFiuUKL1apk+dJ7C8Ws7wzW7ko0nzHGw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: Modify arguments of
 sizeof() to pointer variables
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a11330c94b88ea7052b65ba22

--001a11330c94b88ea7052b65ba22
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 10, 2016 at 1:55 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Wed, 10 Feb 2016, Janani Ravichandran wrote:
>
> > It is better when sizeof() takes as an argument the size of the pointer
> variablewe care about rather than the type. This is because even if the
> type of the variable changes in the future, we will always get the correct
> size irrespective of the type.
>
> You should respect the 80 character limit in the commit message.  This is
> a paragraph that is just a single line.
>
> I'm not sure that the description has to be quite so detailed either.  It
> could be something like: Take the size of a dereference to a variable
> rather than the associated type, to make the code more resistent to type
> changes in the future.
>
> I will send a v2 after making these changes.

> Finally, did you do this with Coccinelle?  With Coccinelle, you can check
> that the type in the sizeof is actually the type of the variable.  The
> change is only correct in that case.
>
No, Julia, I did not use Coccinelle for this particular issue. I found this
when
I was looking at something else and thought I'd send a patch for this.

>
> julia
>
> > This patch makes such a change.
> >
> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> > ---
> >  drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> > index cb74ae7..49cd333 100644
> > --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> > +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> > @@ -1352,7 +1352,7 @@ static void kiblnd_destroy_fmr_pool(kib_fmr_pool_t
> *pool)
> >       if (pool->fpo_hdev != NULL)
> >               kiblnd_hdev_decref(pool->fpo_hdev);
> >
> > -     LIBCFS_FREE(pool, sizeof(kib_fmr_pool_t));
> > +     LIBCFS_FREE(pool, sizeof(*pool));
> >  }
> >
> >  static void kiblnd_destroy_fmr_pool_list(struct list_head *head)
> > @@ -1410,7 +1410,7 @@ static int
> kiblnd_create_fmr_pool(kib_fmr_poolset_t *fps,
> >               CERROR("Failed to create FMR pool: %d\n", rc);
> >
> >               kiblnd_hdev_decref(fpo->fpo_hdev);
> > -             LIBCFS_FREE(fpo, sizeof(kib_fmr_pool_t));
> > +             LIBCFS_FREE(fpo, sizeof(*fpo));
> >               return rc;
> >       }
> >
> > @@ -1458,7 +1458,7 @@ static int
> kiblnd_init_fmr_poolset(kib_fmr_poolset_t *fps, int cpt,
> >       kib_fmr_pool_t *fpo;
> >       int rc;
> >
> > -     memset(fps, 0, sizeof(kib_fmr_poolset_t));
> > +     memset(fps, 0, sizeof(*fps));
> >
> >       fps->fps_net = net;
> >       fps->fps_cpt = cpt;
> > @@ -1606,7 +1606,7 @@ static void kiblnd_init_pool(kib_poolset_t *ps,
> kib_pool_t *pool, int size)
> >  {
> >       CDEBUG(D_NET, "Initialize %s pool\n", ps->ps_name);
> >
> > -     memset(pool, 0, sizeof(kib_pool_t));
> > +     memset(pool, 0, sizeof(*pool));
> >       INIT_LIST_HEAD(&pool->po_free_list);
> >       pool->po_deadline = cfs_time_shift(IBLND_POOL_DEADLINE);
> >       pool->po_owner    = ps;
> > @@ -1663,7 +1663,7 @@ static int kiblnd_init_poolset(kib_poolset_t *ps,
> int cpt,
> >       kib_pool_t *pool;
> >       int rc;
> >
> > -     memset(ps, 0, sizeof(kib_poolset_t));
> > +     memset(ps, 0, sizeof(*ps));
> >
> >       ps->ps_cpt          = cpt;
> >       ps->ps_net          = net;
> > @@ -1834,7 +1834,7 @@ static void kiblnd_destroy_tx_pool(kib_pool_t
> *pool)
> >                   pool->po_size * sizeof(kib_tx_t));
> >  out:
> >       kiblnd_fini_pool(pool);
> > -     LIBCFS_FREE(tpo, sizeof(kib_tx_pool_t));
> > +     LIBCFS_FREE(tpo, sizeof(*tpo));
> >  }
> >
> >  static int kiblnd_tx_pool_size(int ncpts)
> > @@ -1866,7 +1866,7 @@ static int kiblnd_create_tx_pool(kib_poolset_t
> *ps, int size,
> >       npg = (size * IBLND_MSG_SIZE + PAGE_SIZE - 1) / PAGE_SIZE;
> >       if (kiblnd_alloc_pages(&tpo->tpo_tx_pages, ps->ps_cpt, npg) != 0) {
> >               CERROR("Can't allocate tx pages: %d\n", npg);
> > -             LIBCFS_FREE(tpo, sizeof(kib_tx_pool_t));
> > +             LIBCFS_FREE(tpo, sizeof(*tpo));
> >               return -ENOMEM;
> >       }
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
> https://groups.google.com/d/msgid/outreachy-kernel/20160210073225.GA5118%40janani-Inspiron-3521
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a11330c94b88ea7052b65ba22
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Feb 10, 2016 at 1:55 AM, Julia Lawall <span dir=3D"ltr">&lt;<a =
href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">O=
n Wed, 10 Feb 2016, Janani Ravichandran wrote:<br>
<br>
&gt; It is better when sizeof() takes as an argument the size of the pointe=
r variablewe care about rather than the type. This is because even if the t=
ype of the variable changes in the future, we will always get the correct s=
ize irrespective of the type.<br>
<br>
</span>You should respect the 80 character limit in the commit message.=C2=
=A0 This is<br>
a paragraph that is just a single line.<br>
<br>
I&#39;m not sure that the description has to be quite so detailed either.=
=C2=A0 It<br>
could be something like: Take the size of a dereference to a variable<br>
rather than the associated type, to make the code more resistent to type<br=
>
changes in the future.<br>
<br></blockquote><div>I will send a v2 after making these changes. <br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">
Finally, did you do this with Coccinelle?=C2=A0 With Coccinelle, you can ch=
eck<br>
that the type in the sizeof is actually the type of the variable.=C2=A0 The=
<br>
change is only correct in that case.<br></blockquote><div>No, Julia, I did =
not use Coccinelle for this particular issue. I found this when <br></div><=
div>I was looking at something else and thought I&#39;d send a patch for th=
is. <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; This patch makes such a change.<br>
&gt;<br>
&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchnd=
rn@gmail.com">janani.rvchndrn@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 14 +++++++=
-------<br>
&gt;=C2=A0 1 file changed, 7 insertions(+), 7 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/dri=
vers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c<br>
&gt; index cb74ae7..49cd333 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c<br>
&gt; @@ -1352,7 +1352,7 @@ static void kiblnd_destroy_fmr_pool(kib_fmr_pool=
_t *pool)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pool-&gt;fpo_hdev !=3D NULL)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kiblnd_hdev_decr=
ef(pool-&gt;fpo_hdev);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0LIBCFS_FREE(pool, sizeof(kib_fmr_pool_t));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0LIBCFS_FREE(pool, sizeof(*pool));<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 static void kiblnd_destroy_fmr_pool_list(struct list_head *head)=
<br>
&gt; @@ -1410,7 +1410,7 @@ static int kiblnd_create_fmr_pool(kib_fmr_poolse=
t_t *fps,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CERROR(&quot;Fai=
led to create FMR pool: %d\n&quot;, rc);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kiblnd_hdev_decr=
ef(fpo-&gt;fpo_hdev);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LIBCFS_FREE(fpo, size=
of(kib_fmr_pool_t));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LIBCFS_FREE(fpo, size=
of(*fpo));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return rc;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; @@ -1458,7 +1458,7 @@ static int kiblnd_init_fmr_poolset(kib_fmr_pools=
et_t *fps, int cpt,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0kib_fmr_pool_t *fpo;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int rc;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0memset(fps, 0, sizeof(kib_fmr_poolset_t));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0memset(fps, 0, sizeof(*fps));<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0fps-&gt;fps_net =3D net;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0fps-&gt;fps_cpt =3D cpt;<br>
&gt; @@ -1606,7 +1606,7 @@ static void kiblnd_init_pool(kib_poolset_t *ps, =
kib_pool_t *pool, int size)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0CDEBUG(D_NET, &quot;Initialize %s pool\n&quo=
t;, ps-&gt;ps_name);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0memset(pool, 0, sizeof(kib_pool_t));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0memset(pool, 0, sizeof(*pool));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0INIT_LIST_HEAD(&amp;pool-&gt;po_free_list);<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pool-&gt;po_deadline =3D cfs_time_shift(IBLN=
D_POOL_DEADLINE);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pool-&gt;po_owner=C2=A0 =C2=A0 =3D ps;<br>
&gt; @@ -1663,7 +1663,7 @@ static int kiblnd_init_poolset(kib_poolset_t *ps=
, int cpt,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0kib_pool_t *pool;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int rc;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0memset(ps, 0, sizeof(kib_poolset_t));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0memset(ps, 0, sizeof(*ps));<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ps-&gt;ps_cpt=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D cpt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ps-&gt;ps_net=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D net;<br>
&gt; @@ -1834,7 +1834,7 @@ static void kiblnd_destroy_tx_pool(kib_pool_t *p=
ool)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0po=
ol-&gt;po_size * sizeof(kib_tx_t));<br>
&gt;=C2=A0 out:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0kiblnd_fini_pool(pool);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0LIBCFS_FREE(tpo, sizeof(kib_tx_pool_t));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0LIBCFS_FREE(tpo, sizeof(*tpo));<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 static int kiblnd_tx_pool_size(int ncpts)<br>
&gt; @@ -1866,7 +1866,7 @@ static int kiblnd_create_tx_pool(kib_poolset_t *=
ps, int size,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0npg =3D (size * IBLND_MSG_SIZE + PAGE_SIZE -=
 1) / PAGE_SIZE;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (kiblnd_alloc_pages(&amp;tpo-&gt;tpo_tx_p=
ages, ps-&gt;ps_cpt, npg) !=3D 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CERROR(&quot;Can=
&#39;t allocate tx pages: %d\n&quot;, npg);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LIBCFS_FREE(tpo, size=
of(kib_tx_pool_t));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LIBCFS_FREE(tpo, size=
of(*tpo));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENOMEM;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
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
gle.com/d/msgid/outreachy-kernel/20160210073225.GA5118%40janani-Inspiron-35=
21" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/=
outreachy-kernel/20160210073225.GA5118%40janani-Inspiron-3521</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a11330c94b88ea7052b65ba22--

