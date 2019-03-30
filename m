X-GM-THRID: 6672800566949707776
X-Received: by 2002:a67:7e13:: with SMTP id z19mr2185987vsc.32.1553970499972;
        Sat, 30 Mar 2019 11:28:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:83c1:: with SMTP id f184ls1179069vsd.6.gmail; Sat, 30
 Mar 2019 11:28:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyqQnw4FD2Jms0Tp+lL7Zn3spEnXWgcwTSSN3Fd3BUZ0DinivQUb0GtubN6HdoPuR5vQQQW
X-Received: by 2002:a67:7a93:: with SMTP id v141mr1912640vsc.22.1553970499394;
        Sat, 30 Mar 2019 11:28:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553970499; cv=none;
        d=google.com; s=arc-20160816;
        b=JpIEooJcYJEJ2D8gG9UIfo9ApgIaIuEfi2A73POP8TBH8Re1NNBe0G7gFEkq/uD5AK
         j0nJH6JgTD17FH8fp6neCvA0NjGvEfJZ1eC44Mzbq15HBoKG+L8Z3Ne1Wejogewc6Xvl
         ovKQ+5emFhKKEXM5q6hv2pgexDU4rydv+xyoIes4yiJ7Ys1nJ0TTnIkuZICA9SdKqLMS
         fxv8QT8dwg3Y7Rv3yc+moq6LDXrQlSVo5vwjhwLUmxxZr5+EawTShOC+dSKT8qZvjePm
         85H0MtGzLBWwHGnlUR6/4temLaKvp4ohyRqOlenmc5uypwc0+/3HmIzkw+rgjkgMSc0D
         qOfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mtkJTfOCIhq0OPbMHszZICPY8XhvBVqUInYN3hGXvIQ=;
        b=L5oJTFtCoYc7ZqJJBJyzRQ/MrBcjGyXzDrkETqzeWuDr/4/FuHFfnbyaeTPkrEfndb
         2U8+Z1jRadfTmriHjRZ4BRzV40lG+M5HuX/JZJfJyb3DK5YVNQvNaCBT+DXDlOlNKe4W
         aQSjx6Pjv5T4/b72+yKJT+YQ7fg2JV4oXyB5HY7J46ZwcnYCGzXdC4Yu+66/wnn/mvqE
         zio9RIsLpsrSUvz47ygsPb/A2PfeOWWrY2OlOLUxYM7YNDtuN6UsR66UwhpfpguEWg5i
         YwlrN8xDE921iDbYtrTFWLP5mBG3vn76YNgIr0mR8Q/1lP3sQIxtsAIoit138PA2iKJW
         SBYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fEfYDE3A;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id q191si342694vkh.0.2019.03.30.11.28.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 11:28:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fEfYDE3A;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id y84so4165411oia.12
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 11:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mtkJTfOCIhq0OPbMHszZICPY8XhvBVqUInYN3hGXvIQ=;
        b=fEfYDE3ATKVrh5Qkz4OGRXyOsxKytbEb9q22d8M9tnuv5qNaSVYc/YNRnNooTQcj8c
         Ewb3SVCMlU2XILWaKmMaIMjY1ECBi5/1OMytlGnHQ5ThGCbTHd9vD/7EBwBX8qYzDLZi
         WUqn65TTdN3d3iN+ISypMPjkiYqsGC7aqR17WaO/7SqC6GPoPLTe+ViuxOcJSr7YA8QK
         FOgXJzIW5bly9HHgxgBwboGGKi9qT/lt9hra9tOuqFIPCO8SolXWKsK8yBZzexUGTFIy
         /KiydJZzAy9nSdZYuRu5C4HL4jirbnoAKLO3IdbOIIT0w2O4viMIzxYrx+LWWpwozBQp
         +75w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mtkJTfOCIhq0OPbMHszZICPY8XhvBVqUInYN3hGXvIQ=;
        b=oTdT2Q+enHzqutor5vySaRgdi4OiqxUXy3BvRfv617UhIs4lP5p85Cr7yu/0rHxFTH
         dnP3+oWLTpjrNvrxpnCLH8dkavnMrZRTb+V2wSA65RS0jhbXEYHDqfrmURQxD9jF1cLv
         zfyZUmx4aokeYX96fh65y9NWvV9MVIRlYdRc6lc2MKcpvTV9TkJFfBQ8dnY7Ie6Ge3eS
         7cg5vhCbLRJsalGoviXs5K4sPIQe9Ke61+iD6+QhCQ5nxcZosAZTkaw23fvlKZHeKYA4
         WMyvOZBtf8Blg/1Ih2rDSjR9JNt5kkxfS/lz/Co+tQwX6ZoK+Arlr0jdev6jKQiZ57H1
         Q7Gw==
