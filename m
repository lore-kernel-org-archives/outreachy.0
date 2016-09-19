X-GM-THRID: 6331204832263667712
X-Received: by 10.200.41.47 with SMTP id y44mr14835672qty.27.1474299461542;
        Mon, 19 Sep 2016 08:37:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.90.74 with SMTP id v71ls2756126ita.9.canary; Mon, 19 Sep
 2016 08:37:40 -0700 (PDT)
X-Received: by 10.107.8.163 with SMTP id h35mr4570892ioi.64.1474299460148;
        Mon, 19 Sep 2016 08:37:40 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id v21si1374487ywa.7.2016.09.19.08.37.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 08:37:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id z143so9998686qka.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 08:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=Vox8JeBDou4e14wcro8mZU+0BQPLze5WQOJydZHH7aE=;
        b=XlsK60r4+AKaGs0gOYlPyAuD0c9BA6G3Smdp3TC7BcX7zuw0uZ6LvUu0iih3qwbWlA
         KTIf52KsZ0tHbJactybp4Rwg4b56BVUk2dIhF02lBO5ebaWwwCOwuSmEY4IzQSCj5cHV
         rZ9/Y+6H1DRm1XMJnxP4B2j4G4fEFKi6T9wzMoXvNZiuj+gph0ohMsMgPjdNStK7ly5V
         aess6+g+vwo6Pn1L3Ejbs1JGNwBqxssGzJsRir2X81R8BNQ7lgyJGMHNhZ5zqMsXGQcG
         7FtlbeGYrDub1bv1jl+xJMOCYw5lsb7N690mZZLlPFvtG4Uys/oHujngBSy9s+MjmSTB
         fIHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to:cc;
        bh=Vox8JeBDou4e14wcro8mZU+0BQPLze5WQOJydZHH7aE=;
        b=mjAd8CCCrA4UhHSOzRBnHSE52WcARtiiRAiTCF1KR+RjybZwdLz4ceAts9sXQ9H2sd
         AbLkvGRh9WY7inZ5h2U7OYbcwDxyVc07m8LB9XKcujqMKWnx4Qcb3wPQn6GfYGTuRpO9
         Ir3oadEDnRCMg++XZLs6hsjSSa/GcqZsMgeOd4jQ6nKT7/c5lcBrAuGfx5iUT3T76raT
         eyVOLSl4eGUAvVqCQ9SOOAJqz1IYTdL+ZW5x3qBZfTMmOcsYIzOr/QH4jp4V6FCguYC9
         ZX37XofX9R1Q+W2PhOu+0pA2a1FfVR/XuQXIwSo3qcjyDnCsAzXFJ0cE6t1NoUBoEGB3
         9uGg==
X-Gm-Message-State: AE9vXwMTZF+sOxx57FegVgbbBtbgNtuoFTJgthZjnpxTPfNoDxP7AetWZjrn+beUR/RmxHQWg4glCZTu0xdJPA==
X-Received: by 10.55.161.196 with SMTP id k187mr31189750qke.11.1474299459935;
 Mon, 19 Sep 2016 08:37:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.49.231 with HTTP; Mon, 19 Sep 2016 08:37:39 -0700 (PDT)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.LFD.2.20.1609182113040.31599@casper.infradead.org>
References: <cover.1474055668.git.bankarsandhya512@gmail.com>
 <84439d72e1db653a0e7511e9a29c5b2c23703eab.1474055668.git.bankarsandhya512@gmail.com>
 <alpine.DEB.2.10.1609171048120.3113@hadrien> <6B5E7F24-CAC2-49CB-B717-6D64C40CFE82@intel.com>
 <alpine.LFD.2.20.1609182113040.31599@casper.infradead.org>
From: sandhya bankar <bankarsandhya512@gmail.com>
Date: Mon, 19 Sep 2016 21:07:39 +0530
Message-ID: <CAA3ASznpAZpbTN3DmzV=msNWV0c-kuUWHnUW4JDfSp9hNkC4mA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: Modify argument
 of sizeof() to pointer variables.
