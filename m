X-GM-THRID: 6338894673462951936
X-Received: by 10.66.22.100 with SMTP id c4mr561418paf.110.1475888926018;
        Fri, 07 Oct 2016 18:08:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls6287658otw.27.gmail; Fri, 07 Oct
 2016 18:08:45 -0700 (PDT)
X-Received: by 10.31.108.92 with SMTP id h89mr5672106vkc.18.1475888925671;
        Fri, 07 Oct 2016 18:08:45 -0700 (PDT)
Return-Path: <ruchandani.tina@gmail.com>
Received: from mail-oi0-x230.google.com (mail-oi0-x230.google.com. [2607:f8b0:4003:c06::230])
        by gmr-mx.google.com with ESMTPS id f196si394079ita.1.2016.10.07.18.08.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 18:08:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ruchandani.tina@gmail.com designates 2607:f8b0:4003:c06::230 as permitted sender) client-ip=2607:f8b0:4003:c06::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ruchandani.tina@gmail.com designates 2607:f8b0:4003:c06::230 as permitted sender) smtp.mailfrom=ruchandani.tina@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x230.google.com with SMTP id m72so74797893oik.3
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 18:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=6a+vDjNgy7metmCUkBiQkpp6gWsRk0/wIRxdIV2OWoU=;
        b=AvuUupbM0wYAiVq9wAQbBff79oLIIjaV33jN6TQ/fiqhzphtoKm8WoFExdXafXETF0
         Ptc4dIrnei7bZD8oktJTY/hShHePpSKSUO4GKY2DmPD9zUMLL9Wq+s3s+s/AUjVpUjdi
         D8Kt0nBK13PBANE1G8TTYo0TIw5BV0NfvUqZaHnXJxuEFZownInsYn8Ol4bKyZ1rCl99
         uSGaORuo0QKol4oEO1/73Hg3F5X4IMEZ1+k0krzxhQiNtDb8rkHrI5eqhbjT6FAjNUa0
         kwT/KYqnigziE+TLVRYdGxLoA2ynYYMSyJNVor3Jg6LIpCn/DZiF8PB3GgP3OiqFHr2/
         WkjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6a+vDjNgy7metmCUkBiQkpp6gWsRk0/wIRxdIV2OWoU=;
        b=BSG4niGOeZAtbpIGouUrjQOHgPk9YsHyAZN2cL6CAylWvV5lRsB+VftlKYAl6GjWkZ
         Q4IaSXUCHOD0a8k6KsGFetKNxYGJwsMXp5kKh2RQoSlOBl8XaY7N1Kehpm0hubJe0FqW
         pc6IP6s90F1dodYE2ZpAX47icuq+peTuscPnaQugiAafLiG//CxV6Umk7M7GlD6RxFrQ
         cfC/njLt0lZu2xQqJ8qazdljbS3U6rhr+FltpNBIqgxkQ8lCM1BppPiNcA7Ryzl+0m1+
         9ul0RplOj3cYuvI0r3YsDSH0U5yPXeIjFJNn0F4yHsdiXace+Xae+InGPZySWYymiPt9
         U2hg==
X-Gm-Message-State: AA6/9Rn5O8QZqYouk+kXAe2i/gTx2Lp48d9e1DInN7Cpbe5jISS9bFYV5waJ1DH92F4V8mhxHVhsD95f81pXVw==
X-Received: by 10.202.82.7 with SMTP id g7mr18443612oib.112.1475888925476;
 Fri, 07 Oct 2016 18:08:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.158.167 with HTTP; Fri, 7 Oct 2016 18:08:45 -0700 (PDT)
From: Tina Ruchandani <ruchandani.tina@gmail.com>
Date: Fri, 7 Oct 2016 18:08:45 -0700
Message-ID: <CAB__kkmMzZRg=p1zyKpUquS30cfQ7bwJUn5vo==nDqTUadyZFA@mail.gmail.com>
Subject: 'Hobbyist' pass available for Linux Plumbers Conference, 2016
To: outreachy-alums@gnome.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113d7a1a2190b5053e502b3f

--001a113d7a1a2190b5053e502b3f
Content-Type: text/plain; charset=UTF-8

Hello fellow Outreachy folks,
I have a hobbyist registration pass for Linux Plumbers Conference in Santa
Fe, New Mexico, this year (Nov 1st-4th). Unfortunately, I am not able to
make it there due to visa issues. If any of you fellow OPW folks are
interested in attending, I will be happy to transfer my registration. The
requirement for the hobbyist pass is that you cannot be employed in a
Linux-based role in industry.
Thanks,
Tina

--001a113d7a1a2190b5053e502b3f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello fellow Outreachy folks,<div>I have a hobbyist regist=
ration pass for Linux Plumbers Conference in Santa Fe, New Mexico, this yea=
r (Nov 1st-4th). Unfortunately, I am not able to make it there due to visa =
issues. If any of you fellow OPW folks are interested in attending, I will =
be happy to transfer my registration. The requirement for the hobbyist pass=
 is that you cannot be employed in a Linux-based role in industry.=C2=A0</d=
iv><div>Thanks,</div><div>Tina</div></div>

--001a113d7a1a2190b5053e502b3f--

