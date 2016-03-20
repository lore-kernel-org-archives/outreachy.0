X-GM-THRID: 6264136808663089152
X-Received: by 10.140.99.106 with SMTP id p97mr20057714qge.13.1458488730589;
        Sun, 20 Mar 2016 08:45:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.233 with SMTP id t9ls525159igr.15.gmail; Sun, 20 Mar
 2016 08:45:30 -0700 (PDT)
X-Received: by 10.50.20.135 with SMTP id n7mr7653793ige.5.1458488730122;
        Sun, 20 Mar 2016 08:45:30 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-ob0-x242.google.com (mail-ob0-x242.google.com. [2607:f8b0:4003:c01::242])
        by gmr-mx.google.com with ESMTPS id ei9si12494444igc.2.2016.03.20.08.45.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 08:45:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::242 as permitted sender) client-ip=2607:f8b0:4003:c01::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x242.google.com with SMTP id e7so12582244obv.2
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 08:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to;
        bh=rOHMUYmnACNz/OMsrIZcRTRaEx3TsakJafS4/WYx8J4=;
        b=Cxrpd5LA9ciGf5ieCCy/cJVpBBcnwQY3W7ysdmjCq9/70AVMALFOwlsOjJQj2V8goZ
         oJDM6pEo1gKb4rpJK1421IjubEVDtEIeYzd3P9B3lfBWKdlbuc3f8C6Yx0KkpVTEhuLO
         nasa/7y4IAP6cLFIr+PEfB+wLYoOtuzGg5S4kO4+VS+aNvBc8bRtwdicK83dLzvBr0o2
         6wUi3jgNy8JbjpIV3cJne3yxQTC3/Os8rslkhxi1x7id9tLRB8d/gU8Cfh3mb4uciqE8
         ihWuJE0bT4aCABmELQnNKxNPpkGyZyB6pQc1grdmgKPgfzz3Inj8uDs6eWpr6WjVzMjO
         2+oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to;
        bh=rOHMUYmnACNz/OMsrIZcRTRaEx3TsakJafS4/WYx8J4=;
        b=ch/3jU5Kl+G/VpjaJDzelIgSOILb6gfPNMzorw4A/uZZ5pW8pznUV0d+nYjDbooZBc
         x20/dbnlKCHCMJZo9hHgHxS0myqJ4WJDNr36SHLilB5v+QNCygnZqXRF9Uvwp7nxFN49
         jL0/PqdpcVyUPDMVvMKIAfd4iBa9ObdzdHm7DLxgXYtnKWBsvj/TVwe/BE4sYtLOYOt8
         yyvid05w5YeK9Sv+xuaD8azIQ8DEm79DDPgyq2n64Vs5Xi2LsT0iUguGGxYcygOqY8qT
         ei1ZaOsWCbEo9W8KlpFPUytBw13ETBrBD8XdSQqQZ+n4p4E7EEO8rfXwTv4iSciLvlY5
         jnIA==
X-Gm-Message-State: AD7BkJLidxMG5lKgz5hbi5l8sFqL33z2Xc9LegoDVWOGtrrI9TLqwkWBkSZ6VOCJjzgxQcj1LLgGGbuvYuahHg==
MIME-Version: 1.0
X-Received: by 10.182.125.8 with SMTP id mm8mr15133305obb.17.1458488728335;
 Sun, 20 Mar 2016 08:45:28 -0700 (PDT)
Received: by 10.157.63.101 with HTTP; Sun, 20 Mar 2016 08:45:28 -0700 (PDT)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.DEB.2.10.1603201633370.2597@hadrien>
References: <cover.1458454678.git.bankarsandhya512@gmail.com>
	<ed2d6f01c194ec9700dcec61409dc30e892136ad.1458454678.git.bankarsandhya512@gmail.com>
	<alpine.DEB.2.10.1603201530520.2597@hadrien>
	<CAA3ASzk+Q7sywUpFqU6KekhHyGRZCAz63osZTGbJ5P+xYs2ifA@mail.gmail.com>
	<alpine.DEB.2.10.1603201633370.2597@hadrien>
Date: Sun, 20 Mar 2016 21:15:28 +0530
Message-ID: <CAA3ASz=HvgoiHJ4ksKN52DRTZx=WZMKQAYOSjPp0M-yPE0e_Qw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: lustre: o2iblnd: Correct
 the argument of sizeof().
From: sandhya bankar <bankarsandhya512@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e012955b48fbd54052e7cde0c

--089e012955b48fbd54052e7cde0c
Content-Type: text/plain; charset=UTF-8

To prepare this patch i have used following cocci file.
Description mentioned below:

