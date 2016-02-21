X-GM-THRID: 6253643257988775936
X-Received: by 10.66.141.36 with SMTP id rl4mr21783973pab.3.1456039784762;
        Sat, 20 Feb 2016 23:29:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.233 with SMTP id h96ls1162351qgd.80.gmail; Sat, 20 Feb
 2016 23:29:43 -0800 (PST)
X-Received: by 10.140.156.139 with SMTP id c133mr21126528qhc.4.1456039783962;
        Sat, 20 Feb 2016 23:29:43 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id ui7si2538803pab.0.2016.02.20.23.29.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 23:29:43 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id c10so77432539pfc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 23:29:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=cEM+/CqZHBw0MQUuvZLS3jVelZ/UEv73L/ku+EtdVjE=;
        b=pHm/B4s8iLoqggoLko+SAkm78TsZLPPfsY+Q+3thpvyydfMXNfSjavNyDSHkxBfA1V
         X3K/5rdrt5yPO3T9URtIeNZliIUaJgGDoxY7xr/Pr/qiLG6DLPliHJ6OPqBHT8XzWBP5
         93EmsGS5cGa7EChgUZrGwuICaM0uF3XechT/W1Zd5q4TTVITGz+x6ylKOJ5sjCjwmPVm
         mu3Iz+sCY2T/EUNQLdYJnnQ8aBdISFHh5V8PgOrk/1s5l248LQBpDVUMgX1OjjxeAasY
         YoGcnWL+WrpRE4HElaGI3oGoUul7Tct6bjPIEKhjIhel8h5WoFGWNtYHzJCbQ9knLThT
         wjZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cEM+/CqZHBw0MQUuvZLS3jVelZ/UEv73L/ku+EtdVjE=;
        b=G5mQloQbQeLg0yz24F0aW5WX+9VgOV9TXtipUhVWP9iZOKBc8eFHEum/570SxsV3Oc
         ACAz8/W0XKJ/1GbpPOCC7+bsP3cF8dD2phTADxevC3zVC02z2QFHjz1NbDLsXPX0TpD3
         zdtvBZMobppes7wOtUvGrSDy2Kycejp/wM2O0j4zhRse59xZiSKB0MiCwot0wKru/nEy
         2Qve1lwrWe6hzLKI0XDN6rXmeETMjYdhAmV/ZxyBTISPVO7S3E8pkdFOHpOb0UQd8JVO
         lr2myOegnro+rc3uB6u5ddXoi2AcOlHONs3A+reYtgpVrVFgCF+94F8OaBDzZw+VGq+S
         iuDQ==
X-Gm-Message-State: AG10YOTapF2bHVs0wn+hN8XXm//UadbV5jwy3EE0S50Igaj9QXIRDfs5HcS7kKN9Y19mfQ==
X-Received: by 10.98.0.148 with SMTP id 142mr29698250pfa.84.1456039783816;
        Sat, 20 Feb 2016 23:29:43 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.9])
        by smtp.gmail.com with ESMTPSA id v29sm28434807pfa.31.2016.02.20.23.29.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 23:29:43 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: most: compress return logic into one line
Date: Sun, 21 Feb 2016 15:29:38 +0800
Message-Id: <1456039778-23535-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Eliminate local variable 'ret' and modify return statement to contain
the value being returned directly instead of assigning it first to 'ret'
and returning this variable.

Coccinelle semantic patch used:
@@ expression e, ret; @@
-ret =
+return
	e;
-return ret;

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_sysfs.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_sysfs.c b/drivers/staging/most/hdm-dim2/dim2_sysfs.c
index c5b10c7..2b28e4a 100644
--- a/drivers/staging/most/hdm-dim2/dim2_sysfs.c
+++ b/drivers/staging/most/hdm-dim2/dim2_sysfs.c
@@ -63,7 +63,6 @@ static ssize_t bus_kobj_attr_show(struct kobject *kobj, struct attribute *attr,
 static ssize_t bus_kobj_attr_store(struct kobject *kobj, struct attribute *attr,
 				   const char *buf, size_t count)
 {
-	ssize_t ret;
 	struct medialb_bus *bus =
 		container_of(kobj, struct medialb_bus, kobj_group);
 	struct bus_attr *xattr = container_of(attr, struct bus_attr, attr);
@@ -71,8 +70,7 @@ static ssize_t bus_kobj_attr_store(struct kobject *kobj, struct attribute *attr,
 	if (!xattr->store)
 		return -EIO;
 
-	ret = xattr->store(bus, buf, count);
-	return ret;
+	return xattr->store(bus, buf, count);
 }
 
 static struct sysfs_ops const bus_kobj_sysfs_ops = {
-- 
1.9.1


