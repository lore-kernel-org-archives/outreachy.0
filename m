X-GM-THRID: 6664067951305424896
X-Received: by 2002:ac8:1997:: with SMTP id u23mr3773796qtj.11.1551865845597;
        Wed, 06 Mar 2019 01:50:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:21c5:: with SMTP id 5ls461303qtz.1.gmail; Wed, 06 Mar
 2019 01:50:45 -0800 (PST)
X-Google-Smtp-Source: APXvYqzvtDKhk/gd5NInYscEiBb1GLjlDCOunKrxt3NgWQPZXtquzW368iL9lW/xUgN/KGrglmgq
X-Received: by 2002:ac8:3f50:: with SMTP id w16mr3601803qtk.25.1551865845014;
        Wed, 06 Mar 2019 01:50:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551865845; cv=none;
        d=google.com; s=arc-20160816;
        b=W/4nO113h8iQt7KtNjNoBGHq9rpChtyYtBABRSfbigIqXw2UoGp9QfCf2tlf1FK8Er
         ts7eY8IUYBrJmktLxGX8np3ykvoHDAG9Mp2Hg9ZM963/J6WQEbWdyY2iWXnyHkqle/09
         fognz74gw3/l4VcDjhf/lfbVo/xeQBJ5kmalHnqyK6cTUiLz9o/8nBwIbb5jCT/fYTii
         mKMYexLxvaw3yfEBj1lr5qn3W1w8oB3qK2s3w3L91jfGWhkNw4+3+gPjylzUf0izgUSj
         RQhojloP8EqsUALnrzDjUajTBFbPqUoyqEdNgzRZ5usPxo/tk167zMECW+g2GE8TnM99
         Qq2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=2p0KrIpcTtaKiEnCJutfROydfssyiiHa3Rt+Vh8mGQE=;
        b=Ja8mxHZi79Mh3OXbu7oj7GekJJXS7Z6uTkMvFRplZq/MUiTYa21tfWOPbq/5FmR742
         vzcSYXslizjjGSVAVTMaBn1zUQldRhvUHz84OXb3Si2P26uo7zo/qdCZiTHbaXSIuzyi
         njXSDJ1r9lB6Gt8qsP5+R56Ex5CvbFHjbKq35iR2LFiwM3bbwRLbfYoDe/f8bV6//HVO
         EV9FMC4CkzNQaOUk5IheD1uC7SaEs+cfySyp3c91aOsfTU41lngl+QJqbQ3uFsGAs5MZ
         jqe6awjWUckmFmEc6MjfG4AjNrdEIqowUsPd0qej6R4tzpxJ5h/49AFKcLnorttXxmF/
         e8lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=djCZpG4m;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id a3si70032qtc.0.2019.03.06.01.50.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:50:45 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=djCZpG4m;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id j10so9311907oij.13
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 01:50:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=2p0KrIpcTtaKiEnCJutfROydfssyiiHa3Rt+Vh8mGQE=;
        b=djCZpG4m7n6KVCqXXVQlgiu6YoYH7Bx0BwxER2ThmXUTDWZvRnQPaWJv3rkLCNdFYy
         q58EWTEg80G5lqVAfN0O4JQ78bfI3qCXKF14n9PHVdiYxhFuiaOr1YHf02kt2aO0FwE+
         wKTUc2lf7estGseQIy97d3n8j6c/zZxCKkWlzx7frFttfMX7+n6Lwhue5xOmsG1uFhiR
         SKA1el8PW/4HyocQ3gemcGcDyjfklMBx/J5M7SkAYOguLEV5m8d00qP540S851NPcrpf
         /2CgpfYOjmii6CpsHNqYqxaChT7pm9LH2yMuTC/+2Dkq/SbTuUZqHVRvFdiYQ9cOgmJ4
         GFgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=2p0KrIpcTtaKiEnCJutfROydfssyiiHa3Rt+Vh8mGQE=;
        b=Eu63C9S2Y3CpGflLjzI2/zt7AnpAbrCh79vnS1K8tBJBtYnbP7tX5/sCz6Is8Doceb
         DelLfP7ozUq6SBTrXFSki58/TOWNqb/O5wnjRBwMP1fENGWM/TNqHSoE/tdtsrAihX09
         wctI4k5L8OywMu5TEFpihMnuCBy7rGa/q4RV0CLdvWrCMwY4WvHKSHS3whnJt/5fNc9C
         gBVFHr0PHmhy8RGjkJUCdLNPh1afj6J8vSOreQLfV0Az6HKimiyC9jRW9/ck5bkfEBX1
         y3cOKlQQtWnow9h5qX35PcXybfXSlz++b3FzKHH7SXXBhjVSfr/1KbjY4gguoeJJctXQ
         2J/Q==
