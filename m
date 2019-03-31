X-GM-THRID: 6674267883353145344
X-Received: by 2002:a25:1607:: with SMTP id 7mr4209145ybw.51.1554056949558;
        Sun, 31 Mar 2019 11:29:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:38cb:: with SMTP id f194ls2295644yba.6.gmail; Sun, 31
 Mar 2019 11:29:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwC2IB8PK6G3iMbiFmJC1hvY3eYdBaj/Ij2Gc8dn1mCdmiMQUKAYpX29EUasmf93hcW7dD3
X-Received: by 2002:a25:bfc8:: with SMTP id q8mr3919402ybm.11.1554056948576;
        Sun, 31 Mar 2019 11:29:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554056948; cv=none;
        d=google.com; s=arc-20160816;
        b=pFNEBf8qE0LHBONxCdfDF2er6VF0uMoXgkb4BBsRAtsmzH8A7kqK3kBId/fG+rzgdr
         0lA+AlgZjVACWQC95vNfvXLW87kNCjoA8Ao+CJVdwnbVauisDk1UH7pjErwql/2KaGjy
         r+cGFEuyjGZ12yhGOwtuZPIEzZZUXOVzwyYMWKm0NyVx6I5zygM41YEE1XREsNxiq9ow
         bjacY4GSzUi/SbgX1Pmm0N7E6iPVur9rgh5ydHEjNrH0Bk5yf3/K+J7Ce5oFRiee+MdT
         03kBy6a911s9M3wRhZ9KvuZ10iQqYg6M6uAvX5Hdsr2EUha6a0oEVBw/qf4R7U2isPuM
         d7Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2B8Nov1oFc3iC6ecZEMaPkTNAIeAs0DoKMZkflhDrsk=;
        b=FrAiYkEIPvfc8RwVtuuApBet+SjYMQnWtE1qJdFxLnXq/5Wtyf1Zj4m/wvetBRmWqT
         PM2pS6Tp+vHfDJyarXgrj1Ic0BNCAXy6OjOPhJkgj0Lwt6piWcKUNe3ykqK0dRLogE6u
         j0h+oBPH3otF3imUX+QjwUjCm4k8Jq8B3QNZ2f82RGDfrMmCKI2TKahveadyi+6mH8u3
         V5X88pIeKwO+mpKYC9eOA+wx06OMDJeXjF2mVeWanrzNZWmNx892cmK6kpWgzobhjGWH
         wU82pz7fdCAtn/yYrBGz823D9fQ7eR/9icPHIHYLqIBxXC4H5V4DpW8+QqR5aq2Z4JQV
         B4XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RE0BKD5a;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com. [2607:f8b0:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id s11si427590ywg.3.2019.03.31.11.29.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 11:29:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) client-ip=2607:f8b0:4864:20::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RE0BKD5a;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22f.google.com with SMTP id a6so2090522oie.5
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 11:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2B8Nov1oFc3iC6ecZEMaPkTNAIeAs0DoKMZkflhDrsk=;
        b=RE0BKD5aLB6ZHw9WDS55vQzoJqRLiU4VN0wrersEUTycvYSDWp5OKZNO6LZEbh/8ER
         QRSiWXmQbHVR8hpyj5QYuo2dpQzfIPFlBH5bzbnmokkdUSU83QV18C/mrW5mRC9OAtLV
         qax8uz/FbkmX/uZtH0UyY9qe3dGbfdKJaKzaLdAnO2a8ba8nlnc9oUAnaeUkzGs2PnLW
         iuuh2iZZAO6FDVSJakY6+2A5OFhgSV6sMmqUJl4M7tBHRJHZSHS2+BB8F/g/qOKQ6Byw
         BfG0EunN14QoqWkp1YIUNvaCGsIw4hRNFXkMonOpGOUyeJDuMg7+bDr00heVJWKlM5RK
         of2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2B8Nov1oFc3iC6ecZEMaPkTNAIeAs0DoKMZkflhDrsk=;
        b=KtFb1oiXjQ84lvt84bF2aFZxeLRra6KA7xjfv4dZuq5y7P0UAlixpoXs4CuqdzQ/rB
         U+LkEc9+t1J+CGdOmJYHy7JKFzmDQo7ge2SkFc3btMGRUx2igFJbXnFBUZD/Xom3bmKj
         bMAYRdYLKD0tW5cqr0gjrXKM998e58fA2agiGcWlNJQihkxvkCucBvAT4XlW28NaO5dY
         EUczevWc/eqg6KwPmlSEzTrjDhoHtlI5zSwBPBXGK1LOt1qjyzmbEACmnGy1hbkj5EBW
         0vEDnr2lgOoR7Cbzf159R7MqZApWinzvnfVOrVgmAe4otcLUe0o9FjJTd1eKThBGSRVl
         y5fw==
