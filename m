X-GM-THRID: 6674267883353145344
X-Received: by 2002:aca:49ca:: with SMTP id w193mr2729033oia.46.1554106903578;
        Mon, 01 Apr 2019 01:21:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:f2d5:: with SMTP id q204ls384110oih.4.gmail; Mon, 01 Apr
 2019 01:21:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw23nlS08NLn5HldUfoPKBa8bmKLEiuwNK6a0Q13liJ9nc3CxPBNt8bpUBwx62EoETjsVyz
X-Received: by 2002:aca:c5d0:: with SMTP id v199mr6264670oif.7.1554106902789;
        Mon, 01 Apr 2019 01:21:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554106902; cv=none;
        d=google.com; s=arc-20160816;
        b=Z5UjZEFOgccb6GSUiEp7W2CfP7YYRoW4D9Y/eH/vrlME/dz/dI3sPWzczbn9VFXdVe
         LCVhBnKknRfIHGI96+zyulIomFE7v09InAVFR2H9WQR4A/6XhNF/MFMfsY47xFSMybD4
         MuJH7I7HpsZu/WpWPIUYNrtrMXXUhBfc0AeAJLBS3r4ukN3HtAcIlljRcncUxix/yfJY
         j7Lsfe+zHBMDCjxc0s1uf1TQ7qDi5P6LxE4NK9kTvSrN84StEzBsPIMQXJecMFHK2y0c
         Gew5A+iYVRfcFQFa72UjwjImt7be4ZCqWmbQew2yWUmfYEBwan/cbQclWjYTlymp2EqX
         RgjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=okJv0/yRBBaMxxuYifvME5+qvAdUD7dksX21wfmSBQk=;
        b=JNQMsZAdlTyuHBX3UlhGTVHDq+L/mfcc1h3AThNDx/BzvdaLOGeNAf3XwdDdzlAjWP
         yDzajLiCREj8FXm1/LHQJb1gqZbG5EfLX3rpn2asxp+qN9f4871KSNvUkWDZpNExSjkO
         PfkKGpf2Q0KviBe/GGr+TOoCdIAHDZn97986mV1Xd8LhnM1N01jf2SEmfUhSjFq94cTe
         WlsG+ZgjcyyJLUq7nbrgmcACfZQ/L3eo1OtE/70/witXKNWHR7Q890+JsxiuB0/44fQk
         om5UupjamM55TPDiZcOJDVK2Jbb1eArc59W57j4rg3CUKeb6psx+f3AMT4LaoPqtYwKK
         zo9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AlOoawdN;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id d12si458214oib.0.2019.04.01.01.21.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 01:21:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AlOoawdN;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id m10so7859984otp.2
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 01:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=okJv0/yRBBaMxxuYifvME5+qvAdUD7dksX21wfmSBQk=;
        b=AlOoawdNq5YhG2JNP3kVwDjfwcBVNKYBxX76m5GGkQKvLDNugEE7zZaBnhRKT6aCPN
         fNC813DNk+ubg65p/1K1oNwSfSe7mzNBGtg7kp3yqZuAVKL8nG4JhGlHt2PeBNVsp+eJ
         jCF8CPeMUzmNnTLgz4etrrzi8TZCxgu+evkvRzVK/J2PAiZJppdQLiGdJTqenUHgMELr
         m8B3AHQ3S5Z4T2gJk3l5BkrUkzSSHhBb9zpZWF4rIzsDWHIFGbRU7Gt7K5MwLg2ubfRQ
         eggKSf6XugZ3PaQQ0qYt8Li/ERV3XMbRro95Isw9wHs1sAC5ZXfyQyLkxrqsv3F+35B2
         rtpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=okJv0/yRBBaMxxuYifvME5+qvAdUD7dksX21wfmSBQk=;
        b=gPfRxQLOnFDHSA+6227efYDu4DppymcgDCsQtgWT0WhokcRCVyMKEw+HhOu3BGjbtf
         L1FpJzRLdaYl84XEHAGolCTLdZ/Ehmz/kto+c1/VhUaHZfgJZXiQoHRENootxwIK/I7o
         s/fl8IqmXNQVxA1crbImHsJCaWceClTzrrRX6aRMYkqTCDH/DzdnkGQHKhXYUWX0clY3
         sQxTFmw74Fr4Gyr0hmQVF89QXL1CGNKn9f1xMXVWgK/ZC+aAaQQcWY0R2hKgtGPDClK5
         vczRZMvEJC8VrOUwTLutI73HRmkjiV0ix5qDTptm8SKs1d4pB5UqIdY0DvsnSrZrstVW
         QRxA==
