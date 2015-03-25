X-GM-THRID: 9842395709440
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f3d42db10bb65f32
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.12.74 with SMTP id eo10mr4754864wid.2.1427317410006;
        Wed, 25 Mar 2015 14:03:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.180.75 with SMTP id dm11ls163352lac.70.gmail; Wed, 25 Mar
 2015 14:03:29 -0700 (PDT)
X-Received: by 10.112.118.203 with SMTP id ko11mr2494535lbb.15.1427317409242;
        Wed, 25 Mar 2015 14:03:29 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id na10si297060wic.0.2015.03.25.14.03.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 14:03:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22c.google.com with SMTP id m6so42158957wgd.2
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 14:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NE2KrB8uLrZdk6GoCgk5UJYpT5f0Q4eTyEU+AsQ1OCM=;
        b=MT60ORrRGC2RJDwXiHr23ilBDlQtBvFMzCE9bJKElGn//SOiq9ES+TxjlwehSGRWRR
         lIZLAQABG/1ZhL4QsQHhVGVAMzVk2EspYtnskZY9T38qNlLsfzKBEO10jdYFloP8xVlc
         CzOQGy49yOawWytoxoE5Qf2lABjyCxTMcIddcrEdktCRhpVHVslSXgO+aE286NtZfXbW
         aeEbPc8gqNkNbDLsV+PheVSLC+62gdtStBIq5Z8DtluGgJk5Dl2yxv98GtZv68Kmtt3o
         AXkQieVln6qCpDyZfwG4xqI136TTYzMvJc8yDRyDafQgw7SlX+2DR4HGOo8MR47NYVCy
         t0KQ==
X-Received: by 10.194.47.201 with SMTP id f9mr21286499wjn.17.1427317409143;
        Wed, 25 Mar 2015 14:03:29 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.49.71])
        by mx.google.com with ESMTPSA id m4sm5362080wjb.25.2015.03.25.14.03.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 14:03:28 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 868ACC1FFD; Wed, 25 Mar 2015 10:52:52 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 2/4] Staging: iio: remove multible blank lines
Date: Wed, 25 Mar 2015 10:52:51 +0300
Message-Id: <1427269971-4920-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427269782-4769-1-git-send-email-hamohammed.sa@gmail.com>
References: <1427269782-4769-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes extra blank lines to address checkpatch.pl warnings
regarding that.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/iio/accel/adis16209_core.c | 1 -
 drivers/staging/iio/accel/adis16220_core.c | 3 ---
 drivers/staging/iio/accel/lis3l02dq_core.c | 2 --
 3 files changed, 6 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16209_core.c b/drivers/staging/iio/accel/adis16209_core.c
index 2a15899..d1dc1a3 100644
--- a/drivers/staging/iio/accel/adis16209_core.c
+++ b/drivers/staging/iio/accel/adis16209_core.c
@@ -178,7 +178,6 @@ static const struct adis_data adis16209_data = {
 		BIT(ADIS16209_DIAG_STAT_POWER_LOW_BIT),
 };
 
-
 static int adis16209_probe(struct spi_device *spi)
 {
 	int ret;
diff --git a/drivers/staging/iio/accel/adis16220_core.c b/drivers/staging/iio/accel/adis16220_core.c
index 7557e3c..e46a91c 100644
--- a/drivers/staging/iio/accel/adis16220_core.c
+++ b/drivers/staging/iio/accel/adis16220_core.c
@@ -138,7 +138,6 @@ static ssize_t adis16220_capture_buffer_read(struct iio_dev *indio_dev,
 	/* read count/2 values from capture buffer */
 	mutex_lock(&st->buf_lock);
 
-
 	for (i = 0; i < count; i += 2) {
 		st->tx[i] = ADIS_READ_REG(addr);
 		st->tx[i + 1] = 0;
@@ -147,7 +146,6 @@ static ssize_t adis16220_capture_buffer_read(struct iio_dev *indio_dev,
 
 	ret = spi_sync_transfer(st->adis.spi, xfers, ARRAY_SIZE(xfers));
 	if (ret) {
-
 		mutex_unlock(&st->buf_lock);
 		return -EIO;
 	}
@@ -213,7 +211,6 @@ static ssize_t adis16220_adc2_bin_read(struct file *filp, struct kobject *kobj,
 					ADIS16220_CAPT_BUF2);
 }
 
-
 static struct bin_attribute adc2_bin = {
 	.attr = {
 		.name = "in1_bin",
diff --git a/drivers/staging/iio/accel/lis3l02dq_core.c b/drivers/staging/iio/accel/lis3l02dq_core.c
index 66bbb89..ebcab56 100644
--- a/drivers/staging/iio/accel/lis3l02dq_core.c
+++ b/drivers/staging/iio/accel/lis3l02dq_core.c
@@ -558,13 +558,11 @@ static const struct iio_chan_spec lis3l02dq_channels[] = {
 	IIO_CHAN_SOFT_TIMESTAMP(3)
 };
 
-
 static int lis3l02dq_read_event_config(struct iio_dev *indio_dev,
 				       const struct iio_chan_spec *chan,
 				       enum iio_event_type type,
 				       enum iio_event_direction dir)
 {
-
 	u8 val;
 	int ret;
 	u8 mask = (1 << (chan->channel2*2 + (dir == IIO_EV_DIR_RISING)));
-- 
1.9.1


