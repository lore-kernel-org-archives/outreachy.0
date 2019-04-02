X-GM-THRID: 6675008112137601024
X-Received: by 2002:a25:3622:: with SMTP id d34mr685282yba.50.1554194497666;
        Tue, 02 Apr 2019 01:41:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3582:: with SMTP id c124ls320154yba.11.gmail; Tue, 02
 Apr 2019 01:41:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxjd9yjG4OG3/w8XoHIyOzEE6Y3s1YV6XNdSzgHGRR4/YdWmMrLdmH31sZRWZHRrgn04F4k
X-Received: by 2002:a5b:ccb:: with SMTP id e11mr1160115ybr.87.1554194496692;
        Tue, 02 Apr 2019 01:41:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554194496; cv=none;
        d=google.com; s=arc-20160816;
        b=Am/Jfqxm94pPu0pHGWbeO+e9NjAKUq/5unPV+MtupOjRGYrP0uAMnuqLDh8hZMDJRC
         /4z/H603wcNRLP0srI7FqH+tDGOiHWMmS8pRRNMR4o7NkIwlIywRWYL350To5mlVwjig
         sh2TPMDBpm4NltA+BCTtE4GsxallTDtAegcSUQ8waXjq3Xbu29tm3y/h5u9bv0mxqcox
         fsWDCBwxqXbYQpCA/btkylOqieyA7TvgJeCHYoekmUcXxX5TrAZYrmREtouo1t5u230H
         zDNR3UaaSeDFwN7WDQ6yRh+5Wguti4sRmhINnI7nz6hFWbsHdJKgjahw161ps8Xa8+zw
         kz7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IoJPRafLqcgIyfrex7rXfLBu63MDMgY7vI+ckBeJ8ac=;
        b=WGzLOaNqGa2TkMjryG6dDE0mkZkVZ0wgG9U6mu6MBf2iwbUiaKtWvalHoTrJ55Smsx
         d9MDAVZbA/prRQ8gHiW88KFyeSegtP+YGTaefQH4kSZ/PJ5EfuIOxxnstFzhMGM03akR
         pBGq6nlmhq7BNjvW25bcYrrJdprG0LcbYV/POuI4444Pn0lNB6VqIyZcvU1s9wOJn6gy
         NlYYcGX5InP51IO8m8uvK7NBLT2V6bxIgpokKKw+AKOhTiWaqbXoVyApP4W4uAL8EsIi
         9turQfKiu84ZxBcCQc1lKHfvMhzFP7WiAE5+RboHUgNw35g5t9LSi6lsZ9ZqLcW4llyb
         xMlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DM8NFAJQ;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com. [2607:f8b0:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id s11si661454ywg.3.2019.04.02.01.41.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 01:41:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) client-ip=2607:f8b0:4864:20::32e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DM8NFAJQ;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32e.google.com with SMTP id f10so3683408otb.6
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 01:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IoJPRafLqcgIyfrex7rXfLBu63MDMgY7vI+ckBeJ8ac=;
        b=DM8NFAJQn59TY+SGVnIKnD8Yx96jSs68hJkDLQjF12WFBGrrxQRcqejT6BHy6v79Om
         5K9OqEl9mvBSesFtNQF+EaxGZIXAhfXhncXKRsUe1n831pBoQAWH7W0Mj5QBGGuIeAMi
         nmtVgKwbvcjfuB5yIRk8qdK1dq3x5kwvVsf6rZdv0vadMttClKVvzsw+AI1YDfnla7PG
         yz+arMXtf1Pd0RZDITGd8h+NEL3S5HWAloloxfuirKDU8/s0jGVu/Vc0SXptt4g0gtbZ
         wRbrYwl+05WM03wZoNw2psyOFFcWFy7GHr7L8YHc++XTwfZHWXRCxAuMhfXx/wdqYgQC
         AJRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IoJPRafLqcgIyfrex7rXfLBu63MDMgY7vI+ckBeJ8ac=;
        b=eMAoG9dkUX9eI2QvUgvpjob9ecyyCWhYIjTk8detxU8hjmIGmCgnXK7LmsLpFkxiJD
         VAxL5nqKfrCUgaCp38k8ffFtmZj2SZoXT6NpsqNP5nJANeYSUxwjmI2EvAzSXxK1pcsc
         9i1EnB5nskRuPaf13wXLWAsA92kp/kOT+2Qe2RtHfivgLInAyS3/aTdlX/RAPgYpQvLR
         gkmCl0gQwTsQesQ69CTumCyWJMmyvjHwNEJPk2fpsqmd+tneGnGxjWyZjhvgx0cCs+5J
         9mPlFSFA+pbj1mvwUCprL2asfbKLB8W63NQnXnSKU6Oh37InAeIrS5DxDY/Re3B7zYwa
         BP6w==
