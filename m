X-GM-THRID: 6534517780926955520
X-Received: by 10.223.224.136 with SMTP id c8mr1905816wri.31.1521976935707;
        Sun, 25 Mar 2018 04:22:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.167.84 with SMTP id q81ls962461wme.1.gmail; Sun, 25 Mar
 2018 04:22:14 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtsUqu5bF+xOCtsvL2LO1O8MhIA0pEnDDf0Q9Ys/rXBhTG0efuRbT5HTvB0bvW1HG9Hvhfx
X-Received: by 10.28.236.70 with SMTP id k67mr1760920wmh.9.1521976934532;
        Sun, 25 Mar 2018 04:22:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521976934; cv=none;
        d=google.com; s=arc-20160816;
        b=gry9mEzhtb/C5fim0xx6urUo/VZL2vSPzry8Mut2CrUdb1ulQ7LmUgHwCVcqQDmp9I
         NCxqT0mv/06Sd83GSxlq1hHvz+IjEd3xDII5f1gVm9irUJjA/poWxi+CbDhWeB6lA7e/
         e3ak7YFyPJ1TIqqbvf0NtR6MDe7r2VqDnLrmBFF3WcmM+sdmvcnehA1oZzvRVpty910v
         DwuTLJB7CYvOn4qwsTT2fgWEh2qZzPdwsi4HiQ7DDXlH1ygmKEwE1p/N9L7DIyGfhu9G
         EIl0Zp/ylcXvmDCsUEkK+09ZJ9FZ6pKJYohIpfkl7841TAmDrK1yWOJ29MfKxSCqvlyc
         spVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=gmg6eOIBT79KXGo8apT37QQLok1lcGp3orCbGcnt3Gs=;
        b=X1vSFhIvvEGJge4dEVc1zbBXg/c08CYmGZqJtbrFJ1vwEvy8Kwx1l29uDiPPFt5Vyg
         PwSu5RZl1mDV6XlyF7tbZsKkOlrDpBJD4JmfhQHreIvsry7LcSqmzyjJg1hHxsT2QuzS
         jA3yz/Zj8FyzmA1T472Oogz2ZV0tPAoAOZY6czytZpzaDCDwzR3mpi1FOZuRH/FlmIT+
         dhmUKD76NSy9UczOH4yEfVXcqLd3CQ7/Yw/TfDy61dUxLqYEl5LHxWmW0cezkVK0Ccss
         5ffOo0YkPqvqBamkxTWlKqt6OpOsAuv/+iZ5i/bE1BQy0/RGBxzCoY/cv2aKZ6wgoIyo
         j6mQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H1FmjBME;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22e as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x22e.google.com (mail-lf0-x22e.google.com. [2a00:1450:4010:c07::22e])
        by gmr-mx.google.com with ESMTPS id g7si258485wrb.2.2018.03.25.04.22.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Mar 2018 04:22:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22e as permitted sender) client-ip=2a00:1450:4010:c07::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H1FmjBME;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22e as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22e.google.com with SMTP id g203-v6so24135950lfg.11
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Mar 2018 04:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=gmg6eOIBT79KXGo8apT37QQLok1lcGp3orCbGcnt3Gs=;
        b=H1FmjBMESXB4juTh66HqswvqgzJeQfgWCC0+DwtKQdP3ZXSJL9ejppSgZyRJm6Ql86
         4LXQugwgaQrwXIPkvotzfjYSs/voO8tJIplPKaxjcEJ+XqeIpatfry9jqBs+ncscUtaf
         sY1Ce1Xjoxd9xilJJf/on072vRhOtCYXQ8kWkH/N0uhQfhKXOcX1NkREhs/hF/8VnomQ
         62DDO6oFMBL0Om961tzg5T7BYQ6lfOIiNGnRIfPSMKGUFIGAP9Rm7TurAVGpAinugxZX
         b0DoY1X24n57pNi4sIbI0JKiV+nTyjHqrq1Kw7Q5VeepE6Zxr+MQrj6mN0bfXCEGQiEo
         Q/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=gmg6eOIBT79KXGo8apT37QQLok1lcGp3orCbGcnt3Gs=;
        b=C25+SHnRZEOWT6UbqiGwb9K5QBUT2a2OQkwEltkjGTnJVCZaZOJwCfZ6iLySgGauA8
         84RgM7Wl3zPoolhR+CeHCig7zt+r3w4Wrwm/IrRucv49gtCgBoWb7xshDRd+kgJZj+Mq
         WbiInwE1GfvcdoVudHTraIBzBccdON5UyTbbpNY/bkcX7IrMlt8GiSCRrLkG6BhR45Lk
         ysX3t5lMft6Y2qDooQidGL9+kAKvBvKVRXqILqrSmH2EEkI49TCvFP9xPOV2cC9xOdni
         MrurFvgvpK0kPvNfmhOYUtShj0Rb5MKpq5CY2oU8Ee6OpqDGzKzka0en+hZRsn4Zsead
         LWGA==
