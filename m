X-GM-THRID: 6674542859228545024
X-Received: by 2002:a1c:150:: with SMTP id 77mr955074wmb.22.1554039153305;
        Sun, 31 Mar 2019 06:32:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4081:: with SMTP id o1ls155898wrp.7.gmail; Sun, 31 Mar
 2019 06:32:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwtGbzrGKyPKLy3yCLNF4KJOaYHuHW9j+d2S9ITr1lh3xlKYWWnCTFSStuT09ZkgvT0maqm
X-Received: by 2002:a5d:690c:: with SMTP id t12mr626987wru.28.1554039152347;
        Sun, 31 Mar 2019 06:32:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554039152; cv=none;
        d=google.com; s=arc-20160816;
        b=BuCk3mQ/CHZhQ/UgQy/FAUxOXgHXQhiqWGOWAkNClUsRBoFQZ4dkId5D1E0fq5e7M4
         roM82MlJYoDe3Ibi+uBaWDCX6HzSGkaNR3YPpdupSnrRbqpxBZNfIuvWdyIQkZDFsFjF
         m9zFt6b/bX1smzPXdEEV9E8ZmhLo5xzWCHYLatcwQYuLXBwwAYo+7TNeeUtjoDX1Oo9C
         dCldFCXNHS7vyS/L2NQfUmPRXr85jBiXESJ8pIJGHaaOzDS/LROqP08/6pZkMcOOlWt9
         ho2Xh3jgDNVwqfpX7BMlX7zNPCEpH4u1GZE913hsGyR5gLxn/bZ/f9O+nEdLoFBIJRp+
         C/5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Osv74hLtx3IaV3h879ceU2Ha04KtE/klS+7yA41JdhY=;
        b=YEA35BEGqM4OSP0/V4DMcPdKmr1RjsnCuac8JzC1R5jHpjNrr9EX3hJqXHd++0YMGp
         JfqNUZig7cdvx2pfZrHf79iMXSu25qD1EwyMTI2M6Tia1uOchGF95MhMGwv0B4OwxAl6
         Fm8y8OXppRuA4ZsHpxB0pcZDsecvwQZOYZP9OPqPh3S5AiZNL/+lU4e4nKNTJblIbPxN
         V9b1dzL+LnXrwDuqzJODuTQmo9X67I51SdqL9ABf+QhehvGUBxSumlAa3CLzacAVMOeH
         j/946l5FnILKRiVlgeyTH5x1frq4WGzq05gYH7KJ2UmTt/o+5LyHZ+OpOdEuiojdwUJu
         xLkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L5jLG6pM;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id n13si879000wmh.1.2019.03.31.06.32.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 06:32:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L5jLG6pM;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x133.google.com with SMTP id u21so4389189lfu.2
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 06:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Osv74hLtx3IaV3h879ceU2Ha04KtE/klS+7yA41JdhY=;
        b=L5jLG6pMTOoIlGEyYO2yDCVkSlAkVtqlJyrbRDeTYxDN1svaCWn4p+ykGy/U4A6Wo6
         DEPhNn8b4Ur1aKqmJXbyg1D1DLSy7xlKcPMgzEwuRKkn3zkRmLiW984F8bZdVPFFFTf5
         kI65SQ5zfsWgXamDE2b4uq1ayqail1gb5D5ELjLPaqp0Q8Qo+IbaQ4+IjqBBThtwsnjA
         LxMxbtfCGsE9Sq66a0qTMLLyQK08k47WSHxt3XjQgz55y9ZUQMk5TLZPtGa0LISMF7ge
         0f68KVBsj0HJgLfmUbCHgOJxXwQLNfjfz+wcZ5h5uoGnYlwk40/deuAxSbpEZcAp+tJN
         KxEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Osv74hLtx3IaV3h879ceU2Ha04KtE/klS+7yA41JdhY=;
        b=R535/EGpJg0YEo3XQSvRh6YdmSqtrVnGWqXs3LY3oXnYm7BCyoxC2RI+Mx4Bbv8j+o
         6r8A4q9IwS0sHSOLxt3UYoY26XZKLSelmImfKiyvdUwnYtzxb6dOU9pMlgHdoW7kpJrJ
         ixluykKs0Xv5AQva859qmDyArKg5w4jaqY1SsohczsqcN3KhbzfdYAZRAnZvLG7vRBZ+
         aSlXP6ZcA6Zct9D6Eq0nO9V0Pr4MqMOZ+U5v1/kyeBhCZxXHDmaPpcqVf4jJNtWzFzqT
         +MWXbYw1o9HTUYvYfSCPhUQjNACbU77tm4WnRDQEeFOjhLuh/CZNtFQmLp+axb1PF9EQ
         HqwQ==
