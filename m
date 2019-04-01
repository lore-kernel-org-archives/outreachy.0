X-GM-THRID: 6674267883353145344
X-Received: by 2002:aca:4343:: with SMTP id q64mr3524643oia.4.1554149770121;
        Mon, 01 Apr 2019 13:16:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ac8c:: with SMTP id v134ls2506882oie.6.gmail; Mon, 01
 Apr 2019 13:16:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzOJijQyp1DnlQtzlLtZ6NKl9DoYKlq358xvc4QpHUNmE3wV4skp7zp/ga899W1yW51yvcr
X-Received: by 2002:aca:4b4a:: with SMTP id y71mr7071914oia.43.1554149769304;
        Mon, 01 Apr 2019 13:16:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554149769; cv=none;
        d=google.com; s=arc-20160816;
        b=0BYk1nKIcB6EmklYQZ8CCIhJ/Bgf+qxQS9ABUR9mSpk6ZkZVzxeq2aHlYYnNE9+xZO
         NtTM0nZ4yPhhh1Kxyanov0apfGCQ5Pw6O+Ebl2hayUBT3L4Df1pqrfTgv+U8POkdYYU0
         KIKUEqovPK6PqjAJpgkefxK9SRG6JsRE+LqJdgwbr3MaMZUUZkFBx6Xqsg7gTCyn4Us2
         L8GJWFsvl3akp31biUbjqnKiaxyWl5r6or81vy/06IokBax1CmJ8z0um4655CaXGG9jj
         IhkAI/vgOADx9VT4ExFCbOQ+3K2WxJ0JoX8+YTwt0JvA6T1TDPzUgBwO6hy/kG3jfPIL
         Uonw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K7omMgg6ibxNXFqHi6z9aNobDZ5u3ATBKv98qWaCpvE=;
        b=pms2CrIWKOebve1TQPnPyH8C53sAq6H/Fw5NPCZsA/UhWiF8xApjO+4F2k6l92Tlex
         m9JYDmNurIqK4nEjPI+Zo+YZlLFRwr0c+4zUs9nX6LdA9nExAsrFjhL0vS8Fx6xTzLeD
         kz6EYIXF+SsxSQ5i9GWM/Iyx+IzIgLNRul20FZA8crFhPiLMtwGAFBFvskKKp1LO4W1j
         NO/P8NHNLnPWmKM7NeXQwUAhMBv7KrLGYzK0kFV3RdgxX5HT/YlzDBPOgc5qEntX2WHj
         BqozZjH5UE0i8IQzwYN+UnG9T17MkikCGJvjPdO16Z2URKezP6Sqzei5fKFIIraaAAUd
         YOsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IG7FJH0R;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id j81si401116oia.5.2019.04.01.13.16.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:16:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IG7FJH0R;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id t81so8435769oig.10
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 13:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=K7omMgg6ibxNXFqHi6z9aNobDZ5u3ATBKv98qWaCpvE=;
        b=IG7FJH0RD+OMLt56Kz2WZbOuswXRxirLDCPTJ3UJMKW2XzFNETqlCZydwTMbNNvYhV
         IM/1mjqH5ejOkVGR910mcXEIyANhSANXAeuE4fcisGMoI5/S8SB4WnHZxTWv5k0pXMmX
         opyA48fW3Ua3llW8XSQU6DGcK2iKQ6NHAuRSqiz1J0sZUwH8+vW4VsNZGs3q59eSmeVG
         UJvRYis6L3Hv13C8gTa93N2wzTAEZIfajq2whDbJYpGIPiWGCRBthUZlyMVbZDJ8P0JE
         AOMbxz82Qoiv+N/KVuPCDce5VeBWuXzLabDbPJCcSOeDOWGx7J0pChHNz1fcKNcz7TGs
         LEgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=K7omMgg6ibxNXFqHi6z9aNobDZ5u3ATBKv98qWaCpvE=;
        b=TnVH7TjTkRmxdY8Rvr8UZBtIXZqi3OrF6vatLl64bdlBvw4hnyx9acsFq0ZOp7zF/w
         0NbczdmgNJgCeOXecNrFSO91crqG1zcmMpPPS+7gFH6IcFy2nO1Ix45Z1JeLuMyfXFQ2
         eHfJg2r8JuceHCnSG2kr5j+aXCEoJhpj9Dc6e2bAMrd+42qdq4SG3lLF+3Sigt3zVNXQ
         5xQjt/l460LYznyxCF2R9CTYhCe5CilRv83D28wPDkmbdthX65xk449V8Qn9auOWbJE1
         ++P+jw6AxmMEQxCivk7iX/IFhMpUaw3Kcqg9Lq9haL0XUGq+QFy+xiQzOgSoMe6IXfOc
         AmJA==
