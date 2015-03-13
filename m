X-GM-THRID: 8139195809792
X-Received: by 10.42.191.79 with SMTP id dl15mr1592936icb.1.1426274575975;
        Fri, 13 Mar 2015 12:22:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.194 with SMTP id f185ls1235974ioe.82.gmail; Fri, 13
 Mar 2015 12:22:55 -0700 (PDT)
X-Received: by 10.66.157.194 with SMTP id wo2mr49879604pab.17.1426274575665;
        Fri, 13 Mar 2015 12:22:55 -0700 (PDT)
Return-Path: <exhora.tat@gmail.com>
Received: from mail-qc0-x229.google.com (mail-qc0-x229.google.com. [2607:f8b0:400d:c01::229])
        by gmr-mx.google.com with ESMTPS id z4si406940qcf.0.2015.03.13.12.22.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 12:22:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of exhora.tat@gmail.com designates 2607:f8b0:400d:c01::229 as permitted sender) client-ip=2607:f8b0:400d:c01::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of exhora.tat@gmail.com designates 2607:f8b0:400d:c01::229 as permitted sender) smtp.mail=exhora.tat@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by qcwr17 with SMTP id r17so29039644qcw.11
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 12:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=52Ds9/TSBwEWVyurl8QM4isDCdSi82/MJe2esm54a6o=;
        b=e8o1j15DDLdOadEp/a+tRPTqHrMagkVwisaiYFA5PV820RfB230MFN7qQGqc7zGnkQ
         eq21rJdBdSMq5EQ6l1Iq0TfjwPKBNP+jX23cvHX2Y/0Ix9jSvELJ4WUuVO1iR4bw9tKl
         vRQCZqYZKRdIdSkb8CJqkZzHDfoVdwxI3lL+aOBtQHCYVJxDMu/dfSV2YvWo4JM5mY5C
         tHuMKrqHTe1ZEUnYKAvFrGg1qj7kwwUsYOrJZeLwJAa+LcyXalBeEqy0tedcgAZrsXi+
         73JN6W5wj8uPd5FfiO1vMHpvoDnRJhdF47zCNspqI2XrO6Ji5R/ToWRbuorgntkfSMaq
         oZRQ==
X-Received: by 10.140.95.43 with SMTP id h40mr60123807qge.68.1426274575526;
        Fri, 13 Mar 2015 12:22:55 -0700 (PDT)
Return-Path: <exhora.tat@gmail.com>
Received: from localhost.localdomain (athena.ime.usp.br. [143.107.45.11])
        by mx.google.com with ESMTPSA id z78sm1987694qkg.44.2015.03.13.12.22.53
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 12:22:54 -0700 (PDT)
From: Taiane Coelho Ramos <exhora.tat@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Taiane Coelho Ramos <exhora.tat@gmail.com>
Subject: [PATCH v2] Staging: iio: ade7758: Remove braces on a single statement if
Date: Fri, 13 Mar 2015 16:22:44 -0300
Message-Id: <1426274564-4074-1-git-send-email-exhora.tat@gmail.com>
X-Mailer: git-send-email 1.9.3

This patch fixes the checkpatch.pl warning:

WARNING: braces {} are not necessary for single
statement blocks

Signed-off-by: Taiane Coelho Ramos <exhora.tat@gmail.com>
---
Changes in v2:
  - Make the commit message more clear.

 drivers/staging/iio/meter/ade7758_ring.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_ring.c b/drivers/staging/iio/meter/ade7758_ring.c
index 9725a04..ead38a5 100644
--- a/drivers/staging/iio/meter/ade7758_ring.c
+++ b/drivers/staging/iio/meter/ade7758_ring.c
@@ -119,9 +119,8 @@ int ade7758_configure_ring(struct iio_dev *indio_dev)
 	int ret = 0;
 
 	buffer = iio_kfifo_allocate();
-	if (!buffer) {
+	if (!buffer)
 		return -ENOMEM;
-	}
 
 	iio_device_attach_buffer(indio_dev, buffer);
 
-- 
1.9.3