X-Gm-Message-State: AElRT7Hv+Giuy6nyWWoFJwjU4UvWZEMowwqnxX46E+dEva8ZOiVFryaN
	gr7ICHynXLzsUARh8M+wBprOaTaUUPyfW1Dx/Xo=
X-Received: by 10.46.23.70 with SMTP id l67mr22970679lje.132.1521976934160;
 Sun, 25 Mar 2018 04:22:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:1a8f:0:0:0:0:0 with HTTP; Sun, 25 Mar 2018 04:22:13
 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1803190805260.2864@hadrien>
References: <20180319050530.GA25589@seema-Inspiron-15-3567> <alpine.DEB.2.20.1803190805260.2864@hadrien>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Sun, 25 Mar 2018 16:52:13 +0530
Message-ID: <CA+XqjF8-33LS=5obrhxtBUB97WSCSLNTxCTFH_oNN6EqUZE52g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] gpu: drm: Use list_{next/prev}_entry
 instead of list_entry
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: daniel.vetter@intel.com, Gustavo Padovan <gustavo@padovan.org>, 
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, 
	Ben Skeggs <bskeggs@redhat.com>, dri-devel@lists.freedesktop.org, 
	LKML <linux-kernel@vger.kernel.org>, nouveau@lists.freedesktop.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="001a114af28a845f5805683adec8"

