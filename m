X-GM-THRID: 6664067951305424896
X-Received: by 2002:aca:5e05:: with SMTP id s5mr15432433oib.53.1551803103457;
        Tue, 05 Mar 2019 08:25:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:62c:: with SMTP id 41ls693448otn.2.gmail; Tue, 05 Mar
 2019 08:25:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqy9jsopTxZJ4iSBMzmLN0n7bvMPTtzh9fapPdUHdDO3R9lfDx75WE0H4IAs/kDzwqyCO4R/
X-Received: by 2002:a9d:4c04:: with SMTP id l4mr1318163otf.32.1551803102940;
        Tue, 05 Mar 2019 08:25:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551803102; cv=none;
        d=google.com; s=arc-20160816;
        b=qfZ7HEZEUcW8XijQSvLBfhZgNQwxRqIvPUq/8VI24mlyo6mr66j2AXuXESsWVcnS01
         q8tcx6RsgFV+O7X4yaAUi5cu2sCuOMawLXZy9eRkU5mSNQne3CUX7uGYmOqFLmWGG+gT
         s0IbeqplwAKxHnkWtT9f9m7jjV/a3FYUeMcLqGJSy+CNSgHdZh/6i02wIERS/abgJSz+
         abeOfaZ8/Kj/E/Q8wjYAl4gmzw/KUwERlzOXO2HvIKF9KsjY9COTQwb2+jNw3Nvomfc1
         nd+dtAjD2e4fDz400pRj4TUuWrWGQt5RcXhUuyNm9QdqYMRUtkDRIrCFICqIVDkMua+8
         cwzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pg115yn9RPbDGQElqaXPpMVvo3yoXZyuybRmC5s24Hc=;
        b=RkG9BuNafwbgRykgm6JcEq+36Gbs2eKpVe+/dyFaVxbwPtlb/yjRrxz+6pREhzzeJL
         UN9N4xslXhPO/bGrkccvoFsRhSKXKR9M2R0m6TjVgxNAAy+AND/nk/hZPSMVdd4ps5bC
         OCMkclq1gADMHpxSlo7CDpvc6FkGHFpBjLj4f6uvcW4RwcAQOvxKvMWeOe3n4QkoMBTQ
         NqU8b2tij9SSFXkRSQduQsa3Ip1vgK9p3p7zM5vWTgjxi8X3VjOLrd+PYhlEd6jhu3eY
         TGcFN4Tsw8uFVzSu3bix2W0cX7n21eyXVbx/FiSZRl9C0Zl/m7xcgaANHmvUkZdZp5Lo
         rOqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JKw5cY0c;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id a188si430043oih.4.2019.03.05.08.25.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 08:25:02 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JKw5cY0c;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id v20so7928976otk.7
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 08:25:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pg115yn9RPbDGQElqaXPpMVvo3yoXZyuybRmC5s24Hc=;
        b=JKw5cY0cAgVgrM1w9oq6WLRcKxRa2xZPh3+Q74zP4VskafYCmHVS7tJriloQ/da4gk
         a+iGd5+ifz41GcB7pMWQaHL91hjPixyMCMa5YiCJEl4RjjtwVsJai8eqXMgEnbxM5Nb4
         ck7+mOLw2VeTYx8V/7wbtP88D/i4cZcLKHRy0WrXWk9NZGYWpZlGILIt4mVWWChpWq1Q
         NfrtXImg/TE2rxzk2TaVoiMuxIKJXBRVY+OLxlYh2povupAkObaItkruJ8DOZPJYod+U
         L6SmPyukfAzFYG06dvHoqCIxN/lbGvde6t7XnFTftM+kOBzAJHAl7HSsurrr3TD9ym9f
         /iww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pg115yn9RPbDGQElqaXPpMVvo3yoXZyuybRmC5s24Hc=;
        b=DcZ9eKcBo7bDgX5xifEoj+6nptAZgNEVMuVZbLipsbizu0Tz6xRqcGosPRr/wk1xnl
         A6uqx8Tvfjv11b1r5zJJYJSECM+Tx/eQ4TQ9ldjPEOjYs7/ggrb3gt5NL56Ze4fYF1IT
         Ne/VAtiU9ttMG7qTN1Pz4uEJvSzhoqhp8rqFCK3Soax5Okiq2u1UqaSalPr0YgYATMDQ
         DMJ1TRBKcKxE0MD6IU8/v2kxOcTud2Hyr28V5a6+KpTwLEZBp18dpPyq9XQLAZPaobiC
         rI6PI33bSLnUoBirORRThf/O20jAfElwIrVCtVcRUeCYr6/JuuqOxWCSBkr639goo9Ht
         A6JQ==
X-Gm-Message-State: APjAAAXByQRglO9HLV0ZpuEIloWUIIj4xoPzHFAPs91AiLdArCXjnAFy
	GIQbNK9fL1A+PEBcOAvq1kcwlGwzDyntWY6rTJk=
X-Received: by 2002:a9d:6ac2:: with SMTP id m2mr1514648otq.100.1551803102660;
 Tue, 05 Mar 2019 08:25:02 -0800 (PST)
MIME-Version: 1.0
References: <1551607296-33723-1-git-send-email-idebleenasen@gmail.com> <20190305074018.GA6158@kroah.com>
In-Reply-To: <20190305074018.GA6158@kroah.com>
From: Debleena Sen <idebleenasen@gmail.com>
Date: Tue, 5 Mar 2019 21:54:44 +0530
Message-ID: <CACw+u4FnMCpiBiYPqaz3R054wm2q3Rx9q2R7S15_2+EPhJmkNA@mail.gmail.com>
Subject: Re: [PATCH v4] Staging: pi433: Fix line over 80 characters issue
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000b20b8b05835b50f0"

--000000000000b20b8b05835b50f0
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 5, 2019 at 1:10 PM Greg KH <gregkh@linuxfoundation.org> wrote:

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

I'm not able to find the commit.

I tried using "git reset --mixed e19b9ce" but it shows an error:

error: object e19b9ce794a8534f0ad19bfa1c60260fd74b9bb9 is a blob, not a
commit
fatal: could not parse object 'e19b9ce'

How can I recover it so that I can add the changes?

Thank you,
Debleena

--000000000000b20b8b05835b50f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Mar 5, 2019 at 1:10 PM Greg KH &l=
t;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org<=
/a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">On Sun, Mar 03, 2019 at 02:01:36AM -0800, Debleen=
a Sen wrote:<br>
&gt; Break the line and match the indentation to remove the<br>
&gt; <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_blank">=
checkpatch.pl</a> warning:<br>
&gt; WARNING: line over 80 characters<br>
&gt; <br>
&gt; Signed-off-by: Debleena Sen &lt;<a href=3D"mailto:idebleenasen@gmail.c=
om" target=3D"_blank">idebleenasen@gmail.com</a>&gt;<br>
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
greg k-h<br></blockquote><div><br></div><div>I&#39;m not able to find the c=
ommit.</div><div><br></div><div>I tried using &quot;git reset --mixed=C2=A0=
<span style=3D"color:rgb(80,0,80)">e19b9ce</span>&quot; but it shows an err=
or:</div><div><br></div><div>error: object e19b9ce794a8534f0ad19bfa1c60260f=
d74b9bb9 is a blob, not a commit</div><div>fatal: could not parse object &#=
39;e19b9ce&#39;</div><div><br></div><div>How can I recover it so that I can=
 add the changes?</div><div><br></div><div>Thank you,</div><div>Debleena</d=
iv><div><br></div><div>=C2=A0</div></div></div>

--000000000000b20b8b05835b50f0--

