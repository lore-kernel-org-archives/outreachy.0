X-GM-THRID: 6537549739579146240
X-Received: by 10.223.172.146 with SMTP id o18mr3396834wrc.18.1522150168907;
        Tue, 27 Mar 2018 04:29:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.71.29 with SMTP id u29ls262644wma.5.gmail; Tue, 27 Mar 2018
 04:29:27 -0700 (PDT)
X-Google-Smtp-Source: AIpwx48uhIQBeL+6NjsBzl7u8AF1KRcNCcknyDXCK0UBgRRvKDjxKTM7k+dbZSeLFE6MT9dzFDJv
X-Received: by 10.28.214.132 with SMTP id n126mr224391wmg.32.1522150167648;
        Tue, 27 Mar 2018 04:29:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522150167; cv=none;
        d=google.com; s=arc-20160816;
        b=XHcQQsixghDdNCDA0Nvwg7hnAQ5cEjLIe04BbO0BhuaDlbXsJ/P0lPL0mkg4wGbtkm
         apM9xEDyWpWa0V4BUpCAZfBzyyFJ6mZ86lgZu0BYTbsBtclB6RHdlp0u/n3/Irhg/DVZ
         isAUcIrs4Nocng/pn8+Hz4e6q8lZ+tcfXTjsQmNJDyX7pBTK80L3f0pLD2Qx83fmfGnK
         CQb7DcHPOAcsyTkr+jWVsCQfOx6T4wu6pfG6l6WBo+z4tk1ZLOCweWs+L6MKVWYa84XY
         xk2zHHXQIvyLvXXLIcMgWzApvHw/zT3fKho9eAksqjGVBlM+WAwA9aG/8LMOxMGCaycW
         /fyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=jF55mc2srbd4xL5nklpr1sa1BfC/YVHJ164/AcFvWqA=;
        b=Pw6LHvnTaqOXR6rYI2dHr0DScv9Bi4xpj41fASJABFx1SHaVUqLC/9KFqfQwC2kaqZ
         sHXFQNxkR+4q1dKRN/+rT+l9gmsdCgyRP/mECpWCJg23HeGj8uBJfkbyl15MpQIB3Ftk
         l4GrLnO4hNs+5ny/sqKSlG4HlZb5rsNimAejLpMt73HyEnbaMKCd7zLai1Y373kN0KFi
         MtpLe1AJsOGsGiw56wVBI1K1v6iuJTaeokUenmdFjGedgSy4EQD3Hn/h76+5V8BW04RE
         ocz0/uP5qSFPr7sELh0vfWBqKwi/tk3jqSIA8r4BN4b5lGsEtJLuM2dbkhgm8Kh5uBv3
         bVxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mp1pYamM;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x22a.google.com (mail-lf0-x22a.google.com. [2a00:1450:4010:c07::22a])
        by gmr-mx.google.com with ESMTPS id u1si32712wri.3.2018.03.27.04.29.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Mar 2018 04:29:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) client-ip=2a00:1450:4010:c07::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mp1pYamM;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22a.google.com with SMTP id m16-v6so29024422lfc.4
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Mar 2018 04:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=jF55mc2srbd4xL5nklpr1sa1BfC/YVHJ164/AcFvWqA=;
        b=mp1pYamMRUWn2V/T8eWcGaAHQ8N4u+uBWaGfgR4coSKEqcRFpQpq+NrliHGBQjw9Dk
         sBRdN91v0kKn1vyE7TlKT4gk3oCLffSCG/ATyfEeCIC+6XI3EYG6/okasGO6YIIY7X/7
         qmnPd4mOhoAyOOL4jkFgHEbb1rXGY8xO3txK55ShW07HJ+QEuBo3m8tOA8nwJhBVfF+g
         lptU6XXHGketlt6R/Ts2lwMp+cDPg5KE3MCwIflx+FAv93Zyl2QlD13RHYyugBMl51D/
         H376R5JrAf4/Sr37OleV0dxKSaPbzI+n+pRfDork0O6vMaEv4GXP8l/fQ8fS0njWZe62
         2oiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=jF55mc2srbd4xL5nklpr1sa1BfC/YVHJ164/AcFvWqA=;
        b=uEjTGT3dtJsbj9IR7YVa9T5fif28o8Vnp7X2hNGPwKBorKnf22l4GAi2BoDCdIiVhs
         r5uABT+1kUVxzpRsbclb0iTg6hTHLmTdgu5xMTcNh1a032kmg4QQ5mSGZtkyNW/npgIK
         688qO10zkc7/6FLFAJ9oU6BDZ/3ZRKobj3DCWrap0VQYtVbiwlsvucDS8BmaJbjIgIpz
         qsKC8wpLCKYz4AVeeZEYlt1bw0rRrV7DCUtYqaZF/U7NakEewfQLOmEnyBxZvJ+hC/1O
         sjukr0oouDwZcfz4M2AEc9OJBRd1USha5+EQ8s7weJaS8ox1gHIQvvxFBQPm7XOJAeRp
         GvJQ==
