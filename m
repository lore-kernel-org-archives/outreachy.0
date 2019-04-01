X-GM-THRID: 6675066065749278720
X-Received: by 2002:a2e:910d:: with SMTP id m13mr2164911ljg.30.1554159928224;
        Mon, 01 Apr 2019 16:05:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b04e:: with SMTP id d14ls1406991ljl.7.gmail; Mon, 01 Apr
 2019 16:05:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxbFw7UCJn4MafCdGFt3xEdOIA/zMhDhfqBruAx/vQjSdGTDViyVEZwyvBtisWnx+hA4cUC
X-Received: by 2002:a2e:361a:: with SMTP id d26mr1699515lja.21.1554159927100;
        Mon, 01 Apr 2019 16:05:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554159927; cv=none;
        d=google.com; s=arc-20160816;
        b=dRDNREtBBsNUtqAQlG8zqfE6kYw9iIW0xeDNAUUh2AsGAyMtg9AWg0EClnITuxWeBu
         /DjX6Dmvt8+mNM4EMIcQG89kDbxWfW5rBr/Du2yB+wNp5odl3mvlsPh8MiJDTVPB2p++
         z0LR0SgAD2exuV2phSnnR+MHWhzAX3F90UGzofKzpetbUTK05vfMn2MTOgdg0Jfj3hNf
         SRbS1ugUsa9K4HErB7V49WphSEuUhriUsk816x3nUUt1lxr5zqjOTlW8bS8xZaLhMX/V
         Qg29U68L4rlihNfjCSItiuQzO5puw8+D+FuJAzXSDyuuGMcJFYyE+U/2++5XsS7Xlgpe
         ks5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=WtzoCd4CsCUqkaPxyJojJFeJ/Io8gZiH/h3QT48X8Oo=;
        b=DjyYh+Q1qYNsnC4fH/Dg8/hqFxxwnkoOqOnXpzfaY2WobKtZScr0HAnTmvy3nVL9f9
         qoC9uC9X3xWqQacYZmaXNOxVbODpY2K0wEGPl5wwdR4RSJz/Q8O782Vyq+KLLqTIcWHR
         mKHYQv0J7rL+NNvTnWqbVRWA5yCdEIVwEpMVaSHWwNh0Ru3bQc3On/IBu7q8WBSOtXr2
         fs6qplC8ldLq2mDUu1phoS7D8dBDYrdt+k/rXwS59/WW3Xt+Yi65wTNWIH1I4K4DblCI
         he35DBOJp5dRt7rxDdABQ61ybKN7rjAdD8yaFg0JvwCv3uK7JDcLnEy/AxIFyDlBeRs2
         yYUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z4aN6UEn;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id o16si702232lji.0.2019.04.01.16.05.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 16:05:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z4aN6UEn;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x131.google.com with SMTP id b7so7509459lfg.9
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 16:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=WtzoCd4CsCUqkaPxyJojJFeJ/Io8gZiH/h3QT48X8Oo=;
        b=Z4aN6UEnY0hysqLq2F/ouHUuh+4qbmerWqrKrXgs9vSFhULVW9sR3/GJb4CPOz1SZ6
         WrFo0fBfkOPW4fFYjogxLHF3A6lcQEwCi/LvdaJkh3SKCelcj/m+G0awvZphuZnBg8G/
         lLos3cN7+DMWWHfDIMEhAdMuPZVmnfFHyViTPgBCrcFVE0rY0l9chuUzeQj+85dC96YJ
         f3vInYsPFl2eGmmu0UhJswu+QFFb0xsbAWE+XsHH0w91tWx6MxGAPSS84rfZR9HjICHE
         eAX4PIHs5JA8tz0+W+DfB6LPj66YdY30mGz9JpGwIKOGGI/7pc4lLYVLAZSL++0n3QXO
         vujw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=WtzoCd4CsCUqkaPxyJojJFeJ/Io8gZiH/h3QT48X8Oo=;
        b=IC0/toI04ZKq99sH3a7ZXZ27/4AcoeMh1GeGJZGumIXQwcrurLMJhVoEqztcueEDaQ
         SvWg57ZMkOkEfnb/p9rB56W6gsbQlO/w3ubk2X+EuGgIEKuUmelTg2CIFO7UXPeSazfN
         B6RBF1nVwNRbBe3pfU/wHTLK5BrBcF5oadQzSRyn7soFTlJHXbH1vT0ns92RZo/E9N+J
         QyMmu7LbB1DDfbJkgKuo4OiUqA8obtBKiEGgFxJHdvtsm/q/BdhgwB5woPB5jkhp9NjI
         rz7t+aPS/JzyA2zsRRWZ/5aVoU6Yje3m8C6mwpxJO2EaDTbRxb0oGrNH4gCMvkcjtAVi
         FKIA==
