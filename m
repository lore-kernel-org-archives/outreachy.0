X-GM-THRID: 6674267883353145344
X-Received: by 2002:a17:902:6b87:: with SMTP id p7mr2048711plk.123.1554194885541;
        Tue, 02 Apr 2019 01:48:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:82cc:: with SMTP id u12ls35824plz.12.gmail; Tue, 02
 Apr 2019 01:48:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwnsqeMNGDECAZJ06YMKFE+4Ke/ebRCK52zXxMKn5rXWLDvKdo0CZt+y4PKgUOQxE08EBc8
X-Received: by 2002:a17:902:59cd:: with SMTP id d13mr1106999plj.97.1554194884715;
        Tue, 02 Apr 2019 01:48:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554194884; cv=none;
        d=google.com; s=arc-20160816;
        b=otWKLqR7isk0ryZZ445xisVJer6BI7pwT4xsmGwSX4O6K7G4U8d+CJn5pL4ayUIoNN
         9YsMeRKnxb+LCMkHYdlZYTAyePXKjerzCw90My13szBj9TZRyOj+PCh2pYH+uHFUpd36
         HfL+4/QqYc7Otfmhjkg6iZAntoDgE62k9Il7fwZjq+U2Uohtrpj3Z+VHWaNKmDBftTu/
         5H87sRUmos+gf7SfNkwqj6zPLFcTJRfQcY95fwI1Ru2K7NlPs95wRU1NAV7oQ75zP8+4
         GGGoYVHa29WzJLfhCi3XtfLBjsBUrLb8gZX8vDsurmXN4LtpfEbMRDhu54kb5G0PUTTd
         m0gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gKDptHE9UjfzfyJ3odDHqUo3fhHYrg3nOcs0M+ZnUZY=;
        b=XMOJbhCBVj3wF9/DJoWUGH59mHix7A+mspLTyZYyq9xhAs9alNKBYxdqY79kLezOXm
         wSwrydO7T5uMLbJo4Rgz7o6R1H25Ey4VJryv/4+qrBqSWOepfJWxeRMW3w6Z8/+C7ZHy
         Ir/p7SahQxZNNfM87HpWLqgQB2X+xjf0DFbs+zTqdGM9m9G+R8dClA9Yb4GmI6+0g0Xg
         qM8xbEhAcC3SPmaBcEhae2V8l5R8HkkFpPQM/bGly4hu/vy+KVKXBWhvig1ou3NzLzDz
         X8Vac6vX9gzoJn/OsnoyTBlIraMa/Dxyfoli3UFlLmlcd8JgM6cgnrnjgbK3oCR8850H
         eS4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MNOnNr54;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id j8si789534plk.3.2019.04.02.01.48.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 01:48:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MNOnNr54;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id 64so11253739otb.8
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 01:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gKDptHE9UjfzfyJ3odDHqUo3fhHYrg3nOcs0M+ZnUZY=;
        b=MNOnNr548ExfyU4Prm9jjpDRD7UwgG/1yi5ykFPdPHZfTA0yD16Qp1y3FGTQNbK+pf
         cz4iGuc+antDdSIU9SpUYVsquXs5bj4q9mKNtcXG4ZN1o0j/nBcYHyFhTGTEiy/iVlcA
         9P1CLVmjKvCB6MyaKi9PpbOdTJqfpGlq45FoP/OS1/HJgaK5G2GJbOpNPOZ1DmFicqRu
         yavw1bScU5BK0XJ/RttlScMc4obYya1A2PbGGa3a3VWXSonmAbqUX7lpZIU+sRR0fVwj
         tM32qAA3jPMhHLq+qMWJPT5i//W+OA1n3NYqEB4g45dUjHI7XJaqZhx4Pg9T4tK/mcvB
         LOtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gKDptHE9UjfzfyJ3odDHqUo3fhHYrg3nOcs0M+ZnUZY=;
        b=FY1FnQUY2aa53N3s4yyCpN7IxWbYR9et270oEvF2J3tMR+hhJyFIVgA5p1zI8xEYsD
         yKC03P0G7g3MzjXjfRAg1baYYKllCeB8w2inJVXFR0IL/t6mbbUbbob9MRs70aWxu4Js
         vSmeJrv498+z88Ut8dPdyWvGGria5sLw6xkJari+Z3DVCmUjv7URsDDtbw0VqeTZQMqb
         TNQP3FxW1CMpAVxdO4zI4DL3PVcdDLZUsvGui5ujLTJkYvfHBZzkdT7jvpzK83mNALjf
         svMKlrHSfB725n+8+DioOdr5GtPtD6Y04Fq3dx0p8QRETU2CQkHroQPjqr2K0CgO+Ekt
         xnSQ==
