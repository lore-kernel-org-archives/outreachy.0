X-GM-THRID: 6675276130832875520
X-Received: by 2002:a2e:3015:: with SMTP id w21mr1074231ljw.20.1554213931420;
        Tue, 02 Apr 2019 07:05:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4601:: with SMTP id t1ls1714836lja.2.gmail; Tue, 02 Apr
 2019 07:05:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqykqP9DSqNcy/90PUrkQ7U15BVCRmpur0JTlHRBFq+bypSKg0BMxWmvpeBT0006GUhBcsrD
X-Received: by 2002:a2e:85d3:: with SMTP id h19mr2347598ljj.22.1554213930529;
        Tue, 02 Apr 2019 07:05:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554213930; cv=none;
        d=google.com; s=arc-20160816;
        b=mnuCTZJ5+M9hY6eW4Orvx2WI7BmNYftwedJyRlvNvGfDaC1jk3xS73TBlD56n8K9tp
         x/xd9oPdA3Y2cmDzNTHWzgRUwoy+8zWeGBRMJxVDllBGOVeIGMXJ6cWfh6AznoBkIPzh
         ObW0spfGnbCqcpJ5HaqY+oa3jKfvHyL6o9URWlNMGmsH934HQ0/4T0DEMCBKEVs+X1/P
         EXtA8jmd4JbyQx1/SO40/f/95lng5h1hEmmainBtj0+yiIoDwYPGomtKf4RHlRhUn6kO
         2dwzuiS1y3TBra//T4nWY5qnRFE30JP43GESOK356U6NNvyczGhdqUpTXC8ibioammqI
         re6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=X+qTjtzXr9mfRZwikWrQTkdmyKpGWLSaV9IgOik21I4=;
        b=1GhLCyyShKQvrNpdD89hZaRMxVVNc2Zljtgg1d39nDcXBgk8HuMaJy03Y2dEXKbK2X
         M+1YCOd+AvB7mwM2EAlGPlEwg3ULpYg8Gpfe15jyz4epwXaS2ILIHMwsnntFkDrEBn93
         eVil2HaaE4xcDPY5VqbEOuhmBnoIvMc/eoeLaje+EHLqpnansqLYwOp9LciJ2BP6ogNk
         VjtAh671MUtpYeBryvdpzvqBOXrFYipPrLEDMfJ3kiYBoIM58S5IWxjb1CKcC2QooTZ0
         RmBUDI4G/k1MrFUOgnOCJidKOQ9z/dySj3KEVn3/A+RD/7yG0IzPhl+QZJkKOuZOETbg
         +gkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A5fVY3m1;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id o16si807276lji.0.2019.04.02.07.05.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 07:05:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A5fVY3m1;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x244.google.com with SMTP id f23so11722000ljc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 07:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X+qTjtzXr9mfRZwikWrQTkdmyKpGWLSaV9IgOik21I4=;
        b=A5fVY3m1fC3VEgox3P4rCPwJAvsfcC9rFrm7fNojJf/8q/0l52KiJuiZOPb53cnUjG
         riteV0s0LxXu1/t+VXLw3XY5uPjbLhRcyJQc4o7PJsz/4jww2ASOIje8qhdV4sltO2LN
         oWQAOuO129LYxc1SLUOzv+H+SgSjPyfs1ZZlKUdRLVQf7/Xmn26aVs7ltxbDqQrDSOiW
         RoAN8W80Y7HZr6HxKtqTl/KNuM2EAQTOKVfSutqeZID/1IPSSHzhwsVtPCI7+ZpwhzzN
         vX3X0qLyD9VN+C8sjBMRoqIL6FFlp3Le1o0THTgqzGTiFk5biM5Hl5wm+uJcZsjAFZnb
         ooyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X+qTjtzXr9mfRZwikWrQTkdmyKpGWLSaV9IgOik21I4=;
        b=VYxR7o75Ta/2ECICG86IGVPfTTh7Q4+l98VL1Jh02RM7FCEdNaZj3TVD2M65KbHN+l
         kwASFcB1DsFv8rjRF1F9dL0DIFRI6fZsTQ8NxNvE8Y8HT32TkvAf4db5/8aovdFoeXd2
         D3h7WG10L+3ycG7QezIRTI+pdHFASLvOXQRpB5NhrNB8xufd/X1rOb66cYmrBDusrzF4
         ZHzURLpv22h1LJM2PcIRx2oksTeR9RykC0WyEEvXHxd0Yf1gza79DqDa/4eZw42RObwr
         FKuWasjtXmu4oaabXNXYzZRfgkB5+fmXfALe6FIUHfv+0lKGdwZWJVMXcc0vxgJ7kWfo
         LLxQ==
