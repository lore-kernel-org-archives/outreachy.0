X-GM-THRID: 6527539355129479168
X-Received: by 10.80.149.230 with SMTP id x35mr5267975eda.3.1519811189573;
        Wed, 28 Feb 2018 01:46:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.202.5 with SMTP id d5ls1933887edi.8.gmail; Wed, 28 Feb 2018
 01:46:27 -0800 (PST)
X-Google-Smtp-Source: AG47ELt0G7XEjD/9KvqOFOHE8TCKTf4xRQdVOj6qco7t7ZkkRnm6lXbNxGYVMleLYIC6AwW5nWnR
X-Received: by 10.80.232.139 with SMTP id f11mr3540065edn.5.1519811187709;
        Wed, 28 Feb 2018 01:46:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519811187; cv=none;
        d=google.com; s=arc-20160816;
        b=Yir84vEIRAJp8dG8kx9AuigFwNGAJNE34Odcsh/kYjr/ji5HA9J+bxz04GA6m8uhPy
         QX4aBFu8YBVVTG408dWzzN9wsv9VIAHlgpyeEdjpKCKHB1M5GLOhIp2Kwr+qW5JQDUiI
         mwLaZTjHfNK5kI7vGgIXodFCAUSYBxbAj6oxO4EvdeSvSaTyMWX/9x/W4zfAScDTMVeD
         LeWLS1junqKjEbQpSlam/5omxXsSE/Pw/ajHX4yt8QD1o63aq+EaEDS4V8oR0SUO+hHv
         IFSfhRv++PMPnGqr8brZqPbV9m14IGkGKlUNG172vCYsuZakOWJbFXZxU7tnehm4VYt8
         qaZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :arc-authentication-results;
        bh=VIStQZlBaZT8CzrLpQYCxqv0RPYxNc7tewqR3tDgFNA=;
        b=KBBfDzbP/gz9KsG3dTX8cC1H2dwTx+YH30978aKXf/fu+IeIIkSrujbNXaJ8PgNDvh
         aPvNysCbqsOCykgD1iWqjyV4tROekRZ+j3HJyUldXz06NdkzEHy3xw1RyJIyHiNFoZAV
         DzD6VpkQKb9oHO386z2IIAh14Z72u2aulQZWVGBxroCsWHUI9JeEr1guGvvEsCXK1tnH
         kpZ1FxxmFAx5wCjvWnNe4zR0xt1pdOLstexTpSVN1+usjl+PscO9RFfjWDAMb/E3lOr0
         1xnZhs1N9I0yRKsFWITqQR9cWjbH/BXmEPAh9U6SJzyIqkxdM3rG6pn165vAwdLVVauA
         KVoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hygGttvK;
       spf=pass (google.com: domain of shreyasirao97@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=shreyasirao97@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreyasirao97@gmail.com>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id f20si61651edm.5.2018.02.28.01.46.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2018 01:46:27 -0800 (PST)
Received-SPF: pass (google.com: domain of shreyasirao97@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hygGttvK;
       spf=pass (google.com: domain of shreyasirao97@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=shreyasirao97@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x236.google.com with SMTP id s206so25457200wme.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Feb 2018 01:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=VIStQZlBaZT8CzrLpQYCxqv0RPYxNc7tewqR3tDgFNA=;
        b=hygGttvKCNO6/9Ptnn2djSBG0BfAawUZquNGluJv/xdAfiOAZP9oP48FUAJxcMUyhK
         o4Bhvh0jBzBaxdBn2+mP1FYe3pvBeDurDkFpABpv9icGmYJ4yOKn+wlviERe9LI3o/o5
         TFZQN2hMSWnMhgspS9lwfbphIBXNSTZ1dKOnharccm8vGBkCMGK2w5yxB6FGh16Qz8Vh
         d9u//FGMpxNKhTl3ZUN3ylasuHeUSm8aum76jtWIzMgn05FRsOzNQ0XlolOflCX20LY+
         UqSpv/W7ZTXLWg2rq1az1KT/53j6tJuXtsvY47Zc68eNCjkRSinRPLW5pbbrUDXYvzPQ
         cdwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=VIStQZlBaZT8CzrLpQYCxqv0RPYxNc7tewqR3tDgFNA=;
        b=VWKM9Fh2Lf7rC7TfZICB5oiD2Qm+TVAMmfn/naGlcdCuaCah66j9kJ7ELZFvKUCdXa
         2WjKMAqToxbeNnNVTuw0FgWlntlCnxVCRl87l92oeVMad0PKFLUi9TcfnTDV0iuqkfVo
         ARYVmZyq79IHuOuH5AOVz1TG00vDQf2biiv0mkI6HYuhKYXNXyc0Ssd0uO0IZP7gFu64
         TpCsrxLHEMXTXI+6Hxra78qz+eB8xX+WLm6PeapH4Bekf1fYsWLPtn12CVLiXvk6IE7b
         HGuQp2a0+5M7cbwbySmcxOZJDnsupBxp7b4PKKfqCfeHBtAxirvht0AdS0+zbtbtwFkE
         UFkQ==
X-Gm-Message-State: APf1xPClgKcuAZLPtLBqwaUhRZ/W9qPB6SR6TTcmTPYsVNnZD1yxQT1G
	2m4eWBLQiFXz1v534+gTbBPMlhDd5XV1ey2RDIr2jg==
X-Received: by 10.28.237.23 with SMTP id l23mr14360359wmh.113.1519811187055;
 Wed, 28 Feb 2018 01:46:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.108.2 with HTTP; Wed, 28 Feb 2018 01:45:56 -0800 (PST)
From: Shreyasi Rao <shreyasirao97@gmail.com>
Date: Wed, 28 Feb 2018 15:15:56 +0530
Message-ID: <CABwYNcWn2bj=fN4dyCopd74W7dP7mNC6PNj_urzJ_Vc23TgGnQ@mail.gmail.com>
Subject: post commit hook
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="089e0827d214ee20a90566429d2c"

--089e0827d214ee20a90566429d2c
Content-Type: text/plain; charset="UTF-8"

In the .git/hooks folder I found that there was no post-commit file or
post-commit.sample folder so I used mkdir and touch to create the file. But
when I edited the post-commit file with vim
.git/hooks/post-commit.sample/post-commitit gives me the following error

.git/hooks/post-commit.sample/post-commit" E212: Can't open file for writing
If you could please help me with this, I am very new to git and waited a
little too long to ask for help.

--089e0827d214ee20a90566429d2c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<p style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:in=
herit;font-variant-east-asian:inherit;font-weight:400;font-stretch:inherit;=
font-size:15px;line-height:inherit;font-family:Arial,&quot;Helvetica Neue&q=
uot;,Helvetica,sans-serif;vertical-align:baseline;box-sizing:inherit;clear:=
both;color:rgb(36,39,41);letter-spacing:normal;text-align:left;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px;background-colo=
r:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:init=
ial">In the<span>=C2=A0</span><code style=3D"margin:0px;padding:1px 5px;bor=
der:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-st=
retch:inherit;font-size:13px;line-height:inherit;font-family:Consolas,Menlo=
,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu=
 Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quo=
t;,monospace,sans-serif;vertical-align:baseline;box-sizing:inherit;backgrou=
nd-color:rgb(239,240,241);white-space:pre-wrap">.git/hooks</code><span>=C2=
=A0</span>folder I found that there was no<span>=C2=A0</span><code style=3D=
"margin:0px;padding:1px 5px;border:0px;font-style:inherit;font-variant:inhe=
rit;font-weight:inherit;font-stretch:inherit;font-size:13px;line-height:inh=
erit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Lib=
eration Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans M=
ono&quot;,&quot;Courier New&quot;,monospace,sans-serif;vertical-align:basel=
ine;box-sizing:inherit;background-color:rgb(239,240,241);white-space:pre-wr=
ap">post-commit</code><span>=C2=A0</span>file or<span>=C2=A0</span><code st=
yle=3D"margin:0px;padding:1px 5px;border:0px;font-style:inherit;font-varian=
t:inherit;font-weight:inherit;font-stretch:inherit;font-size:13px;line-heig=
ht:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&qu=
ot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera =
Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;vertical-align=
:baseline;box-sizing:inherit;background-color:rgb(239,240,241);white-space:=
pre-wrap">post-commit.sample</code><span>=C2=A0</span>folder so I used mkdi=
r and touch to create the file. But when I edited the post-commit file with=
<span>=C2=A0</span><code style=3D"margin:0px;padding:1px 5px;border:0px;fon=
t-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inher=
it;font-size:13px;line-height:inherit;font-family:Consolas,Menlo,Monaco,&qu=
ot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&=
quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,monospac=
e,sans-serif;vertical-align:baseline;box-sizing:inherit;background-color:rg=
b(239,240,241);white-space:pre-wrap">vim .git/hooks/post-commit.sample/post=
-commit</code>it gives me the following error</p><p style=3D"margin:0px 0px=
 1em;padding:0px;border:0px;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-variant-numeric:inherit;font-variant-east-as=
ian:inherit;font-weight:400;font-stretch:inherit;font-size:15px;line-height=
:inherit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;=
vertical-align:baseline;box-sizing:inherit;clear:both;color:rgb(36,39,41);l=
etter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial"><code style=3D"margin=
:0px;padding:1px 5px;border:0px;font-style:inherit;font-variant:inherit;fon=
t-weight:inherit;font-stretch:inherit;font-size:13px;line-height:inherit;fo=
nt-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation=
 Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quo=
t;,&quot;Courier New&quot;,monospace,sans-serif;vertical-align:baseline;box=
-sizing:inherit;background-color:rgb(239,240,241);white-space:pre-wrap">.gi=
t/hooks/post-commit.sample/post-commit&quot; E212: Can&#39;t open file for =
writing</code></p>

If you could please help me with this, I am very new to git and waited a li=
ttle too long to ask for help.</div>

--089e0827d214ee20a90566429d2c--