X-Gm-Message-State: APjAAAVvGdHa/d6WRzl2JDryfABnxLuh5VhGdvAWg9o5ZP6NH2+VdZCi
	/G1fhzO9P1ASwRNarYv6/tsDLzuAB/C6S3p4OSE=
X-Received: by 2002:ac2:515b:: with SMTP id q27mr14986909lfd.110.1554039151877;
 Sun, 31 Mar 2019 06:32:31 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
 <55923ff0f300b54cba51dbb2662efd80c4d882d4.1554037161.git.payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903311530210.2578@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903311530210.2578@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 31 Mar 2019 19:02:19 +0530
Message-ID: <CANTOzWG-W9D_JE6_-vsz_c+OuAWYtMaka-fCdUHThXJsxj1BbA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/7] staging: rtlwifi: phydm: phydm.c:
 Compress two lines into one line
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000009d62fd058563efd1"

--0000000000009d62fd058563efd1
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 31, 2019, 7:00 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 31 Mar 2019, Payal Kshirsagar wrote:
>
> > Challenge suggested by coccinelle.
> > Compresses two lines into one line and remove unnecessary variables.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/rtlwifi/phydm/phydm.c | 16 ++++------------
> >  1 file changed, 4 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/staging/rtlwifi/phydm/phydm.c
> b/drivers/staging/rtlwifi/phydm/phydm.c
> > index 473eeb6..09dbb96 100644
> > --- a/drivers/staging/rtlwifi/phydm/phydm.c
> > +++ b/drivers/staging/rtlwifi/phydm/phydm.c
> > @@ -49,7 +49,7 @@ static void odm_update_power_training_state(struct
> phy_dm_struct *dm);
> >  /*Y = 10*log(X)*/
> >  s32 odm_pwdb_conversion(s32 X, u32 total_bit, u32 decimal_bit)
> >  {
> > -     s32 Y, integer = 0, decimal = 0;
> > +     s32 integer = 0, decimal = 0;
> >       u32 i;
> >
> >       if (X == 0)
> > @@ -66,9 +66,7 @@ s32 odm_pwdb_conversion(s32 X, u32 total_bit, u32
> decimal_bit)
> >               }
> >       }
> >
> > -     Y = 3 * (integer - decimal_bit) + decimal; /* 10*log(x)=3*log2(x),
> */
> > -
> > -     return Y;
> > +     return 3 * (integer - decimal_bit) + decimal; /*
> 10*log(x)=3*log2(x), */;
>
> Maybe this one would be better left as is, to keep the concepts of X and
> Y.
>

Okay I will drop this one.
Thanks
Payal

