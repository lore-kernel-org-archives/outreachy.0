X-GM-THRID: 6674267883353145344
X-Received: by 2002:a25:e07:: with SMTP id 7mr7636281ybo.54.1554194795845;
        Tue, 02 Apr 2019 01:46:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:3a55:: with SMTP id h82ls4055778ywa.8.gmail; Tue, 02 Apr
 2019 01:46:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxtn9YLjeJu+SdX1W13iz1eNMPlIc4zDLU9YB/mAEe4lADkHsp9y9d61S+SaCl0G+QtihrM
X-Received: by 2002:a81:6384:: with SMTP id x126mr7464909ywb.5.1554194795055;
        Tue, 02 Apr 2019 01:46:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554194795; cv=none;
        d=google.com; s=arc-20160816;
        b=AHeH9DdyooMK7yKWI62AGNZDFQSFZed0gwoDwhlMm7ZICvIToeAX10LUQBdPd0dJQy
         2fKpoczdMpPXzKJriaoJvRy4kV4Q8V95+IqlWJ2te1wDB05DT1bGV9gb6sdh2lSPzx13
         97xFqOUqGAvQdx38ojUDxfGjzPMB3gRghizdNf3CZzmuT91tLb481lErFoC+yMJmPBAC
         zztSKoE88sBwFakNLJwAiUz+FgwepCR/PsoXEtDc6EvrJkillOoL7PL4lAeZUFEWmhfP
         IK+enrpR55plQWuVkWJ2QdBlglH0AFzuRBxVFWxR86F5jEiVWF7HrdWkgwiohl9qsF5e
         qEyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xzxL1zSFoi0h5AbB6Y/0v4RJnhH4IgFotrMoPxjKnHo=;
        b=Ut+6LZvUxCrdkVqEwhKfcv5EuNkrnD9EF7zb95OB06LWWaM5k5brzKq190UsAoiciX
         LEP13Dxt+dkR2UI9vCBFbjZXOMHYRGVUI+XIDLWqKMcTSkUOwFGd9/4BJrsOdem5yP3b
         1/NXsojcbCfWycGf8zUW021qikgLgLxT5jwyXqN4oE1GBWbEn14F9/twGY01io4WeQT3
         TpQGjaujaeaHQAnYgYuddtdErKTDyF2JboiWkSLTJk37SnWUPm3gd4fxIsf9wm1AM7TQ
         MeW06bTRNaPfUuLIBMklcy0OGVWJLAizGCnOaYjoWPulBSWwpP3FhTKb0ZasaEJAMaBf
         oYxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UI0dR3Gr;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id 204si679712ywd.4.2019.04.02.01.46.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 01:46:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UI0dR3Gr;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x344.google.com with SMTP id s24so11243631otk.13
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 01:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xzxL1zSFoi0h5AbB6Y/0v4RJnhH4IgFotrMoPxjKnHo=;
        b=UI0dR3Gr8kXnIxI2f4rAEFow+SaHrW7F7EjXaBXndBfGDk53RyqNP85SFE89J+NnD8
         xFmG82OkFfD/Jkjb4UIyovhoF2qczA85LiEQik/LH6+9EW/LmBaYVL8WStVYnYsmYWr5
         DTrT7ygyLV2ZfnUwsBHeG/7mGCpmw+LvFEm2HtMpS143FqSsK6pfrPO/NeVSzU3HaJpn
         o/9aNsNiICg3IH+oYyq3B3DRO6lBOR01wC1O9Ym6PPc+nY+0CVaCMMo4zC3cAV3AJ3AW
         fBQG6oTyr6CipfbWCibgn0rmv78EbtQORsWpJZeozU1NMUjT/1uEU9sqEafq+xv6uFOs
         hTMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xzxL1zSFoi0h5AbB6Y/0v4RJnhH4IgFotrMoPxjKnHo=;
        b=MmOIW3+wWSstRsp+P9OaC0yk52CxuQ687OV5xh2w6KoUCR/+50J9VPhE7zj9iBL3UD
         Ci+tHmJBMs22bN4i35Zj1WqQvOdXHTDBy7vzNnunnw0Ldr6+8+AkPqln/zmzxZpNlPbM
         0EsLjOvrOysKsyViSRxpaN0Ty+McyYxKEh2w94FjYzLl3lZLZBOrybuwOQsUyRJVBq4G
         /qdZUyBiPJfYXuRv5GXdhTsGJRTDZxWA1aGYfajFaof3OetlLO2ZaA1aJchuDCgjkpG4
         0A1DxVQM9pCJBGNyWDFc+3xSsJafaSAlUbyf9HyC+6y1ijKXLXIhP9NssMG36byPda6W
         mabA==
X-Gm-Message-State: APjAAAX0LmB0yvYUdjFcuv1ot1lncHpbQ2jjwO1xmosVkgs/BmswTUF1
	FuVnvwMh5hMzbFZjbeykCM6FmWyS6jlJRdzekeY=
X-Received: by 2002:a05:6830:56:: with SMTP id d22mr49264360otp.294.1554194794529;
 Tue, 02 Apr 2019 01:46:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190401200955.98744-1-himadri18.07@gmail.com>
 <20190401200955.98744-7-himadri18.07@gmail.com> <20190402055701.GJ14075@kroah.com>
 <alpine.DEB.2.21.1904020831350.2664@hadrien>