X-Gm-Message-State: APjAAAVaOXMWfR6P0wtZs7GxsJkhUCu442BIrzljStB2E1h64iLpl51W
	u6PYmtrUwCGabePG6xFYbnm05KhTGezCnPxaz78=
X-Received: by 2002:aca:4a0a:: with SMTP id x10mr7553084oia.82.1553970498536;
 Sat, 30 Mar 2019 11:28:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190326203349.9048-1-himadri18.07@gmail.com> <alpine.DEB.2.21.1903262138130.3044@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903262138130.3044@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Sat, 30 Mar 2019 23:58:03 +0530
Message-ID: <CAPnhUpaahxzw0oMXjr7=oBeM_XE=USPWSkFgcLaGkjFs2GT34A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Use list_entry
 instead of container_of
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Larry.Finger@lwfinger.net, 
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000008e8804058553f37a"

--0000000000008e8804058553f37a
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 27, 2019 at 2:10 AM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 27 Mar 2019, Himadri Pandya wrote:
>
> > Use list_entry() instead of container_of() for conversion to
> > wlan_network.
>
> Some issues:
>
> Can list_for_each or list_for_each_entry be used for any of this code?
>

Yes. Sending version 2 with usage of these macros.


> In the last hunk, can the call to container_of/list_entry ever actually
> return NULL?
>

No. Removing the comparison in version 2.


>
> With respect to the first, it may be helpful to look at the result of make
> drivers/staging/rtl8712/rtl871x_mlme.i before and after the change to see
> if the code looks the same in each case after macro expansion.
>
> julia
>

Thank you.

- Himadri