X-Gm-Message-State: AElRT7GdVkxXuigSsyYb5TYKTu4wMqSgARSiEHVqgJHXtRMOSif3IHo5
	TnhzaTgg4iWbfRAs5ud7K0kXw94xF9Rn6Zs+tEE=
X-Received: by 2002:a19:2850:: with SMTP id o77-v6mr17090861lfo.121.1522150167207;
 Tue, 27 Mar 2018 04:29:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:1a8f:0:0:0:0:0 with HTTP; Tue, 27 Mar 2018 04:29:26
 -0700 (PDT)
In-Reply-To: <CACAvsv5Wzd6yFsweNXRNA93i5UeTX5qrb_xwPOeobqSjhLEMjg@mail.gmail.com>
References: <20180327091156.GA23787@seema-Inspiron-15-3567> <CACAvsv5Wzd6yFsweNXRNA93i5UeTX5qrb_xwPOeobqSjhLEMjg@mail.gmail.com>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Tue, 27 Mar 2018 16:59:26 +0530
Message-ID: <CA+XqjF_iDq1KXcKp2j_HYz3JBg+GgKvkVXQ8Y62r8jNiGhE8=w@mail.gmail.com>
Subject: Re: [PATCH] gpu: drm: nouveau: Use list_for_each_entry_from_reverse
To: Ben Skeggs <skeggsb@gmail.com>
Cc: Ben Skeggs <bskeggs@redhat.com>, David Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org, 
	LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000002e425056863345d"

--00000000000002e425056863345d
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 27, 2018 at 2:44 PM, Ben Skeggs <skeggsb@gmail.com> wrote:

> On 27 March 2018 at 19:11, Arushi Singhal
> <arushisinghal19971997@gmail.com> wrote:
> > It's better to use "list_for_each_entry_from_reverse" for iterating list
> > than "for loop" as it makes the code more clear to read.
> > This patch replace "for loop" with "list_for_each_entry_from_reverse"
> > and remove "cstate" variable as it is redundant in the code.
> I would prefer to also see "start" renamed to "cstate" with this change.
>
Hello Ben

Yes, using cstate is more accurate, as most of the functions are using
"cstate" variable.

Best
Arushi

