X-GM-THRID: 6663742329894993920
X-Received: by 2002:a63:2a86:: with SMTP id q128mr3565850pgq.50.1551523415782;
        Sat, 02 Mar 2019 02:43:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:5751:: with SMTP id h17ls4365454pgm.4.gmail; Sat, 02 Mar
 2019 02:43:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqz17BntFjOgY9QE+QcGVXqIIXJt120oZ2nld5iy6JF0k4Hh2BDZqsjF934IicH+Y4dtgYNO
X-Received: by 2002:a62:7553:: with SMTP id q80mr3710358pfc.17.1551523415039;
        Sat, 02 Mar 2019 02:43:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551523415; cv=none;
        d=google.com; s=arc-20160816;
        b=SmdmYkOncHgoNs4ZcJdp/4VfyngtYa9EV6DmhGiqkQws0zGg2PblL2fNrD8J/nPZFF
         ZqIORDuupqvUO4PeTmR9DLieBHDqgRzLc7OMzjNd2eP/hNv2PdljN3NuUUUiYPf7O62Z
         0FFZoKVom0zQnNIDr1Cc98hktPx1vph/pEXMdJXTx7x/glRt/wOCCOmjFB8P7NVHf0Fk
         VVP+sBgFHsQrSAx4zHAmD5BUOIaNr+TDC1liSumG7sJf4jBAfBelKHMmLflf4JtPOCya
         JocndFGNvZafCi7+AuafCIfqjbGsMez3Lv2NfqBIovBksnTI6rYM1R6F9QM1D9J2VAXc
         5w2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=nJmrPk4x4JVpxmkEDEJgeAencUHbM6oV8klLXs1WGsg=;
        b=Y7tyFz+AVUBtiPaEOFeHFn5fwEdPkUm5WRIkmI+5ftm6vsi9mQdhciL7NDIHT8C/lT
         as/LgKg41vDcH3svwhczxOhFW4GxClhg/ChV16I2Z7/FREZm/CYuswCF/k/EU64KKtmI
         TFnvLzgd+o3LajFTtkzx5f9A2sOyauCn3dHmpKpSjGHpwFmwuWfMgWPfpnxBNMVZ957G
         QXQrdUllNyYXQcJijF7kEsGfWomFIOwt7bebu0GKAyHlvcF45XLaTPRQezkN/Lh2JK7a
         2Xj9xmhxC/Gk1fqaSuUb+xpBcEnh4392jZ5k7n+Zo8XNP+st6ORgCmOunHLYmqeDOMn7
         ioUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="giV/um0L";
       spf=pass (google.com: domain of debsdo101@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=debsdo101@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsdo101@gmail.com>
Received: from mail-it1-x133.google.com (mail-it1-x133.google.com. [2607:f8b0:4864:20::133])
        by gmr-mx.google.com with ESMTPS id c12si16702pfc.2.2019.03.02.02.43.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 02:43:35 -0800 (PST)
Received-SPF: pass (google.com: domain of debsdo101@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) client-ip=2607:f8b0:4864:20::133;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="giV/um0L";
       spf=pass (google.com: domain of debsdo101@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=debsdo101@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x133.google.com with SMTP id l66so783868itg.3
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 02:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=nJmrPk4x4JVpxmkEDEJgeAencUHbM6oV8klLXs1WGsg=;
        b=giV/um0LWtFbUhEQ1+6nIggJIv3CctQUR35E0ADFHnyl729G4TzGddw6Tah7MwvA/X
         ec4FUDNwAGiHrbuasw4CaHy28yCJlBSiMBGz9JjQmmePZ3JmFYVVnE+9MGZ9aqS8WAoG
         aNa7lLzz85ClOvejBnpKXsU8mOaTRXohPa/sTcHecVW8vvyc9vskN/6xaCS/hjB0cloJ
         wG2/czRGclwqVYDt4VjwigiyStEl1qnC59a7bJOMPFqF/DZIIgY1x9RZ0nvl0BSqKIaM
         UXtzpto1Kp4Eew5O/HR/jjRD+QzvcVNKugFwkSqL0DWlQbL2Uhp4g6b4oxR4yXILUJlK
         uOVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=nJmrPk4x4JVpxmkEDEJgeAencUHbM6oV8klLXs1WGsg=;
        b=NBJQu3uNup9o1iQWOu56oJuUjpJQ81Pz6yb5IGCHKuC7SAxufdlKMouSv5XiSZKnMX
         TMRbIre/Tr1ofxC7B1Hrwz/xFaMtAWAARlRf4IOfsCvgFASxz1xlWrT/rLfd7/Mkxaez
         Oejeh0VY0YZbzXQ7sFVIRl6nosSN7zl/QSOxqvwMszHxvGnedUPh6DagFB4mOi2IHuGl
         wkTKWferH5ECupOs2J6/W9ztKCGrFCTodhm7TmJsIuWKoq5a9UyesdtP+2JZ0wvIfWg7
         Z2mN1sioI8QnXdjkBGxzDAhLRTBF2MN+zb2iyWtAl05xCnTLHjhrUPAj6BYaPOgi+VNa
         xfHQ==
X-Gm-Message-State: AHQUAua7yodxlXwtQklksybHEvJ5aexP04qN2mvfvdu3LrucP3P2d7CD
	qVVY/BC7q4YMuKKbbHbPviUTq4awpc8AL+/hJqXAR0n9
X-Received: by 2002:a24:45a3:: with SMTP id c35mr5555344itd.37.1551523414142;
 Sat, 02 Mar 2019 02:43:34 -0800 (PST)
MIME-Version: 1.0
From: Debleena Sen <debsdo101@gmail.com>
Date: Sat, 2 Mar 2019 16:12:56 +0530
Message-ID: <CAKg+crjkvYaQzTJqDFJJPBEyjWpJKdvsh5c+imvy1jFqPKU8tA@mail.gmail.com>
Subject: QUESTIONS REGARDING FIRST PATCH SUBMISSION
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000f5f72805831a319e"

--000000000000f5f72805831a319e
Content-Type: text/plain; charset="UTF-8"

Hi,

I am an Outreachy applicant looking forward to work on the Linux Kernel
Project.I had a few questions about the patches to be submitted on staging
drivers.

In the page Checkpatch_Tips <https://kernelnewbies.org/CheckpatchTips> it
has been suggested to ignore warnings about lines longer than 80 characters
and not to fix them and submit patches for them. I was working on wlan-ng
driver and most of the warnings were of the above nature(WARNING: line over
80 characters). So should I not work on those warnings? I saw other
Outreachy applicants submitting patches for that warning.

I have another question. What should I do with the CHECKs(for e.g. CHECK:
Alignment should match open parenthesis)? Are those valid issues to which I
can submit patches or should I ignore 'CHECK' and only work on 'WARNINGS'?

I'm sorry to ask such trivial questions but I'm new to Kernel development.

Thank you.

Regards,
Debleena Sen

--000000000000f5f72805831a319e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am an Outreachy applicant looking=
 forward to work on the Linux Kernel Project.I had a few questions about th=
e patches to be submitted on staging drivers.</div><div><br></div><div>In t=
he page=C2=A0<a href=3D"https://kernelnewbies.org/CheckpatchTips" target=3D=
"_blank">Checkpatch_Tips</a>=C2=A0it has been suggested to ignore warnings =
about lines longer than 80 characters and not to fix them and submit patche=
s for them. I was working on wlan-ng driver and most of the warnings were o=
f the above nature(WARNING: line over 80 characters). So should I not work =
on those warnings? I saw other Outreachy applicants submitting patches for =
that warning.</div><div><br></div><div>I have another question. What should=
 I do with the CHECKs(for e.g. CHECK: Alignment should match open parenthes=
is)? Are those valid issues to which I can submit patches or should I ignor=
e &#39;CHECK&#39; and only work on &#39;WARNINGS&#39;?</div><div><br></div>=
<div>I&#39;m sorry to ask such trivial questions but I&#39;m new to Kernel =
development.=C2=A0</div><div><br></div><div>Thank you.</div><div><br></div>=
<div>Regards,</div><div><div dir=3D"ltr" class=3D"gmail_signature" data-sma=
rtmail=3D"gmail_signature"><div dir=3D"ltr"><div>Debleena Sen</div></div></=
div></div></div>

--000000000000f5f72805831a319e--

