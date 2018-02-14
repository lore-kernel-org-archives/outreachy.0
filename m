X-GM-THRID: 6522348459882708992
X-Received: by 10.28.184.209 with SMTP id i200mr85217wmf.1.1518607160267;
        Wed, 14 Feb 2018 03:19:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.31.200 with SMTP id f191ls2127615wmf.5.canary-gmail; Wed,
 14 Feb 2018 03:19:19 -0800 (PST)
X-Google-Smtp-Source: AH8x225k4+SeYyWHuh95U9Wx9iIe1HnaDUgcL+T+yhD9u3iA0EDejfBd+3hMOiMs0l+D2HJnroUr
X-Received: by 10.28.129.195 with SMTP id c186mr504430wmd.10.1518607159188;
        Wed, 14 Feb 2018 03:19:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518607159; cv=none;
        d=google.com; s=arc-20160816;
        b=DHfcILTDRO3l4+dHK87xMXb39C373IVgLA7YO/jm4ago2uCMNf+9mdvc86BIVkwgiy
         q0ciEXZMIV4bA398ApCRugznESTn1/N18dpwMrGvc360GVkW8jV/SfW15JLyr+usrxWz
         eeF9Qn05brbhbudg2YRWXdw/6/wpyQhXF+A6J2m4Z5jmIJSRW2Cm+uBg4ypcFw/4T6h+
         ZlGULAB4V+0lWN8XwmLBoMk8h7LKwy0UoGEKbeEoqgdV/TKWflUr8Y6u9AQxTmdiqL8q
         dU+FWggg9dX+Vhwyoz1LHgwFSOmJSs3ot+pYLqPhkQ+YLjRu3zmHFZ5+A0HCQ7ONYKV1
         AtMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=+5C5WjLUYkP4hhRFnVz17YehZYG55xKFM96Xg6bx1zo=;
        b=w5r0ChiOzZxqgIDLOMsANiCP7zK4iK2WYU4Tfg7LpDnxj9kxR6rIxxwb0+bf9ymV6Y
         sPur4v4a3BlG0iDgEvIMFjFMrG1tee21JOGKZeMR/uNyJ2CnTSsadJvxIzngvpdY0dZQ
         BBIuXZHQUFYojIVvj4yTCF8upJsPktwFunNxosq5Vc2J+ZBFjh8qBzsi56+l0iP2ZN5Z
         lN6Tuk7x4PqqG9Yn0Tpn4ggyNtu/o9mFocsByKHHUXPx/DYXt9EaiNHu8BMGOIpJus2H
         4TbxwqJILjA03Tc+02h/TeDz7/PgSaLktGf3L5/vB2ygVQhcruQN5HFeBndHHMbMfhrI
         vjhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JH8kMM5H;
       spf=pass (google.com: domain of shreyasirao97@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=shreyasirao97@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreyasirao97@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id q6si675818wrc.4.2018.02.14.03.19.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Feb 2018 03:19:19 -0800 (PST)
Received-SPF: pass (google.com: domain of shreyasirao97@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JH8kMM5H;
       spf=pass (google.com: domain of shreyasirao97@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=shreyasirao97@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id x4so17299921wmc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Feb 2018 03:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=+5C5WjLUYkP4hhRFnVz17YehZYG55xKFM96Xg6bx1zo=;
        b=JH8kMM5HCTZ/V/byHn0AllgEFY2GhzFkxTQhT5YeJySgzxBL/YO5zbW2ajV89wtm+P
         1762JeAHI9PntHWku30jBv2LTaUhUAij4N1pLbqUJ2/SAHIWf3pJz0LOiPdigFsjciue
         9FUlSCkvqgLDYWLXCert/coQO0tYGNqfHEaVYp+k4d7qavRAXFI0vdrs1Nod/UkIxXci
         bxjvEbe+0e15tGIorgbzh7nl+mC67MzxGgd0qNLY2PIRPwUOrWdlQwYEyoB6Atko6CfN
         B0fqZkJyLZ98RkG9Kw/PoG9pA5ZAuN9TAFSkWkGhQjJEcc4wsInPOQxH66gWsUUCU5yR
         LoCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=+5C5WjLUYkP4hhRFnVz17YehZYG55xKFM96Xg6bx1zo=;
        b=pfX9O/ar7Uv8x5zIGHe/VyP0PFJB73N19YXL+TgvTRO7iCYGQrmdQ+X8xt+Z2OnoTm
         DpqcZO58mMJzjKWVt7iATONGrE0gX+5XDdvMcjHoQyE3zgVDL9+UlTAOMpExzdAcQws/
         u3BIcCvriph9mwCsDRj9Bhb9QZ2KDj6GR4XP52GT4aPTm0TFvSjcqLBpmUUazWJ2bK9A
         biqVr9owAGPqmVTZxALvYJXCa70DEbfek4qGhzcK/H7TkUktHnUs0CGhifxZXqyl4wzq
         oKmDEJgJA4f/KnjWi9VmgC02sey8HEkzNKXZFf5TTGrE2bq+2S6nvXVUJemefN88GjWP
         7W3g==
X-Gm-Message-State: APf1xPAKwN80NWP2liaaKjAsrN8f3p03l2MpXmHVIl7iZxSzHasGv6Cs
	k71xlrmscMUp+477XYSlF5kCTEacc3PWZTGtyrA=
X-Received: by 10.28.114.3 with SMTP id n3mr3822638wmc.124.1518607158536; Wed,
 14 Feb 2018 03:19:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.108.7 with HTTP; Wed, 14 Feb 2018 03:19:17 -0800 (PST)
Received: by 10.28.108.7 with HTTP; Wed, 14 Feb 2018 03:19:17 -0800 (PST)
In-Reply-To: <CABwYNcVXBFj=pqj2MnbAHKZMHCpA9P=E2XgwSh5wWRTd+rMRmw@mail.gmail.com>
References: <CABwYNcVXBFj=pqj2MnbAHKZMHCpA9P=E2XgwSh5wWRTd+rMRmw@mail.gmail.com>
From: Shreyasi Rao <shreyasirao97@gmail.com>
Date: Wed, 14 Feb 2018 16:49:17 +0530
Message-ID: <CABwYNcUkyPywK884qpDTmi1JSQWmcW63f2H_TPLz0EzgtWBK_A@mail.gmail.com>
Subject: Re: Compile your changes- Tutorial(make -j2)
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="089e082d12143cecfd05652a48eb"

--089e082d12143cecfd05652a48eb
Content-Type: text/plain; charset="UTF-8"

Yes, I had a problem of broken dependencies. Flex and bison weren't
installed.
Thank you!

On 14-Feb-2018 3:32 PM, "Shreyasi Rao" <shreyasirao97@gmail.com> wrote:

> Hi,
>
> I followed the tutorial upto modifying driver on native linux but when I
> compiled my changes with the make -j2 command it gave me this:
>
>  YACC    scripts/kconfig/zconf.tab.c
> /bin/sh: 1: bison: not found
> scripts/Makefile.lib:217: recipe for target 'scripts/kconfig/zconf.tab.c'
> failed
> make[2]: *** [scripts/kconfig/zconf.tab.c] Error 127
> make[2]: *** Waiting for unfinished jobs....
>   LEX     scripts/kconfig/zconf.lex.c
> /bin/sh: 1: flex: not found
> scripts/Makefile.lib:202: recipe for target 'scripts/kconfig/zconf.lex.c'
> failed
> make[2]: *** [scripts/kconfig/zconf.lex.c] Error 127
> Makefile:507: recipe for target 'silentoldconfig' failed
> make[1]: *** [silentoldconfig] Error 2
> make: *** No rule to make target 'include/config/auto.conf', needed by
> 'include/config/kernel.release'.  Stop.
> make: *** Waiting for unfinished jobs....
>
> then I installed bison and it didn't make the error go away, now I am
> stuck. If you could please tell me where the problem is.
>
> Thanking You,
> Shreyasi
>

--089e082d12143cecfd05652a48eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Yes, I had a problem of broken dependencies. Flex and bis=
on weren&#39;t installed.<div dir=3D"auto">Thank you!</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On 14-Feb-2018 3:32 PM, &qu=
ot;Shreyasi Rao&quot; &lt;<a href=3D"mailto:shreyasirao97@gmail.com">shreya=
sirao97@gmail.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div><div><div><div>Hi,</div><div><br></div>=
<div>I followed the tutorial upto modifying driver on native linux but when=
 I compiled my changes with the make -j2 command it gave me this:<br></div>=
</div><div><br>=C2=A0YACC=C2=A0=C2=A0=C2=A0 scripts/kconfig/zconf.tab.c<br>=
/bin/sh: 1: bison: not found<br>scripts/Makefile.lib:217: recipe for target=
 &#39;scripts/kconfig/zconf.tab.c&#39; failed<br>make[2]: *** [scripts/kcon=
fig/zconf.tab.c] Error 127<br>make[2]: *** Waiting for unfinished jobs....<=
br>=C2=A0 LEX=C2=A0=C2=A0=C2=A0=C2=A0 scripts/kconfig/zconf.lex.c<br>/bin/s=
h: 1: flex: not found<br>scripts/Makefile.lib:202: recipe for target &#39;s=
cripts/kconfig/zconf.lex.c&#39; failed<br>make[2]: *** [scripts/kconfig/zco=
nf.lex.c] Error 127<br>Makefile:507: recipe for target &#39;silentoldconfig=
&#39; failed<br>make[1]: *** [silentoldconfig] Error 2<br>make: *** No rule=
 to make target &#39;include/config/auto.conf&#39;, needed by &#39;include/=
config/kernel.<wbr>release&#39;.=C2=A0 Stop.<br>make: *** Waiting for unfin=
ished jobs....<br><br></div>then I installed bison and it didn&#39;t make t=
he error go away, now I am stuck. If you could please tell me where the pro=
blem is.</div><div><br></div>Thanking You,<br></div>Shreyasi<br></div>
</blockquote></div></div>

--089e082d12143cecfd05652a48eb--