X-Gm-Message-State: APjAAAU3g+1HBRey9P55Hr7QjVEn0cvEvmeqtVG8n73E+ImXcyWgC36L
	CuJESPbnSs673apXPUv8SE4KhGabio5zbq+rLoc=
X-Received: by 2002:aca:4a0a:: with SMTP id x10mr14067512oia.82.1554149768961;
 Mon, 01 Apr 2019 13:16:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190330192742.65250-1-himadri18.07@gmail.com>
 <20190331022155.68569-1-himadri18.07@gmail.com> <20190331022155.68569-7-himadri18.07@gmail.com>
 <alpine.DEB.2.21.1903311013430.2578@hadrien> <CAPnhUpaFnAoWFQLO2VadZRv_qdeEbu9osncGZG0bkyk1Pib2bg@mail.gmail.com>
 <alpine.DEB.2.21.1904012151530.2530@hadrien>
In-Reply-To: <alpine.DEB.2.21.1904012151530.2530@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Tue, 2 Apr 2019 01:45:56 +0530
Message-ID: <CAPnhUpYh9MCBSGriVbiwqtxbGH=kZGgq9pAQLbq7yFPBuQCD6w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 6/7] staging: rtl8712: remove
 unnecessary NULL check
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, 
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000e8229305857db0ca"

--000000000000e8229305857db0ca
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr, 2019, 1:22 AM Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Mon, 1 Apr 2019, Himadri Pandya wrote:
>
> >
> >
> > On Sun, Mar 31, 2019 at 1:45 PM Julia Lawall <julia.lawall@lip6.fr>
> wrote:
> >
> >
> >       On Sun, 31 Mar 2019, Himadri Pandya wrote:
> >
> >       > Remove unnecessary NULL check for wlan_network *pnetwork because
> >       > container_of will not return NULL in this usage.
> >
> >       Actually, it is possible that it can, because of the obscure
> reason that
> >       the list field is at the top of the structure.  You can see if it
> is
> >       possible and useful to make the same check without the
> container_of call.
> >
> >       julia
> >
> >
> > Okay.
> >
> > I think pmlmepriv->pscanned is used to get the address of mlme_priv 's
> member struct wlan_network cur_network using container_of(). I can directly
> check if struct wlan_netowrk's member struct list_head list is allocated
> memory or not. Because it is
> > the first member and if the memory is allocated, the pointer to it won't
> be NULL. So instead of using container_of(), I think I should just check if
> pmlmepriv->cur_network->list is NULL or not.
> >
> > Please correct me if I am mistaken.
>
> I think that you can test the value before the call to container_of.
>
> julia


Yes. I'm dropping this change from this patchset for now. I'll send a
separate patch for it after the other patches of this series gets accepted.

Thank you.

- Himadri


