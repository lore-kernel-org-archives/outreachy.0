X-GM-THRID: 6884588339702267904
X-Received: by 2002:a5d:69ce:: with SMTP id s14mr11156000wrw.39.1602946178622;
        Sat, 17 Oct 2020 07:49:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:82ab:: with SMTP id 40ls2582026wrc.1.gmail; Sat, 17 Oct
 2020 07:49:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwgLNju8BvrWgfe9lkzqt03yBirfHGIyWywuVbm6/w2bsOm9reO70rL8a3Bsk6l+9pf9c8u
X-Received: by 2002:adf:e54b:: with SMTP id z11mr11024103wrm.128.1602946176728;
        Sat, 17 Oct 2020 07:49:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602946176; cv=none;
        d=google.com; s=arc-20160816;
        b=gMev65U9rKskGOBSYVT4J+Qo4HiNjn9q/FHyt1s7JSvAFx13XgccBFku81xDldvMQV
         THl8R9lySpNLny7z7N3O4HJ4ygyqZqqDmP3mIX55Zr3aCEBT1yo+3LSUGesox4cxCWdf
         pc0FBhCoozamwB9m5Srmpz6K0bmSiEybGLqE0DYBc1mZruMbptIYxbJYwpkJt++Njsp6
         BZ5Bzqr/gHCsOHU+TztKbkJ9cMdhipLhyuMR9LYd9NZ0oblMTQOzkk2OoEvwki6qlF+t
         grqgn+xboLAZkOEoyDeWF4U+vfeYLHMksmQkUovwcj3LTrj+5f/H1qEkTGWKw4+S4kcW
         mgvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/s4CSXwwcC72C5AwSv41KrlfE30I0mj8ro8DTf4VO20=;
        b=o6OQepPQ/IB6j/CUSW9e40AMk/37E+jEkRY1922eBTPBYHTgNJLzDaxL/6Fylk6Rux
         olM5jce9/95n+wtEwPZr+3LXEcufRooifVIDAf1Py4mHNWIekxpzdEkpYO8t+J1zYZzM
         oug2rVJD23sB36g9xpa7GxUsKQyc1BOh5M94HXjCpLLeLXqlaAjA+gEnPTG/1L7UB2zu
         4smS3t1EZdPgxQb7xW1gHcpTCubjmCedj4PXYN7twIwKFcgjXo50dQif+nH9wBn03cMJ
         Li1rkTszfuZjfjZbd0KpDuKuhXlFBXnSkjlI21uuSsVNEOqnel8uL6voOCC0B3dDxwL2
         bEAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mO9OYqJL;
       spf=pass (google.com: domain of leonf008@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=leonf008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <leonf008@gmail.com>
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id f198si140303wme.2.2020.10.17.07.49.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2020 07:49:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of leonf008@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mO9OYqJL;
       spf=pass (google.com: domain of leonf008@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=leonf008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x244.google.com with SMTP id p15so5849994ljj.8
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2020 07:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/s4CSXwwcC72C5AwSv41KrlfE30I0mj8ro8DTf4VO20=;
        b=mO9OYqJL9xjW0e1k10Yauv3RSKhV40RKvDz8t4hycalwpPzha3Y48FUubonS2q8rkD
         5p/6wr0IvrptXznbzUt12BeV8xpbSdsUfQaW7XVMm7yvJf+6UVRGcTADeZLybR/DDrST
         i8xzTIEPto6qJDlfB+51gSpGMmbrc4tnYvRhnEw8bOHXdHFZxmV+tvW/SBEvNRSPHKxY
         eFvx7zQVVjaxlr2cTs0acQwPVyucH2PFWXrDX4KJVcZcLiqva5GGLPSbo/TeBrZxxDaT
         OROnqi6nnM2Djo+7kZv1aTSCEhKbVQ7m5/+l4R7GQsizuFTBhpFbz49JqCHfTIxv6D+7
         D6KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/s4CSXwwcC72C5AwSv41KrlfE30I0mj8ro8DTf4VO20=;
        b=B2IpD6disXm/xGbVZPETup5Il0hf8B6vJ9oeJ72y0xjnpGNSHWQ8BdtNtyA7S5p0bf
         RM1Dm7Cd9tswR0FeyeQvcUUm3R2RS3Nxltk++7M6EO11SgrGjVm+gXjBan41yWcGWc11
         hQyDd8cHyZ0Tbom4VDqtTI2YNXcMsZFSFhtCi343XdBxm5rK30P7ddl3MejSn+u3FXGo
         XQR9OfBsTseNw9udkH3x2Xo/X2unuvxPenAkdUzNeDmJg4X4C+W/VbrheQs1PNJ++tpf
         WuSCMFJYtvBkFUElvkFTZKkpfALhw1R5X/U4syrsr3oZJ7G41UlKucEN7uMV9WDMszzQ
         eqtw==
X-Gm-Message-State: AOAM530/E6U+GMYS1twwuQF4JfRNyFdUStmPNonVz9PTY3wfMhiyEIX3
	oKi9iTpJQURoz8GBmvz583djm0CUbprbXyPvpqs=
X-Received: by 2002:a2e:9689:: with SMTP id q9mr3256061lji.434.1602946176464;
 Sat, 17 Oct 2020 07:49:36 -0700 (PDT)
MIME-Version: 1.0
References: <20201006202903.GA8346@linux> <CAN+ihrq_v6OFbOrZUhHZPRTjsUO5nrnr7Kj3AHQJYSD7+oXe5g@mail.gmail.com>
 <20201017140508.GA3003212@kroah.com>
In-Reply-To: <20201017140508.GA3003212@kroah.com>
From: leonf08 <leonf008@gmail.com>
Date: Sat, 17 Oct 2020 16:49:25 +0200
Message-ID: <CAN+ihrpqYw_29OHpQHAxAadOFt8h3dovo-ZKMQN_OcbtEx4HcQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 3/3] media: staging: atomisp:
 Corrected error handling in function
To: Greg KH <gregkh@linuxfoundation.org>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000713a9905b1defd4e"

--000000000000713a9905b1defd4e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks a lot. I must haven=E2=80=99t noticed that.

=D1=81=D0=B1, 17 =D0=BE=D0=BA=D1=82. 2020 =D0=B3. =D0=B2 16:04, Greg KH <gr=
egkh@linuxfoundation.org>:

> On Sat, Oct 17, 2020 at 03:58:41PM +0200, leonf08 wrote:
> > Hello. I=E2=80=98ve sent recently my first two patches and haven=E2=80=
=99t received any
> > feedback. Can I expect it. I=E2=80=99m a newbie in kernel contribution =
process,
> so
> > don=E2=80=99t know all the details.
> > Thanks.
> >
> > =D0=B2=D1=82, 6 =D0=BE=D0=BA=D1=82. 2020 =D0=B3. =D0=B2 22:29, Leonid K=
ushnir <leonf008@gmail.com>:
> >
> > > This patch fixes check of a result of 'power_up()' function call in
> > > function 'gc0310_s_power()' to do "error handling" instead of "succes=
s
> > > handling" as Dan Carpenter noted in his comment on the previous patch=
.
> > > Lines 'return gc0310_init(sd)' and 'return ret' are swapped, and dire=
ct
> > > value of 'ret' is checked in IF statement now.
> > >
> > > Signed-off-by: Leonid Kushnir <leonf008@gmail.com>
> > > ---
> > >  drivers/staging/media/atomisp/i2c/atomisp-gc0310.c | 7 ++++---
>
> As the instructions say, for patches in drivers/staging/media/*, there
> is no guaranteed response time, and so it is not good to do work in
> there for the outreachy application process.
>
> Please pick some other directory under drivers/staging/ that is not the
> media/ subdir.
>
> Again, the instructions should already say that, I recommend reading it
> again fully.
>
> thanks,
>
> greg k-h
>

--000000000000713a9905b1defd4e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks a lot. I must haven=E2=80=99t noticed that.</div><=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
=D1=81=D0=B1, 17 =D0=BE=D0=BA=D1=82. 2020 =D0=B3. =D0=B2 16:04, Greg KH &lt=
;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</=
a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">On Sat, Oct 17, 2020 at 03:=
58:41PM +0200, leonf08 wrote:<br>
&gt; Hello. I=E2=80=98ve sent recently my first two patches and haven=E2=80=
=99t received any<br>
&gt; feedback. Can I expect it. I=E2=80=99m a newbie in kernel contribution=
 process, so<br>
&gt; don=E2=80=99t know all the details.<br>
&gt; Thanks.<br>
&gt; <br>
&gt; =D0=B2=D1=82, 6 =D0=BE=D0=BA=D1=82. 2020 =D0=B3. =D0=B2 22:29, Leonid =
Kushnir &lt;<a href=3D"mailto:leonf008@gmail.com" target=3D"_blank">leonf00=
8@gmail.com</a>&gt;:<br>
&gt; <br>
&gt; &gt; This patch fixes check of a result of &#39;power_up()&#39; functi=
on call in<br>
&gt; &gt; function &#39;gc0310_s_power()&#39; to do &quot;error handling&qu=
ot; instead of &quot;success<br>
&gt; &gt; handling&quot; as Dan Carpenter noted in his comment on the previ=
ous patch.<br>
&gt; &gt; Lines &#39;return gc0310_init(sd)&#39; and &#39;return ret&#39; a=
re swapped, and direct<br>
&gt; &gt; value of &#39;ret&#39; is checked in IF statement now.<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Leonid Kushnir &lt;<a href=3D"mailto:leonf008@gmai=
l.com" target=3D"_blank">leonf008@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 drivers/staging/media/atomisp/i2c/atomisp-gc0310.c | 7 ++++=
---<br>
<br>
As the instructions say, for patches in drivers/staging/media/*, there<br>
is no guaranteed response time, and so it is not good to do work in<br>
there for the outreachy application process.<br>
<br>
Please pick some other directory under drivers/staging/ that is not the<br>
media/ subdir.<br>
<br>
Again, the instructions should already say that, I recommend reading it<br>
again fully.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--000000000000713a9905b1defd4e--

