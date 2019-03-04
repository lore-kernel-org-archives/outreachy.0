X-GM-THRID: 6664067951305424896
X-Received: by 2002:a24:4503:: with SMTP id y3mr22275ita.32.1551717704211;
        Mon, 04 Mar 2019 08:41:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:9784:: with SMTP id s4ls5670257jaj.2.gmail; Mon, 04 Mar
 2019 08:41:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqy5tYfaooeN7B0UnIgyRy31mORXs6GsfLATMKaOaQ7/IR85CiR4JFpeB/xaApPD3xOEhNI4
X-Received: by 2002:a02:6614:: with SMTP id k20mr11597386jac.24.1551717703371;
        Mon, 04 Mar 2019 08:41:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551717703; cv=none;
        d=google.com; s=arc-20160816;
        b=ttvgNDhWRHzDyht1mT88BMtPz46OyoQ2byRStJPJcc1LSdoZO/f7cNE1t16VPuoGx1
         EPAQZofM9+J3pSJiphODlsX1TbxHQr1ABxtf5dt2NUWCPz0ICP5lYMrxoRYQHgraV6oC
         OMhhe71HNSkEtKBnjO/oMgP9T9RBPpfhSAcNnmO39CDrAsLkyOJsrbQOzzGWZktUvWYB
         /y1/qOB/CheTvLV1QiaCtPvS78Xw6573pJCzVv062KNsUgcMpKlATSSnrbIQRieOsaaz
         Ofi7mT+xkqoT9jhPkRLJW4MT03y3PsRtXa1CF7kH8cbO1PcFo0DT039/0f/il8OoMAey
         q85Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ydf9FiSZu7HppTGmt2mmzZOKVZrfd+TuGHdmu/WvEc0=;
        b=NJQSol6BbTVtzY/IRpUc12OY4ofKDRn+/hHDo5Xv+kvWwJZxE9kjMgGkb2SiNm0/lb
         HeP7IYYaKkDQS4HQHXSN7O7NLI/r1iLEA7jqFXVWpjrSB3WY3IVXmFMOpk0Bp5aEB63Q
         Q+H3xCaCMy7b/jyR4Db3YjVmT8md7YZ0C/ZBegmTexkPtnAgod98V3/9tOiEPkVPWBh3
         lunUMZY8oW1H5GY1Fz+aUXfsdIItdq6rY9O52tZ4dp/sF+9idAP+CRJzcdsRsTELnPXF
         lZIqTLV0+NsIvtFO4DyUydmqIrEwGmIIdUei0yJb5ms+oONxABBbSW6rVaDEXcoQ7qHu
         NpmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tkg6ni81;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com. [2607:f8b0:4864:20::329])
        by gmr-mx.google.com with ESMTPS id b80si344090itc.2.2019.03.04.08.41.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 08:41:43 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) client-ip=2607:f8b0:4864:20::329;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tkg6ni81;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x329.google.com with SMTP id i12so4736125otp.12
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 08:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ydf9FiSZu7HppTGmt2mmzZOKVZrfd+TuGHdmu/WvEc0=;
        b=Tkg6ni811O0N8GbWWR9u97xMP8La6jyv902km7uiiQepdyBUaEA0QE1mwvYx9/b31m
         6RdVPOubv4KNuibcIekp12J5a8/D+lpyqnHtamfYo3pCoyUMiIsWJW/n4lrEfgpvslVS
         ahDorKAjeaTiROcypiDbWhBIwCrcMEw0nNjeBsB8W8xIXG8u7Ep7sqoJd1KZenEEzUYV
         T8d7XXVXiJjBIIdM91dnKoaIOdcLjDeHW/9A8WO1ahCL2H5nFGkDCHReMQzYb/H12uD/
         WOIjzegLGoYedPnkHWN7ouPCwOMo7KSWNjdPCT1ULzrtoz/cZsx4L/JQZ+aN3S2nSLM9
         8yDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ydf9FiSZu7HppTGmt2mmzZOKVZrfd+TuGHdmu/WvEc0=;
        b=GJE88lbKcZCV0WSwEAoltqzF/yLTrjsW9XWMknAKGZpMU2XenJizKzHVBzh5pJJblV
         OK2+IeX0czAYO67MsUoIhMs53I4HzAFUnq28N/hL35Ts7xHx9nbIkqONpPsIi3tNDSgb
         vdA4yaxlprbpkkbsjzdlUdG4KHJluXKQIj6q2R86Om2TWCqkP9Sk7yQL9sRkg0rHNWAF
         Rp5OTs/gbjHReVbhji7Tu8Ete8LrcB8eKb8AW/cf5vcmTOF1Dpwk8rXCYyu/Sv48HFW3
         WKfTjNJ02WCVKn6bg3H8fNPONfB+JUdnKfrd0DboTiRsYeHUbIqxhLENdWwV7EVlJDZg
         ROZw==
