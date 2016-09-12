X-GM-THRID: 6329504242942869504
X-Received: by 10.13.231.68 with SMTP id q65mr16100898ywe.58.1473702546392;
        Mon, 12 Sep 2016 10:49:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.69.204 with SMTP id c73ls1833435itd.22.gmail; Mon, 12 Sep
 2016 10:49:05 -0700 (PDT)
X-Received: by 10.66.172.14 with SMTP id ay14mr10837690pac.0.1473702545726;
        Mon, 12 Sep 2016 10:49:05 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x234.google.com (mail-qk0-x234.google.com. [2607:f8b0:400d:c09::234])
        by gmr-mx.google.com with ESMTPS id m82si965268ywm.2.2016.09.12.10.49.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:49:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) client-ip=2607:f8b0:400d:c09::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x234.google.com with SMTP id w204so149982874qka.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 10:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=4BLSf4IssnLmlfHEfbZGDr0O6x9gTPKs7lOAHwJOXL4=;
        b=YoLWZx1oIbf5DkvzAgSrdhLmfTPq3GI7haa5h6TgIq/7rCvhafA57NGjjXnhtO/AMB
         HcU0AESeX24qWW6lN1DbxR9FHxrSlPxS3KuuyZ2GzsHpk18l3z8PA3Blc7qm3K/LJ3a5
         Askn8E+cmrjcWjmL9m59liD5K4+zl0mtAQTIPv8q3zc7FIVDSwVv8Eqtbs/WBcn/ul1Y
         Uc+cm0sZHbOLe9VxJj54rN8b+cz8c7AqLW3Yxg4Iz3ZFi3PGY76UoaNq5R9D45vufUbl
         DmVr/hK4g25UxVHRa002CtWEODeCxNtlB1krrxaNoaYPowrljNszZZQnRop4tgJxB57N
         +NoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4BLSf4IssnLmlfHEfbZGDr0O6x9gTPKs7lOAHwJOXL4=;
        b=Ts3dqo/LzYvL9fd9mW53dUhlaW74IWYm49K6NekoxefTqbONrpgYSozz/qLsr+S1wv
         NSeyXp/HdR1VWfkF+S2B5rfokfmxJJAPDXIF6XSDcR3HH7V4ilSLZvCijZrYAKRuLdsP
         X2WhNMtg8iLXL3e/RrXFMrRZU1COdA9BszJYV3efrrbrc7+jK9f8S97frzwK9eX6broR
         ff9z5JhyAn4BSXPpb8CdJeVgi1w2t1NANB/5BU/PBeshvLLDysCcv0OlqTlS3+qR3ilS
         XTAZMpwynUF6DPHbxBGRmoi4RaNvoqBTGcKLlIhXO/d+NRx5hpmEGrIObLj38lLNWb7j
         N4Rw==
X-Gm-Message-State: AE9vXwPdQ0diBEVddd7ZmFl2hU7U2JDPfdkPbsvHw7/cVdkGrJwYjwMXS/+U8w2lgePW3I1SMm7zfhCwsgVPrw==
X-Received: by 10.55.209.82 with SMTP id s79mr9463988qki.280.1473702545219;
 Mon, 12 Sep 2016 10:49:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.151 with HTTP; Mon, 12 Sep 2016 10:48:34 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
Date: Mon, 12 Sep 2016 23:18:34 +0530
Message-ID: <CAOCi2DHqT7nMey6vwBGUTh1_wZ-Vea=Qrw9Evuat5wt98BdTxA@mail.gmail.com>
Subject: udelay vs usleep_range
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1147a4eeb682e5053c531c22

--001a1147a4eeb682e5053c531c22
Content-Type: text/plain; charset=UTF-8

Hi all,

I ran the checkpatch script over drivers/staging/nvec.c and got the
following warning

CHECK: usleep_range is preferred over udelay; see
Documentation/timers/timers-howto.txt
#634: FILE: drivers/staging/nvec/nvec.c:634:
+                       udelay(33);

I checked out the timers-howto.txt and for usleep_range, one has to specify
the lower and upper limit for the timer. How does one decide what the upper
limit will be if one is to change the function from udelay to usleep_range?

Thanks!
Gargi

--001a1147a4eeb682e5053c531c22
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">Hi all,</span><div style=
=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">I ran the c=
heckpatch script over drivers/staging/nvec.c and got the following warning<=
/div><div style=3D"font-size:12.8px"><br></div><div><div><span style=3D"fon=
t-size:12.8px">CHECK: usleep_range is preferred over udelay; see Documentat=
ion/timers/timers-howto.txt</span></div><div><span style=3D"font-size:12.8p=
x">#634: FILE: drivers/staging/nvec/nvec.c:634:</span></div><div><span styl=
e=3D"font-size:12.8px">+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 udelay(33);</span></div></div><div style=3D"fon=
t-size:12.8px"><br></div><div style=3D"font-size:12.8px">I checked out the =
timers-howto.txt and for usleep_range, one has to specify the lower and upp=
er limit for the timer. How does one decide what the upper limit will be if=
 one is to change the function from udelay to usleep_range?</div><div style=
=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">Thanks!</di=
v><div style=3D"font-size:12.8px">Gargi</div></div>

--001a1147a4eeb682e5053c531c22--

