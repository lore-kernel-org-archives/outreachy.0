X-GM-THRID: 6808898651661795328
X-Received: by 2002:a17:906:6444:: with SMTP id l4mr9757755ejn.313.1585562115923;
        Mon, 30 Mar 2020 02:55:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:f682:: with SMTP id d2ls13038279edn.11.gmail; Mon, 30
 Mar 2020 02:55:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsj7lQe8JtpInE0drXLhaEUh1arKZUBw5DYUBfY2/1PdJ7RxIrnnR9Dhbv9JoqedkftFzy8
X-Received: by 2002:aa7:c544:: with SMTP id s4mr10714157edr.271.1585562114903;
        Mon, 30 Mar 2020 02:55:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585562114; cv=none;
        d=google.com; s=arc-20160816;
        b=PVZNsRHlMj7fjLS7mOHGNmbbZdwLm33eqdNIRa3yPYYJlcGgIMBwpAzzblzUNyTVdy
         mj65CUhsoIiA3snU/WGpLUm9jimWNWd0RM78qXfQeYswuhCEpe1Fe2ek5cD25cEgbyka
         trknu3f850OaEBGaO8MO78/pPyINEu8RpkmVk80eLgbS3lRL8M9YEsDVIwoJWJTEEbvU
         k45TIl3qdAGFCTRngb1vXcT+9hyLuhw/VhTEEn/Co+5Ad1eY5K8bxEmdUTDC+AEF6bbn
         QKZw+OrCBAxapah4igQMUG5uN+xRdGm6RH1wpatY3t6onMQ+iJ8A/RvnoAKKO+VuBi+Z
         DTpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1mZmWTXAimdkHsdqGuwOZFTZCllozTCP/U/hylGaJ7A=;
        b=Zf/M8DJL2wDpN9LVvB6lOOLRevxr6lZiuNODXwW003RFusEZe3VhqAQmRC4Z45gdcW
         yUKle7/yCZY06eQBxHISFpJQi07afYG2toLwdkc57vfNsVcdg5aJYtBiG+nNxovlAk4L
         xiXLmHGz48xGfVSdS5i4pW5QQNIFM4kxR9Qh/9tqxKk/AEv2NCNs2tYdktzTOkb9RujB
         lyJQZp7H77L6vVv95bUe3pnMTXjK5THTfIwu0Eo8Aasrn/w+iKndiAKbRdQYGfmW0Wpr
         F/iPItTlFnqu6FIMf/utFQlT5FCMnQbJ90rIr7YHHxtKxog7EIGW7mLW0jPbnwet08aV
         Bh+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XHQHRbuX;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id a10si331695edq.5.2020.03.30.02.55.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 02:55:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XHQHRbuX;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x243.google.com with SMTP id r7so9686704ljg.13
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 02:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1mZmWTXAimdkHsdqGuwOZFTZCllozTCP/U/hylGaJ7A=;
        b=XHQHRbuX6CoChSqmIRNlsltmO1l0cdSB89iptZX+ODVCWoT9A+ZgOZvP46RRUA/vhZ
         woZvtF7Mtr0Q1epao/9WEyTWVtC087+2lxtQ2mK+3tXQlIDszYgdXARL4zS41wJwMbkN
         P4XkseWY/OhK15UcnPQ3NvzPYHCuH41Yq9J+MukDE4p7lkG3c8CC0OjX4HF9wT2YrI3p
         a0dgD70/GAa1DSofjfoE5JgGg5DxUl5/LvPaAh2h8PEhgxe0Hvh8b9MTU88qn/8IU/6A
         Ggb+7KtO1IZn6RIX/LlVXPQkVBpiqnXZcIWWq1eHm68X0UNU/KbRztoHdKPevQ2vRsgU
         EAuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1mZmWTXAimdkHsdqGuwOZFTZCllozTCP/U/hylGaJ7A=;
        b=MNEwBGVan8eM52/f5pa/p9vArRr/elpADWhxwMuxF3rpQBE3vDr0MlU2q+wLu1hfIw
         n5CeftFh04CeJWqnuJ1YaXjeLc4Y4g1VfXXkbwr0+SkZoryAXi4993Tis/ONi2xEj0F0
         hSf3V3gOAfyaaoPuEoIGd0hJVgqB9bY7WDwQK8TD1jtaThgVLeC1f6loc3ChkHs9NPBM
         E4lHFYlF9OpvDaCFNZM0oRub993k7lJCBEF862zDf11eCyW8Js2Ozbo1DDVnFLZTdegi
         HsOnFZRt6l1Tl/sE2aKuDhfN/D+Mn2utVp2fukHrOoG7RK193EmHsFFyt+4A0rW8YE6b
         rqxg==
