X-GM-THRID: 6801781024772587520
X-Received: by 2002:a17:902:524:: with SMTP id 33mr11572254plf.241.1583664936823;
        Sun, 08 Mar 2020 03:55:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:1888:: with SMTP id mn8ls52720pjb.1.canary-gmail;
 Sun, 08 Mar 2020 03:55:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsDI7QFeeqQAvtyMl2QtvnFChfTt1UqgipcCTCFXa8QR3zhurxRpS7ndelYoTd/O4ixRImI
X-Received: by 2002:a17:90b:8d0:: with SMTP id ds16mr13628921pjb.75.1583664935436;
        Sun, 08 Mar 2020 03:55:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583664935; cv=none;
        d=google.com; s=arc-20160816;
        b=F54dc9Q6ZSWXnMfq7bJi/kicnehai8pSReH8TpWR0tHe0FM0dW28ZJeeP1Rma+R3C2
         bFXX9gQINXYDcqszuy6jNvrxqnA6LK7ij66MY3YoWQJEI2ZH5yXaxsARQ3MvjEAlag/u
         2xymilLgnyhL3otM6/Ka1uucmB4s7pnUbl2TNbaZwCkTkab6ePMDpaPGPGZrueV0wv4Q
         jKu/uoyk72JL8CmFvvLpATwjodJVgpi6WCaxwhvtJmvBI+b44IdeuwTbyVykuOiZu2z3
         g7Jdg8kyz5Kr3DfwSHyxA6rysor2YVPuNCoX++MUWDfau0T6Sfc7RpoageR7IE10X8+U
         LyJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NCnqQJa8+kgx8s1UaA49xSGGNU5wUOH7gzw3WwIM6/w=;
        b=UpOrMAelMp5JjdFgHW5WJrAH3bN3iVD0U27hdmQzOYaj8J4fIYPOXHLsCezqwTiTpT
         XmMrdCfrwLvOS3v61o13BvLKoq5QhQF9xkkx48ogSRWsesPz3s+Wg2pwgANMdX73S2M4
         dvskvbwoYzZJDaOtCymcwOqoy1kF275DG5zoK+Eac+3rfopfnRGVDZMniYd8T4hAnqHO
         oCd3dsLbP3i173FdNUkAWIJACej8uM0xAAsfk23df/Z4V6vkwPaHURx+WAf9NOfSKTM/
         DBI0cS8lXDrSmYiNDjEadyNfuYb1Tit+uHHhCberlWm5x/YWeasseyMJCuDJ7robvNH8
         pHVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CTJyl2n3;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com. [2607:f8b0:4864:20::d33])
        by gmr-mx.google.com with ESMTPS id mv5si932749pjb.0.2020.03.08.03.55.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 03:55:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) client-ip=2607:f8b0:4864:20::d33;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CTJyl2n3;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd33.google.com with SMTP id v3so336486iom.13
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 03:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NCnqQJa8+kgx8s1UaA49xSGGNU5wUOH7gzw3WwIM6/w=;
        b=CTJyl2n31hkn/wZWVK94Ygga+kYw9f5Tc9dkAxEK7ciK4kZbyQGeM4jQK/6Bj+3rbF
         +7DKaCzLW+CrD0KRnN7U8EkupitjuOZ9ErJooK9xhdml2xtKl6iQs2s2J25NmR1bSktl
         pIucd7Mr4KxjrUttDyUmTTBAAjnUQ8zQ0NY2gCtnct7Ckb2XJs94GrrhXSXFZD3NSACk
         TsJeJYxvg58W8Sd5jwz3J7Qpu1d1JNUP7CSrhNkZd6U+s48mER8z7d2vuXmB/Xu0LoCf
         vC2BGRsOKE1JfWSPfdWnqmcBW1fce3b0ZFyYrWzdH+srmVDqWBNTdewURo5XzE2ec9w1
         iVow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NCnqQJa8+kgx8s1UaA49xSGGNU5wUOH7gzw3WwIM6/w=;
        b=VQbFWXch3rx2LBrQSUfflTJ4oBeaTS8Ha5qos9HXq+X9v5kvZLW2RlB7KDaHOOqsRe
         7a2EOOVVYc1a9n5cQDY0RcbP/0Av+OXfwuMHvIDq4ULgVghG7ab/iYsnHITqwk/CXmuN
         uz/UtoRTFoX03IGyLTE0p/0eBDzEdbDWzA1QMffTrcvf5varmTXn6KkPxhlNl+Ays9g6
         BjkG7wI4irSTBbtFrxrXj3Cu1ySJZBsJsn030kF7c6ujZWoCj7orTmyGwEOq760Ndbjl
         ITUYAr4SVhpLpxwI9ALxACXVjXEI2Umsj8IBTjH9lpoJ/5lGCaOdvFEq9+b6Y8QTdOiD
         qoXA==
