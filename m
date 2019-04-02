X-GM-THRID: 6674267883353145344
X-Received: by 2002:a37:2794:: with SMTP id n142mr7294089qkn.46.1554199405482;
        Tue, 02 Apr 2019 03:03:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4c4c:: with SMTP id z73ls982436qka.8.gmail; Tue, 02 Apr
 2019 03:03:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzcaITstXfziN4eMfM+kk973IOTzsyg7zaM8CfeJaVQkhtcNUlioiw35rm6Ntz1AE+hUQD4
X-Received: by 2002:a37:a07:: with SMTP id 7mr7232412qkk.50.1554199404246;
        Tue, 02 Apr 2019 03:03:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554199404; cv=none;
        d=google.com; s=arc-20160816;
        b=tCDAaSKZ/pWPDp+dVP8/Egn8ZDjU6R+X4s4S2yB9gWdi0BvonHLqwV0OuwIgsEnNpJ
         B5GLREDPiCVLS/gSdVW3DKEPW/gkAQPgKJizPlxhT9XWAKduHngTthZzIjFRTqWRj4Ie
         Izr/wJ4yjWQpHV3CS79+lx8xHueomLCXRGyhUmvjTTMlYDMVIiCYlmbzxVDhOY6ShRhd
         2GXX0bE7siOtpXWra7w5OosCte/K1X7bv7BQ5vbp6IBsTUgG+xzcV723pG1gYU7pYkAJ
         r1gK+D0Qy2ga3AjLe2Dsvn8bc6ac7uHgVtNf+6++xCPNcLtrNCWESquKOYw3aGS7o5nX
         ZxKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZoAostQSPeEXl2yOvumzeKdU9SRPU0GP/srZ246V/d0=;
        b=QUmnaavwRE4LWuvFHApIhHm1ULHK+MsAq8Cs4a083vqhRMkX9+ARj70BcsuZnU49FL
         Mt1KUMkQyY6zwwF61hcD0IvHVUPbD+qMUwp9A4olfT5kET+LqsdvfdZJ9nBiA0p68Cjz
         Z2S8gNXjuevCufYg6Va73O9Q8lEcG5IU1YCyuM7cl9HjLC/eAMjG3jhlMg7DHbAoiKgp
         0XQ7yu950jhIvMfuWxd0V4QnvOhjv0kiXRlP8rEUohynUDdHW2b+D07E83Ly4c0RKB5B
         Dc3kE4TlTplIh6A6J4lRoVWQgn3KZ2zW7vqLaB8rL520BJHkxfRHEmMRHJgN9lyKBzUD
         ieew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+cc64VM;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com. [2607:f8b0:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id x11si566671qka.5.2019.04.02.03.03.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 03:03:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) client-ip=2607:f8b0:4864:20::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+cc64VM;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22d.google.com with SMTP id n187so9939621oih.6
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 03:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZoAostQSPeEXl2yOvumzeKdU9SRPU0GP/srZ246V/d0=;
        b=T+cc64VMbCUjQsLz/5OPMsSdX+sxWcrID5pu600jWTDg0ljAAaABH39eNeVpF8siY4
         gsXRvPLHpO81OMK6lXvvwJattcYkuIf9a4NjENejrKqVpdScYo14iBvjFn0lDFe2fvp7
         Qa1XsToHa1BdWVdbaUBHRU0wBeSH2+/rFN0XW5b73dgTrvxmgbFBqKk8mrMdc/TdeuEG
         ov3NrAsRz5ZULt275rFlcST+TlWikzUIiNUR+vGVB/ArLmF7VqIgcQHOX/lTIEL3XVjY
         uD9m9KmGDDIJoK/j55AyB97EbJD2YxMi/uEqlW7zXgsjsOxXcUS6343udtJPVBvA6k7I
         9yhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZoAostQSPeEXl2yOvumzeKdU9SRPU0GP/srZ246V/d0=;
        b=iXN63jWO4/xFiFkopZElwTnEA9ZfrSXCdKDF/jEGOdqoGgLoARCRhZLxLCbkY5VPgQ
         Rw6DP/oqDRvDT9Iyq+6nl44URpqlr6Reh6YJ85z5gyKBqzew1llzaW17h9/GF9q4gR5q
         tIqxCKnqapBbBq00UisfkMSojuc5dRiop+e9m57l9iIc1eUsSdkoHJoIeKffIxlAdP+4
         x9kSlvaw8B6FXDuBir0NweanJ0mor1NIO/LrgJdDzS98FZUuequATaVs3Lny9PZ9la4o
         hVCEKX9wtxbJ7FxUSHt1rFeR2lFSQmNxEoQAMaESEXP1FHQgb8QzXwv4rez0e3R2ksmK
         m11A==
X-Gm-Message-State: APjAAAU0rl77fk/Io36Fd32qHtCgptuBU6y6emvhxoP+OKJGdoF9rqti
	rjguQ5Z2Ra0eXxDnuPBDxPRR05yVxOX10uXFT24=