@disable sizeof_type_expr@
type T;
T **x;
@@

  x =
  <+...sizeof(
- T
+ *x
  )...+>

whose description is as below:

badty/badty.cocci -  Correct the size argument to kzalloc

    obj has type struct snmp_object **, not struct snmp_object *.  But
indeed
    it is not even clear why kmalloc is needed.  The memory is freed by the
end
    of the function, so the local variable of pointer type should be
sufficient.

that's why i have used "Correct" word in heading.
Please let me know if patch v2 is required with different heading?


Thanks,
Sandhya

On Sun, Mar 20, 2016 at 9:03 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 20 Mar 2016, sandhya bankar wrote:
>
> >
> > Yes.It is coding style issue.
> >
> > I have read following description:
> >
> > badty/badty.cocci -  Correct the size argument to kzalloc
> >     obj has type struct snmp_object **, not struct snmp_object *.  But
> > indeed
> >     it is not even clear why kmalloc is needed.  The memory is freed by
> the
> > end
> >     of the function, so the local variable of pointer type should be
> > sufficient
> >
> > what it would be for patch v2?
>
> Sorry, but I don't understand the above at all.
>
> julia
>
> >
> >
> >
> > Thanks,
> > Sandhya
> >
> > On Sun, Mar 20, 2016 at 8:01 PM, Julia Lawall <julia.lawall@lip6.fr>
> wrote:
> >       On Sun, 20 Mar 2016, Sandhya Bankar wrote:
> >
> >       > Correct the argument of sizeof().
> >
> >       What do you mean by correct?  Was the value wrong before, ie 27
> >       when it
> >       should have been 45?  Or is it a coding style issue, ie *x
> >       instead of a
> >       type name?
> >
> >       julia
> >
> >       >
> >       > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> >       > ---
> >       >  drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 4 ++--
> >       >  1 file changed, 2 insertions(+), 2 deletions(-)
> >       >
> >       > diff --git
> >       a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> >       b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> >       > index 0d32e65..89f9390 100644
> >       > --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> >       > +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> >       > @@ -1968,7 +1968,7 @@ static int
> >       kiblnd_net_init_pools(kib_net_t *net, __u32 *cpts, int ncpts)
> >       >        */
> >       >
> >       >       net->ibn_fmr_ps = cfs_percpt_alloc(lnet_cpt_table(),
> >       > -
> >       sizeof(kib_fmr_poolset_t));
> >       > +
> >       sizeof(*net->ibn_fmr_ps));
> >       >       if (!net->ibn_fmr_ps) {
> >       >               CERROR("Failed to allocate FMR pool array\n");
> >       >               rc = -ENOMEM;
> >       > @@ -1992,7 +1992,7 @@ static int
> >       kiblnd_net_init_pools(kib_net_t *net, __u32 *cpts, int ncpts)
> >       >
> >       >   create_tx_pool:
> >       >       net->ibn_tx_ps = cfs_percpt_alloc(lnet_cpt_table(),
> >       > -
> >        sizeof(kib_tx_poolset_t));
> >       > +
> >        sizeof(*net->ibn_tx_ps));
> >       >       if (!net->ibn_tx_ps) {
> >       >               CERROR("Failed to allocate tx pool array\n");
> >       >               rc = -ENOMEM;
> >       > --
> >       > 1.8.3.4
> >       >
> > > --
> > > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to
> > outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/ed2d6f01c194ec9700dcec61
> > 409dc30e892136ad.1458454678.git.bankarsandhya512%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> >
> >
> >
>

--089e012955b48fbd54052e7cde0c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>To prepare this patch i have used following cocc=
i file.<br></div>Description mentioned below:<br><br>@disable sizeof_type_e=
xpr@<br>type T;<br>T **x;<br>@@<br><br>=C2=A0 x =3D<br>=C2=A0 &lt;+...sizeo=
f(<br>- T=C2=A0 <br>+ *x<br>=C2=A0 )...+&gt;<br><br></div>whose description=
 is as below:<br>=C2=A0<br>badty/badty.cocci -=C2=A0 Correct the size argum=
ent to kzalloc<br><br>=C2=A0=C2=A0=C2=A0 obj has type struct snmp_object **=
, not struct snmp_object *.=C2=A0 But indeed<br>=C2=A0=C2=A0=C2=A0 it is no=
t even clear why kmalloc is needed.=C2=A0 The memory is freed by the end<br=
>=C2=A0=C2=A0=C2=A0 of the function, so the local variable of pointer type =
should be sufficient.<br><div><br></div><div>that&#39;s why i have used &qu=
ot;Correct&quot; word in heading. <br></div><div>Please let me know if patc=
h v2 is required with different heading?<br><br><br></div><div>Thanks,<br><=
/div><div>Sandhya<br></div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Sun, Mar 20, 2016 at 9:03 PM, Julia Lawall <span dir=3D=
"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.l=
awall@lip6.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span=
 class=3D""><br>
<br>
On Sun, 20 Mar 2016, sandhya bankar wrote:<br>
<br>
&gt;<br>
&gt; Yes.It is coding style issue.<br>
&gt;<br>
&gt; I have read following description:<br>
&gt;<br>
&gt; badty/badty.cocci -=C2=A0 Correct the size argument to kzalloc<br>
&gt; =C2=A0=C2=A0 =C2=A0obj has type struct snmp_object **, not struct snmp=
_object *.=C2=A0 But<br>
&gt; indeed<br>
&gt; =C2=A0=C2=A0 =C2=A0it is not even clear why kmalloc is needed.=C2=A0 T=
he memory is freed by the<br>
&gt; end<br>
&gt; =C2=A0=C2=A0 =C2=A0of the function, so the local variable of pointer t=
ype should be<br>
&gt; sufficient<br>
&gt;<br>
&gt; what it would be for patch v2?<br>
<br>
</span>Sorry, but I don&#39;t understand the above at all.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
julia<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Sandhya<br>
&gt;<br>
&gt; On Sun, Mar 20, 2016 at 8:01 PM, Julia Lawall &lt;<a href=3D"mailto:ju=
lia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sun, 20 Mar 2016, Sandhya Bankar wrote:<b=
r>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Correct the argument of sizeof().<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0What do you mean by correct?=C2=A0 Was the v=
alue wrong before, ie 27<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0when it<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0should have been 45?=C2=A0 Or is it a coding=
 style issue, ie *x<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0instead of a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0type name?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Sandhya Bankar &lt;<a hr=
ef=3D"mailto:bankarsandhya512@gmail.com">bankarsandhya512@gmail.com</a>&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/lustre/lnet/klnds=
/o2iblnd/o2iblnd.c | 4 ++--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 2 insertions(+), =
2 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0a/drivers/staging/lustre/lnet/klnds/o2iblnd/=
o2iblnd.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/lustre/lnet/klnds/o2iblnd/=
o2iblnd.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 0d32e65..89f9390 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/lustre/lnet/klnds=
/o2iblnd/o2iblnd.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/lustre/lnet/klnds=
/o2iblnd/o2iblnd.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -1968,7 +1968,7 @@ static int<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0kiblnd_net_init_pools(kib_net_t *net, __u32 =
*cpts, int ncpts)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0net-&gt;ibn_f=
mr_ps =3D cfs_percpt_alloc(lnet_cpt_table(),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0sizeof(kib_fmr_poolset_t));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0sizeof(*net-&gt;ibn_fmr_ps));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!net-&gt;=
ibn_fmr_ps) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0CERROR(&quot;Failed to allocate FMR pool array\n&quot;);<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rc =3D -ENOMEM;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -1992,7 +1992,7 @@ static int<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0kiblnd_net_init_pools(kib_net_t *net, __u32 =
*cpts, int ncpts)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0create_tx_pool:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0net-&gt;ibn_t=
x_ps =3D cfs_percpt_alloc(lnet_cpt_table(),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0sizeof(kib_tx_poolset_t));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0sizeof(*net-&gt;ibn_tx_ps));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!net-&gt;=
ibn_tx_ps) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0CERROR(&quot;Failed to allocate tx pool array\n&quot;);<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rc =3D -ENOMEM;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 1.8.3.4<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt; --<br>
&gt; &gt; You received this message because you are subscribed to the Googl=
e<br>
&gt; Groups &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; To unsubscribe from this group and stop receiving emails from it,=
<br>
&gt; send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@goog=
legroups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; &gt; To post to this group, send email to<br>
&gt; <a href=3D"mailto:outreachy-kernel@googlegroups.com">outreachy-kernel@=
googlegroups.com</a>.<br>
&gt; &gt; To view this discussion on the web visithttps://<a href=3D"http:/=
/groups.google.com/d/msgid/outreachy-kernel/ed2d6f01c194ec9700dcec61" rel=
=3D"noreferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kerne=
l/ed2d6f01c194ec9700dcec61</a><br>
&gt; 409dc30e892136ad.1458454678.git.bankarsandhya512%<a href=3D"http://40g=
mail.com" rel=3D"noreferrer" target=3D"_blank">40gmail.com</a>.<br>
&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/d/op=
tout" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/opto=
ut</a>.<br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;</div></div></blockquote></div><br></div>

--089e012955b48fbd54052e7cde0c--

