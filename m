X-GM-THRID: 6138556841984
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,db883bf8dd7e9dae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.28.137 with SMTP id b9mr4605723lah.8.1425392862928;
        Tue, 03 Mar 2015 06:27:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.193 with SMTP id t1ls774959wia.30.canary; Tue, 03 Mar
 2015 06:27:42 -0800 (PST)
X-Received: by 10.180.13.195 with SMTP id j3mr3019422wic.2.1425392862569;
        Tue, 03 Mar 2015 06:27:42 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id by11si931576wib.1.2015.03.03.06.27.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 06:27:42 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x230.google.com with SMTP id l18so40334649wgh.8
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 06:27:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=4Wf/YPU8w2fdEsWJfmpX3fcK4J2HBiA1NJKxl0r2zEc=;
        b=qrqO8J8VEpY71hRBHQdIgq9kYrUH4zvfrB1ryMw3qOgqzP8Mbp1Nj3qWDjClnUF2tI
         7IuV0RLU7UAc3OWpBunSsfa+FlZtj8BHk/1TXSbhKdFepaPajdb9LrdXoSfV2pZw2use
         Ku5GXIm0sIy+FXEwDcqqYdUEtZrnNn0yEtU5f5LCy9t59K0l18F+QjfzzzpVIHXvEB/O
         6eFhw4w3pfwSGS1pettd861U6adLx7gDvzUGe9+TcaTstjhaejBxoKLiGD/0WrmInQL7
         5L286NCMAYYRVcbU0k1cP3zBIsxgUT0ovQUh2lkS8WYLOEMkp4Gj+TPBsETYhBvm73GT
         ztRQ==
X-Received: by 10.180.81.7 with SMTP id v7mr3342437wix.27.1425392862457;
        Tue, 03 Mar 2015 06:27:42 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id w4sm2682294wib.19.2015.03.03.06.27.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 06:27:41 -0800 (PST)
Date: Tue, 3 Mar 2015 16:27:37 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v5] staging: iio: meter: add check on return variables
Message-ID: <20150303142737.GA27100@waves>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

adds checks on variables that are used to return values. If
the value is less than zero, this indicates that an error
occurred and hence a message is printed through dev_err.
Checks are made on negative values only since spi_* functions
return negative error codes.

The functions were found using the following script but the
aforementioned modification was what was carried out in the end:
@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v1: added checks on last calls only.
v2: added checks on all calls that return values along with labels.
v3: added changelog that was missed in v2.
v4: adjusted the patch to state how the problem was discovered, simplify
the if conditions and avoid redundant error messages.
v5: added driver specific error messages

 drivers/staging/iio/meter/ade7758_core.c | 30 ++++++++++++++++--------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 70e96b2..7e287da 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -303,14 +303,15 @@ static int ade7758_reset(struct device *dev)
 	int ret;
 	u8 val;
 
-	ade7758_spi_read_reg_8(dev,
-			ADE7758_OPMODE,
-			&val);
+	ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
+	if (ret < 0) {
+		dev_err(dev, "Failed to read opmode reg\n");
+		return ret;
+	}
 	val |= 1 << 6; /* Software Chip Reset */
-	ret = ade7758_spi_write_reg_8(dev,
-			ADE7758_OPMODE,
-			val);
-
+	ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
+	if (ret < 0)
+		dev_err(dev, "Failed to write opmode reg\n");
 	return ret;
 }
 
@@ -444,14 +445,15 @@ static int ade7758_stop_device(struct device *dev)
 	int ret;
 	u8 val;
 
-	ade7758_spi_read_reg_8(dev,
-			ADE7758_OPMODE,
-			&val);
+	ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
+	if (ret < 0) {
+		dev_err(dev, "Failed to read opmode reg\n");
+		return ret;
+	}
 	val |= 7 << 3;  /* ADE7758 powered down */
-	ret = ade7758_spi_write_reg_8(dev,
-			ADE7758_OPMODE,
-			val);
-
+	ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
+	if (ret < 0)
+		dev_err(dev, "Failed to write opmode reg\n");
 	return ret;
 }
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

