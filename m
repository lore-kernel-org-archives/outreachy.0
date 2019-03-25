X-GM-THRID: 6672387662802845696
X-Received: by 2002:a50:c404:: with SMTP id v4mr5850031edf.146.1553546958150;
        Mon, 25 Mar 2019 13:49:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4942:: with SMTP id f2ls3251134ejt.8.gmail; Mon, 25
 Mar 2019 13:49:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxq/FMMEsGCQ1ao2dXXQ2furXu7RPJ2Pdyn14hxX8r6AGJz2JENTbq3V3lqQcCsHunZelnn
X-Received: by 2002:a17:906:1dd7:: with SMTP id v23mr14819605ejh.164.1553546956974;
        Mon, 25 Mar 2019 13:49:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553546956; cv=none;
        d=google.com; s=arc-20160816;
        b=KTAAtKUydWw3kosBjEsL9ghqUz6U2kQ8PQbjTFmnoEWIJUvar9jPMyelPQ3nzYgykF
         MTfL3qLAI4y1oVKgAV0KCc+wThYkRzmyASVfvGZ9qRpn7Y11entIWcmYQedk1xkeflQ3
         5lmafW+LQtW3865iFHJGQ53z1mpo/g6JTaz5RNVlBQ6DncnSFtdGIA1Oqq1ASqRKaw1K
         OaVfCT0YbQUWsXd2Icd4dZyL6JNMYl1Qzh4pKGmypCv5clgs8mPSlmcLfXcIoAYFtl4I
         1u3x12Z2kC+qtfELSfMUNedwdRu9rDJMVuaEaKkI1q1uuJGYbIMrYiBvZV8KohblC33a
         aNVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xnxOANeAiR1hgn/DMjTs4eueG8Wa7s8BnfgbjFJOLhg=;
        b=UQN3oxVuWYP/ik+RtIUWJ7+hCuL1fFu3F90KISDaC8LW0wV4NS4qGxqwwaaGot8wQk
         7bY8Ob3gEG9W5lmUjioh9Egku3BEOXK7ujnN5BcP8ofDJlvD5X+4R9DDv6QmqaBUr+Uj
         esxRMdSkXt8n3pJBjxUqTqAqTDjnLzufLcB3bnar2Y4IGk3QDW+rHw8l61e6zsE2Ok9T
         HKmJkWcj4r+Q5ma8TmttFBkOF8z7BlJHHNih5FnHfuUwI1hvXfxYH7J/AZiPOwiKjH96
         zhbAyJvaZmaVjjPRlu5yVaF06c+PrnFVo3aQ6E71LcNA5Wnl5HFBbxCsSdHPeTBIlpY1
         U3Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kwNIv8NC;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id a5si977057edn.3.2019.03.25.13.49.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 13:49:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kwNIv8NC;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x530.google.com with SMTP id s39so3300778edb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 13:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xnxOANeAiR1hgn/DMjTs4eueG8Wa7s8BnfgbjFJOLhg=;
        b=kwNIv8NCDyH9YxDYa4rEXQIdbcHv429uF+HdfHhiOtVG/8h8peUYC4boVWhuLFDHWY
         OtENRWx+kOS7HOqU7LIMt5mcnNxPKrVRksSj7CxNzwsUU//SpVzszgR5mFRcyBce/Sz1
         rB8EQj+Boq9K/FQ3w1fht988L03B8fPoRxDchcFPztyzVxWW3UKwMfMlPUICI0bFgAp5
         qd3QSFT+4ZpJIh6vQ9cMqTyIKFLx0SxuPWw72mI1EuWP2oXMCiI8CPMinCFcErGRExN8
         moR7rYvK/9p7VoiwERd2OjCfT0Mtr7zBl1B3Yx+Qc6SZ4fMfa1yc6PzFI0euDFai77XG
         cCcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xnxOANeAiR1hgn/DMjTs4eueG8Wa7s8BnfgbjFJOLhg=;
        b=qzcUgz4YGrulJSPLHqswy6Xy92gDBEIkV0SkeKPwa3na+/IdHFQeyQj6XvgbOfhGDA
         dOhzVIzKtoXr9mZL8n1E9s9N17Nf7qxIl9BFfxX5SAJbeTkPJG4z5E0zg4gvXciH8wVf
         0m6aiN+4CDEHPF6GfOruxVySlHhnwhRPtRuczvMXZvOIbTjNfimc3wvSaejnSVYG8O6X
         lk37FCaaNVkxMWmafMrr0ncdfmfeqboyTAduaV+i3emFMqOguxMd5a3IbdR8ApTaXdq2
         C4ElMjPVOT8V2hFOw+vZiUtOWqvMQjFn9Xy8qBf8qf5Od7bBTdcezJeHUjUEIQC5oOfG
         obAg==
