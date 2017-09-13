X-GM-THRID: 6465236897552662528
X-Received: by 10.13.224.71 with SMTP id j68mr11565728ywe.212.1505305268475;
        Wed, 13 Sep 2017 05:21:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.142.211 with SMTP id q202ls3055569iod.11.gmail; Wed, 13
 Sep 2017 05:21:06 -0700 (PDT)
X-Received: by 10.107.83.9 with SMTP id h9mr1405298iob.96.1505305266003;
        Wed, 13 Sep 2017 05:21:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505305265; cv=none;
        d=google.com; s=arc-20160816;
        b=oJ9MwkboDEs/rcmjY8zbXNKmclo7xlqT43AUE9KNlsKYBDYISul9vUt5eNfnzfKhUE
         km1XdPyGK8tTyBiYiM6GVKd7x30oFI2Pb733ZS9b3PLupMMikDizX/6RPoTgtOrzmR9t
         rNnE16TgX7LgiRRIpX8njFjTIEU00BQbGIpcYPXrRdWA0/0X8Z+lFHxwPgHCdKIBFDSg
         TaQlYS6TABXO5rT2gWwTSog1D2r1kqwfMRvbFZIaYg5irHBwg3OpAXz7EyYKvqVYTNvM
         ymG08K67TR9W1uVFdXCsfCgGGUojmdfSB8F1pjkrlz6j3t8tDUZH+7FbSs/9N3x2nkK8
         Zw9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=WFfXniosuBylBJSd+vFZy2FvLpNctxNutQe+HoqXPOk=;
        b=d0j1+KsCzBQJyS8DzhoencykGrlbcknIlxkueT8iXbprxL3zwgeLpFMhPW82c8JqCZ
         LD926US6atIVbvGb1lrAPHMqfKpRp9JdGmdyoG7WztEYe8YgtqW8FzamLmdxKupJ1RfT
         gpYTrb0n978IpfO7rGiIRfK6ludKq+ISYiRDRhAVZuGGRZ4KzlgfK95H3gLYkz2uL6md
         jcovNdZeS7Qsbg6+Mt+0Vvd/Gxuo6iHa/ihqnfLxbpXQK8dlGjQfhSOk0jc3oDkxqojB
         n5gFshyeWs3WFEV/U62Pk3vlfJk9jjsEDqO0xxAh3gRODELBA2Kp5yjaNep2t/3Skw9y
         n8Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e/0Vzce8;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-io0-x244.google.com (mail-io0-x244.google.com. [2607:f8b0:4001:c06::244])
        by gmr-mx.google.com with ESMTPS id u4si948729ywc.2.2017.09.13.05.21.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 05:21:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) client-ip=2607:f8b0:4001:c06::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e/0Vzce8;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x244.google.com with SMTP id j141so292840ioj.5
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 05:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WFfXniosuBylBJSd+vFZy2FvLpNctxNutQe+HoqXPOk=;
        b=e/0Vzce8EIDPTmdCO4lGI+CHv33XAt5bRm7F67a50dTS7C+DE7gTjsFmwt4YEB9Q1L
         IBy/xn5T9aAh/KMt9fdoRn9VoZ8ekx5/jQylNwTS4elwiJ3frQ4HVYi7ShQqSOKQYSsy
         PWBP/qIGaFzmSog4LoClbK4mKhu68/8DJCEOBgXttJRSpFB8OL62wdTv/BnbTq2SwoFc
         93S4zs7/42F/7Is+2HXftAkofIM8QG4pe2OgbKmrk8vQedVT2bufBfjN0u57bsb6Q8d8
         jZCA/CwAwtGTpAuVzqqomuwVwXvE1JQop4iqQjJwGROEzMrC6Fw7E/PLGDobEv5yiPqg
         Vdzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WFfXniosuBylBJSd+vFZy2FvLpNctxNutQe+HoqXPOk=;
        b=EdZxEN3vQ3sM+4YhdObF5+pp4WuzYaBiFi6ybW6uEpSVTbtD3/rXp1jnKUjCvEE+Uk
         7v0SMO8ld8MBAhT7aiH0PBmK4WoEpCjyUxlfjmBRoNbHHqOKVy8+O/jbdqJMFqx7B2Vz
         bqon2Cr6qt5tG7UxsHdY4GdvMqa7do+9sj3t3P4FIbHQMnAa/Ix9Y96WRCpmOlpyLQ9a
         r0fWFtK0f4J262J3YuGsIwD1F5aKFrAyQTZW0NWi7cGpTPJDpz1NkkkEFEqAWTF06eyQ
         rzMFgXTHmeYRnbCBF7UPmzVlyCuQNxH9VnHZERRrIQlwlbrRnB9BTJaOjh/UzYbe7oHn
         8NHw==
