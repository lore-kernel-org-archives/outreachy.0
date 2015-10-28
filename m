X-GM-THRID: 6210837635007512576
X-Received: by 10.112.145.201 with SMTP id sw9mr9894121lbb.13.1446073327138;
        Wed, 28 Oct 2015 16:02:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.40.213 with SMTP id o204ls13782lfo.38.gmail; Wed, 28 Oct
 2015 16:02:06 -0700 (PDT)
X-Received: by 10.112.164.1 with SMTP id ym1mr6018324lbb.6.1446073326605;
        Wed, 28 Oct 2015 16:02:06 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id g18si165096wmd.1.2015.10.28.16.02.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 16:02:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x241.google.com with SMTP id l128so1201091wml.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 16:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=BwXy5W/c0nskV27ICUaoRGrRCVVBI/kz7TLrqSTjp2w=;
        b=rC/SGOcEj8hCbGNy8+ueLdi8ATZDkmjbO1HcxNe+/Pp+GipNJFIydoGQOMlvt/opUr
         jdrrUKrtLyfd5pVPdVqxNPK7PdEiD2lwA/n90tWDFMo/XzzdtvmW5/+UPUduA2y804xN
         rkVwuiTFX6YcxSv9GNq3gqXoJ7Lwp4xVqdO8unn81y2Dr37aDXulblihYdcLrnPpwcXh
         h6E/Og6MXGYRQonsctIU39MJQr+fr1g1J3v/LbK3CfBr7J4/6gnj5ucUd2cNcbLCz9nu
         xajmmQEBoWkZxn4jihNevQTJysEg6SLjknHN61TIJjSQHDsGZux4Hu5FZtQFUefpoXPF
         ECow==
X-Received: by 10.28.15.196 with SMTP id 187mr3216467wmp.34.1446073326508;
        Wed, 28 Oct 2015 16:02:06 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id 199sm6138472wml.22.2015.10.28.16.02.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Oct 2015 16:02:06 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 2/8] staging: iio: accel: properly align function arguments
Date: Thu, 29 Oct 2015 01:01:49 +0200
Message-Id: <cca7ace615dd86ecc938b81d32dfad4077ab1667.1446073162.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>

This patch properly aligns the function arguments or
its parameters in order to match the open bracket.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/accel/sca3000_core.c | 17 +++++++++--------
 drivers/staging/iio/accel/sca3000_ring.c |  6 +++---
 2 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
index 311c8a1..6aadaff 100644
--- a/drivers/staging/iio/accel/sca3000_core.c
+++ b/drivers/staging/iio/accel/sca3000_core.c
@@ -476,7 +476,8 @@ static int sca3000_read_raw(struct iio_dev *indio_dev,
 		} else {
 			/* get the temperature when available */
 			ret = sca3000_read_data_short(st,
-				SCA3000_REG_ADDR_TEMP_MSB, 2);
+						      SCA3000_REG_ADDR_TEMP_MSB,
+						      2);
 			if (ret < 0) {
 				mutex_unlock(&st->lock);
 				return ret;
@@ -511,8 +512,8 @@ static int sca3000_read_raw(struct iio_dev *indio_dev,
  * at all.
  **/
 static ssize_t sca3000_read_av_freq(struct device *dev,
-			     struct device_attribute *attr,
-			     char *buf)
+				    struct device_attribute *attr,
+				    char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct sca3000_state *st = iio_priv(indio_dev);
@@ -582,8 +583,8 @@ error_ret:
  * sca3000_read_frequency() sysfs interface to get the current frequency
  **/
 static ssize_t sca3000_read_frequency(struct device *dev,
-			       struct device_attribute *attr,
-			       char *buf)
+				      struct device_attribute *attr,
+				      char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct sca3000_state *st = iio_priv(indio_dev);
@@ -623,9 +624,9 @@ error_ret:
  * sca3000_set_frequency() sysfs interface to set the current frequency
  **/
 static ssize_t sca3000_set_frequency(struct device *dev,
-			      struct device_attribute *attr,
-			      const char *buf,
-			      size_t len)
+				     struct device_attribute *attr,
+				     const char *buf,
+				     size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct sca3000_state *st = iio_priv(indio_dev);
diff --git a/drivers/staging/iio/accel/sca3000_ring.c b/drivers/staging/iio/accel/sca3000_ring.c
index a029af0..f6a6083 100644
--- a/drivers/staging/iio/accel/sca3000_ring.c
+++ b/drivers/staging/iio/accel/sca3000_ring.c
@@ -160,9 +160,9 @@ static ssize_t sca3000_query_ring_int(struct device *dev,
  * sca3000_set_ring_int() set state of ring status interrupt
  **/
 static ssize_t sca3000_set_ring_int(struct device *dev,
-				      struct device_attribute *attr,
-				      const char *buf,
-				      size_t len)
+				    struct device_attribute *attr,
+				    const char *buf,
+				    size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct sca3000_state *st = iio_priv(indio_dev);
-- 
2.1.4