--001a114af28a845f5805683adec8
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 19, 2018 at 12:44 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Mon, 19 Mar 2018, Arushi Singhal wrote:
>
> > This patch replace list_entry with list_{next/prev}_entry as it makes
> > the code more clear to read.
> > Done using coccinelle:
> >
> > @@
> > expression e1;
> > identifier e3;
> > type t;
> > @@
> > (
> > - list_entry(e1->e3.next,t,e3)
> > + list_next_entry(e1,e3)
> > |
> > - list_entry(e1->e3.prev,t,e3)
> > + list_prev_entry(e1,e3)
> > )
>
> This looks like a rule that could be nice for the Linux kernel in general,
> because the code really is much simpler.
>
> I would suggest to write the rule in a more robust way, as follows:
>
> @@
> identifier e3;
> type t;
> t *e1;
> @@
>
> (
> - list_entry(e1->e3.next,t,e3)
> + list_next_entry(e1,e3)
> |
> - list_entry(e1->e3.prev,t,e3)
> + list_prev_entry(e1,e3)
> )
>
> @@
> expression e1;
> identifier e3;
> @@
>
> (
> - list_entry(e1->e3.next,typeof(*e1),e3)
> + list_next_entry(e1,e3)
> |
> - list_entry(e1->e3.prev,typeof(*e1),e3)
> + list_prev_entry(e1,e3)
>
> This checks that the type that is specified corresponds to the one on e1.
> It could actually be that the call is getting the first element of a list,
> from some different type, and coincidentally the two types have the same
> field name for the list element.
>
> Unfortunately, the second rule, with the typeof call, doesn't currently
> work in Coccinelle, because the semantic patch language doesn't actually
> support typeof, and thinks that it is a function call.  I will fix this.
>
> To make a semantic patch for the kernel, you can try running spgen on the
> above file and answer the questions that it asks.  You can find examples
> in the coccinelle/scripts directory.  Just run
>
> spgen foo.cocci
>
> Then answer the questions.  Then run
>
> spgen foo.cocci > foo_for_kernel.cocci
>
> The second run will use the results of the first run to print the semantic
> patch.  Let me know if you have any questions.  You can always adjust the
> semantic patch that is generated by hand afterwards if needed.
>
>
Thanks Julia for explanation and it helped me to learn about Spgen tool.
I'll make the changes and resend.

Arushi

> julia
>
>
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> >  drivers/gpu/drm/drm_lease.c                    | 2 +-
> >  drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_lease.c b/drivers/gpu/drm/drm_lease.c
> > index 1402c0e..4dcfb5f 100644
> > --- a/drivers/gpu/drm/drm_lease.c
> > +++ b/drivers/gpu/drm/drm_lease.c
> > @@ -340,7 +340,7 @@ static void _drm_lease_revoke(struct drm_master *top)
> >                               break;
> >
> >                       /* Over */
> > -                     master = list_entry(master->lessee_list.next,
> struct drm_master, lessee_list);
> > +                     master = list_next_entry(master, lessee_list);
> >               }
> >       }
> >  }
> > diff --git a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> > index e4c8d31..81c3567 100644
> > --- a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> > +++ b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> > @@ -134,7 +134,7 @@ nvkm_cstate_find_best(struct nvkm_clk *clk, struct
> nvkm_pstate *pstate,
> >                              nvkm_volt_map(volt, volt->max2_id,
> clk->temp));
> >
> >       for (cstate = start; &cstate->head != &pstate->list;
> > -          cstate = list_entry(cstate->head.prev, typeof(*cstate),
> head)) {
> > +          cstate = list_prev_entry(cstate, head)) {
> >               if (nvkm_cstate_valid(clk, cstate, max_volt, clk->temp))
> >                       break;
> >       }
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20180319050530.GA25589%40seema-Inspiron-15-3567.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a114af28a845f5805683adec8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Mar 19, 2018 at 12:44 PM, Julia Lawall <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.f=
r</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">=
<br>
<br>
On Mon, 19 Mar 2018, Arushi Singhal wrote:<br>
<br>
&gt; This patch replace list_entry with list_{next/prev}_entry as it makes<=
br>
&gt; the code more clear to read.<br>
&gt; Done using coccinelle:<br>
&gt;<br>
&gt; @@<br>
&gt; expression e1;<br>
&gt; identifier e3;<br>
&gt; type t;<br>
&gt; @@<br>
&gt; (<br>
&gt; - list_entry(e1-&gt;e3.next,t,e3)<br>
&gt; + list_next_entry(e1,e3)<br>
&gt; |<br>
&gt; - list_entry(e1-&gt;e3.prev,t,e3)<br>
&gt; + list_prev_entry(e1,e3)<br>
&gt; )<br>
<br>
</span>This looks like a rule that could be nice for the Linux kernel in ge=
neral,<br>
because the code really is much simpler.<br>
<br>
I would suggest to write the rule in a more robust way, as follows:<br>
<br>
@@<br>
identifier e3;<br>
type t;<br>
t *e1;<br>
<span class=3D"">@@<br>
<br>
(<br>
- list_entry(e1-&gt;e3.next,t,e3)<br>
+ list_next_entry(e1,e3)<br>
|<br>
- list_entry(e1-&gt;e3.prev,t,e3)<br>
+ list_prev_entry(e1,e3)<br>
)<br>
<br>
</span><span class=3D"">@@<br>
expression e1;<br>
identifier e3;<br>
</span>@@<br>
<br>
(<br>
- list_entry(e1-&gt;e3.next,typeof(<wbr>*e1),e3)<br>
+ list_next_entry(e1,e3)<br>
|<br>
- list_entry(e1-&gt;e3.prev,typeof(<wbr>*e1),e3)<br>
+ list_prev_entry(e1,e3)<br>
<br>
This checks that the type that is specified corresponds to the one on e1.<b=
r>
It could actually be that the call is getting the first element of a list,<=
br>
from some different type, and coincidentally the two types have the same<br=
>
field name for the list element.<br>
<br>
Unfortunately, the second rule, with the typeof call, doesn&#39;t currently=
<br>
work in Coccinelle, because the semantic patch language doesn&#39;t actuall=
y<br>
support typeof, and thinks that it is a function call.=C2=A0 I will fix thi=
s.<br>
<br>
To make a semantic patch for the kernel, you can try running spgen on the<b=
r>
above file and answer the questions that it asks.=C2=A0 You can find exampl=
es<br>
in the coccinelle/scripts directory.=C2=A0 Just run<br>
<br>
spgen foo.cocci<br>
<br>
Then answer the questions.=C2=A0 Then run<br>
<br>
spgen foo.cocci &gt; foo_for_kernel.cocci<br>
<br>
The second run will use the results of the first run to print the semantic<=
br>
patch.=C2=A0 Let me know if you have any questions.=C2=A0 You can always ad=
just the<br>
semantic patch that is generated by hand afterwards if needed.<br>
<br></blockquote><div><br></div><div>Thanks Julia for explanation and it he=
lped me to learn about Spgen tool.<br></div><div>I&#39;ll make the changes =
and resend.<br><br>Arushi<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt;<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/gpu/drm/drm_lease.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
&gt;=C2=A0 drivers/gpu/drm/nouveau/nvkm/<wbr>subdev/clk/base.c | 2 +-<br>
&gt;=C2=A0 2 files changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/gpu/drm/drm_lease.c b/drivers/gpu/drm/drm_lease.c=
<br>
&gt; index 1402c0e..4dcfb5f 100644<br>
&gt; --- a/drivers/gpu/drm/drm_lease.c<br>
&gt; +++ b/drivers/gpu/drm/drm_lease.c<br>
&gt; @@ -340,7 +340,7 @@ static void _drm_lease_revoke(struct drm_master *t=
op)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/* Over */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0master =3D list_entry(master-&gt;lessee_<wbr>list.next, struct drm_m=
aster, lessee_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0master =3D list_next_entry(master, lessee_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 }<br>
&gt; diff --git a/drivers/gpu/drm/nouveau/<wbr>nvkm/subdev/clk/base.c b/dri=
vers/gpu/drm/nouveau/<wbr>nvkm/subdev/clk/base.c<br>
&gt; index e4c8d31..81c3567 100644<br>
&gt; --- a/drivers/gpu/drm/nouveau/<wbr>nvkm/subdev/clk/base.c<br>
&gt; +++ b/drivers/gpu/drm/nouveau/<wbr>nvkm/subdev/clk/base.c<br>
&gt; @@ -134,7 +134,7 @@ nvkm_cstate_find_best(struct nvkm_clk *clk, struct=
 nvkm_pstate *pstate,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 nvkm_volt_map(volt, volt-&gt;max2_id, cl=
k-&gt;temp));<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (cstate =3D start; &amp;cstate-&gt;head =
!=3D &amp;pstate-&gt;list;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cstate =3D list_entry(cstate-&gt;h=
ead.prev, typeof(*cstate), head)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cstate =3D list_prev_entry(cstate,=
 head)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (nvkm_cstate_=
valid(clk, cstate, max_volt, clk-&gt;temp))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; --<br>
&gt; 2.7.4<br>
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
gle.com/d/msgid/outreachy-kernel/20180319050530.GA25589%40seema-Inspiron-15=
-3567" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wb=
r>msgid/outreachy-kernel/<wbr>20180319050530.GA25589%<wbr>40seema-Inspiron-=
15-3567</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a114af28a845f5805683adec8--

