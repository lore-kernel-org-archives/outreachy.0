X-GM-THRID: 9842395709440
X-Received: by 10.152.19.67 with SMTP id c3mr2525849lae.7.1427317221047;
        Wed, 25 Mar 2015 14:00:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.130 with SMTP id q2ls1355660wiy.13.canary; Wed, 25 Mar
 2015 14:00:20 -0700 (PDT)
X-Received: by 10.180.83.41 with SMTP id n9mr2928879wiy.4.1427317220706;
        Wed, 25 Mar 2015 14:00:20 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id bz6si1008639wib.3.2015.03.25.14.00.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 14:00:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x233.google.com with SMTP id cc7so41360492wgb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 14:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=iXn2V4RbDF4UKJMijZn5TcPoIvrwgSzZxwcmo31xauk=;
        b=prU4n89d7+tcf0FJWymK83u6kKMYyjWYJDO6S1zAdrBbbTw/VqfOLtdEDiJnykZ+AU
         X6McRfqnrFrSsffVz83GjYrI0IxyVy9VRRt6BeW3nWPV8XJNXRUmjNZHdLMf7zWqpbnb
         cNi6Lc/X+cs0KI6EwRGRRZMBvh46zFH3Fb7H7/26L7E523luNGzNNG6g8vL5CdYb4lPM
         zn4uh/iyLXJB12QrmU8AcwFLkXbXgdLXT0T4S7LIY7rfQFCKMwlWC2JMi1b5kZOTMrUq
         2ueVLmBmMABhdokWJMeXP/fZV0DPBRekXeEY/fFDrfkyW0wqiaJJklZNYJIinf5uMPnl
         MgnA==
X-Received: by 10.194.210.103 with SMTP id mt7mr21922144wjc.103.1427317220606;
        Wed, 25 Mar 2015 14:00:20 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.49.71])
        by mx.google.com with ESMTPSA id dn7sm7331814wid.12.2015.03.25.14.00.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 14:00:19 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id C4856C1FFD; Wed, 25 Mar 2015 10:49:44 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 0/4] Staging: iio: Fix coding style issues in adc
Date: Wed, 25 Mar 2015 10:49:42 +0300
Message-Id: <1427269782-4769-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset addresses the follwoing coding style issues:
Alignment should match open parenthesis
don't use multiple blank lines
braces {} should be used on all arms of this statement
Missing blank line after function declaration

Haneen Mohammed (4):
  Staging: iio: Adjust alignment for function parameters
  Staging: iio: remove multible blank lines
  Staging: iio: add blank line after function declaration
  Staging: iio: Add braces on all arms of if statement

 drivers/staging/iio/accel/adis16201_core.c |  8 +++---
 drivers/staging/iio/accel/adis16203_core.c |  4 +--
 drivers/staging/iio/accel/adis16204_core.c |  8 +++---
 drivers/staging/iio/accel/adis16209_core.c |  9 +++----
 drivers/staging/iio/accel/adis16220_core.c | 41 ++++++++++++++----------------
 drivers/staging/iio/accel/adis16240_core.c | 21 ++++++++-------
 drivers/staging/iio/accel/lis3l02dq.h      |  2 ++
 drivers/staging/iio/accel/lis3l02dq_core.c |  6 ++---
 drivers/staging/iio/accel/lis3l02dq_ring.c | 12 +++++----
 9 files changed, 57 insertions(+), 54 deletions(-)

-- 
1.9.1


