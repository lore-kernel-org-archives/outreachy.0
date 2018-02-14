X-GM-THRID: 6522348459882708992
X-Received: by 10.28.63.65 with SMTP id m62mr406404wma.18.1518602590146;
        Wed, 14 Feb 2018 02:03:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.136.117 with SMTP id e50ls94156wre.3.gmail; Wed, 14 Feb
 2018 02:03:08 -0800 (PST)
X-Google-Smtp-Source: AH8x226m8ecygCzW2IPd4nFatsAOmBSxKyZb3pVi3j+Izq5mM1D3ICFdL7IxYg3wXeG8nlAab8u3
X-Received: by 10.223.186.201 with SMTP id w9mr446981wrg.14.1518602588945;
        Wed, 14 Feb 2018 02:03:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518602588; cv=none;
        d=google.com; s=arc-20160816;
        b=pY7n0VhYdi7UpLmhRbPXlCkjhN5qM8Ha4wou2m6MA7yswzvqwntw0jzJ1K3zYwz8b7
         9vmQwMZ2HJ6U6hLeWq1r7RVYfTJ7t+fmi23kcBlVreta1enVyXyXoPEcE2TbZMgx1Wdf
         dqK9cwGu/cnhkvZLekWj7lnip+KEHgxg8JcbJ12sGiREAI4YIWW96gN7ILr9HNC13Ar7
         hH2tZNVGW47E8FvNjGW8SZVxhIs1C7b/Hm/y3I2BGTg7M4F1U/ngZjdz6VD9yzYjj9Sv
         xNJ0G8NLURKVv9YgVuLoq6hJViWS++N2Lq0sh7sX77m6B0pCc1se/nzGLIIi+ALQMKMA
         ThHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :arc-authentication-results;
        bh=3iKVLx1GXOtIFafI5WPARyNqjlYpl9BmU5++Pj/dtjE=;
        b=isz4WQdn+5Ou7uqyqXFhMHDNw+anxk37+lfU1p3Ej7ILKlugdZm5jXSpPUJH4WOV8g
         cEpq5ACfR4BZk0V8Osp1Tw/2tHOC5StdwLJGXHrPLNYHwipgf0jhF8bfqKyKRo5g+Sdw
         uzqTXMKNMV0EnZEQvj23wLrOkR7fwrg00+NzLnJCXU9uuQrl/kW+RJC2GXeVcBFtjPzu
         qIqocLNEV92GyUZ+197OBK+GHiUfLAAAFqmzSMrVj4DPK2A9JExgGgLwFrmuzRZoNI/g
         4Jc8UPjudsc4qd/sePBm/6X+6m61wg50oEfPinlEPY18Ia1RVIF3kmG05YpI6Ke832rO
         MeGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OSfoA8iQ;
       spf=pass (google.com: domain of shreyasirao97@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=shreyasirao97@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreyasirao97@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id e14si509203wmg.0.2018.02.14.02.03.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Feb 2018 02:03:08 -0800 (PST)
Received-SPF: pass (google.com: domain of shreyasirao97@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OSfoA8iQ;
       spf=pass (google.com: domain of shreyasirao97@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=shreyasirao97@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id t74so21477415wme.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Feb 2018 02:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=3iKVLx1GXOtIFafI5WPARyNqjlYpl9BmU5++Pj/dtjE=;
        b=OSfoA8iQInGdTSeyfayErkAINAMSF38Tz8x0M1BhwPGn9BzSxHF0UTV2T8c5DQ2FGT
         gqX8f5GM/eEdYjljc6591yYe1hC5HBYONOWPbYsEmWR8utibMY2Jx0MjHro7/fhKjvZ4
         gm0CIJhHnOmU+durByjLqPGdpTGTKHU4nM3iVRXkCxjvwvUUBcdkjmImpayd9IjUv1Cv
         PH/mm0fcv5XD9x2dOXgiNQ3uq4zrAxoVC0NHAJMhURWXzbfwW3V/+iwhxo6YrfpN+HM7
         8Mx5ik8Umw75e20BFbbl4z+1H7cXR13or6pe193FT5dAS4pDO85IS4/iZNA3GNCA1NE5
         65aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=3iKVLx1GXOtIFafI5WPARyNqjlYpl9BmU5++Pj/dtjE=;
        b=ez3fRtFEcI4WCyvDjtB5QwhJ0OFL8mGsbaBuVY1lylMpWGwO9KiOM0i5dawiAPKJGk
         DWMrHclpehX+Se48QWFnpcQi5Sko1lUkqSspdrR+3VR4Fv17lQaCcWifd5hdGLKWyTyj
         FuyEuwobnInK584nCWPf6rqFIKyzYdPjBlvWV2MBi6RGdZYUnvduzh39etuO/7eRKjDm
         xLQFIddhpNoWVc4DhkVx8w53+fvPcTeJMo9KagI15EehlLC+rZHPOHIbYOB3rGz8rlNc
         3/UXfpNq2QSl6NE5L/R6F3tE2o6tV1ou2kRpu/dzq88AN8cl1mL2Jea54P5A0pDAIwGs
         24zg==
X-Gm-Message-State: APf1xPBWOADjIPUVPL0tHkHLezSf0pDVLvcDaJ/H36CW4fjzSF0gaZ8m
	oMDcsMDbcdjNQFb1piJ4biKRW0RDWmvFFZ57mf4MbQ==
X-Received: by 10.28.235.17 with SMTP id j17mr3904888wmh.52.1518602588327;
 Wed, 14 Feb 2018 02:03:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.108.7 with HTTP; Wed, 14 Feb 2018 02:02:37 -0800 (PST)
From: Shreyasi Rao <shreyasirao97@gmail.com>
Date: Wed, 14 Feb 2018 15:32:37 +0530
Message-ID: <CABwYNcVXBFj=pqj2MnbAHKZMHCpA9P=E2XgwSh5wWRTd+rMRmw@mail.gmail.com>
Subject: Compile your changes- Tutorial(make -j2)
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="089e082fd500d5124905652937fe"

--089e082fd500d5124905652937fe
Content-Type: text/plain; charset="UTF-8"

Hi,

I followed the tutorial upto modifying driver on native linux but when I
compiled my changes with the make -j2 command it gave me this:

 YACC    scripts/kconfig/zconf.tab.c
/bin/sh: 1: bison: not found
scripts/Makefile.lib:217: recipe for target 'scripts/kconfig/zconf.tab.c'
failed
make[2]: *** [scripts/kconfig/zconf.tab.c] Error 127
make[2]: *** Waiting for unfinished jobs....
  LEX     scripts/kconfig/zconf.lex.c
/bin/sh: 1: flex: not found
scripts/Makefile.lib:202: recipe for target 'scripts/kconfig/zconf.lex.c'
failed
make[2]: *** [scripts/kconfig/zconf.lex.c] Error 127
Makefile:507: recipe for target 'silentoldconfig' failed
make[1]: *** [silentoldconfig] Error 2
make: *** No rule to make target 'include/config/auto.conf', needed by
'include/config/kernel.release'.  Stop.
make: *** Waiting for unfinished jobs....

then I installed bison and it didn't make the error go away, now I am
stuck. If you could please tell me where the problem is.

Thanking You,
Shreyasi

--089e082fd500d5124905652937fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi,</div><div><br></div><div>I followe=
d the tutorial upto modifying driver on native linux but when I compiled my=
 changes with the make -j2 command it gave me this:<br></div></div><div><br=
>=C2=A0YACC=C2=A0=C2=A0=C2=A0 scripts/kconfig/zconf.tab.c<br>/bin/sh: 1: bi=
son: not found<br>scripts/Makefile.lib:217: recipe for target &#39;scripts/=
kconfig/zconf.tab.c&#39; failed<br>make[2]: *** [scripts/kconfig/zconf.tab.=
c] Error 127<br>make[2]: *** Waiting for unfinished jobs....<br>=C2=A0 LEX=
=C2=A0=C2=A0=C2=A0=C2=A0 scripts/kconfig/zconf.lex.c<br>/bin/sh: 1: flex: n=
ot found<br>scripts/Makefile.lib:202: recipe for target &#39;scripts/kconfi=
g/zconf.lex.c&#39; failed<br>make[2]: *** [scripts/kconfig/zconf.lex.c] Err=
or 127<br>Makefile:507: recipe for target &#39;silentoldconfig&#39; failed<=
br>make[1]: *** [silentoldconfig] Error 2<br>make: *** No rule to make targ=
et &#39;include/config/auto.conf&#39;, needed by &#39;include/config/kernel=
.release&#39;.=C2=A0 Stop.<br>make: *** Waiting for unfinished jobs....<br>=
<br></div>then I installed bison and it didn&#39;t make the error go away, =
now I am stuck. If you could please tell me where the problem is.</div><div=
><br></div>Thanking You,<br></div>Shreyasi<br></div>

--089e082fd500d5124905652937fe--

