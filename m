X-GM-THRID: 6331374049308966912
X-Received: by 10.200.55.55 with SMTP id o52mr4310056qtb.66.1474299045031;
        Mon, 19 Sep 2016 08:30:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.91.212 with SMTP id g203ls2749487itb.13.gmail; Mon, 19 Sep
 2016 08:30:42 -0700 (PDT)
X-Received: by 10.98.95.71 with SMTP id t68mr14723744pfb.7.1474299042030;
        Mon, 19 Sep 2016 08:30:42 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id d206si1635778ywh.3.2016.09.19.08.30.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 08:30:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id p47so4885773qtc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 08:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=F+cpTt3KIFI+qEuMIYt0BSPGMdSyUuERT3rbIMKyjjo=;
        b=pPaD31dRlpKIMjzaWUoHpjC6vc4f2WmTBWQzB/2h4WTQqxJrzAwckrEO8sWGX5qjBV
         0KthGurkhlVfyI4JQHveL1OtOuph0ZIKmWS+o+LzG77wIONZ0c/OZyd2HXhM2AnCNd7x
         6YycUH0dcNh83l3stdvOohwSbHneFp6pYnBtEs8a8O6MARFzTyPkDiAC5ALEFDD5L9mv
         JygV3AlRuWIbsbhaW1z7WgqElqiTQ6EtfUemVa6gE+J8HPPgsgosZEcs68/0ZfhjaQ1r
         D9gA+onBzpH2jc/5ezaDmlkTne92cX994NmDYT3qzPX1ch6WsI9ZaZwIlmgDM2IoX3OY
         lcOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to:cc;
        bh=F+cpTt3KIFI+qEuMIYt0BSPGMdSyUuERT3rbIMKyjjo=;
        b=MHwtyBm7KADExnSUeT29nq4WOgdjD6j4/LIrNnpIMS5nedw1nbla8uhumha7/azATy
         l94LCtflLCXTOeb8AFtnBDA48KXKi++s1lg1F486yH/zWsEa6t6b2K9IRkmIksxT0Ocv
         HWEDgQ/N7TNor96RQkdX27yK66NMZgBYaU7ATbVyM24vmL3R1YHtTyua5d7ZmlWj5ZyM
         D2AdPWcgHvzSp5dlkhR6zx4PL8BeGnKcATo9XFobOWWLanK3Fk5chvlonup6d5oxPUwv
         uNLLRYvWgeGdH0T0WsQQWZDfiKhgOGt2GA1xxBuX5LXUCSplBPqUVOpBHTZFckhCOiqA
         qvbQ==
X-Gm-Message-State: AE9vXwO7yybrmYyTspBwD3+G7rt35PagCqaBQ3TKCZeQH31ryadvdGPnkx9YJdpYIAKZ7SHY2NA99egSC0fvQQ==
X-Received: by 10.200.38.107 with SMTP id v40mr31023267qtv.76.1474299041776;
 Mon, 19 Sep 2016 08:30:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.49.231 with HTTP; Mon, 19 Sep 2016 08:30:41 -0700 (PDT)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <93FE0E54-2D38-465C-BD4B-05A648FC8362@intel.com>
References: <20160917225954.GA24486@sandhya> <93FE0E54-2D38-465C-BD4B-05A648FC8362@intel.com>
From: sandhya bankar <bankarsandhya512@gmail.com>
Date: Mon, 19 Sep 2016 21:00:41 +0530
Message-ID: <CAA3ASz=cnaF2Jx9+-K6xWp-uQqJyWhVSonEN7MEaPdcQTCfAvw@mail.gmail.com>
Subject: Re: [PATCH v2] Staging: lustre: lmv_obd: Remove redundant if-statement.
To: "Dilger, Andreas" <andreas.dilger@intel.com>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, 
	"Drokin, Oleg" <oleg.drokin@intel.com>, "jsimmons@infradead.org" <jsimmons@infradead.org>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary=001a1140300cad8b4f053cddfe1b

