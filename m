X-GM-THRID: 6664067951305424896
X-Received: by 2002:a62:121d:: with SMTP id a29mr7753178pfj.103.1551727849432;
        Mon, 04 Mar 2019 11:30:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:282b:: with SMTP id e40ls8597924plb.6.gmail; Mon, 04
 Mar 2019 11:30:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqzYM7ZWxdnCc4nYRSVII6nQjvycf4hfkpGMGPYIv6KdZLN4oWeIhxOZdnnhjJCYFaAs47xA
X-Received: by 2002:a17:902:b60a:: with SMTP id b10mr6408109pls.147.1551727848764;
        Mon, 04 Mar 2019 11:30:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551727848; cv=none;
        d=google.com; s=arc-20160816;
        b=aeESCJXex8m0uWHYTOtdEDw3Wt7j8ECCMtq3M4VpdMTo/JS9p0DLEXGQ28jiVmgHJ7
         NZBE9kJKmbCx1hNBHRH+r9cNpV8XzUz4+n7ZEzNDXMJ7x0QnXii7Y70mLPHI3C4ZN4B1
         yGuuw0/lkRyXG7KZu6sR9J/Wk7LGzHg7xWk8gQQdR63UqTnlL+LmgdjqQN8nVDmE4qvh
         mgvh4PW2T/6OSUxFvmA6qvKkIpjofOdP2oMPPoCYC+CSPjNtVwxErDFL0O3FouJhf6vV
         SEkkOk4JOT17jSDML9JWwQO8oNbLBhFeFmiY5kCea2sE9OOuhpk/uAACp+P0U3w9sV+3
         vZkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XjbTg58/Lbc8asCpfubGNHk48ecKWy3cnrwwVeSnPX0=;
        b=1AH9Nw+V32D6MX9+vVq/LYmRaGUNTFDfkfexebayMVOakgToLEwMFRMvYA6xcdnWfh
         XwYEJnGYHZSXfvTI0UofaIMhM8SCk1WDrNagCmAMe6YhvBp7EZXMNWAEbmA6yFWLwtLp
         Lids3Suv07RbkK8L6l+ohfJy7egLbpe9CSvsS0ZVzuqbS7Pcl0swog2VTyekzRhHaKiJ
         73Ztqer2ypju27RFC/+/nXltlAwd7cCQJ3qEIfVJ7au4YUbtoWEZK6AtT9FjCd3ZzHO/
         JcoXhI/Fu5d2PsnMpA1CbiKTPKihfb572RSxOzLFMBH+5oO4SWosMiyXf+1jFPSFTmPT
         bBaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X29JubLK;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com. [2607:f8b0:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id e71si335585pfc.1.2019.03.04.11.30.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 11:30:48 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) client-ip=2607:f8b0:4864:20::32b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X29JubLK;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32b.google.com with SMTP id g1so5222621otj.11
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 11:30:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XjbTg58/Lbc8asCpfubGNHk48ecKWy3cnrwwVeSnPX0=;
        b=X29JubLKKJvw3Gpyi8hJfaRsydRlZ+tbyxzWE4OJnkU60hiYw4JZtzgp1OrjuAPQ/C
         rwisLHyzF2Tu6aenduC6D2B+bBRa108zwst6Wmmoc4Ppk3avsu7BavnxJ6uShU9X13wy
         evqs7pBPjFTfhfxyxt98zkgpuIp+mN1bkHHePvH+TJBVfE2Wrys08awSZ45ya/NLwleB
         VG8hzEmWAo4641eM0J1312cB+4f/OuqaKXeh9tgOtNXiOHCLjTbeiWwggSiU+nznqBnB
         tKpUMVI6hLi9iYvJk21vX1DcN7Ry16DHlTTWVZj2D51AEV+LTv4fWvBCAYZ+oriihyFr
         TFMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XjbTg58/Lbc8asCpfubGNHk48ecKWy3cnrwwVeSnPX0=;
        b=PdhrTOUvZ8UvExZoC5522N/BhqpT8On1Uas/Z4t9ylqqP/0yA2R52Tiqd++snM25AR
         AXYSdgU+jzUCVQZd4t7Zi6yWMvUYeKUf7VSuAxFAfJkUXwYU7z9T+dYmc+fzfeGHUsVi
         mznsKWot3esTb50NqQqh7JPsC9S833ZsMZoMLYF3D0obWgZxjItrYo4W19P44GTWvHia
         1fnH4M8WHByxLvil9SkRYG+fIZRHygvxtnfiXVtPXRb0eGgOGkAFOontnTFMMHIiiGqE
         Bz3AVlr/WPDazQYIdeIVe9H3RkmtJVBAImyfQUC/CahvLWVMdBrlX5hZQTPXRn/mHiMA
         OOWw==