X-Received: by 2002:aca:4e46:: with SMTP id c67mr11640367oib.127.1554199403632;
 Tue, 02 Apr 2019 03:03:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190401200955.98744-1-himadri18.07@gmail.com>
 <20190401200955.98744-7-himadri18.07@gmail.com> <20190402055701.GJ14075@kroah.com>
 <alpine.DEB.2.21.1904020831350.2664@hadrien> <CAPnhUpYU627URfjCLf6YhWvweFgdonjuMrSUj4g_W=C3OTm0eg@mail.gmail.com>
 <alpine.DEB.2.20.1904021157590.3297@hadrien>
In-Reply-To: <alpine.DEB.2.20.1904021157590.3297@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Tue, 2 Apr 2019 15:33:08 +0530
Message-ID: <CAPnhUpamTNxSnKs7ZqMFX=7jFz=NiKrtigHN7F=m7pJEj+5o4w@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4 6/6] staging: rtl8712: use
 list_entry in function r8712_select_and_join_from_scan
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, Larry Finger <Larry.Finger@lwfinger.net>, 
	florian.c.schilhabel@googlemail.com, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000005d1ee30585893fcd"

--0000000000005d1ee30585893fcd
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr, 2019, 3:28 PM Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Tue, 2 Apr 2019, Himadri Pandya wrote:
>
> >
> >
> > On Tue, 2 Apr, 2019, 12:05 PM Julia Lawall, <julia.lawall@lip6.fr>
> wrote:
> >
> >
> >       On Tue, 2 Apr 2019, Greg KH wrote:
> >
> >       > On Tue, Apr 02, 2019 at 01:39:55AM +0530, Himadri Pandya
> >       wrote:
> >       > > struct wlan_network contains field list of type list_head.
> >       Hence,
> >       > > getting the address of wlan_network using list_entry is
> >       equivalent
> >       > > of using container_of to do the same. And to use list_entry
> >       for list
> >       > > manipulations is a better choice.
> >       > >
> >       > > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> >       > > ---
> >       > > Changes in V4:
> >       > >     - Change log message
> >       > > Changes in V3:
> >       > >     - Improve log message
> >       > > ---
> >       > >  drivers/staging/rtl8712/rtl871x_mlme.c | 4 ++--
> >       > >  1 file changed, 2 insertions(+), 2 deletions(-)
> >       > >
> >       > > diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c
> >       b/drivers/staging/rtl8712/rtl871x_mlme.c
> >       > > index 1a15c45aa83b..164422b3ac07 100644
> >       > > --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> >       > > +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> >       > > @@ -1117,8 +1117,8 @@ int
> >       r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
> >       > >                     }
> >       > >                     return _FAIL;
> >       > >             }
> >       > > -           pnetwork = container_of(pmlmepriv->pscanned,
> >       > > -                                   struct wlan_network,
> >       list);
> >       > > +           pnetwork = list_entry(pmlmepriv->pscanned,
> >       > > +                                 struct wlan_network,
> >       list);
> >       > >             if (pnetwork == NULL)
> >       > >                     return _FAIL;
> >       >
> >       > A list entry can not be null, so this check is very odd.
> >
> >       I guess it could be, if the value is NULL, because the list
> >       field is at
> >       the top of the structure.  However, it looks like the list is
> >       build
> >       properly, with init_list_head and then list_add_tail, so the
> >       NULL test
> >       should not be needed.
> >
> >
> > Should I remove the NULL test then?
>
> Yes, but you need to explain in the log message in terms of the code why
> removing it is correct.
>
> julia
>

Okay. I'll do that. Thank you.

- Himadri


> >
> >
> >       Himadri, there are several very simple loops on lists that could
> >       be nicely
> >       converted to list_for_each or list_for_each_entry.  Search for
> >       end_of_queue_search.
> >
> >       julia

>
> >
> > On it. Thank you.
> >
> > - Himadri
> >
> >
> >
> >       >
> >       > --
> >       > You received this message because you are subscribed to the
> >       Google Groups "outreachy-kernel" group.
> >       > To unsubscribe from this group and stop receiving emails from
> >       it, send an email to
> >       outreachy-kernel+unsubscribe@googlegroups.com.
> >       > To post to this group, send email to
> >       outreachy-kernel@googlegroups.com.
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/20190402055701.GJ14075%4
> >       0kroah.com.
> >       > For more options, visit https://groups.google.com/d/optout.
> >       >
> >
> >       --
> >       You received this message because you are subscribed to the
> >       Google Groups "outreachy-kernel" group.
> >       To unsubscribe from this group and stop receiving emails from
> >       it, send an email to
> >       outreachy-kernel+unsubscribe@googlegroups.com.
> >       To post to this group, send email to
> >       outreachy-kernel@googlegroups.com.
> >       To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19040208
> >       31350.2664%40hadrien.
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1904021157590.3297%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000005d1ee30585893fcd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, 2 Apr, 2019, 3:28 PM Julia Lawall, &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><br>
<br>
On Tue, 2 Apr 2019, Himadri Pandya wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Tue, 2 Apr, 2019, 12:05 PM Julia Lawall, &lt;<a href=3D"mailto:juli=
a.lawall@lip6.fr" target=3D"_blank" rel=3D"noreferrer">julia.lawall@lip6.fr=
</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Tue, 2 Apr 2019, Greg KH wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; On Tue, Apr 02, 2019 at 01:39:55AM +053=
0, Himadri Pandya<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; struct wlan_network contains field=
 list of type list_head.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Hence,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; getting the address of wlan_networ=