--001a1140300cad8b4f053cddfe1b
Content-Type: text/plain; charset=UTF-8

Thanks Andreas ! I will send a patch with your suggestion.

On Mon, Sep 19, 2016 at 3:17 AM, Dilger, Andreas <andreas.dilger@intel.com>
wrote:

> On Sep 18, 2016, at 00:59, Sandhya Bankar <bankarsandhya512@gmail.com>
> wrote:
> >
> > Remove redundant if-statement.
> >
> > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> > ---
> > Changes in v2:
> > * Correcting the file permission issue.
> > drivers/staging/lustre/lustre/lmv/lmv_obd.c |    6 ++----
> > 1 files changed, 2 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> > index 5783359..0713e55 100644
> > --- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> > +++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> > @@ -949,10 +949,8 @@ static int lmv_hsm_ct_register(struct lmv_obd *lmv,
> unsigned int cmd, int len,
> >
> >       rc = libcfs_kkuc_group_add(filp, lk->lk_uid, lk->lk_group,
> >                                  &kcd, sizeof(kcd));
> > -     if (rc) {
> > -             if (filp)
> > -                     fput(filp);
> > -     }
> > +     if (rc && filp)
> > +             fput(filp);
>
> In fact, the check for filp != NULL is also redundant.  A few lines
> earlier:
>
>         /* at least one registration done, with no failure */
>         filp = fget(lk->lk_wfd);
>         if (!filp)
>                 return -EBADF;
>
> so it cannot be NULL at this point, and the check should just be removed.
>
> Cheers, Andreas

--001a1140300cad8b4f053cddfe1b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Andreas ! I will send a patch with your suggestion.=
<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon,=
 Sep 19, 2016 at 3:17 AM, Dilger, Andreas <span dir=3D"ltr">&lt;<a href=3D"=
mailto:andreas.dilger@intel.com" target=3D"_blank">andreas.dilger@intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">O=
n Sep 18, 2016, at 00:59, Sandhya Bankar &lt;<a href=3D"mailto:bankarsandhy=
a512@gmail.com">bankarsandhya512@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Remove redundant if-statement.<br>
&gt;<br>
&gt; Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto:bankarsandhya512@g=
mail.com">bankarsandhya512@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; Changes in v2:<br>
&gt; * Correcting the file permission issue.<br>
&gt; drivers/staging/lustre/lustre/<wbr>lmv/lmv_obd.c |=C2=A0 =C2=A0 6 ++--=
--<br>
&gt; 1 files changed, 2 insertions(+), 4 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/lustre/<wbr>lustre/lmv/lmv_obd.c b/driver=
s/staging/lustre/<wbr>lustre/lmv/lmv_obd.c<br>
&gt; index 5783359..0713e55 100644<br>
&gt; --- a/drivers/staging/lustre/<wbr>lustre/lmv/lmv_obd.c<br>
&gt; +++ b/drivers/staging/lustre/<wbr>lustre/lmv/lmv_obd.c<br>
&gt; @@ -949,10 +949,8 @@ static int lmv_hsm_ct_register(struct lmv_obd *lm=
v, unsigned int cmd, int len,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D libcfs_kkuc_group_add(filp, lk-&gt;lk=
_uid, lk-&gt;lk_group,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;kcd, sizeof(kcd));<br=
>
&gt; -=C2=A0 =C2=A0 =C2=A0if (rc) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (filp)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0fput(filp);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (rc &amp;&amp; filp)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fput(filp);<br>
<br>
</span>In fact, the check for filp !=3D NULL is also redundant.=C2=A0 A few=
 lines earlier:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* at least one registration done, with no fail=
ure */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 filp =3D fget(lk-&gt;lk_wfd);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!filp)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EBADF;<br>
<br>
so it cannot be NULL at this point, and the check should just be removed.<b=
r>
<br>
Cheers, Andreas</blockquote></div><br></div>

--001a1140300cad8b4f053cddfe1b--