X-Gm-Message-State: APjAAAVX/I4PgW2dYYVxqjf/fsen49xOFNu97lHJRshgNrv/whbDGkqa
	jaMqBremxpEC4ymi82b1qaDDnUKJ4UAhFDYlTIiEgw==
X-Received: by 2002:a9d:68ce:: with SMTP id i14mr1578451oto.293.1554194496278;
 Tue, 02 Apr 2019 01:41:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190401192015.96166-1-himadri18.07@gmail.com> <20190402055317.GD14075@kroah.com>
In-Reply-To: <20190402055317.GD14075@kroah.com>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Tue, 2 Apr 2019 14:11:23 +0530
Message-ID: <CAPnhUpYFtTDuiSmPhRnry_nOdTEiAgf-kfHKm+aT02qf_TOUUA@mail.gmail.com>
Subject: Re: [PATCH 0/2] staging: media: omap4iss: redefine and use to_iss_buffer
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, mchehab@kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000dcd6f20585881ab2"

--000000000000dcd6f20585881ab2
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr, 2019, 11:23 AM Greg KH, <gregkh@linuxfoundation.org> wrote:

> On Tue, Apr 02, 2019 at 12:50:13AM +0530, Himadri Pandya wrote:
> > These patches
> > - redefines an unused macro to_iss_buffer into an inline
> > function
> > - uses that inline function in suitable functions
> >
> > Himadri Pandya (2):
> >   staging: media: omap4iss: redefine to_iss_buffer()
> >   staging: media: omap4iss: use to_iss_buffer instead of container_of
>
> Can you make this one patch?  It makes things a lot more obvious as to
> why you are doing what you did in patch 1, when you see patch 2, so
> these should just be together.
>
> thanks,
>
> greg k-h
>

Okay.

- Himadri

>

--000000000000dcd6f20585881ab2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, 2 Apr, 2019, 11:23 AM Greg KH, &lt;<a href=3D"=
mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">On Tue, Apr 02, 2019 at 12:50:13A=
M +0530, Himadri Pandya wrote:<br>
&gt; These patches <br>
&gt; - redefines an unused macro to_iss_buffer into an inline<br>
&gt; function<br>
&gt; - uses that inline function in suitable functions<br>
&gt; <br>
&gt; Himadri Pandya (2):<br>
&gt;=C2=A0 =C2=A0staging: media: omap4iss: redefine to_iss_buffer()<br>
&gt;=C2=A0 =C2=A0staging: media: omap4iss: use to_iss_buffer instead of con=
tainer_of<br>
<br>
Can you make this one patch?=C2=A0 It makes things a lot more obvious as to=
<br>
why you are doing what you did in patch 1, when you see patch 2, so<br>
these should just be together.<br>
<br>
thanks,<br>
<br>
greg k-h<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Okay.</div><div dir=3D"auto"><br></div><div dir=3D"auto">- Himadr=
i</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">
</blockquote></div></div></div>

--000000000000dcd6f20585881ab2--

