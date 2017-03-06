X-GM-THRID: 6394505087657443328
X-Received: by 10.99.44.66 with SMTP id s63mr7893917pgs.14.1488836735685;
        Mon, 06 Mar 2017 13:45:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.6 with SMTP id o6ls18046169otc.47.gmail; Mon, 06 Mar
 2017 13:45:35 -0800 (PST)
X-Received: by 10.13.211.5 with SMTP id v5mr7338286ywd.128.1488836735363;
        Mon, 06 Mar 2017 13:45:35 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x232.google.com (mail-io0-x232.google.com. [2607:f8b0:4001:c06::232])
        by gmr-mx.google.com with ESMTPS id b188si320989ite.3.2017.03.06.13.45.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 13:45:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) client-ip=2607:f8b0:4001:c06::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x232.google.com with SMTP id l7so123305073ioe.3
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 13:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=TMjd9UN0ngUJDUEFZOHTNr3ZWua34AJAihfA96kaemo=;
        b=FPOyQxO6ZikY9fr9FZQNn0m8Z3c3Wje9Mq/mm4jPP1NGSSJKRhSKcIC+ydYkZxmLbO
         qaZDUqZaVARi5Oqz72Z8P1KyI90NHgLcpzQ3a8o3uZP8ehEkQSF9R/73NDO5yFdzOvin
         PGnDpWrVyHvFBq5fw2mw9BacsuLt/jbdjZHfO9A52jzMRMPF+Zkl3/OB1rhM4Z2uZLMa
         Qedm4WuiJAoechsC/pxrANY9i6RYAzSl79cRkcFHNtV+GKcQYyr2OrXxBd5g1ttp33LJ
         IKvmatnpa8++tx02Sjkhogfjm4r0P4Djn52dL0ySZJc+xZ+CSZBqZNGh72yCax7GMOcN
         CQzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=TMjd9UN0ngUJDUEFZOHTNr3ZWua34AJAihfA96kaemo=;
        b=pG1jKIyrXpCXbG/D2GktU+VEy3jEfoZX0ka13INVGk0XU4l/RmSYvxFsYlV2jju+sV
         6XY/63OnjxwFVPuz9EPDGP4zZEcX1NZxwd5sFzBT+XDoGDfHh4pcqXErVCvlyn8C+dly
         H4sYZmjCrzO6IunjfYD65HUFgQNgny5QOupvzJ2AhyYr80i5eZ1NaRMNNSFzjzei0Wbg
         gmGuFdG+3g2tbIYASDMyCku9tB6BxBJrt6S3ToNHkHjWCoNHywtAPSfRjrQycieRJksc
         7Vr7Xy99z0N0+NnnqnI+ufIVrRqxPiniNifa6+rkWC0rF3bE5wQokNmfTaVGSNULyGrK
         bdaw==
X-Gm-Message-State: AMke39nUfK5Hmw3h92xiFo0BRWqgpf5kRsCKWA2eUn4nM13fusYLdOLqxtq+waoE4UET/H4nF0aZdwTvn5s63g==
X-Received: by 10.107.27.207 with SMTP id b198mr4705056iob.218.1488836735037;
 Mon, 06 Mar 2017 13:45:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Mon, 6 Mar 2017 13:45:04 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 7 Mar 2017 03:15:04 +0530
Message-ID: <CAOCi2DEH7FrhEY-nOjTHJjZU2KTn8hDvNFuDuQxxYgidboDEOg@mail.gmail.com>
Subject: Netfilter iptables-translate task
To: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hi,

I was trying to work on the iptables-translate task for nft. Here are
a few problems I ran into:
1. How does one find what needs to be translated and isn't already
supported? A bunch of files
 have the xlate function, and how does one find out what functionality
isn't supported yet?
2. If a file does not contain an xlate function, and one wants to add
it, how to figure what will be
the translation from the iptables command to the nft command?
For example, this iptables command:
iptables-translate -A OUTPUT -m connbytes --connbytes 200 \
  --connbytes-dir original --connbytes-mode packets

translates to this:
  nft add rule ip filter OUTPUT ct original packets ge 200 counter

How does one find out that connbytes translates to ct for nft?

Thanks,
Gargi