> >
> > Thank you.
> >
> > - Himadri
> >
> >
> >       >
> >       > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> >       > ---
> >       >  drivers/staging/rtl8712/rtl871x_mlme.c | 2 --
> >       >  1 file changed, 2 deletions(-)
> >       >
> >       > diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c
> b/drivers/staging/rtl8712/rtl871x_mlme.c
> >       > index 1a15c45aa83b..be44c6b2819b 100644
> >       > --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> >       > +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> >       > @@ -1119,8 +1119,6 @@ int r8712_select_and_join_from_scan(struct
> mlme_priv *pmlmepriv)
> >       >               }
> >       >               pnetwork = container_of(pmlmepriv->pscanned,
> >       >                                       struct wlan_network, list);
> >       > -             if (pnetwork == NULL)
> >       > -                     return _FAIL;
> >       >               pmlmepriv->pscanned = pmlmepriv->pscanned->next;
> >       >               if (pmlmepriv->assoc_by_bssid) {
> >       >                       dst_ssid = pnetwork->network.MacAddress;
> >       > --
> >       > 2.17.1
> >       >
> >       > --
> >       > You received this message because you are subscribed to the
> Google Groups "outreachy-kernel" group.
> >       > To unsubscribe from this group and stop receiving emails from
> it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >       > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> >       > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190331022155.68569-7-himadri18.07%40gmail.com
> .
> >       > For more options, visit https://groups.google.com/d/optout.
> >       >
> >
> >       --
> >       You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> >       To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >       To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> >       To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903311013430.2578%40hadrien
> .
> >       For more options, visit https://groups.google.com/d/optout.
> >
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1904012151530.2530%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000e8229305857db0ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, 2 Apr, 2019, 1:22 AM Julia Lawall, &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank" rel=3D"noreferrer">julia=
.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On Mon, 1 Apr 2019, Himadri Pandya wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Sun, Mar 31, 2019 at 1:45 PM Julia Lawall &lt;<a href=3D"mailto:jul=
ia.lawall@lip6.fr" rel=3D"noreferrer noreferrer" target=3D"_blank">julia.la=
wall@lip6.fr</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sun, 31 Mar 2019, Himadri Pandya wrote:<b=
r>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Remove unnecessary NULL check for wlan_=
network *pnetwork because<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; container_of will not return NULL in th=
is usage.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Actually, it is possible that it can, becaus=
e of the obscure reason that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0the list field is at the top of the structur=
e.=C2=A0 You can see if it is<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0possible and useful to make the same check w=
ithout the container_of call.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;<br>
&gt; Okay.=C2=A0<br>
&gt;<br>
&gt; I think pmlmepriv-&gt;pscanned is used to get the address of mlme_priv=
 &#39;s member struct wlan_network cur_network using container_of(). I can =
directly check if struct wlan_netowrk&#39;s member struct list_head list is=
 allocated memory or not. Because=C2=A0it is<br>
&gt; the first member and if the memory is allocated, the pointer to it won=
&#39;t be NULL. So instead of using container_of(), I think I should just c=
heck if pmlmepriv-&gt;cur_network-&gt;list is NULL or not.<br>
&gt;<br>
&gt; Please correct me if I am mistaken.<br>
<br>
I think that you can test the value before the call to container_of.<br>
<br>
julia</blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto"=
>Yes. I&#39;m dropping this change from this patchset for now. I&#39;ll sen=
d a separate patch for it after the other patches of this series gets accep=
ted.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thank you.</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">- Himadri</div><div dir=3D=
"auto"><br></div><div dir=3D"auto"></div><div dir=3D"auto"><div class=3D"gm=
ail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">
<br>
&gt;<br>
&gt; Thank you.<br>
&gt;<br>
&gt; - Himadri<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Himadri Pandya &lt;<a hr=
ef=3D"mailto:himadri18.07@gmail.com" rel=3D"noreferrer noreferrer" target=
=3D"_blank">himadri18.07@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_m=
lme.c | 2 --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 2 deletions(-)<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/rtl8712/rt=
l871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 1a15c45aa83b..be44c6b2819b 100644=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/rtl8712/rtl871x_m=
lme.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/rtl8712/rtl871x_m=
lme.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -1119,8 +1119,6 @@ int r8712_select_=
and_join_from_scan(struct mlme_priv *pmlmepriv)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0pnetwork =3D container_of(pmlmepriv-&gt;pscanned,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0struct wlan_network, list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (pnetwork =3D=3D NULL)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0pmlmepriv-&gt;pscanned =3D pmlmepriv-&gt;pscanned-&gt;next=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (pmlmepriv-&gt;assoc_by_bssid) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dst_ssid =3D pnetwork-&gt;netw=
ork.MacAddress;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 2.17.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; You received this message because you a=
re subscribed to the Google Groups &quot;outreachy-kernel&quot; group.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To unsubscribe from this group and stop=
 receiving emails from it, send an email to <a href=3D"mailto:outreachy-ker=
nel%2Bunsubscribe@googlegroups.com" rel=3D"noreferrer noreferrer" target=3D=
"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To post to this group, send email to <a=
 href=3D"mailto:outreachy-kernel@googlegroups.com" rel=3D"noreferrer norefe=
rrer" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To view this discussion on the web visi=
t <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/20190331022=
155.68569-7-himadri18.07%40gmail.com" rel=3D"noreferrer noreferrer noreferr=
er" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/20=
190331022155.68569-7-himadri18.07%40gmail.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; For more options, visit <a href=3D"http=
s://groups.google.com/d/optout" rel=3D"noreferrer noreferrer noreferrer" ta=
rget=3D"_blank">https://groups.google.com/d/optout</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0You received this message because you are su=
bscribed to the Google Groups &quot;outreachy-kernel&quot; group.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To unsubscribe from this group and stop rece=
iving emails from it, send an email to <a href=3D"mailto:outreachy-kernel%2=
Bunsubscribe@googlegroups.com" rel=3D"noreferrer noreferrer" target=3D"_bla=
nk">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To post to this group, send email to <a href=
=3D"mailto:outreachy-kernel@googlegroups.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To view this discussion on the web visit <a =
href=3D"https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.=
1903311013430.2578%40hadrien" rel=3D"noreferrer noreferrer noreferrer" targ=
et=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB=
.2.21.1903311013430.2578%40hadrien</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0For more options, visit <a href=3D"https://g=
roups.google.com/d/optout" rel=3D"noreferrer noreferrer noreferrer" target=
=3D"_blank">https://groups.google.com/d/optout</a>.<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
rel=3D"noreferrer noreferrer" target=3D"_blank">outreachy-kernel+unsubscrib=
e@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" rel=3D"noreferrer noreferrer" target=3D"_blank">outreachy-ke=
rnel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1904012151530.2530%40hadrien" r=
el=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://groups.go=
ogle.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1904012151530.2530%40hadr=
ien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://groups.goog=
le.com/d/optout</a>.<br>
</blockquote></div></div></div>

--000000000000e8229305857db0ca--