X-Gm-Message-State: APjAAAVv9mEJ6jmNRWhlWGdWmc67UQDFtWsE9cSthWMffrEeQ0mkW9AY
	BTlZrf+64/wbEADSBZFyyzaEIgEJDVXbuu0IZKZDyKkt
X-Received: by 2002:a9d:3444:: with SMTP id v62mr47322006otb.165.1554106902280;
 Mon, 01 Apr 2019 01:21:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190330192742.65250-1-himadri18.07@gmail.com>
 <20190331022155.68569-1-himadri18.07@gmail.com> <20190331022155.68569-7-himadri18.07@gmail.com>
 <alpine.DEB.2.21.1903311013430.2578@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903311013430.2578@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Mon, 1 Apr 2019 13:51:29 +0530
Message-ID: <CAPnhUpaFnAoWFQLO2VadZRv_qdeEbu9osncGZG0bkyk1Pib2bg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 6/7] staging: rtl8712: remove
 unnecessary NULL check
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Larry.Finger@lwfinger.net, 
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000da7f98058573b515"

--000000000000da7f98058573b515
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 31, 2019 at 1:45 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 31 Mar 2019, Himadri Pandya wrote:
>
> > Remove unnecessary NULL check for wlan_network *pnetwork because
> > container_of will not return NULL in this usage.
>
> Actually, it is possible that it can, because of the obscure reason that
> the list field is at the top of the structure.  You can see if it is
> possible and useful to make the same check without the container_of call.
>
> julia
>

Okay.

I think pmlmepriv->pscanned is used to get the address of mlme_priv 's
member struct wlan_network cur_network using container_of(). I can directly
check if struct wlan_netowrk's member struct list_head list is allocated
memory or not. Because it is the first member and if the memory is
allocated, the pointer to it won't be NULL. So instead of using
container_of(), I think I should just check if pmlmepriv->cur_network->list
is NULL or not.

Please correct me if I am mistaken.

Thank you.

- Himadri