X-Gm-Message-State: AHPjjUjAixavuqU8DX1LXV7F4GRYbnayk4DxWL0OecvVRNezfwHDGi34
	qRdzOZkNgqunCatrmOU=
X-Google-Smtp-Source: AOwi7QBMAons74tP0db4iodf/5b/8riJ/iFZqpJKwmq0JDTR153dRnwxakF9z2RL7DrO0oykYTWzwQ==
X-Received: by 10.107.47.9 with SMTP id j9mr24712837ioo.176.1505305265714;
        Wed, 13 Sep 2017 05:21:05 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([117.239.205.194])
        by smtp.gmail.com with ESMTPSA id m133sm749957itb.31.2017.09.13.05.21.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 13 Sep 2017 05:21:05 -0700 (PDT)
Date: Wed, 13 Sep 2017 17:51:00 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: dax: change sprintf to snprintf
Message-ID: <20170913122100.GA5821@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default

To avoid buffer overflow bugs like (CVE-120), we need to use
snprintf function by also explicitly mentioning the size of
the buffer.

found using flawfinder

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/dax/device.c | 16 ++++++++--------
 drivers/dax/super.c  |  6 +++---
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/dax/device.c b/drivers/dax/device.c
index e9f3b3e..f34e543 100644
--- a/drivers/dax/device.c
+++ b/drivers/dax/device.c
@@ -30,31 +30,31 @@ static struct class *dax_class;
  * is cleared to assume that drvdata is always valid.
  */
 static ssize_t id_show(struct device *dev,
-		struct device_attribute *attr, char *buf)
+		struct device_attribute *attr, char *buf, size_t size)
 {
 	struct dax_region *dax_region = dev_get_drvdata(dev);
 
-	return sprintf(buf, "%d\n", dax_region->id);
+	return snprintf(buf, size, "%d\n", dax_region->id);
 }
 static DEVICE_ATTR_RO(id);
 
 static ssize_t region_size_show(struct device *dev,
-		struct device_attribute *attr, char *buf)
+		struct device_attribute *attr, char *buf, size_t size)
 {
 	struct dax_region *dax_region = dev_get_drvdata(dev);
 
-	return sprintf(buf, "%llu\n", (unsigned long long)
+	return snprintf(buf, size, "%llu\n", (unsigned long long)
 			resource_size(&dax_region->res));
 }
 static struct device_attribute dev_attr_region_size = __ATTR(size, 0444,
 		region_size_show, NULL);
 
 static ssize_t align_show(struct device *dev,
-		struct device_attribute *attr, char *buf)
+		struct device_attribute *attr, char *buf, size_t size)
 {
 	struct dax_region *dax_region = dev_get_drvdata(dev);
 
-	return sprintf(buf, "%u\n", dax_region->align);
+	return snprintf(buf, size, "%u\n", dax_region->align);
 }
 static DEVICE_ATTR_RO(align);
 
@@ -149,7 +149,7 @@ static struct dev_dax *to_dev_dax(struct device *dev)
 }
 
 static ssize_t size_show(struct device *dev,
-		struct device_attribute *attr, char *buf)
+		struct device_attribute *attr, char *buf, size_t buf_size)
 {
 	struct dev_dax *dev_dax = to_dev_dax(dev);
 	unsigned long long size = 0;
@@ -158,7 +158,7 @@ static ssize_t size_show(struct device *dev,
 	for (i = 0; i < dev_dax->num_resources; i++)
 		size += resource_size(&dev_dax->res[i]);
 
-	return sprintf(buf, "%llu\n", size);
+	return snprintf(buf, buf_size, "%llu\n", size);
 }
 static DEVICE_ATTR_RO(size);
 
diff --git a/drivers/dax/super.c b/drivers/dax/super.c
index 938eb48..10bc198 100644
--- a/drivers/dax/super.c
+++ b/drivers/dax/super.c
@@ -142,7 +142,7 @@ struct dax_device {
 };
 
 static ssize_t write_cache_show(struct device *dev,
-		struct device_attribute *attr, char *buf)
+		struct device_attribute *attr, char *buf, size_t size)
 {
 	struct dax_device *dax_dev = dax_get_by_host(dev_name(dev));
 	ssize_t rc;
@@ -151,8 +151,8 @@ static ssize_t write_cache_show(struct device *dev,
 	if (!dax_dev)
 		return -ENXIO;
 
-	rc = sprintf(buf, "%d\n", !!test_bit(DAXDEV_WRITE_CACHE,
-				&dax_dev->flags));
+	rc = snprintf(buf, size, "%d\n",
+		      !!test_bit(DAXDEV_WRITE_CACHE, &dax_dev->flags));
 	put_dax(dax_dev);
 	return rc;
 }
-- 
2.7.4


