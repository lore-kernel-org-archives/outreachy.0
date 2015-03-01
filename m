X-GM-THRID: 5512019050496
X-Received: by 10.182.126.168 with SMTP id mz8mr24171134obb.9.1425233840865;
        Sun, 01 Mar 2015 10:17:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.137 with SMTP id k9ls1322044qge.6.gmail; Sun, 01 Mar
 2015 10:17:20 -0800 (PST)
X-Received: by 10.236.70.234 with SMTP id p70mr22187699yhd.56.1425233840696;
        Sun, 01 Mar 2015 10:17:20 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id hs7si1230966pad.1.2015.03.01.10.17.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 10:17:20 -0800 (PST)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfa1 with SMTP id fa1so1591429pad.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 10:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=6mVSBdHGimhxHq73o5GsYGzQfdKCMAqaCYxdbFqyDXw=;
        b=X5Z5sqkVeJIaOHodAuZd7pDkkAvAn5ypDmDJkONQi3paIyhN3PftnyXbJclqkg0vkd
         TcSt4qUNjPG0KVaj6axbLBd5EnCYpUe4SJAm/DXpdtG3rdtzyaaBw1Y7QTzxCuKFxk2l
         9oG0YQ9KFoGc/ZMSvnIakupq7lvxAHuDAfd6WEbK5bceA5VZVuh/C4/3UhNEPJ4z2XM0
         IyK1AstvkEoVf1lSoH9VUsf6FNSccw2C1IvyCo3mAfuD1owRVClQrLeB6FnNDr7VANEV
         Ua2+Kv4kw6N/f0KFFEjY4WDtw/NP/X4bc/uUrCYTe0m8mdBaCj+BVbgnM7/L7b4HuRXI
         ONhA==
X-Received: by 10.66.142.228 with SMTP id rz4mr41547533pab.86.1425233840572;
        Sun, 01 Mar 2015 10:17:20 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([111.92.71.90])
        by mx.google.com with ESMTPSA id in1sm9714808pbc.19.2015.03.01.10.17.18
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 10:17:19 -0800 (PST)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH 0/2] Replaced printk() with pr_err() in lustre
Date: Sun,  1 Mar 2015 23:45:05 +0530
Message-Id: <1425233707-9585-1-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4

The following patches replaces printk() with pr_err() to remove
the checkpatch warning:

Prefer [subsystem eg: netdev]_err([subsystem]dev)

Tina Johnson (2):
  staging: lustre: lustre: libcfs: Replaced printk() with pr_err()
  staging: lustre: lustre: libcfs: Replaced printk() with pr_err()

 drivers/staging/lustre/lustre/libcfs/module.c    |    4 ++--
 drivers/staging/lustre/lustre/libcfs/tracefile.c |   19 +++++++++----------
 2 files changed, 11 insertions(+), 12 deletions(-)

-- 
1.7.10.4