To: James Simmons <jsimmons@infradead.org>
Cc: "Dilger, Andreas" <andreas.dilger@intel.com>, Julia Lawall <Julia.Lawall@lip6.fr>, 
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, "Drokin, Oleg" <oleg.drokin@intel.com>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary=94eb2c0723f69a22b7053cde1753

--94eb2c0723f69a22b7053cde1753
Content-Type: text/plain; charset=UTF-8

I will update and send patch after a compile test as per your suggestion.

On Mon, Sep 19, 2016 at 1:43 AM, James Simmons <jsimmons@infradead.org>
wrote:

>
> > > On Sat, 17 Sep 2016, Sandhya Bankar wrote:
> > >
> > >> Modify arguments of sizeof() to pointer variables.
> > >> The destination of the allocation has type struct **, so the
> > >> elements of the array should have pointer type, not structure type.
> > >>
> > >> These changes are made using below Coccinelle script:
> > >>
> > >> @disable sizeof_type_expr@
> > >> type T;
> > >> T **x;
> > >> @@
> > >>
> > >>  x =
> > >>  <+...sizeof(
> > >> - T
> > >> + *x
> > >>  )...+>
> > >>
> > >> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> > >> ---
> > >> .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c    |    4 ++--
> > >> 1 files changed, 2 insertions(+), 2 deletions(-)
> > >>
> > >> diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> > >> index c7a5d49..5f17c82 100755
> > >> --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> > >> +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> > >> @@ -2206,7 +2206,7 @@ static int kiblnd_net_init_pools(struct kib_net
> *net, lnet_ni_t *ni, __u32 *cpts
> > >>     * number of CPTs that exist, i.e net->ibn_fmr_ps[cpt].
> > >>     */
> > >>    net->ibn_fmr_ps = cfs_percpt_alloc(lnet_cpt_table(),
> > >> -                                     sizeof(struct kib_fmr_poolset));
> > >> +                                     sizeof(*net->ibn_fmr_ps));
> > >
> > > Did you check on what cfs_percpt_alloc actually does with this
> > > information?  This is not an obvious case, like kmalloc.  The commit
> > > message should explain what the function does with the size information
> > > and why the change is correct.
> >
> > Julia,
> > thanks for the sharp eyes.  Indeed cfs_percpt_alloc() allocates an array
> > of structs and returns the pointer to the array, so the current code is
> > correct.
> >
> > Sandhya,
> > That said, I also prefer the sizeof(*<type>) usage rather than the
> > sizeof(struct name) usage, since the former will continue to work if
> > <type> changes for some reason.  Could you please update your patch like:
> >
> >       net->ibn_fmr_ps = cfs_percpt_alloc(lnet_cpt_table(),
> >                                          sizeof(**net->ibn_fmr_ps));
> >
> > which should work, though I'm not 100% positive (needs a compile test
> > at least, as any patch does).
> >
> > >>    if (!net->ibn_fmr_ps) {
> > >>            CERROR("Failed to allocate FMR pool array\n");
> > >>            rc = -ENOMEM;
> > >> @@ -2234,7 +2234,7 @@ static int kiblnd_net_init_pools(struct kib_net
> *net, lnet_ni_t *ni, __u32 *cpts
> > >>     * number of CPTs that exist, i.e net->ibn_tx_ps[cpt].
> > >>     */
> > >>    net->ibn_tx_ps = cfs_percpt_alloc(lnet_cpt_table(),
> > >> -                                    sizeof(struct kib_tx_poolset));
> > >> +                                    sizeof(*net->ibn_tx_ps));
> >
> > Similarly:
> >
> >       net->ibn_tx_ps = cfs_percpt_alloc(lnet_cpt_table(),
> >                                         sizeof(**net->ibn_tx_ps));
> >
>
> I have the hardware to test this. Just CC when you have a new patch ready.
>
> > Cheers, Andreas
> >
> > >>    if (!net->ibn_tx_ps) {
> > >>            CERROR("Failed to allocate tx pool array\n");
> > >>            rc = -ENOMEM;
> > >> --
> > >> 1.7.1
> > >>
> > >> --
> > >> You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > >> To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > >> To post to this group, send email to outreachy-kernel@googlegroups.
> com.
> > >> To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/84439d72e1db653a0e7511e9a29c5b
> 2c23703eab.1474055668.git.bankarsandhya512%40gmail.com.
> > >> For more options, visit https://groups.google.com/d/optout.
> > >>
> >
> >
>

--94eb2c0723f69a22b7053cde1753
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I will update and send patch after a compile test as per y=
our suggestion.<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Mon, Sep 19, 2016 at 1:43 AM, James Simmons <span dir=3D"ltr">&l=
t;<a href=3D"mailto:jsimmons@infradead.org" target=3D"_blank">jsimmons@infr=
adead.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div cla=
ss=3D"HOEnZb"><div class=3D"h5"><br>
&gt; &gt; On Sat, 17 Sep 2016, Sandhya Bankar wrote:<br>
&gt; &gt;<br>
&gt; &gt;&gt; Modify arguments of sizeof() to pointer variables.<br>
&gt; &gt;&gt; The destination of the allocation has type struct **, so the<=
br>
&gt; &gt;&gt; elements of the array should have pointer type, not structure=
 type.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; These changes are made using below Coccinelle script:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; @disable sizeof_type_expr@<br>
&gt; &gt;&gt; type T;<br>
&gt; &gt;&gt; T **x;<br>
&gt; &gt;&gt; @@<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;=C2=A0 x =3D<br>
&gt; &gt;&gt;=C2=A0 &lt;+...sizeof(<br>
&gt; &gt;&gt; - T<br>
&gt; &gt;&gt; + *x<br>
&gt; &gt;&gt;=C2=A0 )...+&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto:bankarsan=
dhya512@gmail.com">bankarsandhya512@gmail.com</a>&gt;<br>
&gt; &gt;&gt; ---<br>
&gt; &gt;&gt; .../staging/lustre/lnet/klnds/<wbr>o2iblnd/o2iblnd.c=C2=A0 =
=C2=A0 |=C2=A0 =C2=A0 4 ++--<br>
&gt; &gt;&gt; 1 files changed, 2 insertions(+), 2 deletions(-)<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; diff --git a/drivers/staging/lustre/lnet/<wbr>klnds/o2iblnd/o=
2iblnd.c b/drivers/staging/lustre/lnet/<wbr>klnds/o2iblnd/o2iblnd.c<br>
&gt; &gt;&gt; index c7a5d49..5f17c82 100755<br>
&gt; &gt;&gt; --- a/drivers/staging/lustre/lnet/<wbr>klnds/o2iblnd/o2iblnd.=
c<br>
&gt; &gt;&gt; +++ b/drivers/staging/lustre/lnet/<wbr>klnds/o2iblnd/o2iblnd.=
c<br>
&gt; &gt;&gt; @@ -2206,7 +2206,7 @@ static int kiblnd_net_init_pools(struct=
 kib_net *net, lnet_ni_t *ni, __u32 *cpts<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0* number of CPTs that exist, i.e net-&gt;i=
bn_fmr_ps[cpt].<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0*/<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 net-&gt;ibn_fmr_ps =3D cfs_percpt_alloc(lnet_cpt=
_<wbr>table(),<br>
&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0si=
zeof(struct kib_fmr_poolset));<br>
&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0si=
zeof(*net-&gt;ibn_fmr_ps));<br>
&gt; &gt;<br>
&gt; &gt; Did you check on what cfs_percpt_alloc actually does with this<br=
>
&gt; &gt; information?=C2=A0 This is not an obvious case, like kmalloc.=C2=
=A0 The commit<br>
&gt; &gt; message should explain what the function does with the size infor=
mation<br>
&gt; &gt; and why the change is correct.<br>
&gt;<br>
&gt; Julia,<br>
&gt; thanks for the sharp eyes.=C2=A0 Indeed cfs_percpt_alloc() allocates a=
n array<br>
&gt; of structs and returns the pointer to the array, so the current code i=
s<br>
&gt; correct.<br>
&gt;<br>
&gt; Sandhya,<br>
&gt; That said, I also prefer the sizeof(*&lt;type&gt;) usage rather than t=
he<br>
&gt; sizeof(struct name) usage, since the former will continue to work if<b=
r>
&gt; &lt;type&gt; changes for some reason.=C2=A0 Could you please update yo=
ur patch like:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0net-&gt;ibn_fmr_ps =3D cfs_percpt_alloc(lnet=
_cpt_<wbr>table(),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 sizeof(**net-&gt;ibn_fmr_ps));<br>
&gt;<br>
&gt; which should work, though I&#39;m not 100% positive (needs a compile t=
est<br>
&gt; at least, as any patch does).<br>
&gt;<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 if (!net-&gt;ibn_fmr_ps) {<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 CERROR(&quot;Failed =
to allocate FMR pool array\n&quot;);<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D -ENOMEM;<br>
&gt; &gt;&gt; @@ -2234,7 +2234,7 @@ static int kiblnd_net_init_pools(struct=
 kib_net *net, lnet_ni_t *ni, __u32 *cpts<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0* number of CPTs that exist, i.e net-&gt;i=
bn_tx_ps[cpt].<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0*/<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 net-&gt;ibn_tx_ps =3D cfs_percpt_alloc(lnet_cpt_=
<wbr>table(),<br>
&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sizeof(s=
truct kib_tx_poolset));<br>
&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sizeof(*=
net-&gt;ibn_tx_ps));<br>
&gt;<br>
&gt; Similarly:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0net-&gt;ibn_tx_ps =3D cfs_percpt_alloc(lnet_=
cpt_<wbr>table(),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0sizeof(**net-&gt;ibn_tx_ps));<br>
&gt;<br>
<br>
</div></div>I have the hardware to test this. Just CC when you have a new p=
atch ready.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; Cheers, Andreas<br>
&gt;<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 if (!net-&gt;ibn_tx_ps) {<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 CERROR(&quot;Failed =
to allocate tx pool array\n&quot;);<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D -ENOMEM;<br>
&gt; &gt;&gt; --<br>
&gt; &gt;&gt; 1.7.1<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; --<br>
&gt; &gt;&gt; You received this message because you are subscribed to the G=
oogle Groups &quot;outreachy-kernel&quot; group.<br>
&gt; &gt;&gt; To unsubscribe from this group and stop receiving emails from=
 it, send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@goog=
legroups.com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; &gt;&gt; To post to this group, send email to <a href=3D"mailto:outrea=
chy-kernel@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br=
>
&gt; &gt;&gt; To view this discussion on the web visit <a href=3D"https://g=
roups.google.com/d/msgid/outreachy-kernel/84439d72e1db653a0e7511e9a29c5b2c2=
3703eab.1474055668.git.bankarsandhya512%40gmail.com" rel=3D"noreferrer" tar=
get=3D"_blank">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr=
>84439d72e1db653a0e7511e9a29c5b<wbr>2c23703eab.1474055668.git.<wbr>bankarsa=
ndhya512%40gmail.com</a>.<br>
&gt; &gt;&gt; For more options, visit <a href=3D"https://groups.google.com/=
d/optout" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/=
<wbr>optout</a>.<br>
&gt; &gt;&gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--94eb2c0723f69a22b7053cde1753--

