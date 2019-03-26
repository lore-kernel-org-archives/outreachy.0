X-GM-THRID: 6672747924702625792
X-Received: by 2002:a2e:8881:: with SMTP id k1mr97300lji.7.1553621895506;
        Tue, 26 Mar 2019 10:38:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5085:: with SMTP id f5ls1991019lfm.13.gmail; Tue, 26 Mar
 2019 10:38:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz0epa7lNMFEa6UNWmDkjFEoEZpVPtnh/lmmMuqp7au7bZbHm15T72ctmhhTelYOfW4D9Ol
X-Received: by 2002:ac2:54b6:: with SMTP id w22mr277173lfk.15.1553621894488;
        Tue, 26 Mar 2019 10:38:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553621894; cv=none;
        d=google.com; s=arc-20160816;
        b=rAOiTMwuc1JRb3mrwoJc+npTdXlxE8u+ou2B+cKk77Oc9VUNTJATOLE/N56vCNtoY9
         57Fci4gg1HLy32N8t95vIKj5d/jpSbFNwpOMqmBEKIxz5t7FZK+U6ZXiUBRYBiigIKod
         6Zjyvui+B3ViYC3TZeub73XdmFhs/CUeFE1BDCyGlK7omNUSBTRZj3wF/brdmrlmfXxU
         v8+eALbJeDHBFMxVhJK8yA5vTGj6/wN55IJBR+eROaMNfjy6jFfhAlvvgnJAXQf0/IPa
         Om10lzxTf0rRFQ/ZfPEOwnsMjdtQYjPh/+JJNI8S7t5Lyonp7eYCAZKfCZRzSgR4yOGN
         PQhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rQHfoIjXrmhZKUgma7I8E+SJFBdHtgapSmj1JDXkxsE=;
        b=YBJe3ZZQXJtQB2jI1icm+zo9bWV3w8VdXCaDfJuReEIk+x/XC6dYykdljkXD/nGCnR
         ZAToZfeoJjmrIE9r83okDcHGcafzODRyIa5iYD2FqnK1q40O7TnoKICZ0guM1cQ8xjpf
         Qni2lHX9ptOA941mqJylMkS7eGJq8aRjS0cRlWKZBiRAwNwFvq4wxGtD8aYXO3edMhCl
         4q46Gguo2FJeRRr7BjjwhtAiVB7Egi7nmuqR21Cz1CnGpGMCNGdSpRj5NzaA4EGRmBDA
         /mjiDhJ5G2zRBh0rs2pw6zSdVGBt8PwsLiD8dQQ0s3ZM/YJGgpyl5KHhCVtXuhg2L4AO
         btNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I5FGVRgF;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id z15si954638lfe.5.2019.03.26.10.38.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 10:38:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I5FGVRgF;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52f.google.com with SMTP id x10so11485032edh.11
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Mar 2019 10:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rQHfoIjXrmhZKUgma7I8E+SJFBdHtgapSmj1JDXkxsE=;
        b=I5FGVRgFfBZz2wxH6Kq1gt2dVmtPBxJZnesTqqxtdOZireCk2P+b4Mycqn4HNA1pt+
         NJQNRaz2GrpmLJx0ynL/lG5Mv8Q8e7xnbvM7AHH/toNgyYOL0BuCwZBMYlm0HVXZZHrQ
         ge6MGWqMttd4AMIquSki187uhKAPriwrq6Vbuk+QlZJYkW1tSyHdMkMg9r1SGDbe4RbY
         /WHYH506HokC8QEHmr+3AQPq/S6i0/5ylfDHvjSoyfnK/Pz558/C4dTKz/PsnfoAOqy+
         hda5nTtaD3xY3QaewnB4D1TOpmSPIKdrh+nUGxH7WuOTzLdRI7lbV2kZFPuu5YdQhD6I
         ONIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rQHfoIjXrmhZKUgma7I8E+SJFBdHtgapSmj1JDXkxsE=;
        b=BhQyA4yKuN8xLuxWfBw9kqDDSRpVpQ8Lwz9dugqg8SHmw8FdjtsJcG3UzJy7Fv7EeT
         v0Li4BM+rolLgjZOJynOVxfzPcd3FUCHesnx3FrdveKKndoj0MD73vz1JB7oVkWLudF6
         FVxZ1pga64laUpETUbifAjBc/YmUI27tvTqbgAEMZ1VfS2isbnVgNRPY1BZkJ48HiEPQ
         x4qwkbLxpll8Kg/98P6r1UMK8N2DMQLYbmMrQin2KC0R2Mb/coTHmcU0wzgtIlMRCYSb
         kf1vQBTnXH1f6CA+7FSBfN7Oc/9CHnWaZeCNhwO12/xgqN4SLy9+32giA+6GvTXu7aie
         I29w==
X-Gm-Message-State: APjAAAVWIS4LrIInGICcPWkIldQGTjtuug3QDLzMgAzoIC/sHMrjWVoY
	K60ujf0fJhPjSzKT2/t4rxChS+RY0CfJYakixvY=
X-Received: by 2002:a50:b482:: with SMTP id w2mr21337921edd.41.1553621894230;
 Tue, 26 Mar 2019 10:38:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190326170942.19974-1-sanjana99reddy99@gmail.com> <alpine.DEB.2.20.1903261828030.6419@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903261828030.6419@hadrien>
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Date: Tue, 26 Mar 2019 23:08:01 +0530
Message-ID: <CAO-bXGC4x489Tt=zU0V31DRGea1tgXeQgVbAR+cH7=bGn80vow@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove typedef for struct.
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000001ef77f058502c9fe"

