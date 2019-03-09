X-GM-THRID: 6666325868481085440
X-Received: by 2002:a17:902:ea06:: with SMTP id cu6mr7217942plb.96.1552127019032;
        Sat, 09 Mar 2019 02:23:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:6257:: with SMTP id q23ls1969060pgv.6.gmail; Sat, 09 Mar
 2019 02:23:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqxRZVitJIWiHsUyC0rgzq4FhLY3DJOuOj9BKbIYvsuVibYVkhLzb1lOtE3ojfr1QeNjHGKF
X-Received: by 2002:a63:f115:: with SMTP id f21mr8846914pgi.64.1552127017934;
        Sat, 09 Mar 2019 02:23:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552127017; cv=none;
        d=google.com; s=arc-20160816;
        b=JG8wRNJ8nd1pE+zFgzpEoA2TSJkabAjXTV3nk6nLIaIKM25NDCzgI+5b5hC4x6/TmN
         ZsIhbJNsUNToODBHMfzzI5BVYCD2JjmMvh3w2ynxHh65uJrG/oCRrkDHGTm3jI1miF5D
         v35/558wg2e0ECsNVVdssdQqwPqUBtPhPl8M1GTuXA+4x3dKIi+Xt/9WTMl3UpN8MaUY
         Ugu7ROBxVDJB8J7DS9HeOL7YbDvMDsB27kF5Q55PZ5JFSKCwQiKWDbtpTjTBifT5ON+i
         bcM8wfhAJhW4+dOunToNAajIQiI9QYNbMty5j52s7NPX1lQ0e4md4lRv0BMkXFYA+42P
         SJmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I+mttTViwWQxtkm4P7cKDBEeNfmyYxxwWUnpnjLZbes=;
        b=aWwmgL72/2bXRSBQpFgd1TXqKwFfYGBDlHMDBQ7r9WxcaoOpsva7lrAHyXrd0tT4or
         N93SLnad1fjtdpAnYc5WnukyvtvAkou3khatSOQjEfFLhBgHt+VhbRvm7fRpGpZsvWwr
         Ef2+yucluMc7qg68mpqLt6d+BnzMLUBi8m6z8wnP4ka2xAe+Zt5W4AqoAHQSwqt717+j
         aZjZZsKzjefQuHBAgBSlwYZBas3A2UezRU8YCsJESSnxh2XwHu0hw9KLT2DVmtQY9DE9
         Oel5QN8XHLUzIO0M2nvNOGaj+7h7YdV5O8rSubQV/p78OeqTlFNvtAMSqTy72EfeIGyY
         0Mrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nZ4DTKcF;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id e71si4663pfc.1.2019.03.09.02.23.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 02:23:37 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nZ4DTKcF;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id t206so108766oib.3
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 02:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=I+mttTViwWQxtkm4P7cKDBEeNfmyYxxwWUnpnjLZbes=;
        b=nZ4DTKcFkJQbnTu2kjfslUFn5081auKe0WSGtTMmX3dJZJP2bWtXMAs3Y/L2cw8Sf4
         D7sNxn4j2nM3vHTFP3okKjyOu7x5mcD3x2lDrNdlC3zMcsYcglymKVn5EZUUl5p6E4x5
         W111lanX0uKj4BbvA/FCT0LTMiNBqOuY6UdA3KdhHvRR8GlqTQN325vMsjXOv/OffQD9
         g1AC5NOxavA7A/OrDGl1vJwKw+x2RLtYwrKGjpNwijJyMiAUBh4UagOQeDPu7lCbQM7k
         YFZrbannbzCpXsEn7/nYDQ3q0pmw0XpTINSL4x3S566DLChVOop18p0qztrYwJJKvRSg
         UqGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=I+mttTViwWQxtkm4P7cKDBEeNfmyYxxwWUnpnjLZbes=;
        b=qdo5RKFLFzLDfKVjuMv9itRsWxAbWBZ1G9BAfa9wPjntLIBVNAtE78sraGLJlmK/4W
         aWuTnqKee8HxA6792gDR/H99FtfafMkbmfQ89QVgN4iwV3g6iZwssZ6zABJzNEVf/492
         BYmO1DDABbZSRrPRmj8d6d/0hnGeGq2RUNE5bPPkJbbcIb2D/FLAtV7V25SJHLNfmrar
         D/uwGlzVC16HstIC4Ojgc7WEm5DVVpL/kfaqH0OA2n9C/kbCEFPPk6fqxG7LWUuWCgHV
         IqzJ4l3ix+5KhP+s5dNDq/48VvMLeF2ddRF1yP4ucUSoj9LGiU7WQ+Iwx1TZaKOntJ9x
         xR0w==
X-Gm-Message-State: APjAAAWYYV8noWqR6CAw9sJnQHu5VkZWW0FASite7j56yLBbJagDPdtt
	3e2srEwQXoq1qU7qTP+V7yBnaWrDXkbJli9E4JXUdVHI
