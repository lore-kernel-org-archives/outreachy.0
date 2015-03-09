X-GM-THRID: 7207946027008
X-Received: by 10.66.236.74 with SMTP id us10mr3954792pac.28.1425897806574;
        Mon, 09 Mar 2015 03:43:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.200 with SMTP id s8ls823327igr.37.gmail; Mon, 09 Mar
 2015 03:43:26 -0700 (PDT)
X-Received: by 10.42.142.69 with SMTP id r5mr20013867icu.3.1425897806398;
        Mon, 09 Mar 2015 03:43:26 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id ni4si1709699pdb.2.2015.03.09.03.43.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 03:43:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22f.google.com with SMTP id fl12so62894009pdb.5
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 03:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=rEech17KudM6WZuz/HPECzi6UBo38oTxG85zGHg5s/4=;
        b=vlQKU7wAGSFc2KjkUAUbAwB9eNxfgYAHEzlLnviTdk+7pQvVePw3KQG3+5P0tqweE7
         ED68IykBVCadSaskXoUotT584DaydxGO2lsknf+rXGv3sP0F7e/+hgLdjj1RKeQuGCWU
         Bt1tQqeTw8LhU0N50qQZ+bGbc9vZdK+2uqdJ0137/YaSAUhduPs6v/KzuoqV4BcNXAWa
         kDdKIgEaslETDKMTTCLUTbwIDM+tWMEdGmGxcdwHRDxO/r7nE3k821VJA0rw49EaH6YP
         6YbIOHUJvOMXyNw2+d5MchjXMmAgwe3+GUUde+xd5PpfRtLYDQ82ltNeeGM2RpS47Z6X
         ZNJA==
X-Received: by 10.66.234.2 with SMTP id ua2mr30711625pac.137.1425897806007;
        Mon, 09 Mar 2015 03:43:26 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.18.210])
        by mx.google.com with ESMTPSA id x4sm18665186pas.40.2015.03.09.03.43.23
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 03:43:24 -0700 (PDT)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH 0/5] Removed unnecessary variables in iio
Date: Mon,  9 Mar 2015 16:11:15 +0530
Message-Id: <1425897680-6179-1-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4

Variables used just to store the return value of a function
can be eliminated by modifying the return statement. The following
patchset fixed the same in iio.

Tina Johnson (5):
  drivers: staging: iio: accel: Removed unnecessary variable
  drivers: staging: iio: meter: Removed unnecessary variable
  drivers: staging: iio: meter: Removed unnecessary variable
  drivers: staging: iio: meter: Removed unnecessary variable
  drivers: staging: iio: meter: Removed unnecessary variable

 drivers/staging/iio/accel/sca3000_core.c |    6 ++----
 drivers/staging/iio/meter/ade7758_core.c |    5 ++---
 drivers/staging/iio/meter/ade7758_ring.c |    3 +--
 drivers/staging/iio/meter/ade7854-i2c.c  |    5 +----
 drivers/staging/iio/meter/ade7854-spi.c  |    6 +-----
 5 files changed, 7 insertions(+), 18 deletions(-)

-- 
1.7.10.4