--0000000000001ef77f058502c9fe
Content-Type: text/plain; charset="UTF-8"

On Tue, 26 Mar 2019, 23:01 Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Tue, 26 Mar 2019, Sanjana Sanikommu wrote:
>
> > Challenge suggested by coccinelle.
> >
> > Linux kernel coding style guidelines suggest not using typedefs for
> > structure.
> > The following Coccinelle semantic patch detects the cases for struct
> > type:
> >
> > @tn@
> > identifier i;
> > type td;
> > @@
> >
> > -typedef
> >  struct i { ... }
> > -td
> >  ;
> >
> > @@
> > type tn.td;
> > identifier tn.i;
> > @@
> >
> > -td
> > + struct i
>
> It is suspicious that you have a change to a typedef, but no changes to
> uses.  I see that you have a rule for taking case of the uses, which is a
> good idea, but Coccinelle may not be looking at the .c file that uses the
> type and the .h file at the same time.  Did you check that ieee_param
> doesn't currently appear anywhere without struct in front of it?
> Compiling the driver is a good test, but it is good to ceck with grep as
> well, in case there are some uses that are not getting compipled in your
> configuration.
>
   Sure, I will check.
    Sanjana

>
> julia
>
> >
> > Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> > index 8aa536d79900..48b5088e1fef 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> > @@ -296,7 +296,7 @@ struct cb_desc {
> >  #define ieee80211_wx_get_encode_ext  ieee80211_wx_get_encode_ext_rsl
> >
> >
> > -typedef struct ieee_param {
> > +struct ieee_param {
> >       u32 cmd;
> >       u8 sta_addr[ETH_ALEN];
> >       union {
> > @@ -323,7 +323,7 @@ typedef struct ieee_param {
> >                       u8 key[0];
> >               } crypt;
> >       } u;
> > -} ieee_param;
> > +};
> >
> >
> >  // linux under 2.6.9 release may not support it, so modify it for
> common use
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190326170942.19974-1-sanjana99reddy99%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--0000000000001ef77f058502c9fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, 26 Mar 2019, 23:01 Julia Lawall, &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><br>
<br>
On Tue, 26 Mar 2019, Sanjana Sanikommu wrote:<br>
<br>
&gt; Challenge suggested by coccinelle.<br>
&gt;<br>
&gt; Linux kernel coding style guidelines suggest not using typedefs for<br=
>
&gt; structure.<br>
&gt; The following Coccinelle semantic patch detects the cases for struct<b=
r>
&gt; type:<br>
&gt;<br>
&gt; @tn@<br>
&gt; identifier i;<br>
&gt; type td;<br>
&gt; @@<br>
&gt;<br>
&gt; -typedef<br>
&gt;=C2=A0 struct i { ... }<br>
&gt; -td<br>
&gt;=C2=A0 ;<br>
&gt;<br>
&gt; @@<br>
&gt; type <a href=3D"http://tn.td" rel=3D"noreferrer noreferrer" target=3D"=
_blank">tn.td</a>;<br>
&gt; identifier tn.i;<br>
&gt; @@<br>
&gt;<br>
&gt; -td<br>
&gt; + struct i<br>
<br>
It is suspicious that you have a change to a typedef, but no changes to<br>
uses.=C2=A0 I see that you have a rule for taking case of the uses, which i=
s a<br>
good idea, but Coccinelle may not be looking at the .c file that uses the<b=
r>
type and the .h file at the same time.=C2=A0 Did you check that ieee_param<=
br>
doesn&#39;t currently appear anywhere without struct in front of it?<br>
Compiling the driver is a good test, but it is good to ceck with grep as<br=
>
well, in case there are some uses that are not getting compipled in your<br=
>
configuration.<br></blockquote></div></div><div dir=3D"auto">=C2=A0 =C2=A0S=
ure, I will check.</div><div dir=3D"auto">=C2=A0 =C2=A0 Sanjana</div><div d=
ir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
julia<br>
<br>
&gt;<br>
&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"mailto:sanjana99reddy9=
9@gmail.com" target=3D"_blank" rel=3D"noreferrer">sanjana99reddy99@gmail.co=
m</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/=
staging/rtl8192u/ieee80211/ieee80211.h<br>
&gt; index 8aa536d79900..48b5088e1fef 100644<br>
&gt; --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h<br>
&gt; +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h<br>
&gt; @@ -296,7 +296,7 @@ struct cb_desc {<br>
&gt;=C2=A0 #define ieee80211_wx_get_encode_ext=C2=A0 ieee80211_wx_get_encod=
e_ext_rsl<br>
&gt;<br>
&gt;<br>
&gt; -typedef struct ieee_param {<br>
&gt; +struct ieee_param {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 cmd;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 sta_addr[ETH_ALEN];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0union {<br>
&gt; @@ -323,7 +323,7 @@ typedef struct ieee_param {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0u8 key[0];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} crypt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} u;<br>
&gt; -} ieee_param;<br>
&gt; +};<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 // linux under 2.6.9 release may not support it, so modify it fo=
r common use<br>
&gt; --<br>
&gt; 2.17.1<br>
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
gle.com/d/msgid/outreachy-kernel/20190326170942.19974-1-sanjana99reddy99%40=
gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.g=
oogle.com/d/msgid/outreachy-kernel/20190326170942.19974-1-sanjana99reddy99%=
40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
</blockquote></div></div></div>

--0000000000001ef77f058502c9fe--

