X-GM-THRID: 6333893619528761344
X-Received: by 10.176.6.193 with SMTP id g59mr2849317uag.6.1474724528032;
        Sat, 24 Sep 2016 06:42:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.41 with SMTP id u41ls4323063ioi.27.gmail; Sat, 24 Sep
 2016 06:42:03 -0700 (PDT)
X-Received: by 10.66.42.161 with SMTP id p1mr2859215pal.20.1474724523915;
        Sat, 24 Sep 2016 06:42:03 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yb0-x22c.google.com (mail-yb0-x22c.google.com. [2607:f8b0:4002:c09::22c])
        by gmr-mx.google.com with ESMTPS id p193si948838ywe.6.2016.09.24.06.42.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 06:42:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::22c as permitted sender) client-ip=2607:f8b0:4002:c09::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::22c as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x22c.google.com with SMTP id u125so77242529ybg.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 06:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=KtB+RoBq9O87iIwB9ux1QuviwaVRTZdMTk/wKN4kWiE=;
        b=a0LaD93N4AXt13SxwmSxFY7fOCcxEuTFbvNL3+nyeOM2tQ3hZhMFQoa9VOdgj6aM95
         MuyqypjzTfY6SdlMuUWW2aqKufTuJJ51TD9tR3I4BfmdxxTBV+fzkrPty9zamiUXnP6T
         skUoke1tGSEl2okifd63iO/W2MHNwu32oickOlb9dxPCOnG9Ic5XZk2aW6Xb7WjMgErf
         9qWPTdwK9QO7RPp71xRSNP7GxKfRAEX0DTAWggdxU0l8lYhb8Or+e++9hea6AXhWoN83
         sMFFTQjXdQG81FTRu0emQ9Z8hNZUCwaKVbYFO/rgOKKLSvbx3VLnZ7iNhPKEUZ1dm8WG
         6VRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=KtB+RoBq9O87iIwB9ux1QuviwaVRTZdMTk/wKN4kWiE=;
        b=Qm0b+RtWMBK9VAgfePne9c8x3C37TkMJaqmFK+ynMd3UVZHzsHniNAHuHAKtDyTmAV
         opSwrt8yx0ER+ssMrsxYp2kAx5U9hsbEv+Udsub5zwboh7AYC74WVZ19t5BPU6vi1L86
         HbXSGXCuSdyhOfBeJvVYsiz++JhWWjpaYaqH/Y7dZcJIWHiIncMUY8pFUhKztuPQG9wp
         eMB4vDXYn1dsfNbQq52e02yNNeVz6WAPh5Qa5Bt7L0smR1gCaP1ifcvoqme0xSXnXp0L
         oNnirvOROxdjRHTZojAE2M3NKWRtVFsBpoUdQTkhq6Hcftu1DJNfJWXGO04G6gk6iWGw
         cyLw==
X-Gm-Message-State: AE9vXwOp+wvuv29LRIxeTlTtiMQChFM5bjWSj03iZJ4Rr6jJ+Gq1w9MqBC68e/EsUaonGy8vDcz/k/BUf24QSA==
X-Received: by 10.37.106.197 with SMTP id f188mr10291161ybc.151.1474724523699;
 Sat, 24 Sep 2016 06:42:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.41.132 with HTTP; Sat, 24 Sep 2016 06:41:23 -0700 (PDT)
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sat, 24 Sep 2016 19:11:23 +0530
Message-ID: <CAKG5xWjTCC4oyXcHC5du3imeE9VP2nwL=3c9XwvvHzYTB0zCSA@mail.gmail.com>
Subject: Doubt regarding iio task 01
To: amsfield22@gmail.com, daniel.baluta@gmail.com
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113fc66a6081cd053d410fad

--001a113fc66a6081cd053d410fad
Content-Type: text/plain; charset=UTF-8

Hello,

I ran the following compilation command:
make drivers/iio/dummy/iio_dummy_evgen.ko

The following is the error encountered:
https://www.irccloud.com/pastebin/aO6XB4Le

I have enabled the config options required:
 #
 # IIO dummy driver
 #
 CONFIG_IIO_DUMMY_EVGEN=m
 CONFIG_IIO_SIMPLE_DUMMY=m
 CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y
 CONFIG_IIO_SIMPLE_DUMMY_BUFFER=y

Could you point me towards a solution to this?

Thanks!

--001a113fc66a6081cd053d410fad
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I ran the following compilation command:<br>=
make drivers/iio/dummy/iio_dummy_evgen.ko<br><br>The following is the error=
 encountered:<br><a href=3D"https://www.irccloud.com/pastebin/aO6XB4Le">htt=
ps://www.irccloud.com/pastebin/aO6XB4Le</a><br><br>I have enabled the confi=
g options required:<br>=C2=A0#<br>=C2=A0# IIO dummy driver<br>=C2=A0#<br>=
=C2=A0CONFIG_IIO_DUMMY_EVGEN=3Dm<br>=C2=A0CONFIG_IIO_SIMPLE_DUMMY=3Dm<br>=
=C2=A0CONFIG_IIO_SIMPLE_DUMMY_EVENTS=3Dy<br>=C2=A0CONFIG_IIO_SIMPLE_DUMMY_B=
UFFER=3Dy<br><br>Could you point me towards a solution to this?<br><br>Than=
ks!</div>

--001a113fc66a6081cd053d410fad--