X-Gm-Message-State: APjAAAXlPYtxVRp3r6vwC5mSqmZGhijrUJoFLUA9YZDv1iOvQTp9rh6V
	m+bO2gJ3e0MVaHvvPyJ27xmYVQNIvmYX7qgj1Q==
X-Received: by 2002:a17:906:4017:: with SMTP id v23mr15211806ejj.40.1553546956616;
 Mon, 25 Mar 2019 13:49:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190325175907.17740-1-jbi.octave@gmail.com> <20190325192730.GD14506@kroah.com>
In-Reply-To: <20190325192730.GD14506@kroah.com>
From: Jules Octave <jbi.octave@gmail.com>
Date: Mon, 25 Mar 2019 20:48:39 +0000
Message-ID: <CAOuULM6G-6tvN6uuxJ-zHCvk=BX6yoMZA=an6w3rNQm4V09ttg@mail.gmail.com>
Subject: Re: [PATCH resend] staging: sm750fb: lower case to fix camelcase
 checkpatch warning
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, outreachy-kernel@googlegroups.com, 
	jules.octave@outlook.com
Content-Type: multipart/alternative; boundary="0000000000007db7d30584f15642"

--0000000000007db7d30584f15642
Content-Type: text/plain; charset="UTF-8"

On Mon, 25 Mar 2019 at 20:12, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Mon, Mar 25, 2019 at 05:59:07PM +0000, Jules Irenge wrote:
> > Lower case to fix CamelCase checkpatch.pl warning
> > "CHECK: Avoid CamelCase: <ulActualMxClk>".
> >
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> >  drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/sm750fb/ddk750_chip.c
> b/drivers/staging/sm750fb/ddk750_chip.c
> > index 6bdf643707c2..3fe4479401e5 100644
> > --- a/drivers/staging/sm750fb/ddk750_chip.c
> > +++ b/drivers/staging/sm750fb/ddk750_chip.c
> > @@ -56,7 +56,7 @@ static unsigned int get_mxclk_freq(void)
> >  static void set_chip_clock(unsigned int frequency)
> >  {
> >       struct pll_value pll;
> > -     unsigned int ulActualMxClk;
> > +     unsigned int ul_actual_mx_clk;
> >There is no need for the "ul" right?
>

Yes, there is no need. I am removing it now and resend.
Thanks

--0000000000007db7d30584f15642
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Mon, 25 Mar 2019 at 20:12, Greg KH &lt=
;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv>On Mon, Mar 25, 2019 at 05:59:07PM +0000, Jules Irenge wrote:<br>
&gt; Lower case to fix CamelCase <a href=3D"http://checkpatch.pl" rel=3D"no=
referrer" target=3D"_blank">checkpatch.pl</a> warning<br>
&gt; &quot;CHECK: Avoid CamelCase: &lt;ulActualMxClk&gt;&quot;.<br>
&gt; <br>
&gt; Signed-off-by: Jules Irenge &lt;<a href=3D"mailto:jbi.octave@gmail.com=
" target=3D"_blank">jbi.octave@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/s=
m750fb/ddk750_chip.c<br>
&gt; index 6bdf643707c2..3fe4479401e5 100644<br>
&gt; --- a/drivers/staging/sm750fb/ddk750_chip.c<br>
&gt; +++ b/drivers/staging/sm750fb/ddk750_chip.c<br>
&gt; @@ -56,7 +56,7 @@ static unsigned int get_mxclk_freq(void)<br>
&gt;=C2=A0 static void set_chip_clock(unsigned int frequency)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct pll_value pll;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0unsigned int ulActualMxClk;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0unsigned int ul_actual_mx_clk;<br>
&gt;There is no need for the &quot;ul&quot; right?<br></div></blockquote><d=
iv>=C2=A0<br></div><div>Yes, there is no need. I am removing it now and res=
end. <br></div><div>Thanks<br>
</div></div></div>

--0000000000007db7d30584f15642--

