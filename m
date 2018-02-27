X-GM-THRID: 6527238351782674432
X-Received: by 10.223.146.197 with SMTP id 63mr156376wrn.19.1519741106549;
        Tue, 27 Feb 2018 06:18:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.209.5 with SMTP id a5ls438127wri.3.gmail; Tue, 27 Feb 2018
 06:18:24 -0800 (PST)
X-Google-Smtp-Source: AH8x225WCpBhKSVLe5efZrWucEofM1JYTWxr+vXFc0XzfK6gZ0wrwl6ypxq/wYO9fcxu1HuRa4Qc
X-Received: by 10.223.152.44 with SMTP id v41mr1327551wrb.11.1519741104655;
        Tue, 27 Feb 2018 06:18:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519741104; cv=none;
        d=google.com; s=arc-20160816;
        b=B1bK7NgHKFgOCfwhTqYBrHtcXh5mYvtw2uPfYRMfLv+iLpBaJtFPENpsOmh33bwyPX
         pjjn4L66fiXVjftGph/6B3Qpll9dZHoMq9UwGNFBkrz7q6UzH2MlUJJT9DQZDXoQgw1h
         4xxP1FMabHoVAjF5grU3lnlnDuYYWCwvNI69Xtvg+/VQHR//e0/GHS2NIrXLWGsdPi2t
         3QFfVDyS8gSabruuqkL3B/ch5k4ssCLFKalT4Z+ehlB7BI56uJGRkl1rNk7ToEUvTnmb
         QjEe1XE1U72Yf0cfHbZv3x7/NHBczR97eyap0xZvZ9bmCXyMvxTQwbdr5b97DwBHSJ5F
         4JbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :arc-authentication-results;
        bh=MOSgUs/REIwT44yHSMKlDT7tIGdgDBF5ORj+uiSwJsY=;
        b=w+7aBX3NEuHrlH3Wh9anBk7Gxxkt3lf+WQivg+jeolS+QbeFmixmHd6uahmiJl5xFp
         VvA1lbtunlx0mO9QfTc69HmtL2ogYrTQp326tbce1ctNkS1N39XXcGewcHGTksMZtmgg
         2/DxRtLb5HZsEF4JJbt4ToFWvHVJIz1DPcoATMg1cnEOQrtQ/bvJy/tyJOBF6ClG+6sM
         N3bLRQWMi7PXCRaICqgVfDNo4lgx8TrRNJxljXTKrIZ1uALKdOAzQoOrJkVOMrybdLsI
         LImH7Y+BCs4wi/FTk1S7ZG6KSgmilk1aRhlJ/VVfaAHhjxRGdEpvtxY2pfay32TWFL2Y
         By8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@crimson-ua-edu.20150623.gappssmtp.com header.s=20150623 header.b=crqxAy3l;
       spf=pass (google.com: domain of hashah@crimson.ua.edu designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=hashah@crimson.ua.edu
Return-Path: <hashah@crimson.ua.edu>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id l1si356305wmc.0.2018.02.27.06.18.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 06:18:24 -0800 (PST)
Received-SPF: pass (google.com: domain of hashah@crimson.ua.edu designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@crimson-ua-edu.20150623.gappssmtp.com header.s=20150623 header.b=crqxAy3l;
       spf=pass (google.com: domain of hashah@crimson.ua.edu designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=hashah@crimson.ua.edu
Received: by mail-lf0-x243.google.com with SMTP id o145so24516685lff.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 06:18:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=crimson-ua-edu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=MOSgUs/REIwT44yHSMKlDT7tIGdgDBF5ORj+uiSwJsY=;
        b=crqxAy3l8Ku1GNk/dJceLThpWA07/2e4Y6W7ELkgg2CeF+kOslNxMlP932HzuvCjdX
         d3wm6ilWDPLP1j1YSQeG1RtUm06by0L84FCke5XlAgi1TKh/f0hQB2Eelgp/2euIjIiF
         T71wpo/d2X/0HqB6673NtL0rY1hHYy0Kw8KXbVMNEUy0YkW1hXL1O5ZEjEfYfVv5JCyu
         GgyqPHnfWTToUHABJse/oVLw9tmmQ0REyHOiscjixcIHN5YqkI1J09upk+vdqQTyj7Sy
         KdEz2sm4jsyvRLQZZXG/izDJ2+c5iu7LldpNaDFKG96TUJQpaxuaBFPt34RmZehsMIU0
         gyrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MOSgUs/REIwT44yHSMKlDT7tIGdgDBF5ORj+uiSwJsY=;
        b=duN7+6HDJuWWDKk0lSFdMGt2wD1SbDe4yhtG5fKDIQfvOYvU5j604joamo9g8ADa9W
         BLjoclpwlQ5x16QboRERhrlob+WsQvabhzPPAQQLV8i/DUKyhmVzBnZl7QRyqMsgAsXa
         P4Ci4Sr/9cVroGZhFnbwXUxCT+MkAAimjcUAcJLPuJKTpHPvnh0UUOH8Ci8rATu34HnT
         2YYyIRoo82keXHffK5xmgZai9KYvD024sn6HwXQLZH2rNF/s4TLmy9P5/c7nXi1+xPPe
         GFy6oSF8RBnC+nQz4b8gtyxaht5VVGusLGFxdt/PEI5ppRjtPwvjj/3fvxcL+F6snC2V
         fqdw==
X-Gm-Message-State: APf1xPBoYtGU165GAuMCU5O/+f4oHTV07cGrg8fQ29E0hXdiWU2l58sP
	P/ujG53AhJ3KTxAU8S9n3r+UzuIBUa1Ny/llWbf8Pg==
X-Received: by 10.46.85.68 with SMTP id j65mr4808230ljb.55.1519741104309; Tue,
 27 Feb 2018 06:18:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.190.206 with HTTP; Tue, 27 Feb 2018 06:18:23 -0800 (PST)
From: "Hetavi (Haley) Shah" <hashah@crimson.ua.edu>
Date: Tue, 27 Feb 2018 08:18:23 -0600
Message-ID: <CANfc03LJc2HcyPBMRvrX6ad6+ENfexTC3MCV6C-7AMjUKKTDvQ@mail.gmail.com>
Subject: Mac User problem
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="94eb2c1ce072ac65280566324c84"

--94eb2c1ce072ac65280566324c84
Content-Type: text/plain; charset="UTF-8"

Hello,

I wanted some help from any other Mac users here?

I have a Mac and so I can not run Linux Kernel on it.  Is there any other
way that I can get to this project or do I need to download something?
If you are a Mac user and you were able to get to the project, can you
guide me on what did you ?

Thank you,
Haley Shah.

--94eb2c1ce072ac65280566324c84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<br><br>I wanted some help from any other Mac =
users here?=C2=A0<div><br></div><div>I have a Mac and so I can not run Linu=
x Kernel on it.=C2=A0 Is there any other way that I can get to this project=
 or do I need to download something?=C2=A0</div><div>If you are a Mac user =
and you were able to get to the project, can you guide me on what did you ?=
</div><div><br></div><div>Thank you,</div><div>Haley Shah.</div><div><br></=
div></div>

--94eb2c1ce072ac65280566324c84--