X-Gm-Message-State: APjAAAVedVM0IeAlrC3aOOiFIhJhc8Oydlakhfmx4f0jlFvsGfnF3IYL
	0EoD/hm2v+rN0Jy6/06JIOFRBEOEr4joP+W4xwA=
X-Received: by 2002:aca:f189:: with SMTP id p131mr9706713oih.89.1554056948040;
 Sun, 31 Mar 2019 11:29:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190330192742.65250-1-himadri18.07@gmail.com>
 <20190331022155.68569-1-himadri18.07@gmail.com> <20190331022155.68569-2-himadri18.07@gmail.com>
 <alpine.DEB.2.21.1903311010580.2578@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903311010580.2578@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Sun, 31 Mar 2019 23:58:47 +0530
Message-ID: <CAPnhUpbjpM98ck9Az3uZi6huij7jNstQdcQU5DJeeKbUZr4C+A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/7] staging: rtl8712: use
 list_entry in function _r8712_find_network
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000005947d305856814f9"

--0000000000005947d305856814f9
Content-Type: text/plain; charset="UTF-8"

On Sun, 31 Mar, 2019, 1:43 PM Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 31 Mar 2019, Himadri Pandya wrote:
>
> > Use list_entry instead of container_of for conversion to
> > wlan_network in function _r8712_find_network() because it is a better
> > practice to use list_entry for list manipulations in kerel.
>
> Better practice is random.
>
> The point is that the field has type list_head and in that case list_entry
> is equivalent to container_of:
>
> #define list_entry(ptr, type, member) \
>         container_of(ptr, type, member)
>
> julia
>

Okay. Including this point in next revision. Thank you.

- Himadri

>
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> > Changes in V3:
> >       - Improve log message
> > ---
> >  drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c
> b/drivers/staging/rtl8712/rtl871x_mlme.c
> > index c666e038f43e..9bfceaeaa05e 100644
> > --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> > +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> > @@ -142,7 +142,7 @@ static struct wlan_network
> *_r8712_find_network(struct  __queue *scanned_queue,
> >       phead = &scanned_queue->queue;
> >       plist = phead->next;
> >       while (plist != phead) {
> > -             pnetwork = container_of(plist, struct wlan_network, list);
> > +             pnetwork = list_entry(plist, struct wlan_network, list);
> >               plist = plist->next;
> >               if (!memcmp(addr, pnetwork->network.MacAddress, ETH_ALEN))
> >                       break;
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190331022155.68569-2-himadri18.07%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--0000000000005947d305856814f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sun, 31 Mar, 2019, 1:43 PM Julia Lawall, &lt;<a hre=
f=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><br>
<br>
On Sun, 31 Mar 2019, Himadri Pandya wrote:<br>
<br>
&gt; Use list_entry instead of container_of for conversion to<br>
&gt; wlan_network in function _r8712_find_network() because it is a better<=
br>
&gt; practice to use list_entry for list manipulations in kerel.<br>
<br>
Better practice is random.<br>
<br>
The point is that the field has type list_head and in that case list_entry<=
br>
is equivalent to container_of:<br>
<br>
#define list_entry(ptr, type, member) \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 container_of(ptr, type, member)<br>
<br>
julia<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Okay. Including this point in next revision. Thank you.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">- Himadri=C2=A0</div><div dir=3D"auto=
"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt;<br>
&gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail=
.com" target=3D"_blank" rel=3D"noreferrer">himadri18.07@gmail.com</a>&gt;<b=
r>
&gt; ---<br>
&gt; Changes in V3:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0- Improve log message<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/=
rtl8712/rtl871x_mlme.c<br>
&gt; index c666e038f43e..9bfceaeaa05e 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_mlme.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_mlme.c<br>
&gt; @@ -142,7 +142,7 @@ static struct wlan_network *_r8712_find_network(st=
ruct=C2=A0 __queue *scanned_queue,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0phead =3D &amp;scanned_queue-&gt;queue;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0plist =3D phead-&gt;next;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0while (plist !=3D phead) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pnetwork =3D containe=
r_of(plist, struct wlan_network, list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pnetwork =3D list_ent=
ry(plist, struct wlan_network, list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0plist =3D plist-=
&gt;next;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!memcmp(addr=
, pnetwork-&gt;network.MacAddress, ETH_ALEN))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
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
gle.com/d/msgid/outreachy-kernel/20190331022155.68569-2-himadri18.07%40gmai=
l.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.googl=
e.com/d/msgid/outreachy-kernel/20190331022155.68569-2-himadri18.07%40gmail.=
com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
</blockquote></div></div></div>

--0000000000005947d305856814f9--