>
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> >  drivers/staging/rtl8712/rtl871x_mlme.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c
> b/drivers/staging/rtl8712/rtl871x_mlme.c
> > index c666e038f43e..5b1fc327fbd2 100644
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
> > @@ -163,7 +163,7 @@ static void _free_network_queue(struct _adapter
> *padapter)
> >       phead = &scanned_queue->queue;
> >       plist = phead->next;
> >       while (!end_of_queue_search(phead, plist)) {
> > -             pnetwork = container_of(plist, struct wlan_network, list);
> > +             pnetwork = list_entry(plist, struct wlan_network, list);
> >               plist = plist->next;
> >               _free_network(pmlmepriv, pnetwork);
> >       }
> > @@ -290,7 +290,7 @@ struct    wlan_network
> *r8712_get_oldest_wlan_network(
> >       while (1) {
> >               if (end_of_queue_search(phead, plist) ==  true)
> >                       break;
> > -             pwlan = container_of(plist, struct wlan_network, list);
> > +             pwlan = list_entry(plist, struct wlan_network, list);
> >               if (pwlan->fixed != true) {
> >                       if (oldest == NULL ||
> >                           time_after((unsigned long)oldest->last_scanned,
> > @@ -371,7 +371,7 @@ static void update_scanned_network(struct _adapter
> *adapter,
> >               if (end_of_queue_search(phead, plist))
> >                       break;
> >
> > -             pnetwork = container_of(plist, struct wlan_network, list);
> > +             pnetwork = list_entry(plist, struct wlan_network, list);
> >               if (is_same_network(&pnetwork->network, target))
> >                       break;
> >               if ((oldest == ((struct wlan_network *)0)) ||
> > @@ -1118,8 +1118,8 @@ int r8712_select_and_join_from_scan(struct
> mlme_priv *pmlmepriv)
> >                       }
> >                       return _FAIL;
> >               }
> > -             pnetwork = container_of(pmlmepriv->pscanned,
> > -                                     struct wlan_network, list);
> > +             pnetwork = list_entry(pmlmepriv->pscanned,
> > +                                   struct wlan_network, list);
> >               if (pnetwork == NULL)
> >                       return _FAIL;
> >               pmlmepriv->pscanned = pmlmepriv->pscanned->next;
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190326203349.9048-1-himadri18.07%40gmail.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903262138130.3044%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000008e8804058553f37a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 27, 2019 at 2:10 AM Julia=
 Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br=
>
<br>On Wed, 27 Mar 2019, Himadri Pandya wrote:<br>
<br>&gt; Use list_entry() instead of container_of() for conversion to<br>&g=
t; wlan_network.<br>
<br>Some issues:<br>
<br>Can list_for_each or list_for_each_entry be used for any of this code?<=
br></blockquote><div><br></div><div>Yes. Sending version 2 with usage of th=
ese macros.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
<br>In the last hunk, can the call to container_of/list_entry ever actually=
<br>return NULL?<br></blockquote><div><br></div><div>No. Removing the compa=
rison in version 2.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
<br>With respect to the first, it may be helpful to look at the result of m=
ake<br>drivers/staging/rtl8712/rtl871x_mlme.i before and after the change t=
o see<br>if the code looks the same in each case after macro expansion.<br>
<br>julia<br></blockquote><div><br></div><div>Thank you.</div><div><br></di=
v><div>- Himadri</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
<br>&gt;<br>&gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadr=
i18.07@gmail.com" target=3D"_blank">himadri18.07@gmail.com</a>&gt;<br>&gt; =
---<br>&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_mlme.c | 12 ++++++------<=
br>&gt;=C2=A0 1 file changed, 6 insertions(+), 6 deletions(-)<br>&gt;<br>&g=
t; diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rt=
l8712/rtl871x_mlme.c<br>&gt; index c666e038f43e..5b1fc327fbd2 100644<br>&gt=
; --- a/drivers/staging/rtl8712/rtl871x_mlme.c<br>&gt; +++ b/drivers/stagin=
g/rtl8712/rtl871x_mlme.c<br>&gt; @@ -142,7 +142,7 @@ static struct wlan_net=
work *_r8712_find_network(struct=C2=A0 __queue *scanned_queue,<br>&gt;=C2=
=A0 =C2=A0 =C2=A0 =C2=A0phead =3D &amp;scanned_queue-&gt;queue;<br>&gt;=C2=
=A0 =C2=A0 =C2=A0 =C2=A0plist =3D phead-&gt;next;<br>&gt;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0while (plist !=3D phead) {<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0pnetwork =3D container_of(plist, struct wlan_network, l=
ist);<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pnetwork =3D=
 list_entry(plist, struct wlan_network, list);<br>&gt;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0plist =3D plist-&gt;next;<br>&gt;=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!memcmp(addr, pnetwork-=
&gt;network.MacAddress, ETH_ALEN))<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>&gt; @@ -163,=
7 +163,7 @@ static void _free_network_queue(struct _adapter *padapter)<br>&=
gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0phead =3D &amp;scanned_queue-&gt;queue;<br>&g=
t;=C2=A0 =C2=A0 =C2=A0 =C2=A0plist =3D phead-&gt;next;<br>&gt;=C2=A0 =C2=A0=
 =C2=A0 =C2=A0while (!end_of_queue_search(phead, plist)) {<br>&gt; -=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pnetwork =3D container_of(plist, s=
truct wlan_network, list);<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0pnetwork =3D list_entry(plist, struct wlan_network, list);<br>&gt=
;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0plist =3D plist-&gt=
;next;<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_free_=
network(pmlmepriv, pnetwork);<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>&gt; @=
@ -290,7 +290,7 @@ struct=C2=A0 =C2=A0 wlan_network *r8712_get_oldest_wlan_=
network(<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0while (1) {<br>&gt;=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (end_of_queue_search(phead, pl=
ist) =3D=3D=C2=A0 true)<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>&gt; -=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pwlan =3D container_of(plist, struct wlan_ne=
twork, list);<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pwla=
n =3D list_entry(plist, struct wlan_network, list);<br>&gt;=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pwlan-&gt;fixed !=3D true) {<b=
r>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0if (oldest =3D=3D NULL ||<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0time_a=
fter((unsigned long)oldest-&gt;last_scanned,<br>&gt; @@ -371,7 +371,7 @@ st=
atic void update_scanned_network(struct _adapter *adapter,<br>&gt;=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (end_of_queue_search(phe=
ad, plist))<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>&gt;<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0pnetwork =3D container_of(plist, struct wlan_networ=
k, list);<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pnetwork=
 =3D list_entry(plist, struct wlan_network, list);<br>&gt;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (is_same_network(&amp;pnetwork-&gt=
;network, target))<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((oldest =3D=3D ((struct wlan_network *)0)) =
||<br>&gt; @@ -1118,8 +1118,8 @@ int r8712_select_and_join_from_scan(struct=
 mlme_priv *pmlmepriv)<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br>&gt=
;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>&gt; -=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pnetwork =3D container_of(pmlmepri=
v-&gt;pscanned,<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0struct wlan_network, list);<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0pnetwork =3D list_entry(pmlmepriv-&gt;pscanned,<br>&gt;=
 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct wlan_network, li=
st);<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pnet=
work =3D=3D NULL)<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br>&gt;=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pmlmepriv-&gt;pscanned =3D pmlmepriv-&gt=
;pscanned-&gt;next;<br>&gt; --<br>&gt; 2.17.1<br>&gt;<br>&gt; --<br>&gt; Yo=
u received this message because you are subscribed to the Google Groups &qu=
ot;outreachy-kernel&quot; group.<br>&gt; To unsubscribe from this group and=
 stop receiving emails from it, send an email to <a href=3D"mailto:outreach=
y-kernel%2Bunsubscribe@googlegroups.com" target=3D"_blank">outreachy-kernel=
+unsubscribe@googlegroups.com</a>.<br>&gt; To post to this group, send emai=
l to <a href=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_blank"=
>outreachy-kernel@googlegroups.com</a>.<br>&gt; To view this discussion on =
the web visit <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel=
/20190326203349.9048-1-himadri18.07%40gmail.com" rel=3D"noreferrer" target=
=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/201903262033=
49.9048-1-himadri18.07%40gmail.com</a>.<br>&gt; For more options, visit <a =
href=3D"https://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_b=
lank">https://groups.google.com/d/optout</a>.<br>&gt;<br>
<br>-- <br>You received this message because you are subscribed to the Goog=
le Groups &quot;outreachy-kernel&quot; group.<br>To unsubscribe from this g=
roup and stop receiving emails from it, send an email to <a href=3D"mailto:=
outreachy-kernel%2Bunsubscribe@googlegroups.com" target=3D"_blank">outreach=
y-kernel+unsubscribe@googlegroups.com</a>.<br>To post to this group, send e=
mail to <a href=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_bla=
nk">outreachy-kernel@googlegroups.com</a>.<br>To view this discussion on th=
e web visit <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/a=
lpine.DEB.2.21.1903262138130.3044%40hadrien" rel=3D"noreferrer" target=3D"_=
blank">https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1=
903262138130.3044%40hadrien</a>.<br>For more options, visit <a href=3D"http=
s://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blank">https:=
//groups.google.com/d/optout</a>.<br>
</blockquote></div></div>

--0000000000008e8804058553f37a--