X-Received: by 2002:aca:cdd3:: with SMTP id d202mr10899322oig.82.1552127017324;
 Sat, 09 Mar 2019 02:23:37 -0800 (PST)
MIME-Version: 1.0
References: <20190309094840.38154-1-himadri18.07@gmail.com> <alpine.DEB.2.21.1903091051570.2558@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903091051570.2558@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Sat, 9 Mar 2019 15:53:25 +0530
Message-ID: <CAPnhUpbJcMN6pwe-RYZphLDRDbjS=woPVWzGH8L26h12c9v2Dw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: remove unnecessary
 variable result
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: adham.abozaeid@microchip.com, ajay.kathat@microchip.com, 
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000008394d90583a6bb02"

--0000000000008394d90583a6bb02
Content-Type: text/plain; charset="UTF-8"

On Sat, 9 Mar, 2019, 3:23 PM Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 9 Mar 2019, Himadri Pandya wrote:
>
> > Remove unnecessary local variable "result" and its assignments from
> > function wilc_set_pmkid_info. Suggested by Coccinelle.
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> >  drivers/staging/wilc1000/host_interface.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/wilc1000/host_interface.c
> b/drivers/staging/wilc1000/host_interface.c
> > index 4dd9a20f6a0b..962c5e6edd5e 100644
> > --- a/drivers/staging/wilc1000/host_interface.c
> > +++ b/drivers/staging/wilc1000/host_interface.c
> > @@ -1358,17 +1358,15 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const
> u8 *rx_gtk, u8 gtk_key_len,
> >  int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr
> *pmkid)
> >  {
> >       struct wid wid;
> > -     int result;
> >
> >       wid.id = WID_PMKID_INFO;
> >       wid.type = WID_STR;
> >       wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
> >       wid.val = (u8 *)pmkid;
> >
> > -     result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> > +     return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> >                                     wilc_get_vif_idx(vif));
>
> It looks like this now violates the rule that function arguments should
> appear just to the right of a (.  Maybe checkpatch didn't check this
> because the line with the relevant argument is not affected by the change.
>
> julia
>

In version 2, I aligned the parameters with opening parentheses, but still
they appear on the left side in the patch. I double checked, parameters are
properly aligned in the code.

- Himadri


> >
> > -     return result;
> >  }
> >
> >  int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190309094840.38154-1-himadri18.07%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--0000000000008394d90583a6bb02
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, 9 Mar, 2019, 3:23 PM Julia Lawall, &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><br>
<br>
On Sat, 9 Mar 2019, Himadri Pandya wrote:<br>
<br>
&gt; Remove unnecessary local variable &quot;result&quot; and its assignmen=
ts from<br>
&gt; function wilc_set_pmkid_info. Suggested by Coccinelle.<br>
&gt;<br>
&gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail=
.com" target=3D"_blank" rel=3D"noreferrer">himadri18.07@gmail.com</a>&gt;<b=
r>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/wilc1000/host_interface.c | 4 +---<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/stagi=
ng/wilc1000/host_interface.c<br>
&gt; index 4dd9a20f6a0b..962c5e6edd5e 100644<br>
&gt; --- a/drivers/staging/wilc1000/host_interface.c<br>
&gt; +++ b/drivers/staging/wilc1000/host_interface.c<br>
&gt; @@ -1358,17 +1358,15 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, cons=
t u8 *rx_gtk, u8 gtk_key_len,<br>
&gt;=C2=A0 int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_=
attr *pmkid)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct wid wid;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0int result;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://wid.id" rel=3D"noreferrer =
noreferrer" target=3D"_blank">wid.id</a> =3D WID_PMKID_INFO;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wid.type =3D WID_STR;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wid.size =3D (pmkid-&gt;numpmkid * sizeof(st=
ruct wilc_pmkid)) + 1;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wid.val =3D (u8 *)pmkid;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0result =3D wilc_send_config_pkt(vif, WILC_SET_CFG=
, &amp;wid, 1,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return wilc_send_config_pkt(vif, WILC_SET_CFG, &a=
mp;wid, 1,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wilc_get_vif_=
idx(vif));<br>
<br>
It looks like this now violates the rule that function arguments should<br>
appear just to the right of a (.=C2=A0 Maybe checkpatch didn&#39;t check th=
is<br>
because the line with the relevant argument is not affected by the change.<=
br>
<br>
julia<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">In version 2, I aligned the parameters with opening parentheses, but s=
till they appear on the left side in the patch. I double checked, parameter=
s are properly aligned in the code.=C2=A0</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">- Himadri</div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return result;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)<br>
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
gle.com/d/msgid/outreachy-kernel/20190309094840.38154-1-himadri18.07%40gmai=
l.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.googl=
e.com/d/msgid/outreachy-kernel/20190309094840.38154-1-himadri18.07%40gmail.=
com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
</blockquote></div></div></div>

--0000000000008394d90583a6bb02--

