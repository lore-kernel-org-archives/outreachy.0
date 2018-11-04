X-GM-THRID: 6620077565776232448
X-Received: by 2002:a65:430b:: with SMTP id j11-v6mr60140pgq.11.1541358501310;
        Sun, 04 Nov 2018 11:08:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:4:: with SMTP id 4-v6ls8017674pga.10.gmail; Sun, 04 Nov
 2018 11:08:20 -0800 (PST)
X-Google-Smtp-Source: AJdET5e/aYi7EIGFe15n24y9iNNRSdLy46wiLX8KzM0uElbL2QWJM2djWAU8jhldaLhwq9/9TLIk
X-Received: by 2002:a63:6a43:: with SMTP id f64mr4693821pgc.108.1541358500255;
        Sun, 04 Nov 2018 11:08:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541358500; cv=none;
        d=google.com; s=arc-20160816;
        b=DWaw8HkzdqpvkChhN7DE6IC0BB+pTZr1Ufz4jxUPmmjk/3DMjEqAGhEuXLdQoePJ/r
         iFBfup5kspXCJw08TUUK6p9giN/NzMhyt+NxMWmwpWrgt7hKryM2uiFK82dhA3wp4BLo
         DbCDby7gCqGlIyiWwipqDoLbXCR5gSiiQP8B1UiS+UX6VAXJr6WvaQ1rXI5E7fRyqaVh
         D7BcNxuxHgp1z2U+saaTZpam2XNCe2tzpfhk+lILj+upEqFf9hhhuaWMn5OCDfeRtziY
         Q504iDTXGO5VOhN1CETxri24XIxQmGymAUXmozH0ZaPOO19pApzQS88QewOrcqsvi1jX
         hQoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hMEU+VIrUjpAFbtluPyYYwOui/XqUHyoSlkCue9zcRE=;
        b=lp8w+yBlcsrDpp0zBaqoz2p8U0R2soadXmnkRFu4nsnomnzny0K5JE4iKxpwtxJjRA
         tXXxHXqRTdETW2B/5KBB6YvreIuecTY2sBgAjiVM52AT5DzzbsPr8Zr7IgEEuF/hnxWN
         jWTPwi2E+IGrYg/+/wFfsfU+sFts9vlqGe5/9nA0bkzLSSSZw0MiAiqCxZcLLQ29Knix
         9JLPOlYAtGCVE71sDfcnV/cvwAacnS040Dc0yofeX9kU5AGbHJ8i1EM+GndN34T53o0w
         so8b0stg0BlyRTvLscA1irjIGwjNWFWteRwoGk37DCXMt/kc0gLOuJjgJKADhMh7yU+Q
         XPBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kBQhAAnb;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com. [2607:f8b0:4864:20::735])
        by gmr-mx.google.com with ESMTPS id t12-v6si1559649plr.4.2018.11.04.11.08.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 11:08:20 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) client-ip=2607:f8b0:4864:20::735;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kBQhAAnb;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x735.google.com with SMTP id e4so11297372qkh.6
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Nov 2018 11:08:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hMEU+VIrUjpAFbtluPyYYwOui/XqUHyoSlkCue9zcRE=;
        b=kBQhAAnbZ6W9aY6jSxICuRNXElAT0LErlecHHQmyCEo1cV5rDLlVf5AA5pqL0MSJ8y
         1COUTSe4802xZpxKcBcs2mjvpWB4H+1gQiPwHT2YtL/wzWeO2LCB3V8jYOhijK/+47Nh
         reL1Ltm5OiQVjJjguIcv6uW48m3EyxnZByEIuHUIdw9n+8S2ryDPHSj0BHPwZfYIyPjR
         pqn6pZQFIewyeubSw9gyZgxNa/6P1c8aRkD8Nnj9ykEyjAmGtkyb/Y/hJRuhmb4shqkW
         ZQLhZQ/LE3Loa/dCqxPyTJvquvCQG3fFDgrTUx/yp+C2XZJYKs5c8BoRVsXO/bp5AyVX
         1PEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hMEU+VIrUjpAFbtluPyYYwOui/XqUHyoSlkCue9zcRE=;
        b=O6syXApvqGpHx3rPreE+HWb2+omzWf462LFjfwT+/5PLhpZho2iD8V4Coh1/lUxH92
         yjRHhCykVjFzTsh770IQ+5bM9v17yHeAkL44ic86z8sNw+4FlLGb6AD9mxlEgnmiySZJ
         uaVrxmTABFwClJKMCHeCD8GuY1GH2AgIwsl3Pxb3WIT41yvb6dGk4eyYsPXH1/ZSrLSJ
         6gdKEx/OfPp6YGrWSt2Kq2rGiG3mQzazRrArnLc2mxBgYMvi9g5S0E36m7ssFepAq2T4
         pOf71tHA44CbiQBQbBbHGaOWiR0dfEDgvZfTjTuvHft76sZaNLOrzJHmrUPIvTK1I5Ma
         AZ9w==