In-Reply-To: <alpine.DEB.2.21.1904020831350.2664@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Tue, 2 Apr 2019 14:16:22 +0530
Message-ID: <CAPnhUpYU627URfjCLf6YhWvweFgdonjuMrSUj4g_W=C3OTm0eg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4 6/6] staging: rtl8712: use
 list_entry in function r8712_select_and_join_from_scan
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, Larry Finger <Larry.Finger@lwfinger.net>, 
	florian.c.schilhabel@googlemail.com, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000a3ca430585882c00"

--000000000000a3ca430585882c00
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr, 2019, 12:05 PM Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Tue, 2 Apr 2019, Greg KH wrote:
>
> > On Tue, Apr 02, 2019 at 01:39:55AM +0530, Himadri Pandya wrote:
> > > struct wlan_network contains field list of type list_head. Hence,
> > > getting the address of wlan_network using list_entry is equivalent
> > > of using container_of to do the same. And to use list_entry for list
> > > manipulations is a better choice.
> > >
> > > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > > ---
> > > Changes in V4:
> > >     - Change log message
> > > Changes in V3:
> > >     - Improve log message
> > > ---
> > >  drivers/staging/rtl8712/rtl871x_mlme.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c
> b/drivers/staging/rtl8712/rtl871x_mlme.c
> > > index 1a15c45aa83b..164422b3ac07 100644
> > > --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> > > +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> > > @@ -1117,8 +1117,8 @@ int r8712_select_and_join_from_scan(struct
> mlme_priv *pmlmepriv)
> > >                     }
> > >                     return _FAIL;
> > >             }
> > > -           pnetwork = container_of(pmlmepriv->pscanned,
> > > -                                   struct wlan_network, list);
> > > +           pnetwork = list_entry(pmlmepriv->pscanned,
> > > +                                 struct wlan_network, list);
> > >             if (pnetwork == NULL)
> > >                     return _FAIL;
> >
> > A list entry can not be null, so this check is very odd.
>
> I guess it could be, if the value is NULL, because the list field is at
> the top of the structure.  However, it looks like the list is build
> properly, with init_list_head and then list_add_tail, so the NULL test
> should not be needed.
>

Should I remove the NULL test then?


> Himadri, there are several very simple loops on lists that could be nicely
> converted to list_for_each or list_for_each_entry.  Search for
> end_of_queue_search.
>
> julia
>

On it. Thank you.

- Himadri


>
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190402055701.GJ14075%40kroah.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1904020831350.2664%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000a3ca430585882c00
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, 2 Apr, 2019, 12:05 PM Julia Lawall, &lt;<a hre=
f=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><br>
<br>
On Tue, 2 Apr 2019, Greg KH wrote:<br>
<br>
&gt; On Tue, Apr 02, 2019 at 01:39:55AM +0530, Himadri Pandya wrote:<br>
&gt; &gt; struct wlan_network contains field list of type list_head. Hence,=
<br>
&gt; &gt; getting the address of wlan_network using list_entry is equivalen=
t<br>
&gt; &gt; of using container_of to do the same. And to use list_entry for l=
ist<br>
&gt; &gt; manipulations is a better choice.<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@=
gmail.com" target=3D"_blank" rel=3D"noreferrer">himadri18.07@gmail.com</a>&=
gt;<br>
&gt; &gt; ---<br>
&gt; &gt; Changes in V4:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0- Change log message<br>
&gt; &gt; Changes in V3:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0- Improve log message<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 drivers/staging/rtl8712/rtl871x_mlme.c | 4 ++--<br>
&gt; &gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/sta=
ging/rtl8712/rtl871x_mlme.c<br>
&gt; &gt; index 1a15c45aa83b..164422b3ac07 100644<br>
&gt; &gt; --- a/drivers/staging/rtl8712/rtl871x_mlme.c<br>
&gt; &gt; +++ b/drivers/staging/rtl8712/rtl871x_mlme.c<br>
&gt; &gt; @@ -1117,8 +1117,8 @@ int r8712_select_and_join_from_scan(struct =
mlme_priv *pmlmepriv)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0}<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return _FAIL;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pnetwork =3D container_=
of(pmlmepriv-&gt;pscanned,<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct wlan_n=
etwork, list);<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pnetwork =3D list_entry=
(pmlmepriv-&gt;pscanned,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct wlan_network,=
 list);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pnetwork =3D=
=3D NULL)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return _FAIL;<br>
&gt;<br>
&gt; A list entry can not be null, so this check is very odd.<br>
<br>
I guess it could be, if the value is NULL, because the list field is at<br>
the top of the structure.=C2=A0 However, it looks like the list is build<br=
>
properly, with init_list_head and then list_add_tail, so the NULL test<br>
should not be needed.<br></blockquote></div></div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">Should I remove the NULL test then?</div><div dir=3D"a=
uto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
<br>
Himadri, there are several very simple loops on lists that could be nicely<=
br>
converted to list_for_each or list_for_each_entry.=C2=A0 Search for<br>
end_of_queue_search.<br>
<br>
julia<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">On it. Thank you.</div><div dir=3D"auto"><br></div><div dir=3D"auto">-=
 Himadri</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"g=
mail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
<br>
<br>
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
gle.com/d/msgid/outreachy-kernel/20190402055701.GJ14075%40kroah.com" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/msgid=
/outreachy-kernel/20190402055701.GJ14075%40kroah.com</a>.<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1904020831350.2664%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1904020831350.2664%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--000000000000a3ca430585882c00--