>
>
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> >  drivers/staging/rtl8712/rtl871x_mlme.c | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c
> b/drivers/staging/rtl8712/rtl871x_mlme.c
> > index 1a15c45aa83b..be44c6b2819b 100644
> > --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> > +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> > @@ -1119,8 +1119,6 @@ int r8712_select_and_join_from_scan(struct
> mlme_priv *pmlmepriv)
> >               }
> >               pnetwork = container_of(pmlmepriv->pscanned,
> >                                       struct wlan_network, list);
> > -             if (pnetwork == NULL)
> > -                     return _FAIL;
> >               pmlmepriv->pscanned = pmlmepriv->pscanned->next;
> >               if (pmlmepriv->assoc_by_bssid) {
> >                       dst_ssid = pnetwork->network.MacAddress;
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190331022155.68569-7-himadri18.07%40gmail.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903311013430.2578%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000da7f98058573b515
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Mar 31, 2019=
 at 1:45 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.=
lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><br>
<br>On Sun, 31 Mar 2019, Himadri Pandya wrote:<br>
<br>&gt; Remove unnecessary NULL check for wlan_network *pnetwork because<b=
r>&gt; container_of will not return NULL in this usage.<br>
<br>Actually, it is possible that it can, because of the obscure reason tha=
t<br>the list field is at the top of the structure.=C2=A0 You can see if it=
 is<br>possible and useful to make the same check without the container_of =
call.<br>
<br>julia<br></blockquote><div><br></div><div>Okay.=C2=A0</div><div><br></d=
iv><div>I think pmlmepriv-&gt;pscanned is used to get the address of mlme_p=
riv &#39;s member struct wlan_network cur_network using container_of(). I c=
an directly check if struct wlan_netowrk&#39;s member struct list_head list=
 is allocated memory or not. Because=C2=A0it is the first member and if the=
 memory is allocated, the pointer to it won&#39;t be NULL. So instead of us=
ing container_of(), I think I should just check if pmlmepriv-&gt;cur_networ=
k-&gt;list is NULL or not.</div><div><br></div><div>Please correct me if I =
am mistaken.</div><div><br></div><div>Thank you.</div><div><br></div><div>-=
 Himadri</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>&gt;<br>&gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadr=
i18.07@gmail.com" target=3D"_blank">himadri18.07@gmail.com</a>&gt;<br>&gt; =
---<br>&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_mlme.c | 2 --<br>&gt;=C2=
=A0 1 file changed, 2 deletions(-)<br>&gt;<br>&gt; diff --git a/drivers/sta=
ging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c<br>&gt=
; index 1a15c45aa83b..be44c6b2819b 100644<br>&gt; --- a/drivers/staging/rtl=
8712/rtl871x_mlme.c<br>&gt; +++ b/drivers/staging/rtl8712/rtl871x_mlme.c<br=
>&gt; @@ -1119,8 +1119,6 @@ int r8712_select_and_join_from_scan(struct mlme=
_priv *pmlmepriv)<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0}<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pnetw=
ork =3D container_of(pmlmepriv-&gt;pscanned,<br>&gt;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct wlan_network, list);<br=
>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pnetwork =3D=3D =
NULL)<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0return _FAIL;<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0pmlmepriv-&gt;pscanned =3D pmlmepriv-&gt;pscanned-&gt;n=
ext;<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pmlm=
epriv-&gt;assoc_by_bssid) {<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dst_ssid =3D pnetwork-&gt;netw=
ork.MacAddress;<br>&gt; --<br>&gt; 2.17.1<br>&gt;<br>&gt; --<br>&gt; You re=
ceived this message because you are subscribed to the Google Groups &quot;o=
utreachy-kernel&quot; group.<br>&gt; To unsubscribe from this group and sto=
p receiving emails from it, send an email to <a href=3D"mailto:outreachy-ke=
rnel%2Bunsubscribe@googlegroups.com" target=3D"_blank">outreachy-kernel+uns=
ubscribe@googlegroups.com</a>.<br>&gt; To post to this group, send email to=
 <a href=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_blank">out=
reachy-kernel@googlegroups.com</a>.<br>&gt; To view this discussion on the =
web visit <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/201=
90331022155.68569-7-himadri18.07%40gmail.com" rel=3D"noreferrer" target=3D"=
_blank">https://groups.google.com/d/msgid/outreachy-kernel/20190331022155.6=
8569-7-himadri18.07%40gmail.com</a>.<br>&gt; For more options, visit <a hre=
f=3D"https://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blan=
k">https://groups.google.com/d/optout</a>.<br>&gt;<br>
<br>-- <br>You received this message because you are subscribed to the Goog=
le Groups &quot;outreachy-kernel&quot; group.<br>To unsubscribe from this g=
roup and stop receiving emails from it, send an email to <a href=3D"mailto:=
outreachy-kernel%2Bunsubscribe@googlegroups.com" target=3D"_blank">outreach=
y-kernel+unsubscribe@googlegroups.com</a>.<br>To post to this group, send e=
mail to <a href=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_bla=
nk">outreachy-kernel@googlegroups.com</a>.<br>To view this discussion on th=
e web visit <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/a=
lpine.DEB.2.21.1903311013430.2578%40hadrien" rel=3D"noreferrer" target=3D"_=
blank">https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1=
903311013430.2578%40hadrien</a>.<br>For more options, visit <a href=3D"http=
s://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blank">https:=
//groups.google.com/d/optout</a>.<br>
</blockquote></div></div></div>

--000000000000da7f98058573b515--