X-Gm-Message-State: AGRZ1gLo2P+AvJXQtXMoA1Zi5vM4UHKJdGzoUryNy9+Tb9M/aQqgmVds
	LPYm/4QPW+XFHOSfiesLNI+uj5SLV6U8PdXk/Cs=
X-Received: by 2002:ac8:2475:: with SMTP id d50-v6mr18625803qtd.7.1541358499888;
 Sun, 04 Nov 2018 11:08:19 -0800 (PST)
MIME-Version: 1.0
References: <20181104184153.GA16136@bhagyashri-Lenovo-G570> <20181104190438.GR194472@sasha-vm>
In-Reply-To: <20181104190438.GR194472@sasha-vm>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Mon, 5 Nov 2018 00:38:07 +0530
Message-ID: <CAOMPgjjCQdHWPNoPDeGwFCx28-LWzQTUrPy_AQoefFw9-Yho-A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: erofs: Fix alignment issues
 and warnings.
To: Sasha Levin <sashal@kernel.org>
Cc: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000db8ced0579db7dfa"

--000000000000db8ced0579db7dfa
Content-Type: text/plain; charset="UTF-8"

Ok, I'll check it out.

On Mon, Nov 5, 2018, 12:34 AM Sasha Levin <sashal@kernel.org> wrote:

> On Mon, Nov 05, 2018 at 12:11:54AM +0530, Bhagyashri P. Dighole wrote:
> >@@ -232,15 +232,15 @@ static inline struct bio *erofs_read_raw_page(
> >       }
> >
> >       /* note that for readpage case, bio also equals to NULL */
> >-      if (bio != NULL &&
> >-              /* not continuous */
> >-              *last_block + 1 != current_block) {
> >+      if (bio &&
> >+          /* not continuous */
> >+          *last_block + 1 != current_block) {
> > submit_bio_retry:
> >               __submit_bio(bio, REQ_OP_READ, 0);
> >               bio = NULL;
> >       }
> >
> >-      if (bio == NULL) {
> >+      if (bio) {
>
> The condition was inverted here, which is incorrect.
>
> --
> Thanks,
> Sasha
>

--000000000000db8ced0579db7dfa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok, I&#39;ll check it out.=C2=A0</div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr">On Mon, Nov 5, 2018, 12:34 AM Sasha Levin &lt;=
<a href=3D"mailto:sashal@kernel.org">sashal@kernel.org</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">On Mon, Nov 05, 2018 at 12:11:54AM +0530=
, Bhagyashri P. Dighole wrote:<br>
&gt;@@ -232,15 +232,15 @@ static inline struct bio *erofs_read_raw_page(<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* note that for readpage case, bio also equ=
als to NULL */<br>
&gt;-=C2=A0 =C2=A0 =C2=A0 if (bio !=3D NULL &amp;&amp;<br>
&gt;-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* not continuous */<=
br>
&gt;-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *last_block + 1 !=3D =
current_block) {<br>
&gt;+=C2=A0 =C2=A0 =C2=A0 if (bio &amp;&amp;<br>
&gt;+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* not continuous */<br>
&gt;+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *last_block + 1 !=3D current_block)=
 {<br>
&gt; submit_bio_retry:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__submit_bio(bio=
, REQ_OP_READ, 0);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bio =3D NULL;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;-=C2=A0 =C2=A0 =C2=A0 if (bio =3D=3D NULL) {<br>
&gt;+=C2=A0 =C2=A0 =C2=A0 if (bio) {<br>
<br>
The condition was inverted here, which is incorrect.<br>
<br>
--<br>
Thanks,<br>
Sasha<br>
</blockquote></div>

--000000000000db8ced0579db7dfa--