X-Gm-Message-State: APjAAAWYkrqMu/DUAibvKEhvxJ2GhZ8ZZmDBPzh+JnEqJE7J/i/HNNen
	9ZNmseIaCb0bjnlVzc0ktb+PQNClYdyeVJaGV/o=
X-Received: by 2002:a9d:5f15:: with SMTP id f21mr12808868oti.212.1551727848420;
 Mon, 04 Mar 2019 11:30:48 -0800 (PST)
MIME-Version: 1.0
References: <1551720850-101768-1-git-send-email-idebleenasen@gmail.com> <20190304190130.GC13830@kroah.com>
In-Reply-To: <20190304190130.GC13830@kroah.com>
From: Debleena Sen <idebleenasen@gmail.com>
Date: Tue, 5 Mar 2019 01:00:37 +0530
Message-ID: <CACw+u4GJOEuSj4fGQ0bmD3BMcRn1M=X16QKEGtp0psi8=MHiLQ@mail.gmail.com>
Subject: Re: [PATCH v3] Staging: pi433: Fix line over 80 characters issue
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000317adb058349cbd7"

--000000000000317adb058349cbd7
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 5, 2019 at 12:31 AM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Mon, Mar 04, 2019 at 09:34:10AM -0800, Debleena Sen wrote:
> > Delete extra whitespace and tab space and use one tab space to
> > remove the checkpatch.pl warning:
> > WARNING: line over 80 characters
> >
> > Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> >
> > Changes in v3:
> >       - Add version change log
> > Changes in v2:
> >       - Add "and use one tab space" to the log message
> > ---
> >  drivers/staging/pi433/pi433_if.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
>
> The "changes in" lines go below the --- line, not above it :(
>
> (note, one kernel subsystem does want it above the line, the graphics
> developers.  But they are crazy anyway and like doing things
> differently, so don't worry about them just yet...)
>
> thanks,
>
> greg k-h
>

How do I put them below "---"?
I tried to but couldn't understand how :'((

--000000000000317adb058349cbd7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Mar 5, 2019 at 12:31 AM Greg KH &=
lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@l=
inuxfoundation.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">On Mon, Mar 04, 2019 at 09:34:=
10AM -0800, Debleena Sen wrote:<br>
&gt; Delete extra whitespace and tab space and use one tab space to<br>
&gt; remove the <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=
=3D"_blank">checkpatch.pl</a> warning:<br>
&gt; WARNING: line over 80 characters<br>
&gt; <br>
&gt; Signed-off-by: Debleena Sen &lt;<a href=3D"mailto:idebleenasen@gmail.c=
om" target=3D"_blank">idebleenasen@gmail.com</a>&gt;<br>
&gt; <br>
&gt; Changes in v3:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0- Add version change log<br>
&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0- Add &quot;and use one tab space&quot; to t=
he log message<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/pi433/pi433_if.c | 8 ++++----<br>
&gt;=C2=A0 1 file changed, 4 insertions(+), 4 deletions(-)<br>
<br>
The &quot;changes in&quot; lines go below the --- line, not above it :(<br>
<br>
(note, one kernel subsystem does want it above the line, the graphics<br>
developers.=C2=A0 But they are crazy anyway and like doing things<br>
differently, so don&#39;t worry about them just yet...)<br>
<br>
thanks,<br>
<br>
greg k-h<br></blockquote><div><br></div><div>How do I put them below &quot;=
---&quot;?=C2=A0</div><div>I tried to but couldn&#39;t understand how :&#39=
;((=C2=A0</div></div></div>

--000000000000317adb058349cbd7--

