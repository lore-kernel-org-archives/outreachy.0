X-GM-THRID: 6252584121027002368
X-Received: by 10.129.72.199 with SMTP id v190mr6348554ywa.44.1455793188223;
        Thu, 18 Feb 2016 02:59:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.7 with SMTP id rs7ls137555igb.14.gmail; Thu, 18 Feb
 2016 02:59:47 -0800 (PST)
X-Received: by 10.107.169.88 with SMTP id s85mr7775285ioe.30.1455793187977;
        Thu, 18 Feb 2016 02:59:47 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ff2si897051pad.2.2016.02.18.02.59.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 02:59:47 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e127so1936068pfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 02:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tkxFGfTXXTQO4wEToTUrA1hA9TQWQCuwVlLAZ+2KjFI=;
        b=OFH7y0YSI41i+2Ja7pHuEHuJ39eLivXoxK0d+2G9fB7p4kt+cF5jPaP/PXc7Q0Z+Sv
         EDr30PIPk3rja4MDdMfj+gQkzsZzArNgaV+KDn3x897vWH9jmi5Vrsg3CsHCTE/ue6ME
         1/Rrz9dTYOW+ggmsTOOtjfDzYACUzKnzaLXh69jR7qtwIBNkeuOejmi27yP+VhVKLhOb
         OmRg8qUWsTx9d7ols4EXaiKv2BRkE5IVlOLHllHxh5AUHl5Di2WYuHM1L9HKySRIONBv
         nSd+eFSlLd+PrUGejVD+1f9DJkPKWDr3RMgB+65QJJcVg6XQgYOK5xGh1VozdZSY9j3C
         ZG5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=tkxFGfTXXTQO4wEToTUrA1hA9TQWQCuwVlLAZ+2KjFI=;
        b=AaljpIpM+5BNSc3eBO9MptYkFZUCQ82MMtpoWr6tMkcHnRVFJBACLgLhnCbF/fBzt9
         wJxZlsTI6+A7ReNvIgPrX1gCRUN1qgbA0rEYqNYp1vzK6x/Of/kUSRlLXwtV5EEIsX+5
         UQ2d7H7iEN4+uGDlAE4m6Y+6i58AICdrPPzrrZy12rLoPfrc/ux3ygpPaeyV+NuKa78D
         JwQ47jWqD5iA+R4mUxhRnqMsaxrhRYszoishx3FTHNYW+FfSNLr7hQda07pdRZolPYtU
         P1hWU3yojMoT9TQGv70kTruZlNp9h3BMkY8QJ2mOIQayNdMlfMhKIQG8dkExFKC3Qi8m
         GIKQ==
X-Gm-Message-State: AG10YOSONQ511dlzq+9tvAH+SiaHyGZUKSzbw1pyvDAVy41drM1Lk8o++2T9Jq7qjPAzNw==
X-Received: by 10.98.15.145 with SMTP id 17mr9030920pfp.19.1455793187860;
        Thu, 18 Feb 2016 02:59:47 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.106])
        by smtp.gmail.com with ESMTPSA id xu1sm9302139pab.31.2016.02.18.02.59.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 02:59:47 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 1/7] staging: iio: resolver: align to match open parenthesis
Date: Thu, 18 Feb 2016 18:59:33 +0800
Message-Id: <1455793179-2674-2-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>
References: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>

Use a combination of tabs and spaces to align parameters to its
corresponding open parenthesis. Checkpatch found this issue.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/resolver/ad2s1200.c | 10 +++++-----
 drivers/staging/iio/resolver/ad2s1210.c | 18 ++++++++++--------
 2 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1200.c b/drivers/staging/iio/resolver/ad2s1200.c
index 595e711..77fa7911 100644
--- a/drivers/staging/iio/resolver/ad2s1200.c
+++ b/drivers/staging/iio/resolver/ad2s1200.c
@@ -42,10 +42,10 @@ struct ad2s1200_state {
 };
 
 static int ad2s1200_read_raw(struct iio_dev *indio_dev,
-			   struct iio_chan_spec const *chan,
-			   int *val,
-			   int *val2,
-			   long m)
+			     struct iio_chan_spec const *chan,
+			     int *val,
+			     int *val2,
+			     long m)
 {
 	int ret = 0;
 	s16 vel;
@@ -113,7 +113,7 @@ static int ad2s1200_probe(struct spi_device *spi)
 					    DRV_NAME);
 		if (ret) {
 			dev_err(&spi->dev, "request gpio pin %d failed\n",
-							pins[pn]);
+				pins[pn]);
 			return ret;
 		}
 	}
diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index d97aa28..f11832c 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -123,7 +123,7 @@ static int ad2s1210_config_write(struct ad2s1210_state *st, u8 data)
 
 /* read value from one of the registers */
 static int ad2s1210_config_read(struct ad2s1210_state *st,
-		       unsigned char address)
+				unsigned char address)
 {
 	struct spi_transfer xfer = {
 		.len = 2,
@@ -282,8 +282,8 @@ static ssize_t ad2s1210_show_control(struct device *dev,
 }
 
 static ssize_t ad2s1210_store_control(struct device *dev,
-			struct device_attribute *attr,
-			const char *buf, size_t len)
+				      struct device_attribute *attr,
+				      const char *buf, size_t len)
 {
 	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
 	unsigned char udata;
@@ -330,7 +330,8 @@ error_ret:
 }
 
 static ssize_t ad2s1210_show_resolution(struct device *dev,
-			struct device_attribute *attr, char *buf)
+					struct device_attribute *attr,
+					char *buf)
 {
 	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
 
@@ -338,8 +339,8 @@ static ssize_t ad2s1210_show_resolution(struct device *dev,
 }
 
 static ssize_t ad2s1210_store_resolution(struct device *dev,
-			struct device_attribute *attr,
-			const char *buf, size_t len)
+					 struct device_attribute *attr,
+					 const char *buf, size_t len)
 {
 	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
 	unsigned char data;
@@ -389,7 +390,7 @@ error_ret:
 
 /* read the fault register since last sample */
 static ssize_t ad2s1210_show_fault(struct device *dev,
-			struct device_attribute *attr, char *buf)
+				   struct device_attribute *attr, char *buf)
 {
 	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
 	int ret;
@@ -441,7 +442,8 @@ static ssize_t ad2s1210_show_reg(struct device *dev,
 }
 
 static ssize_t ad2s1210_store_reg(struct device *dev,
-		struct device_attribute *attr, const char *buf, size_t len)
+				  struct device_attribute *attr,
+				  const char *buf, size_t len)
 {
 	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
 	unsigned char data;
-- 
1.9.1