X-Gm-Message-State: APjAAAWX84RQ9T4wqCLfgVWKC4mZjAH2/D93riPTZj9GfMgbadSzg1JV
	DGMjfaVtfkhY2rZBjEMebVL+pL8Sczr2Glg5rgk=
X-Received: by 2002:a2e:6c0f:: with SMTP id h15mr11606370ljc.155.1554213930369;
 Tue, 02 Apr 2019 07:05:30 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1554212525.git.payal.s.kshirsagar.98@gmail.com>
 <bc0ddc96e3352f76c36af42f2bce0230ba528180.1554212525.git.payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.20.1904021601500.3297@hadrien>
In-Reply-To: <alpine.DEB.2.20.1904021601500.3297@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Tue, 2 Apr 2019 19:35:18 +0530
Message-ID: <CANTOzWGhuUy_SOYAkqWnr4oHroHXpVdUZQoN6WyxMtvNEt6L8g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: rtlwifi: base.c:
 Replace bit shifting with BIT macro
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000039881c05858ca1cb"

--00000000000039881c05858ca1cb
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2019 at 19:32, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Tue, 2 Apr 2019, Payal Kshirsagar wrote:
>
> > Challenge suggested by coccinelle.
> > Prefer using BIT and replace bit shifting with the BIT(x) macro
> > and remove cast.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/rtlwifi/base.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtlwifi/base.c
> b/drivers/staging/rtlwifi/base.c
> > index 35df2cf..e4e35de 100644
> > --- a/drivers/staging/rtlwifi/base.c
> > +++ b/drivers/staging/rtlwifi/base.c
> > @@ -2446,7 +2446,7 @@ struct sk_buff *rtl_make_del_ba(struct
> ieee80211_hw *hw,
> >                                                 IEEE80211_STYPE_ACTION);
> >       action_frame->u.action.category = WLAN_CATEGORY_BACK;
> >       action_frame->u.action.u.delba.action_code = WLAN_ACTION_DELBA;
> > -     params = (u16)(1 << 11);        /* bit 11 initiator */
> > +     params = BIT(11);       /* bit 11 initiator */
>
> It seems that the comments were nicely lined up before, so it would begood
> to do that again.
>

Okay doing and sending v3.
thanks,
payal

julia
>
> >       params |= (u16)(tid << 12);     /* bit 15:12 TID number */
> >
> >       action_frame->u.action.u.delba.params = cpu_to_le16(params);
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
> https://groups.google.com/d/msgid/outreachy-kernel/bc0ddc96e3352f76c36af42f2bce0230ba528180.1554212525.git.payal.s.kshirsagar.98%40gmail.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1904021601500.3297%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--00000000000039881c05858ca1cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, 2 Apr 2019 at 19:32, Julia La=
wall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Tue, 2 Apr 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Challenge suggested by coccinelle.<br>
&gt; Prefer using BIT and replace bit shifting with the BIT(x) macro<br>
&gt; and remove cast.<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtlwifi/base.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/=
base.c<br>
&gt; index 35df2cf..e4e35de 100644<br>
&gt; --- a/drivers/staging/rtlwifi/base.c<br>
&gt; +++ b/drivers/staging/rtlwifi/base.c<br>
&gt; @@ -2446,7 +2446,7 @@ struct sk_buff *rtl_make_del_ba(struct ieee80211=
_hw *hw,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0IEEE80211_STYPE_ACTION);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0action_frame-&gt;u.action.category =3D WLAN_=
CATEGORY_BACK;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0action_frame-&gt;u.action.u.delba.action_cod=
e =3D WLAN_ACTION_DELBA;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0params =3D (u16)(1 &lt;&lt; 11);=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 /* bit 11 initiator */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0params =3D BIT(11);=C2=A0 =C2=A0 =C2=A0 =C2=A0/* =
bit 11 initiator */<br>
<br>
It seems that the comments were nicely lined up before, so it would begood<=
br>
to do that again.<br></blockquote><div><br></div><div>Okay doing and sendin=
g v3.</div><div>thanks,</div><div>payal</div><div><br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
julia<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0params |=3D (u16)(tid &lt;&lt; 12);=C2=A0 =
=C2=A0 =C2=A0/* bit 15:12 TID number */<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0action_frame-&gt;u.action.u.delba.params =3D=
 cpu_to_le16(params);<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/bc0ddc96e3352f76c36af42f2bce0230ba528180.1=
554212525.git.payal.s.kshirsagar.98%40gmail.com" rel=3D"noreferrer" target=
=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/bc0ddc96e335=
2f76c36af42f2bce0230ba528180.1554212525.git.payal.s.kshirsagar.98%40gmail.c=
om</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.20.1904021601500.3297%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.20.1904021601500.3297%40hadrien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div></div>

--00000000000039881c05858ca1cb--

