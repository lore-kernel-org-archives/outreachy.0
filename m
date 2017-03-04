X-GM-THRID: 6393639502105018368
X-Received: by 10.46.21.11 with SMTP id s11mr1198472ljd.23.1488635200541;
        Sat, 04 Mar 2017 05:46:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.71 with SMTP id 68ls1156467ljf.34.gmail; Sat, 04 Mar 2017
 05:46:39 -0800 (PST)
X-Received: by 10.46.76.17 with SMTP id z17mr1164783lja.13.1488635199219;
        Sat, 04 Mar 2017 05:46:39 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id v201si400435wmv.3.2017.03.04.05.46.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 05:46:39 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id z63so4805807wmg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 05:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=iUzQWoRwZLS9Xj6AMblGGUZX7whzFnHAP+VwxQtbZ1k=;
        b=LQPGFyN0MZjRMFU4gJQbX2OdZfmrYunBeiR/OS4iwL39zG1G0pb4DaOKeOvg4WCTou
         u2/8jtsHRJE9Cl5WnxCkIrOVLIxpAPzyYEfW1sQzSPUTv08dj7vsM8e+WS708XjsQpSd
         /W8afGPOxAzzelyGkG21D9DNSciMnQl/j8DEDlfvzg3HyLvVNduckr74t1CMNvXrHZ3l
         bxfMKJqrbkPxmrVF+kNRe5kyr21tukAAqn51o2w6qucSD9XYRJXnb9wamzkOyX/bVMRX
         cPXABUfkP55jbBj+PnwquFLtyj6aTR2UXa4jdKlB/Nf/7Wttyr8HJ2VQdN++S2Qfyarn
         eAlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=iUzQWoRwZLS9Xj6AMblGGUZX7whzFnHAP+VwxQtbZ1k=;
        b=edKhe/DE+wEYIdAWcX9vWvZhp3blPIKFWuGHaeFyEcO3eVv9zhx4Guwsy/UK5s3Kg6
         kzKNx+FVR5r8Hum0MgyrLR5Mq3FJ7qBmJt2UoDB+aT4dc6/A1tC2dq37ZYUhbpKLKeQ8
         ffbiDqglNf/oWG+5fDSogXukyqr5m5afLFELUPqAFJZy7GanM4Hu8s1KyEYx4w8tH4eh
         eLluU5ZBMygbr0iLj3EZ4ncseOI/+IYPC9owPSUCrQweE9cC6kdig2UHoxftj0DOwflC
         iyvTdf81ojc7V8wsOXnlqQrkD556HRvD2rodBJRXWMUIuNmh8xJGJW1/kNNDe5Cz398Z
         HOfw==
X-Gm-Message-State: AMke39l740i5T/ApfDY2siNCikP37T7zwVye3GjmhI8tcOCiRfzLNcTzF4N8ZrzVmFNPPg==
X-Received: by 10.28.197.133 with SMTP id v127mr6610125wmf.120.1488635198996;
        Sat, 04 Mar 2017 05:46:38 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain ([89.165.243.139])
        by smtp.gmail.com with ESMTPSA id b10sm7090542wmi.34.2017.03.04.05.46.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 05:46:38 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 0/4] staging: iio: adis162xx: Clean-up headers
Date: Sat,  4 Mar 2017 15:46:16 +0200
Message-Id: <cover.1488634510.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

Move contents from adis16201.h, adis16203.h, adis16209.h, adis16240.h
into the corresponding source files, because, for each one of these 
headers, there is one single source file that uses it.

Narcisa Ana Maria Vasile (4):
  staging: iio: adis16201: Move contents of the header to the source
    file
  staging: iio: adis16203: Move contents of the header to the source
    file
  staging: iio: adis16209: Move contents of the header to the source
    file
  staging: iio: adis16240: Move contents of the header to the source
    file

 drivers/staging/iio/accel/adis16201.h      | 144 -----------------------
 drivers/staging/iio/accel/adis16201_core.c | 140 +++++++++++++++++++++-
 drivers/staging/iio/accel/adis16203.h      | 125 --------------------
 drivers/staging/iio/accel/adis16203_core.c | 123 +++++++++++++++++++-
 drivers/staging/iio/accel/adis16209.h      | 144 -----------------------
 drivers/staging/iio/accel/adis16209_core.c | 140 +++++++++++++++++++++-
 drivers/staging/iio/accel/adis16240.h      | 179 -----------------------------
 drivers/staging/iio/accel/adis16240_core.c | 175 +++++++++++++++++++++++++++-
 8 files changed, 573 insertions(+), 597 deletions(-)
 delete mode 100644 drivers/staging/iio/accel/adis16201.h
 delete mode 100644 drivers/staging/iio/accel/adis16203.h
 delete mode 100644 drivers/staging/iio/accel/adis16209.h
 delete mode 100644 drivers/staging/iio/accel/adis16240.h

-- 
1.9.1