X-Gm-Message-State: APjAAAWhjSqkFil7cWlH+68w8B4ob8EY4z/I59VSSylAhT/IaHm6wRUD
	86OuFxdtslTQVhtBewelNOi+6Dal9rBEZSao1tY=
X-Received: by 2002:a9d:30d8:: with SMTP id r24mr12631533otg.194.1551717703092;
 Mon, 04 Mar 2019 08:41:43 -0800 (PST)
MIME-Version: 1.0
References: <1551716999-101370-1-git-send-email-idebleenasen@gmail.com> <20190304163715.GA3785@kroah.com>
In-Reply-To: <20190304163715.GA3785@kroah.com>
From: Debleena Sen <idebleenasen@gmail.com>
Date: Mon, 4 Mar 2019 22:11:30 +0530
Message-ID: <CACw+u4EMKnzQvTBLscGCphodqeAJF60yZRd1JxbVXmV+sLyEkQ@mail.gmail.com>
Subject: Re: [PATCH v2] Staging: pi433: Fix line over 80 characters issue
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000007c0fa20583476ed0"

--0000000000007c0fa20583476ed0
Content-Type: text/plain; charset="UTF-8"

On Mon, 4 Mar 2019, 22:07 Greg KH, <gregkh@linuxfoundation.org> wrote:

> On Mon, Mar 04, 2019 at 08:29:59AM -0800, Debleena Sen wrote:
> > Delete extra whitespace and tab space and use one tab space to
> > remove the checkpatch.pl warning:
> > WARNING: line over 80 characters
> >
> > Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> > ---
> >  drivers/staging/pi433/pi433_if.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
>
> What changed from v1?  That always goes below the --- line please.
>
> thanks,
>
> greg k-h


OK. Editing and re-sending.

--0000000000007c0fa20583476ed0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Mon, 4 Mar 2019, 22:07 Greg KH, &lt;<a href=3D"mailto:gregk=
h@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">On Mon, Mar 04, 2019 at 08:29:59AM -0800, Deb=
leena Sen wrote:<br>
&gt; Delete extra whitespace and tab space and use one tab space to<br>
&gt; remove the <a href=3D"http://checkpatch.pl" rel=3D"noreferrer noreferr=
er" target=3D"_blank">checkpatch.pl</a> warning:<br>
&gt; WARNING: line over 80 characters<br>
&gt; <br>
&gt; Signed-off-by: Debleena Sen &lt;<a href=3D"mailto:idebleenasen@gmail.c=
om" target=3D"_blank" rel=3D"noreferrer">idebleenasen@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/pi433/pi433_if.c | 8 ++++----<br>
&gt;=C2=A0 1 file changed, 4 insertions(+), 4 deletions(-)<br>
<br>
What changed from v1?=C2=A0 That always goes below the --- line please.<br>
<br>
thanks,<br>
<br>
greg k-h</blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"au=
to">OK. Editing and re-sending.=C2=A0</div><div dir=3D"auto"></div></div>

--0000000000007c0fa20583476ed0--

