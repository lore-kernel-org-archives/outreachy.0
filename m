X-GM-THRID: 6664067951305424896
X-Received: by 2002:a0c:89d2:: with SMTP id 18mr1630151qvs.9.1551794456890;
        Tue, 05 Mar 2019 06:00:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ba29:: with SMTP id w41ls3831259qvf.6.gmail; Tue, 05 Mar
 2019 06:00:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqxiNOLGdqWV2cB8xFv+msFagbu69xU93SArM7poMd5FCZJEvSBKh9rg0R6oDEaAbq5ClMOd
X-Received: by 2002:a0c:945c:: with SMTP id i28mr1612355qvi.57.1551794456308;
        Tue, 05 Mar 2019 06:00:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551794456; cv=none;
        d=google.com; s=arc-20160816;
        b=ViIGqODHHvOxO21sADKU0ekq9jlcYKHObOs3qRLbmSlhLUJMyCGu7deHvx3Qt3DYKl
         KEBsHItAGzS4Dq6sE05jId5GG0hDjstnC6mZIiZ6K0/4RMgpk4HhJb3YzfaVKKKbERJ/
         Zi7C0lvi6ondH+Sf1uaBcsce8Pvy3RJGLVTnIBgCNLc0MSr3F1Zuagyjn0bhy7hrH/lS
         85YpAC1LcIXV61xxzAjPrDHGaEJ7WEB/6E+gWk2etg3WCnwrtxvvxXduvCLRyYWDXt4y
         6AUgaJjjrqOkZiKIJ3uI6X0KypSVrmrHx1UdBC+JwinXWXVPC0fWVu/xfQNG47+Djvrk
         iJjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GViAqhYntn7RBnUXNxLLZlKHfqeg0Z7rAlJ0uTwPOIk=;
        b=fOrn5P3CBb5xnCTn4QTRwINoaCsLHyqnUjp3S6addt6Tdr5accFAVmykSiASm7ivA9
         q89HsRQBVRPfxBFdc4UJ8LJ8cT/83qTeAqwmh/nDtFmpFFNz9eO0XBmdEL9ANhsOo4ao
         wvRCJzULRFnmIDwNjCtG7B/hdmpRyoTOwYAU19wPbBBAZI57j0Tqm9gEPa6WrJcpg6ag
         s26PoOY5b8XvpQLFZvAmn8qx+rxKTcWgXPaaI+szoBUnzN4mBN0pUYOByyhv1Z3kKoe0
         nuslbjmGxfq15j8iR11eEOnjSC25K2bVgtRcKlB4h0zfl9IKdDvPtLnRx4aC+tX0X2ch
         w9eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D6t/ynIw";
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com. [2607:f8b0:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id e12si243698qtg.5.2019.03.05.06.00.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 06:00:56 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) client-ip=2607:f8b0:4864:20::32d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D6t/ynIw";
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32d.google.com with SMTP id z19so7483274otm.2
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 06:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GViAqhYntn7RBnUXNxLLZlKHfqeg0Z7rAlJ0uTwPOIk=;
        b=D6t/ynIwtRLM1SE8flE7e6/9lJBGsJnQc+Px7Q+UlR09wGwDjnDWLKHkRntDPnO7c4
         QI5Qxk+knjRUp38yAc2pD2HsaDDj0r5ltmSW/MFUZmL7KgHUTJy445vVE1lqQbgiHnrg
         n7nfGWo/XWwDE+yuQocIclHxBO0a9VzDd7uZdaGhlL8Okp5FpCXcX0TOQZ/sDa8ctdqv
         J1PtfaKum843DfuYF+Psh8xtOE3+OdxeQ243sfGpd6t454Fe555JBLPeM6w2XFPonFy/
         wLzNlB0DWU593dvMxGaGL/hfVhGfv2spMQENOQ9OwkjJm2WlsGH+OcmkU342eip5wqp+
         iugQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GViAqhYntn7RBnUXNxLLZlKHfqeg0Z7rAlJ0uTwPOIk=;
        b=JAmeveLQ4pI9XPi9Tt4CdvVnZBFSLe+ozlKY84mEfxi5646Eqy34EnYqC4h8NkHYLa
         /K/e37BfTpl9nRJablbvZIN3cLm8TzyYsHSSwIzyqeaz9W0AEcbiDmeKL6AqPPdJwu+K
         FIdZsU96w4BDzcsuFK9Ktf0ugWvG/rzrECINYGOTi7gVNj2EDARGWlXfpWVuzNRt1whi
         HOAxH9Oeu/jtKjM8Y5/mEbd1WkNz0iKSXZCaGE8HzhnIFRgTEDM4WqwvQSYCBHarrpQg
         heL9xPnqmZXWiS+KnmiGrZrUVp7UEEDAl6CR/hWvMkwusotxZC2QUH+QK/pRGQKMAtfV
         ORLg==