X-Gm-Message-State: APjAAAW73Adlj06SaTNlFToloiHB6h6kWhXdtKrh8euWvyFTop6K4gX/
	lfCMi8QULKFWiPzu0bcr5ItM/GfZIMsNk7Kmo12YTA==
X-Received: by 2002:ac2:491a:: with SMTP id n26mr19191065lfi.122.1554159926747;
 Mon, 01 Apr 2019 16:05:26 -0700 (PDT)
MIME-Version: 1.0
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Tue, 2 Apr 2019 04:35:14 +0530
Message-ID: <CANTOzWFMtD=pWqa=fm96+AdLa5rGj3=-Mq_9jWh6tethkwAtGA@mail.gmail.com>
Subject: Outreachy internship project timeline
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000005ba89a0585800e4d"

--0000000000005ba89a0585800e4d
Content-Type: text/plain; charset="UTF-8"

Hello,
In the final application there is a subject to fill about Outreachy
internship project timeline and I don't know what to write here.
Please guide me to figure this out.

Thanks,
Payal

--0000000000005ba89a0585800e4d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto">In the final application there is=
 a subject to fill about=C2=A0<span style=3D"color:rgb(51,51,51);font-famil=
y:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Roboto,&#39;Helvetica=
 Neue&#39;,Arial,sans-serif,&#39;Apple Color Emoji&#39;,&#39;Segoe UI Emoji=
&#39;,&#39;Segoe UI Symbol&#39;,&#39;Noto Color Emoji&#39;;font-size:16px;b=
ackground-color:rgb(255,255,255)">Outreachy internship project timeline and=
 I don&#39;t know what to write here.</span></div><div dir=3D"auto"><span s=
tyle=3D"color:rgb(51,51,51);font-family:-apple-system,BlinkMacSystemFont,&#=
39;Segoe UI&#39;,Roboto,&#39;Helvetica Neue&#39;,Arial,sans-serif,&#39;Appl=
e Color Emoji&#39;,&#39;Segoe UI Emoji&#39;,&#39;Segoe UI Symbol&#39;,&#39;=
Noto Color Emoji&#39;;font-size:16px;background-color:rgb(255,255,255)">Ple=
ase guide me to figure this out.</span></div><div dir=3D"auto"><span style=
=3D"color:rgb(51,51,51);font-family:-apple-system,BlinkMacSystemFont,&#39;S=
egoe UI&#39;,Roboto,&#39;Helvetica Neue&#39;,Arial,sans-serif,&#39;Apple Co=
lor Emoji&#39;,&#39;Segoe UI Emoji&#39;,&#39;Segoe UI Symbol&#39;,&#39;Noto=
 Color Emoji&#39;;font-size:16px;background-color:rgb(255,255,255)"><br></s=
pan></div><div dir=3D"auto"><span style=3D"color:rgb(51,51,51);font-family:=
-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Roboto,&#39;Helvetica N=
eue&#39;,Arial,sans-serif,&#39;Apple Color Emoji&#39;,&#39;Segoe UI Emoji&#=
39;,&#39;Segoe UI Symbol&#39;,&#39;Noto Color Emoji&#39;;font-size:16px;bac=
kground-color:rgb(255,255,255)">Thanks,</span></div><div dir=3D"auto"><span=
 style=3D"color:rgb(51,51,51);font-family:-apple-system,BlinkMacSystemFont,=
&#39;Segoe UI&#39;,Roboto,&#39;Helvetica Neue&#39;,Arial,sans-serif,&#39;Ap=
ple Color Emoji&#39;,&#39;Segoe UI Emoji&#39;,&#39;Segoe UI Symbol&#39;,&#3=
9;Noto Color Emoji&#39;;font-size:16px;background-color:rgb(255,255,255)">P=
ayal=C2=A0</span></div></div>

--0000000000005ba89a0585800e4d--