X-Gm-Message-State: AGi0PuYeRysl1q8cznuL3eiHLZlQa/3Uj3AWLytnsPKVjqoTM4MVz6uH
	A7aCz8lR8gfXhoYuVggfE3c/p/kq38G7uN4DOAY=
X-Received: by 2002:a2e:81cf:: with SMTP id s15mr6780776ljg.87.1585562114279;
 Mon, 30 Mar 2020 02:55:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200327144229.19738-1-debsoumyajit100@gmail.com>
 <20200327144229.19738-2-debsoumyajit100@gmail.com> <20200330111251.1d2e6db6@elisabeth>
In-Reply-To: <20200330111251.1d2e6db6@elisabeth>
From: Soumyajit Deb <debsoumyajit100@gmail.com>
Date: Mon, 30 Mar 2020 15:25:03 +0530
Message-ID: <CAMS7mKA7g8Ea2RpkZOZ0R5mkJM+zwawB86CtBiY=D-VZhW6q0A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH 1/2] staging:
 wlang-ng: Properly align the lines of function call
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000974bc705a20f7298"

--000000000000974bc705a20f7298
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry  for the inconvenience.
Now I am also confused a bit too
But as much as I understand,
this patch is somewhat different from the change I wanted by casting to i32=
.

This patch just addresses the warning of properly aligning the lines as
reported by checkpatch.pl.
While, the change of casting to i32 was for line over 80 characters
warning, which is a different warning altogether, so that change must be
addressed in some other patch.
I wanted to cast to i32 so that I can shorten the line and resolve the
warning of line over 80 character as reported by checkpatch.pl

Sorry, for any misunderstanding. I am very new to kernel development and
was confused a bit about the process then.
Sorry for any mistake on my part.


On Mon, 30 Mar 2020 at 14:43, Stefano Brivio <sbrivio@redhat.com> wrote:

> On Fri, 27 Mar 2020 20:12:28 +0530
> Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
>
> > Align the lines of function call to improve code readability and to
> > adhere to the uniform Linux Kernel coding style.
> > Reported by checkpatch.pl
> >
> > Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> > ---
> >  drivers/staging/wlan-ng/cfg80211.c | 27 +++++++++++++--------------
> >  1 file changed, 13 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/staging/wlan-ng/cfg80211.c
> b/drivers/staging/wlan-ng/cfg80211.c
> > index fac38c842ac5..3d17037f954e 100644
> > --- a/drivers/staging/wlan-ng/cfg80211.c
> > +++ b/drivers/staging/wlan-ng/cfg80211.c
> > @@ -359,16 +359,15 @@ static int prism2_scan(struct wiphy *wiphy,
> >               freq =3D ieee80211_channel_to_frequency(msg2.dschannel.da=
ta,
> >                                                     NL80211_BAND_2GHZ);
> >               bss =3D cfg80211_inform_bss(wiphy,
> > -                     ieee80211_get_channel(wiphy, freq),
> > -                     CFG80211_BSS_FTYPE_UNKNOWN,
> > -                     (const u8 *)&msg2.bssid.data.data,
> > -                     msg2.timestamp.data, msg2.capinfo.data,
> > -                     msg2.beaconperiod.data,
> > -                     ie_buf,
> > -                     ie_len,
> > -                     (msg2.signal.data - 65536) * 100, /* Conversion t=
o
> signed type */
> > -                     GFP_KERNEL
> > -             );
> > +                                       ieee80211_get_channel(wiphy,
> freq),
> > +                                       CFG80211_BSS_FTYPE_UNKNOWN,
> > +                                       (const u8
> *)&msg2.bssid.data.data,
> > +                                       msg2.timestamp.data,
> msg2.capinfo.data,
> > +                                       msg2.beaconperiod.data,
> > +                                       ie_buf,
> > +                                       ie_len,
> > +                                       (msg2.signal.data - 65536) *
> 100, /* Conversion to signed type */
>
> So... wait a moment:
>
> - March 21, 17:30 UTC: you ask me on IRC how to fix the checkpatch
>   warning you're introducing now. You propose to move the comment on a
>   line by itself. I suggest that you write a test program and find out
>   if this conversion can be done in another way. You say you will do
>   that
>
> - March 27, 10:58 UTC: you ask me on IRC if you can use a cast to "i32".
>   I have a d=C3=A9j=C3=A0 vu, can't really remember who asked me this, an=
d
>   suggest that you write a test program. You say you will do that
>
> - March 27, 12:12 UTC: you send the same question to this list
>
> - March 27, 14:45 UTC: you send this patch
>
> ...why, exactly?
>
> --
> Stefano
>
>

--000000000000974bc705a20f7298
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sorry=C2=A0 for the inconvenience.<br></div><div>Now =
I am also confused a bit too</div><div>But as much as I understand,<br></di=
v><div>this patch is somewhat different from the change I wanted by casting=
 to i32.</div><div><br></div><div>This patch just addresses the warning of =
properly aligning the lines as reported by <a href=3D"http://checkpatch.pl"=
>checkpatch.pl</a>.</div><div>While, the change of casting to i32 was for l=
ine over 80 characters warning, which is a different warning altogether, so=
 that change must be</div><div>addressed in some other patch. <br></div><di=
v>I wanted to cast to i32 so that I can shorten the line and resolve the wa=
rning of line over 80 character as reported by <a href=3D"http://checkpatch=
.pl">checkpatch.pl</a></div><div><br></div><div>Sorry, for any misunderstan=
ding. I am very new to kernel development and was confused a bit about the =
process then. <br></div><div>Sorry for any mistake on my part.<br></div><di=
v><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, 30 Mar 2020 at 14:43, Stefano Brivio &lt;<a href=3D"mai=
lto:sbrivio@redhat.com">sbrivio@redhat.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">On Fri, 27 Mar 2020 20:12:28 +053=
0<br>
Soumyajit Deb &lt;<a href=3D"mailto:debsoumyajit100@gmail.com" target=3D"_b=
lank">debsoumyajit100@gmail.com</a>&gt; wrote:<br>
<br>
&gt; Align the lines of function call to improve code readability and to<br=
>
&gt; adhere to the uniform Linux Kernel coding style.<br>
&gt; Reported by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=
=3D"_blank">checkpatch.pl</a><br>
&gt; <br>
&gt; Signed-off-by: Soumyajit Deb &lt;<a href=3D"mailto:debsoumyajit100@gma=
il.com" target=3D"_blank">debsoumyajit100@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/wlan-ng/cfg80211.c | 27 +++++++++++++-----------=
---<br>
&gt;=C2=A0 1 file changed, 13 insertions(+), 14 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan=
-ng/cfg80211.c<br>
&gt; index fac38c842ac5..3d17037f954e 100644<br>
&gt; --- a/drivers/staging/wlan-ng/cfg80211.c<br>
&gt; +++ b/drivers/staging/wlan-ng/cfg80211.c<br>
&gt; @@ -359,16 +359,15 @@ static int prism2_scan(struct wiphy *wiphy,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0freq =3D ieee802=
11_channel_to_frequency(msg2.dschannel.data,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NL80211_BAND_2GHZ);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bss =3D cfg80211=
_inform_bss(wiphy,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ieee80211_get_channel(wiphy, freq),<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0CFG80211_BSS_FTYPE_UNKNOWN,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(const u8 *)&amp;msg2.bssid.data.data,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0msg2.timestamp.data, msg2.capinfo.data,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0msg2.beaconperiod.data,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ie_buf,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ie_len,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(msg2.signal.data - 65536) * 100, /* Conversion to signed type */<br=
>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0GFP_KERNEL<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ieee8=
0211_get_channel(wiphy, freq),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CFG80=
211_BSS_FTYPE_UNKNOWN,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(cons=
t u8 *)&amp;msg2.bssid.data.data,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msg2.=
timestamp.data, msg2.capinfo.data,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msg2.=
beaconperiod.data,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ie_bu=
f,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ie_le=
n,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(msg2=
.signal.data - 65536) * 100, /* Conversion to signed type */<br>
<br>
So... wait a moment:<br>
<br>
- March 21, 17:30 UTC: you ask me on IRC how to fix the checkpatch<br>
=C2=A0 warning you&#39;re introducing now. You propose to move the comment =
on a<br>
=C2=A0 line by itself. I suggest that you write a test program and find out=
<br>
=C2=A0 if this conversion can be done in another way. You say you will do<b=
r>
=C2=A0 that<br>
<br>
- March 27, 10:58 UTC: you ask me on IRC if you can use a cast to &quot;i32=
&quot;.<br>
=C2=A0 I have a d=C3=A9j=C3=A0 vu, can&#39;t really remember who asked me t=
his, and<br>
=C2=A0 suggest that you write a test program. You say you will do that<br>
<br>
- March 27, 12:12 UTC: you send the same question to this list<br>
<br>
- March 27, 14:45 UTC: you send this patch<br>
<br>
...why, exactly?<br>
<br>
-- <br>
Stefano<br>
<br>
</blockquote></div>

--000000000000974bc705a20f7298--