>
> Ben.
>
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> >  drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c | 8 +++-----
> >  1 file changed, 3 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> > index 81c3567..5e56f74 100644
> > --- a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> > +++ b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> > @@ -113,7 +113,6 @@ nvkm_cstate_find_best(struct nvkm_clk *clk, struct
> nvkm_pstate *pstate,
> >  {
> >         struct nvkm_device *device = clk->subdev.device;
> >         struct nvkm_volt *volt = device->volt;
> > -       struct nvkm_cstate *cstate;
> >         int max_volt;
> >
> >         if (!pstate || !start)
> > @@ -133,13 +132,12 @@ nvkm_cstate_find_best(struct nvkm_clk *clk, struct
> nvkm_pstate *pstate,
> >                 max_volt = min(max_volt,
> >                                nvkm_volt_map(volt, volt->max2_id,
> clk->temp));
> >
> > -       for (cstate = start; &cstate->head != &pstate->list;
> > -            cstate = list_prev_entry(cstate, head)) {
> > -               if (nvkm_cstate_valid(clk, cstate, max_volt, clk->temp))
> > +       list_for_each_entry_from_reverse(start, &pstate->list, head) {
> > +               if (nvkm_cstate_valid(clk, start, max_volt, clk->temp))
> >                         break;
> >         }
> >
> > -       return cstate;
> > +       return start;
> >  }
> >
> >  static struct nvkm_cstate *
> > --
> > 2.7.4
> >
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel
>

--00000000000002e425056863345d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Mar 27, 2018 at 2:44 PM, Ben Skeggs <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:skeggsb@gmail.com" target=3D"_blank">skeggsb@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">On 27 March 2018 at 19:11,=
 Arushi Singhal<br>
<span class=3D"">&lt;<a href=3D"mailto:arushisinghal19971997@gmail.com">aru=
shisinghal19971997@gmail.<wbr>com</a>&gt; wrote:<br>
&gt; It&#39;s better to use &quot;list_for_each_entry_from_<wbr>reverse&quo=
t; for iterating list<br>
&gt; than &quot;for loop&quot; as it makes the code more clear to read.<br>
&gt; This patch replace &quot;for loop&quot; with &quot;list_for_each_entry=
_from_<wbr>reverse&quot;<br>
&gt; and remove &quot;cstate&quot; variable as it is redundant in the code.=
<br>
</span>I would prefer to also see &quot;start&quot; renamed to &quot;cstate=
&quot; with this change.<br></blockquote><div>Hello Ben<br><br>Yes, using c=
state is more accurate, as most of the functions are using &quot;cstate&quo=
t; variable.<br><br></div><div>Best<br></div><div>Arushi<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">
<br>
Ben.<br>
<div><div class=3D"h5"><br>
&gt;<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/gpu/drm/nouveau/nvkm/<wbr>subdev/clk/base.c | 8 +++-----=
<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 5 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/gpu/drm/nouveau/<wbr>nvkm/subdev/clk/base.c b/dri=
vers/gpu/drm/nouveau/<wbr>nvkm/subdev/clk/base.c<br>
&gt; index 81c3567..5e56f74 100644<br>
&gt; --- a/drivers/gpu/drm/nouveau/<wbr>nvkm/subdev/clk/base.c<br>
&gt; +++ b/drivers/gpu/drm/nouveau/<wbr>nvkm/subdev/clk/base.c<br>
&gt; @@ -113,7 +113,6 @@ nvkm_cstate_find_best(struct nvkm_clk *clk, struct=
 nvkm_pstate *pstate,<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct nvkm_device *device =3D clk-&g=
t;subdev.device;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct nvkm_volt *volt =3D device-&gt=
;volt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0struct nvkm_cstate *cstate;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int max_volt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!pstate || !start)<br>
&gt; @@ -133,13 +132,12 @@ nvkm_cstate_find_best(struct nvkm_clk *clk, stru=
ct nvkm_pstate *pstate,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0max_volt =
=3D min(max_volt,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 nvkm_volt_map(volt, volt-&gt;max2=
_id, clk-&gt;temp));<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0for (cstate =3D start; &amp;cstate-&gt;hea=
d !=3D &amp;pstate-&gt;list;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cstate =3D list_prev_entry(=
cstate, head)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (nvkm_cstat=
e_valid(clk, cstate, max_volt, clk-&gt;temp))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry_from_<wbr>reverse(star=
t, &amp;pstate-&gt;list, head) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (nvkm_cstat=
e_valid(clk, start, max_volt, clk-&gt;temp))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0return cstate;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0return start;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 static struct nvkm_cstate *<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
</div></div>&gt; ______________________________<wbr>_________________<br>
&gt; dri-devel mailing list<br>
&gt; <a href=3D"mailto:dri-devel@lists.freedesktop.org">dri-devel@lists.fre=
edesktop.<wbr>org</a><br>
&gt; <a href=3D"https://lists.freedesktop.org/mailman/listinfo/dri-devel" r=
el=3D"noreferrer" target=3D"_blank">https://lists.freedesktop.org/<wbr>mail=
man/listinfo/dri-devel</a><br>
</blockquote></div><br></div></div>

--00000000000002e425056863345d--

