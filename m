X-GM-THRID: 6212167726355447808
X-Received: by 10.112.12.131 with SMTP id y3mr519698lbb.5.1446383010440;
        Sun, 01 Nov 2015 05:03:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.201 with SMTP id q192ls387753lfe.23.gmail; Sun, 01 Nov
 2015 05:03:29 -0800 (PST)
X-Received: by 10.112.181.194 with SMTP id dy2mr2162260lbc.11.1446383009631;
        Sun, 01 Nov 2015 05:03:29 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id 13si349732wml.2.2015.11.01.05.03.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 05:03:29 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x235.google.com with SMTP id f134so40199650wmf.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 05:03:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=wTq/KS5mlzGVlUAX7Ti1bUip2I6WzaZ7WWcVQlUerQo=;
        b=A1qeA2XeMJqyaoecQHnW0G7gSXdEtB9dFMohStt3m4DAwzCQRAV6FmPfoj0lyoE/3a
         K1d+i7Mz92BUMIPMWjC9ClzgHxhMVaxhKMlrF4vO7LL7TySvPFvZWWj+LkMDKgZxPgyI
         MH6JrNnWNSVJzAhCpx3vEW9K7P+HPss7Xuv13mDnGIGbh4LUFuZyraVz4etDMpgH9KH3
         mmemIFH9MT28ZW7/IrKzhZL0QZvmFc90qcL5yFlT3sYCR+tei6zOjgWU/c98jzGxhi42
         0e+hn5+5PO1sn6REeCzZ8HGSzJa7SItrJ+bSGRzaafYJee1f+oW5juJgyLS2HKxFxmWe
         McPg==
X-Received: by 10.28.11.205 with SMTP id 196mr7548043wml.83.1446383009527;
        Sun, 01 Nov 2015 05:03:29 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id m137sm12766433wmb.2.2015.11.01.05.03.28
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 05:03:29 -0800 (PST)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: linux-iio@vger.kernel.org,
	jic23@kernel.org
Cc: outreachy-kernel@googlegroups.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 0/2] iio: check return value of sscanf
Date: Sun,  1 Nov 2015 15:03:23 +0200
Message-Id: <1446383003-12924-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

This patchset fixes the checkpatch.pl warnings:
WARNING: unchecked sscanf return value
by checking that the return value of sscanf call is the one
expected.


Ioana Ciornei (2):
  iio: gyro: check sscanf return value
  iio: imu: check sscanf return value

 drivers/iio/gyro/adis16136.c     | 4 +++-
 drivers/iio/imu/adis16400_core.c | 6 +++++-
 drivers/iio/imu/adis16480.c      | 4 +++-
 3 files changed, 11 insertions(+), 3 deletions(-)

-- 
2.1.4