X-Gm-Message-State: ANhLgQ1QXB+0DoJZL+cfghYXIm5YOMemo+xi7XYzUI2yNTUieZiAEXDR
	N07pbSrgMZKnQJsSUhX/Qwnr/uyHR3SJaasyEvwyeA==
X-Received: by 2002:a05:6602:cb:: with SMTP id z11mr9501438ioe.57.1583664934847;
 Sun, 08 Mar 2020 03:55:34 -0700 (PDT)
MIME-Version: 1.0
References: <CANTOzWF=FTWsMtRXZnvPZAkLAkOPqJ9bpXtHPeD6OH00a1ZkUQ@mail.gmail.com>
 <alpine.DEB.2.21.2003081131500.2400@hadrien>
In-Reply-To: <alpine.DEB.2.21.2003081131500.2400@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 8 Mar 2020 16:25:21 +0530
Message-ID: <CANTOzWEcf5_WQKtDMvtHo1JHjqhiOv8q_7CU-okrCOWOsbH=gg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Sending patches using other Email address?
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000e2882105a055b91f"

--000000000000e2882105a055b91f
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 8, 2020, 4:04 PM Julia Lawall <julia.lawall@inria.fr> wrote:

> On Sun, 8 Mar 2020, Payal Kshirsagar wrote:
>
> > Due to some security issues with my email ID(The email address which is
> > associated with my outreachy account) I am not able to send patches
> neither
> > using mutt nor git send-email using that email ID.Can I send patches
> using
> > other email ID and record those patches for the outreachy account having
> > different email address?
> > Will those contributions be considered or not?
> >
> > Please help:)
>
> I don't think it matters at all about what account you used to sign up
> with Outreachy.  If you are at all concerned, perhaps there is somewhere
> in the application (I have no idea what it looks like these days :) where
> you can explain about the different email address.  But I believe that you
> just attach links to show your contribution.  The email address is not
> part of that.
>
> julia
>

Cool, thanks:)

>

--000000000000e2882105a055b91f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sun, Mar 8, 2020, 4:04 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawal=
l@inria.fr">julia.lawall@inria.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On Sun, 8 Mar 2020, Payal Kshirsagar wrote:<br>
<br>
&gt; Due to some security issues with my email ID(The email address which i=
s<br>
&gt; associated with my outreachy account) I am not able to send patches ne=
ither<br>
&gt; using mutt nor git send-email using that email ID.Can I send patches u=
sing<br>
&gt; other email ID and record those patches for the outreachy account havi=
ng<br>
&gt; different email address?<br>
&gt; Will those contributions be considered or not?<br>
&gt;<br>
&gt; Please help:)<br>
<br>
I don&#39;t think it matters at all about what account you used to sign up<=
br>
with Outreachy.=C2=A0 If you are at all concerned, perhaps there is somewhe=
re<br>
in the application (I have no idea what it looks like these days :) where<b=
r>
you can explain about the different email address.=C2=A0 But I believe that=
 you<br>
just attach links to show your contribution.=C2=A0 The email address is not=
<br>
part of that.<br>
<br>
julia<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto"><span style=3D"font-family:sans-serif">Cool, thanks:)</span><br></div>=
<div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>
</blockquote></div></div></div>

--000000000000e2882105a055b91f--