k using list_entry is<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0equivalent<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; of using container_of to do the sa=
me. And to use list_entry<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; manipulations is a better choice.<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; Signed-off-by: Himadri Pandya &lt;=
<a href=3D"mailto:himadri18.07@gmail.com" target=3D"_blank" rel=3D"noreferr=
er">himadri18.07@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; Changes in V4:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;=C2=A0 =C2=A0 =C2=A0- Change log me=
ssage<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; Changes in V3:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;=C2=A0 =C2=A0 =C2=A0- Improve log m=
essage<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;=C2=A0 drivers/staging/rtl8712/rtl8=
71x_mlme.c | 4 ++--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;=C2=A0 1 file changed, 2 insertions=
(+), 2 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; diff --git a/drivers/staging/rtl87=
12/rtl871x_mlme.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/rtl8712/rtl871x_mlme.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; index 1a15c45aa83b..164422b3ac07 1=
00644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; --- a/drivers/staging/rtl8712/rtl8=
71x_mlme.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; +++ b/drivers/staging/rtl8712/rtl8=
71x_mlme.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; @@ -1117,8 +1117,8 @@ int<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_select_and_join_from_scan(struct mlme_=
priv *pmlmepriv)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0pnetwork =3D container_of(pmlmepriv-&gt;pscanned,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0struct wlan_network,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0pnetwork =3D list_entry(pmlmepriv-&gt;pscanned,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0struct wlan_network,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (pnetwork =3D=3D NULL)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; A list entry can not be null, so this c=
heck is very odd.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0I guess it could be, if the value is NULL, b=
ecause the list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0field is at<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0the top of the structure.=C2=A0 However, it =
looks like the list is<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0build<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0properly, with init_list_head and then list_=
add_tail, so the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0NULL test<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0should not be needed.<br>
&gt;<br>
&gt;<br>
&gt; Should I remove the NULL test then?<br>
<br>
Yes, but you need to explain in the log message in terms of the code why<br=
>
removing it is correct.<br>
<br>
julia<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Okay. I&#39;ll do that. Thank you.</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">- Himadri</div><div dir=3D"auto"><br></div><div dir=3D"auto=
"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Himadri, there are several very simple loops=
 on lists that could<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0be nicely<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0converted to list_for_each or list_for_each_=
entry.=C2=A0 Search for<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0end_of_queue_search.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia</blockquote></div></div><div dir=3D"au=
to"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
&gt;<br>
&gt;<br>
&gt; On it. Thank you.<br>
&gt;<br>
&gt; - Himadri<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; You received this message because you a=
re subscribed to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Google Groups &quot;outreachy-kernel&quot; g=
roup.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To unsubscribe from this group and stop=
 receiving emails from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it, send an email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel%2Bunsubsc=
ribe@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kerne=
l+unsubscribe@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To post to this group, send email to<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel@googlegro=
ups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@googlegroups=
.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To view this discussion on the web visi=
thttps://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/20190=
402055701.GJ14075%4" rel=3D"noreferrer noreferrer" target=3D"_blank">groups=
.google.com/d/msgid/outreachy-kernel/20190402055701.GJ14075%4</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://0kroah.com" rel=3D"norefer=
rer noreferrer" target=3D"_blank">0kroah.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; For more options, visit <a href=3D"http=
s://groups.google.com/d/optout" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">https://groups.google.com/d/optout</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0You received this message because you are su=
bscribed to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Google Groups &quot;outreachy-kernel&quot; g=
roup.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To unsubscribe from this group and stop rece=
iving emails from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it, send an email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel%2Bunsubsc=
ribe@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kerne=
l+unsubscribe@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To post to this group, send email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel@googlegro=
ups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@googlegroups=
.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To view this discussion on the web visithttp=
s://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB=
.2.21.19040208" rel=3D"noreferrer noreferrer" target=3D"_blank">groups.goog=
le.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19040208</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A031350.2664%40hadrien.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0For more options, visit <a href=3D"https://g=
roups.google.com/d/optout" rel=3D"noreferrer noreferrer" target=3D"_blank">=
https://groups.google.com/d/optout</a>.<br>
&gt;<br>
&gt;<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.20.1904021157590.3297%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.20.1904021157590.3297%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--0000000000005d1ee30585893fcd--

