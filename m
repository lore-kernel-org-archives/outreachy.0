X-GM-THRID: 6534517780926955520
X-Received: by 10.28.170.200 with SMTP id t191mr1707363wme.10.1521987500472;
        Sun, 25 Mar 2018 07:18:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.0.78 with SMTP id 75ls1090224wma.4.gmail; Sun, 25 Mar 2018
 07:18:19 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt6CM8CXJ6FcmUUc6aNAD8lTrgXkqv/Q3OyTEe80DG32Aid//tqMM7LZC33FHcHUCLNgaGd
X-Received: by 10.28.45.88 with SMTP id t85mr541616wmt.2.1521987499407;
        Sun, 25 Mar 2018 07:18:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521987499; cv=none;
        d=google.com; s=arc-20160816;
        b=vRzfCQMtkYK5vTIjPK6d5K3HOhvrlyoAozFTPKErBlt0lveuJ18JCQAx6JSD9TgqoX
         UhS39DEOmWogNTJ3YvotmhAXCfE84AnPa64HAh9qEIkLM6IcRO6+0WRpd80UQoBKjDv7
         6d7ks/ZTu2ZtGxiqBtBAa7Q8TQ1g9oeExP9LXEytCGecDaJBtDTN7oikuBaeCLuC8dae
         wUrrV64JRA0qM+Bt0j6/IDeIHnKjU91jYIL5LpjnvbimkatxUjVea3Yxr8s7emjxHwZz
         gF3hJB2mI0+SmPh2phl1GCsZBD1k9O5CRlnibhYrZKehGENUcCDzKFKtQ0lrT48uRhWn
         bEVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=jlxvSBbdbpzHgFrxlAn/gXlFx5PBC+qu5Cpeltpglyc=;
        b=h1jDgV2Ve65KHefkaIKT194d9d6yRK3makljm8O2KwwiTHvBdQC7DFHr2NmZ4KxYI1
         l/GWYY7OVkgX2TtwOhnhHdWhCLuDcm8Q0wAtmUmQuueiwloZSHaTzxLzTTVwK8MS4jld
         kne26r/j4ff1llCw+p9TC87ax9BXR8Kw53WCRmJqH23s0w9mf9RplFNwWfs21Yt8H06H
         BTIiaGyG8zM3oNDdErCUQGV853vzJHFoUCO7PbtL61cTd8BuNiPCD3lPbowWwaBCgtHJ
         sBEqLRGs1dMkCKyIPj9tpExeHymdNvRHqZ6Gysc+rQSEtDjkfHFGV2Lft7M2LnXxAsih
         6rAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LvTII3NF;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id t7si84056wmh.4.2018.03.25.07.18.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Mar 2018 07:18:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LvTII3NF;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id j68-v6so24475733lfg.13
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Mar 2018 07:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=jlxvSBbdbpzHgFrxlAn/gXlFx5PBC+qu5Cpeltpglyc=;
        b=LvTII3NFwWLmCrBkl042Icv9X2ECohmvhPBSRkg1WsM72wzSlPlie/1DiRZC8BkDyP
         mqzdnTyz+hHbGyqfCDlSgLHDrrvhd/t3uEQ20U/JgaGhpGDEY9fvDk4zxzGy/YuSSo5G
         gF6OweYyLCpHwSinlGsewGQBla2koYrQoNaGuXjTZ7Usju2aPyZz0wcvR2POdOWznLR1
         7hRPNkIz8xNMH2gsXrJb6TorFHAvMwfLG1UQsGg0rBN9WqO2wGZnfNS65Fmkx330ED+K
         tRnc1T59dMzivD6c/BBlP50V3jQmN11LBuFJ1meZm4wmiH62doJwi5BCkE8RZDykBXXS
         CIFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=jlxvSBbdbpzHgFrxlAn/gXlFx5PBC+qu5Cpeltpglyc=;
        b=T5LS/cZy4wqzDOV4HuTkNnTuNlDuOqXD/UTQqrRFNzH+yuX69Y5cSwAqgFsWsXy0ob
         FDuuRQ/ziuhGNIkCuIl5JMg2P/lrvHh6qUVd1LfQlXMe+In3lakMIncbltFGg/p0JKbu
         q+tDfW+t0RR/lld9OuUSwmKz44lli9Rigi0d1hI7Dn5M9OVPHN+SMIg50fcVtp2HoGmV
         M6hPUJ7rspUGaDWhFrWPbMB2qmaVDIPrFsjRHMAT8u5t4tGi3aXiv0/armYiz5/u5HCw
         PGhD+WBLRQ1VIXWQxAekL3C/y5zjq4LiKMyaoGpcSoxhFrTyP2Zi0azarL5Meno7xo0A
         GTeA==
X-Gm-Message-State: AElRT7HenwUumcd2NwQmmr8aRE0xuBiT4jiGdXdpiNbn948Ia6jJ7UR1
	NbaduhefflpUAcIblI7Oiw8CAvsV/nJ1Jkxx1lU=
X-Received: by 2002:a19:d78a:: with SMTP id q10-v6mr9391124lfi.94.1521987498737;
 Sun, 25 Mar 2018 07:18:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:1a8f:0:0:0:0:0 with HTTP; Sun, 25 Mar 2018 07:18:18
 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1803190805260.2864@hadrien>
References: <20180319050530.GA25589@seema-Inspiron-15-3567> <alpine.DEB.2.20.1803190805260.2864@hadrien>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Sun, 25 Mar 2018 19:48:18 +0530
Message-ID: <CA+XqjF9jHrOFL4LosK5GdbAgpmQRd9=08eNzvfzYxFaeXk972g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] gpu: drm: Use list_{next/prev}_entry
 instead of list_entry
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: daniel.vetter@intel.com, Gustavo Padovan <gustavo@padovan.org>, 
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, 
	Ben Skeggs <bskeggs@redhat.com>, dri-devel@lists.freedesktop.org, 
	LKML <linux-kernel@vger.kernel.org>, nouveau@lists.freedesktop.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000370afc05683d5402"

--000000000000370afc05683d5402
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

Hi Julia,

I tried spgen and found that second rule is still not working. It's not
able to detect the second rule.
Is it working for you?

Thanks,
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

--000000000000370afc05683d5402
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
semantic patch that is generated by hand afterwards if needed.<br></blockqu=
ote><div><br></div><div>Hi Julia,<br><br></div><div>I tried spgen and found=
 that second rule is still not working. It&#39;s not able to detect the sec=
ond rule.<br></div><div>Is it working for you?<br><br></div><div>Thanks,<br=
></div><div>Arushi<br><br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
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

--000000000000370afc05683d5402--