X-Gm-Message-State: APjAAAW3Gn1PE/hgU/jGji0W4Tf4LiwcMK5kkGpc33iQBJNVObHnSx42
	oB3Is88SezOgJyy7+Y57AdrVp0wPlvaZzlXW8VU=
X-Received: by 2002:a9d:30d8:: with SMTP id r24mr978833otg.194.1551794455275;
 Tue, 05 Mar 2019 06:00:55 -0800 (PST)
MIME-Version: 1.0
References: <1551607296-33723-1-git-send-email-idebleenasen@gmail.com> <20190305074018.GA6158@kroah.com>
In-Reply-To: <20190305074018.GA6158@kroah.com>
From: Debleena Sen <idebleenasen@gmail.com>
Date: Tue, 5 Mar 2019 19:30:43 +0530
Message-ID: <CACw+u4EcNWBF-KNox4MDzS+ZtYYxvN4fyLgxhCvFx=B4JSuCTw@mail.gmail.com>
Subject: Re: [PATCH v4] Staging: pi433: Fix line over 80 characters issue
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000456b270583594dd3"

--000000000000456b270583594dd3
Content-Type: text/plain; charset="UTF-8"

 On Tue, 5 Mar 2019, 13:10 Greg KH, <gregkh@linuxfoundation.org> wrote:

> On Sun, Mar 03, 2019 at 02:01:36AM -0800, Debleena Sen wrote:
> > Break the line and match the indentation to remove the
> > checkpatch.pl warning:
> > WARNING: line over 80 characters
> >
> > Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> > ---
> >  drivers/staging/pi433/rf69.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
>
> What changed from the previous versions?  That information always goes
> below the --- line please.
>
> Please fix up and resend.
>
> thanks,
>
> greg k-h
>

Will do.

Thnaks,
Debleena

--000000000000456b270583594dd3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"auto">=C2=A0On Tue, 5 Mar 201=
9, 13:10 Greg KH, &lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=
=3D"_blank">gregkh@linuxfoundation.org</a>&gt; wrote:</div></div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Sun, =
Mar 03, 2019 at 02:01:36AM -0800, Debleena Sen wrote:<br>
&gt; Break the line and match the indentation to remove the<br>
&gt; <a href=3D"http://checkpatch.pl" rel=3D"noreferrer noreferrer" target=
=3D"_blank">checkpatch.pl</a> warning:<br>
&gt; WARNING: line over 80 characters<br>
&gt; <br>
&gt; Signed-off-by: Debleena Sen &lt;<a href=3D"mailto:idebleenasen@gmail.c=
om" rel=3D"noreferrer" target=3D"_blank">idebleenasen@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/pi433/rf69.c | 3 ++-<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 1 deletion(-)<br>
<br>
What changed from the previous versions?=C2=A0 That information always goes=
<br>
below the --- line please.<br>
<br>
Please fix up and resend.<br>
<br>
thanks,<br>
<br>
greg k-h<br></blockquote><div><br></div><div>Will do.=C2=A0</div><div><br><=
/div><div>Thnaks,=C2=A0</div><div>Debleena</div></div>
</div>

--000000000000456b270583594dd3--

