X-GM-THRID: 6883926801253400576
X-Received: by 2002:a05:651c:96:: with SMTP id 22mr1107399ljq.76.1602837902744;
        Fri, 16 Oct 2020 01:45:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:84c1:: with SMTP id g184ls922530lfd.3.gmail; Fri, 16 Oct
 2020 01:45:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJygfCdftP/xTsr5IL1jN4AstyX/JyO1NQRj1BHl88DCC3I/XfmX/ekaSo1B1pYpIqw9Q9ve
X-Received: by 2002:a19:87c5:: with SMTP id j188mr999769lfd.386.1602837900418;
        Fri, 16 Oct 2020 01:45:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602837900; cv=none;
        d=google.com; s=arc-20160816;
        b=AG/HdXwBSZDuEBqzNNqp2cLRDvlOyPCBEgOj4VNgbPWS57Y/QSXtz6oQrQAOeFXzsx
         3psX1Cax6cbpMt+nQSbMnlTnms/R7OnDtyc/T5bKYrlBusdiAh3Yh4/DZg6Vi3dGfgmX
         8TqO6c16RnoekTO7fGJGRBkGBCBluQXWbXNnqTtSXfqNTbzo4I/LVHHSTCIdd2slWbvI
         PQrCAbaEEjyC9xfiTR7rD/zCrOIRSUyaoyFukHRXHtC61Y8cTWlVRB6u0jen09W7y4qA
         T3j5N+NPDVt1pUaHZxcgh6Sk36j81aAm5dcB/R9kByGExVPEtPB5/uYG4Gpkhd0AQNUt
         KA/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5pcfU6xSb0rMSSCXWIZEOegOhfG35jApHhNK3gl5C+M=;
        b=hBP3bmTWbQwoS5OYB4Z0S4s0Fqa7wPHPU6Enh5e8737Wnal0PV1AcDKqbUK7PW/l7D
         U4+3LZGkGN9xU14tvSyimsekCVpC4opGkV6vMpMpBuUURZBdB6wmtDInRxCSeXX5qyXS
         BpuEUkGXiqXIL8q9zwutMxlDQEOBoPRWOkkglv5pEdLwb6M53D3Med5zkiRWTulr32s6
         /ejCG/XTEmJ4ORLJFzeaHmG556vonmTvwMrk5ER9bhCzmaJ8JDbM9HbcsDuvN2q4cGWs
         lkJAG4eQYTI74QOMqph5Fzkga+XnaZNl/5b8xuiZkOHN/hvxHFLcnh8gAJRgtKoC0NlM
         c+zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ULrOH9o3;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id i16si45244ljj.3.2020.10.16.01.45.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 01:45:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ULrOH9o3;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x644.google.com with SMTP id p5so2007528ejj.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2020 01:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5pcfU6xSb0rMSSCXWIZEOegOhfG35jApHhNK3gl5C+M=;
        b=ULrOH9o3htAih+ASlnRZAPIvx/lWJwyJM/N4LKx5TkiD0iXi9a5yZn9DMJFgB0ewGl
         SCZcTaFKs9X0XeeMgwA/jdqYc9UWfXXyXUabQ3QeH91wB6ShTghpGh0wHwpxtkikStyp
         SkYS8pKzmtTrs5zFD0v/55DM7MI9bJn1BCJYG8E5LTqxyZ9WCXMYJqhhqjS0KCKxgJrC
         YoawF3G1kmxWXnqSb7hlLcfFp+2BAjoxXzm5/4xZECCxi0N+A4ymKUglkqNSVpaNourI
         zqS8WH5ONI5VdCLPsKIAgZLVTRKN1Itu3KQ6r9kUcZGK0t0Smm8Ev5dJlkr4xyoCFeGZ
         L+eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5pcfU6xSb0rMSSCXWIZEOegOhfG35jApHhNK3gl5C+M=;
        b=MTSMCv7cN/x5smoZoWvA2VY+TBs93+bFAH9/yFyJZoadfJCzP1PA7SJ6cgT8qP+Uuc
         d1tdY8ZS6h5MjSz+CIlgiDClAPgv4tmGgzmaPOZkXrhylrA7UIay3PJMDlNVebADkwpy
         4HrtObHJNufdpOqvanyv4xVJtqPRVWf86In369ZN9503eultuK4HtBXNvvqipYUE5nT/
         /mpkdENW8oHyzix6RFHnEjmtAOaYR3bBeVtFAVKP1FBeRGO0MUUWksYzAWFdZdur+EUa
         NIoxUFjeXmlIL00wnuBmNLyOzZZlX1fxrZoArJYVxP27JHERIs2sQNKJz7i06JHitjP0
         14uA==
X-Gm-Message-State: AOAM533oBPeNa3klCzihvrG77s6j6B+trhRpmy9xKYbmcGwCDk+L2HJr
	z4z1zhDeIU+IhrEm/ESLYwJdMWIaARGEWRMLYlHLmz9kbI0=
X-Received: by 2002:a17:907:68c:: with SMTP id wn12mr2581384ejb.202.1602837900009;
 Fri, 16 Oct 2020 01:45:00 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1602767114.git.sylphrenadin@gmail.com> <20201015192157.GC20115@casper.infradead.org>
In-Reply-To: <20201015192157.GC20115@casper.infradead.org>
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
Date: Fri, 16 Oct 2020 14:14:04 +0530
Message-ID: <CACAkLurjsPmgxOP_L8w2UrXd8+3etx8MmBKrfQDAd8BFu_Dxug@mail.gmail.com>
Subject: Re: [Outreachy kernel] [Outreachy][PATCH 0/3] staging: Replace
 snprintf() with scnprintf()
To: Matthew Wilcox <willy@infradead.org>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000a9a6b905b1c5c76c"

--000000000000a9a6b905b1c5c76c
Content-Type: text/plain; charset="UTF-8"

On Fri, 16 Oct, 2020, 12:51 AM Matthew Wilcox, <willy@infradead.org> wrote:

> On Fri, Oct 16, 2020 at 12:41:42AM +0530, Sumera Priyadarsini wrote:
> > The show() methods in device attributes should return the number of
> > bytes printed into the buffer which is the return value of scnprintf().
> > snprintf() returns the potential number of bytes that could be written
> > which may be greater than the actual length to be written.
>
> There's a big patchset just gone into 5.10 yesterday which adds a new
> sysfs_emit() for show methods.  You probably want to use that instead
> of scnprintf().
>

Thanks for letting me know! I will revise and send a v2.

regards,
Sumera

>

--000000000000a9a6b905b1c5c76c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, 16 Oct, 2020, 12:51 AM Matthew Wilcox, &lt;<a =
href=3D"mailto:willy@infradead.org">willy@infradead.org</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">On Fri, Oct 16, 2020 at 12:41:42AM +053=
0, Sumera Priyadarsini wrote:<br>
&gt; The show() methods in device attributes should return the number of<br=
>
&gt; bytes printed into the buffer which is the return value of scnprintf()=
. <br>
&gt; snprintf() returns the potential number of bytes that could be written=
<br>
&gt; which may be greater than the actual length to be written.<br>
<br>
There&#39;s a big patchset just gone into 5.10 yesterday which adds a new<b=
r>
sysfs_emit() for show methods.=C2=A0 You probably want to use that instead<=
br>
of scnprintf().<br></blockquote></div></div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Thanks for letting me know! I will revise and send a v2.=C2=
=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">regards,=C2=A0</div>=
<div dir=3D"auto">Sumera</div><div dir=3D"auto"><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
</blockquote></div></div></div>

--000000000000a9a6b905b1c5c76c--