X-Gm-Message-State: APjAAAUDmIsuFECDD2vDlSTRewHMGyt/TFaL3C5H9ZDUefwJNWvKtO+Y
	PaZkzvrp/8KjNSdtlcll9/Qj1eXMvukjczNMNHM=
X-Received: by 2002:a9d:694e:: with SMTP id p14mr23745662oto.193.1554194884351;
 Tue, 02 Apr 2019 01:48:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190401200955.98744-1-himadri18.07@gmail.com>
 <20190401200955.98744-4-himadri18.07@gmail.com> <20190402055608.GG14075@kroah.com>
In-Reply-To: <20190402055608.GG14075@kroah.com>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Tue, 2 Apr 2019 14:17:51 +0530
Message-ID: <CAPnhUpa2kYSNMMCaO9-uZt06Grr35kq0VkNK0ySyhSFLSApBQQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/6] staging: rtl8712: use list_entry in function _free_network_queue
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, 
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000fe5cc30585883164"

--000000000000fe5cc30585883164
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr, 2019, 11:26 AM Greg KH, <gregkh@linuxfoundation.org> wrote:

> On Tue, Apr 02, 2019 at 01:39:52AM +0530, Himadri Pandya wrote:
> > struct wlan_network contains field list of type list_head. Hence,
> > getting the address of wlan_network using list_entry is equivalent
> > of using container_of to do the same. And to use list_entry for list
> > manipulations is a better choice.
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> > Changes in V4:
> >       - Change log message
> > Changes in V3:
> >       - Improve log message
> > ---
> >  drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c
> b/drivers/staging/rtl8712/rtl871x_mlme.c
> > index 6912d73e8172..e0b4b8fbcc0e 100644
> > --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> > +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> > @@ -162,7 +162,7 @@ static void _free_network_queue(struct _adapter
> *padapter)
> >       phead = &scanned_queue->queue;
> >       plist = phead->next;
> >       while (!end_of_queue_search(phead, plist)) {
> > -             pnetwork = container_of(plist, struct wlan_network, list);
> > +             pnetwork = list_entry(plist, struct wlan_network, list);
>
> Very odd, I think you can use list_for_each_entry() here too, but be
> careful to verify it, I don't know what end_of_queue_search() is trying
> to do.
>
> thanks,
>
> greg k-h
>

I'll check. Thank you.

- Himadri

>

--000000000000fe5cc30585883164
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, 2 Apr, 2019, 11:26 AM Greg KH, &lt;<a href=3D"=
mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">On Tue, Apr 02, 2019 at 01:39:52A=
M +0530, Himadri Pandya wrote:<br>
&gt; struct wlan_network contains field list of type list_head. Hence,<br>
&gt; getting the address of wlan_network using list_entry is equivalent<br>
&gt; of using container_of to do the same. And to use list_entry for list<b=
r>
&gt; manipulations is a better choice.<br>
&gt; <br>
&gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail=
.com" target=3D"_blank" rel=3D"noreferrer">himadri18.07@gmail.com</a>&gt;<b=
r>
&gt; ---<br>
&gt; Changes in V4:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0- Change log message<br>
&gt; Changes in V3:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0- Improve log message<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/=
rtl8712/rtl871x_mlme.c<br>
&gt; index 6912d73e8172..e0b4b8fbcc0e 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_mlme.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_mlme.c<br>
&gt; @@ -162,7 +162,7 @@ static void _free_network_queue(struct _adapter *p=
adapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0phead =3D &amp;scanned_queue-&gt;queue;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0plist =3D phead-&gt;next;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0while (!end_of_queue_search(phead, plist)) {=
<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pnetwork =3D containe=
r_of(plist, struct wlan_network, list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pnetwork =3D list_ent=
ry(plist, struct wlan_network, list);<br>
<br>
Very odd, I think you can use list_for_each_entry() here too, but be<br>
careful to verify it, I don&#39;t know what end_of_queue_search() is trying=
<br>
to do.<br>
<br>
thanks,<br>
<br>
greg k-h<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">I&#39;ll check. Thank you.</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">- Himadri</div><div dir=3D"auto"><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">
</blockquote></div></div></div>

--000000000000fe5cc30585883164--

