X-GM-THRID: 6393655720329347072
X-Received: by 10.36.116.193 with SMTP id o184mr1456369itc.40.1488638976886;
        Sat, 04 Mar 2017 06:49:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.41 with SMTP id n41ls3531877ioe.33.gmail; Sat, 04 Mar
 2017 06:49:36 -0800 (PST)
X-Received: by 10.99.124.25 with SMTP id x25mr3193218pgc.50.1488638976258;
        Sat, 04 Mar 2017 06:49:36 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x22c.google.com (mail-io0-x22c.google.com. [2607:f8b0:4001:c06::22c])
        by gmr-mx.google.com with ESMTPS id i189si926239iti.0.2017.03.04.06.49.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 06:49:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) client-ip=2607:f8b0:4001:c06::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22c.google.com with SMTP id l7so91145906ioe.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 06:49:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=GE8hhknz1WW3jFphnnUqOrfck1lpJIa63Aav3QWMKXE=;
        b=FxY7hekn1WgIf3gSpGZrIu0S52ySdHcee5jQR72qDwFnLXeAKrSFBJFJM48bD10Aa6
         zx7Fj7Bb5OGJmGC5SoCDpKuDCBYYIJqzUeZvVGpCrp12PrE5qWtGgj+ZaYFCf6SyNjBQ
         caoFvK8Tc2vLLQ3Wbwz4xfb3xkALFY42vRsfzI21r8DZ6W+4VgZb58rlPBkhHYkkYkjy
         IxIAFBSj6+oPwHfMVQbJX0Priea92cahaDOZrX3UilD4tNBnFjjumW9umYTtSRaqDRIx
         KaOnQ/dX2ZpLIOPB37n/Ekz5b37M79hCv0qfCjOV05xlp2QqIeMsW39b+yz5POCnvi2f
         gFNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=GE8hhknz1WW3jFphnnUqOrfck1lpJIa63Aav3QWMKXE=;
        b=KENcE+qoB7/+8P5wWDYS0P9unqdsozwZcoQjBrM2zMXTgDeY0fwv/SD8/vizJiE+6C
         MV3mcwGUYMHaOe5KSKkEk0jk5126LU3ysDhtY7b+NbS3312KNYmF2uo/dMOeymG/XSTI
         dJI5RvITucgl8ncUn/rfVvhurFUDZX2Iaqx4qyTxrBsOhOQb45+1W2LZa6mrrqCpzHXI
         XMgVq9zKWKIS9JfVkFk4BQCauTEK6P2HNsOsOR2AkGtacEOTw7n73p14dytv8aJEU200
         zqzleEoCvJ8uLTJGVQZNOc68JHZkKsnICYhs0VwlZLJipoSn6oY1DjIX+0Zus/sj41r7
         8Sow==
X-Gm-Message-State: AMke39lI96s7Dwg/IOwdvrrEy+g5QSc9dlVRwDM8b2vSpG5ocq70Dzz7EJcfSJMhsuxd6Eba10gbxUJGgOaw2g==
X-Received: by 10.107.137.226 with SMTP id t95mr7603925ioi.79.1488638976025;
 Sat, 04 Mar 2017 06:49:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sat, 4 Mar 2017 06:49:05 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
Date: Sat, 4 Mar 2017 20:19:05 +0530
Message-ID: <CAOCi2DEit5S6BSAKWFY8dMkYYL0EDNh1Xq6m4aHUjPXx49AG+Q@mail.gmail.com>
Subject: Tasks for the "Finding and fixing resource release bugs" project
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113ec7b65d6ccb0549e8c50d

--001a113ec7b65d6ccb0549e8c50d
Content-Type: text/plain; charset=UTF-8

Hi Julia,

The tasks on the Outreachy page are related to the constification of the
structures. I sent a few of those patches. The tasks for round 14 are not
there yet. What should I do next?

Thanks!
Gargi

--001a113ec7b65d6ccb0549e8c50d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julia,<div><br></div><div>The tasks on the Outreachy pa=
ge are related to the constification of the structures. I sent a few of tho=
se patches. The tasks for round 14 are not there yet. What should I do next=
?</div><div><br></div><div>Thanks!</div><div>Gargi</div></div>

--001a113ec7b65d6ccb0549e8c50d--