julia
>
> >  }
> >
> >  s32 odm_sign_conversion(s32 value, u32 total_bit)
> > @@ -1240,7 +1238,6 @@ u32 odm_convert_to_db(u32 value)
> >  {
> >       u8 i;
> >       u8 j;
> > -     u32 dB;
> >
> >       value = value & 0xFFFF;
> >
> > @@ -1257,16 +1254,13 @@ u32 odm_convert_to_db(u32 value)
> >                       break;
> >       }
> >
> > -     dB = (i << 3) + j + 1;
> > -
> > -     return dB;
> > +     return (i << 3) + j + 1;
> >  }
> >
> >  u32 odm_convert_to_linear(u32 value)
> >  {
> >       u8 i;
> >       u8 j;
> > -     u32 linear;
> >
> >       /* 1dB~96dB */
> >
> > @@ -1275,9 +1269,7 @@ u32 odm_convert_to_linear(u32 value)
> >       i = (u8)((value - 1) >> 3);
> >       j = (u8)(value - 1) - (i << 3);
> >
> > -     linear = db_invert_table[i][j];
> > -
> > -     return linear;
> > +     return db_invert_table[i][j];
> >  }
> >
> >  /*
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/55923ff0f300b54cba51dbb2662efd80c4d882d4.1554037161.git.payal.s.kshirsagar.98%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903311530210.2578%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000009d62fd058563efd1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sun, Mar 31, 2019, 7:00 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawa=
ll@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
<br>
On Sun, 31 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Challenge suggested by coccinelle.<br>
&gt; Compresses two lines into one line and remove unnecessary variables.<b=
r>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98=
@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtlwifi/phydm/phydm.c | 16 ++++------------<br>
&gt;=C2=A0 1 file changed, 4 insertions(+), 12 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtlwifi/phydm/phydm.c b/drivers/staging/r=
tlwifi/phydm/phydm.c<br>
&gt; index 473eeb6..09dbb96 100644<br>
&gt; --- a/drivers/staging/rtlwifi/phydm/phydm.c<br>
&gt; +++ b/drivers/staging/rtlwifi/phydm/phydm.c<br>
&gt; @@ -49,7 +49,7 @@ static void odm_update_power_training_state(struct p=
hy_dm_struct *dm);<br>
&gt;=C2=A0 /*Y =3D 10*log(X)*/<br>
&gt;=C2=A0 s32 odm_pwdb_conversion(s32 X, u32 total_bit, u32 decimal_bit)<b=
r>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0s32 Y, integer =3D 0, decimal =3D 0;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0s32 integer =3D 0, decimal =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 i;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (X =3D=3D 0)<br>
&gt; @@ -66,9 +66,7 @@ s32 odm_pwdb_conversion(s32 X, u32 total_bit, u32 de=
cimal_bit)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0Y =3D 3 * (integer - decimal_bit) + decimal; /* 1=
0*log(x)=3D3*log2(x), */<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return Y;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return 3 * (integer - decimal_bit) + decimal; /* =
10*log(x)=3D3*log2(x), */;<br>
<br>
Maybe this one would be better left as is, to keep the concepts of X and<br=
>
Y.<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto=
">Okay I will drop this one.</div><div dir=3D"auto">Thanks=C2=A0</div><div =
dir=3D"auto">Payal</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div =
class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
julia<br>
<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 s32 odm_sign_conversion(s32 value, u32 total_bit)<br>
&gt; @@ -1240,7 +1238,6 @@ u32 odm_convert_to_db(u32 value)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 i;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 j;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0u32 dB;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0value =3D value &amp; 0xFFFF;<br>
&gt;<br>
&gt; @@ -1257,16 +1254,13 @@ u32 odm_convert_to_db(u32 value)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dB =3D (i &lt;&lt; 3) + j + 1;<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return dB;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return (i &lt;&lt; 3) + j + 1;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 u32 odm_convert_to_linear(u32 value)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 i;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 j;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0u32 linear;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* 1dB~96dB */<br>
&gt;<br>
&gt; @@ -1275,9 +1269,7 @@ u32 odm_convert_to_linear(u32 value)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0i =3D (u8)((value - 1) &gt;&gt; 3);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0j =3D (u8)(value - 1) - (i &lt;&lt; 3);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0linear =3D db_invert_table[i][j];<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return linear;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return db_invert_table[i][j];<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 /*<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/55923ff0f300b54cba51dbb2662efd80c4d882d4.1=
554037161.git.payal.s.kshirsagar.98%40gmail.com" rel=3D"noreferrer noreferr=
er" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/55=
923ff0f300b54cba51dbb2662efd80c4d882d4.1554037161.git.payal.s.kshirsagar.98=
%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@google=
groups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903311530210.2578%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903311530210.2578%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--0000000000009d62fd058563efd1--