X-Gm-Message-State: APjAAAUe5fg2AXvF3PJ/gyIhYlpmBVZYE67C5PCaq+TmThF7QdLyrR1b
	9M9G3IyuzEQHrmxgk/SReuJPahaF9jgiz1g0UzfRubH3
X-Received: by 2002:aca:c0c2:: with SMTP id q185mr1089142oif.118.1551865844579;
 Wed, 06 Mar 2019 01:50:44 -0800 (PST)
MIME-Version: 1.0
References: <1551805986-49458-1-git-send-email-idebleenasen@gmail.com>
 <20190306091521.GD7927@kroah.com> <CACw+u4GRhRY5kgjQgd-sYOLp4nfHU-tp_oKfK74i+QR7cnWQNg@mail.gmail.com>
In-Reply-To: <CACw+u4GRhRY5kgjQgd-sYOLp4nfHU-tp_oKfK74i+QR7cnWQNg@mail.gmail.com>
From: Debleena Sen <idebleenasen@gmail.com>
Date: Wed, 6 Mar 2019 15:20:33 +0530
Message-ID: <CACw+u4FaS0PDoxh2urUrqgBfRJWD7qY7xchgVEaKLZ06PD6a+A@mail.gmail.com>
Subject: Fwd: [PATCH] Staging: pi433: Fix line over 80 characters issue
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000067c1af058369ec36"

--00000000000067c1af058369ec36
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ---------
From: Debleena Sen <idebleenasen@gmail.com>
Date: Wed, Mar 6, 2019 at 2:54 PM
Subject: Re: [PATCH] Staging: pi433: Fix line over 80 characters issue
To: Greg KH <gregkh@linuxfoundation.org>


On Wed, Mar 6, 2019 at 2:45 PM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Tue, Mar 05, 2019 at 09:13:06AM -0800, Debleena Sen wrote:
> > Break the lines after '&' and match the alignment with '(' to remove the
> > checkpatch.pl warning. Remove whitespace after '&' if any.
> >
> > Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
>
> This has the same subject line as your previous patch, yet does
> different things :(
>
> Please resend them all, as a patch series, with unique subject lines.
>
> thanks,
>
> greg k-h
>

Actually in pi433/rf69.c there were like 16 warnings of the same type. In
my previous patch I had fixed only one warning. In this patch, I fixed all
of them. They have the same styling issue and I did the same thing on all
the lines. So I thought to put the same subject because essentially all of
them are same.

Debleena

--00000000000067c1af058369ec36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>From: <strong cla=
ss=3D"gmail_sendername" dir=3D"auto">Debleena Sen</strong> <span dir=3D"ltr=
">&lt;<a href=3D"mailto:idebleenasen@gmail.com">idebleenasen@gmail.com</a>&=
gt;</span><br>Date: Wed, Mar 6, 2019 at 2:54 PM<br>Subject: Re: [PATCH] Sta=
ging: pi433: Fix line over 80 characters issue<br>To: Greg KH &lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt;<b=
r></div><br><br><div dir=3D"ltr"><div dir=3D"ltr">On Wed, Mar 6, 2019 at 2:=
45 PM Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_=
blank">gregkh@linuxfoundation.org</a>&gt; wrote:<br></div><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, Mar 05,=
 2019 at 09:13:06AM -0800, Debleena Sen wrote:<br>
&gt; Break the lines after &#39;&amp;&#39; and match the alignment with &#3=
9;(&#39; to remove the<br>
&gt; <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_blank">=
checkpatch.pl</a> warning. Remove whitespace after &#39;&amp;&#39; if any.<=
br>
&gt; <br>
&gt; Signed-off-by: Debleena Sen &lt;<a href=3D"mailto:idebleenasen@gmail.c=
om" target=3D"_blank">idebleenasen@gmail.com</a>&gt;<br>
<br>
This has the same subject line as your previous patch, yet does<br>
different things :(<br>
<br>
Please resend them all, as a patch series, with unique subject lines.<br>
<br>
thanks,<br>
<br>
greg k-h<br></blockquote><div>=C2=A0</div><div>Actually in pi433/rf69.c the=
re were like 16 warnings of the same type. In my previous patch I had fixed=
 only one warning. In this patch, I fixed all of them. They have the same s=
tyling issue and I did the same thing on all the lines. So I thought to put=
 the same subject because essentially all of them are same.</div><div><br><=
/div><div>Debleena=C2=A0</div></div></div>
</div></div>

--00000000000067c1af058369ec36--

