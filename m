X-GM-THRID: 6391449518367309824
X-Received: by 10.46.22.16 with SMTP id w16mr1763845ljd.8.1488207818041;
        Mon, 27 Feb 2017 07:03:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.139.82 with SMTP id n79ls1186014wmd.19.gmail; Mon, 27 Feb
 2017 07:03:37 -0800 (PST)
X-Received: by 10.28.196.130 with SMTP id u124mr445804wmf.19.1488207817238;
        Mon, 27 Feb 2017 07:03:37 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x236.google.com (mail-lf0-x236.google.com. [2a00:1450:4010:c07::236])
        by gmr-mx.google.com with ESMTPS id h198si780019wmg.1.2017.02.27.07.03.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 07:03:37 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::236 as permitted sender) client-ip=2a00:1450:4010:c07::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::236 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x236.google.com with SMTP id z127so34400382lfa.2
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 07:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=YuHxAAGPEsZOra2ejMA9715nBA+vHfIvKlRf5Hl7ECs=;
        b=d08TcLuEZ03r8qE+pyTxIddswWQCeopFvxLo+b4nw4Kgkobr7KGzo7drZV0VWKZyN7
         xz1vcaPycqQChtha8imy54woDK//gIaqU7vLC6I+QibYVDd+Mt9qMgiMXHHK0+UrpQbB
         oCMpubcDvWnkMGSpHtyqAgGL8I6N0eUNB+iW8Y/Yd/3LLWJdELlhmiyyphTq7Dwy1TdC
         CMl9BX3mADOHl/CNda7Pwno9mvbuDYggFIsVleQZUGeTI6l6in14V7X1+bkFdZIwnFY+
         qzxRE1tDisMA1hodWLAqkrH13E9CLB3OWJ+Hdls2hTq2+kN+Y1ELiD9sCzmdiCaKkdif
         0kqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=YuHxAAGPEsZOra2ejMA9715nBA+vHfIvKlRf5Hl7ECs=;
        b=PyCaKZeK+fAMtTcLnZkR2wPUmThJUQkTDhtyi+ZhLWZRAqjlj5lEghv4KvQTQzv+uV
         7PIlYF4ycuM+V/j1z8kBU77ylSnqLZQshxi4Xxrv7XinJ3CvVPihwVqEVA1BfaWnXIw2
         wwTR7yB876oFNeTnC6KrbFCCyhY5l1UyOrO2JGkm+ASuSigOiXACFfStcHQ8JcglGBiw
         0lh5TTVxC6cf+ekzJACmWsmStRxHi1PmY4BV+okXTnIIE2qIswMZxceK6GW0C9AGlu1z
         mwSf3Fj3SThBwurbA8/BowCnZ3d0JrEcQAhmLCLcO99RZV66WPaPPNvoJjTUGTr2Edzb
         n3rw==
X-Gm-Message-State: AMke39krB2lW880RkcQmLUeqbdfcWmZMaCLaN12ZBvapjV0N46aRLG06WS3vFHDtyW/WZcf/rz7TvVtOA265Jg==
X-Received: by 10.25.17.153 with SMTP id 25mr4910916lfr.39.1488207816983; Mon,
 27 Feb 2017 07:03:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.151.142 with HTTP; Mon, 27 Feb 2017 07:03:36 -0800 (PST)
In-Reply-To: <20170227144852.GA24465@kroah.com>
References: <20170226160820.GA20046@arushi-HP-Pavilion-Notebook> <20170227144852.GA24465@kroah.com>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Mon, 27 Feb 2017 20:33:36 +0530
Message-ID: <CA+XqjF-7SfgGkcHGhraz2R=8qV4Vgqiky+u+qSJNTMGr__JnTg@mail.gmail.com>
Subject: Re: [PATCH v2] staging: ks7010: remove code in comments.
To: Greg KH <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com, 
	linux-kernel@vger.kernel.org
Content-Type: multipart/alternative; boundary=001a1140379e488cf105498462e4

--001a1140379e488cf105498462e4
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 27, 2017 at 8:18 PM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Sun, Feb 26, 2017 at 09:38:20PM +0530, Arushi Singhal wrote:
> > Commenting Code Is a Bad Idea.
> > Comments are their to explain the code and how the code achieves its
> > goal and as codes in the comments  does not explain what the code is
> > doing so there is no use of commenting them.
> > So in this patch codes in the comments are removed.
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> >  changes in v2
> >  - subject lines is made short.
> >
> >  drivers/staging/ks7010/ks7010_sdio.c | 4 ----
> >  1 file changed, 4 deletions(-)
>
> This patch does not apply against my staging-testing branch :(
>

why?
Arushi

--001a1140379e488cf105498462e4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Feb 27, 2017 at 8:18 PM, Greg KH <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfounda=
tion.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On Sun, Feb 26, 2017 at 09:38:20PM +0530, Arushi Singhal wrote:<br=
>
&gt; Commenting Code Is a Bad Idea.<br>
&gt; Comments are their to explain the code and how the code achieves its<b=
r>
&gt; goal and as codes in the comments=C2=A0 does not explain what the code=
 is<br>
&gt; doing so there is no use of commenting them.<br>
&gt; So in this patch codes in the comments are removed.<br>
&gt;<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 changes in v2<br>
&gt;=C2=A0 - subject lines is made short.<br>
&gt;<br>
&gt;=C2=A0 drivers/staging/ks7010/ks7010_<wbr>sdio.c | 4 ----<br>
&gt;=C2=A0 1 file changed, 4 deletions(-)<br>
<br>
</span>This patch does not apply against my staging-testing branch :(<br></=
blockquote><div><br></div><div>why?<br></div><div>Arushi <br></div></div><b=
r></div></div>

--001a1140379e488cf105498462e4--

