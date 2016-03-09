X-GM-THRID: 6257160535052124160
X-Received: by 10.107.198.150 with SMTP id w144mr597970iof.9.1457551818369;
        Wed, 09 Mar 2016 11:30:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.155.75 with SMTP id d72ls708053ioe.43.gmail; Wed, 09 Mar
 2016 11:30:18 -0800 (PST)
X-Received: by 10.107.43.147 with SMTP id r141mr588492ior.15.1457551818000;
        Wed, 09 Mar 2016 11:30:18 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r75si19746pfr.0.2016.03.09.11.30.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2016 11:30:17 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 129so1655160pfw.0
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Mar 2016 11:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=xVVLs2h+1MH2R7n8MJ+oBxmgNFi57AidJLh+ckQquQY=;
        b=eTnvmreqLV7mp2AVsR4mHEZP0rjla/yvs9eCFEaz9eMLDhkiaYNQZEqycqMpwtzL/y
         693+Sr7vwoqt5jd2rAGa+HZx36+vOcPF60PJffJLsIyqO7K6aF9u2HmkZTZkdX7qsiwg
         b5Jx4Nf8zHyMdd3EHgYIl7zLrG0nKuklPVwycG7y6g4LtifUUC39iw5YyBa/u73wji3f
         /EhcrzsKDH2fMApAo9mZ6A38mEoMcL7jvPxLF2IaNGntX+dnoKzCi32nXQBOSSpob52N
         fIFVwt7UcdJIJKI2JmzodsScYDDACcddfwxosQGkFE4qAVO09conI3M1HJ9bfVY78e4p
         J6/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=xVVLs2h+1MH2R7n8MJ+oBxmgNFi57AidJLh+ckQquQY=;
        b=OkZS3obtrw/41fwm/85ErqehdHp8qM8aTb2mpzlHD7zDaP+L9sCZDJdiM548gxd+aS
         BKuH5gWpNhnfVzbPx/UFRW/scpLp6AGw2XFaFWhcz7LSSvmdbegjhOPhzth+oY5ObOPA
         DKnIvryvQU4JHisww//4p2Okg57IbXEPaYGMg6xmtdXjZnm1aVoq09I3Bg9BMr1JaYTE
         TDKyqppjrdSTmpzxhs7LwsaYsBG06cauPCbD7S9DucfQLx7EAWTGkGcV4h8jhkE6hDFX
         svmpJ38vjtnq73Di+EZJF/baMBG7c2ilxLs1n3IN6lV3r3EtCelQcRjwotEwZj1bUmY/
         /LYQ==
X-Gm-Message-State: AD7BkJKOMkq7vvdZy1TZL4zlXqxwOz2LUC2eRKBtmYEX0n7Ow3E8CGm16WQWGuTKSSG6jw==
X-Received: by 10.98.68.209 with SMTP id m78mr34936603pfi.153.1457551817835;
        Wed, 09 Mar 2016 11:30:17 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-44.dhcp.embarqhsd.net. [67.232.71.44])
        by smtp.gmail.com with ESMTPSA id o7sm76230pfa.37.2016.03.09.11.30.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 09 Mar 2016 11:30:17 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael.Hennerich@analog.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [RFC PATCH v2 1/2] iio: core: implement iio_device_{claim|release}_direct_mode()
Date: Wed,  9 Mar 2016 11:30:12 -0800
Message-Id: <a9ed1d7bec5e0692bfd6b0e897d408fc265d4be8.1457549841.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1457549841.git.amsfield22@gmail.com>
References: <cover.1457549841.git.amsfield22@gmail.com>

It is often the case that the driver wants to be sure a device stays
in direct mode while it is executing a task or series of tasks.  To
accomplish this today, the driver performs this sequence: 1) take the
device state lock, 2) verify it is not in a buffered mode, 3) execute
some tasks, and 4) release that lock.

This patch introduces a pair of helper functions that simplify these
steps and make it more semantically expressive.

iio_device_claim_direct_mode()
        If the device is not in any buffered mode it is guaranteed
        to stay that way until iio_release_direct_mode() is called.

iio_device_release_direct_mode()
        Release the claim. Device is no longer guaranteed to stay
        in direct mode.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/iio/industrialio-core.c | 39 +++++++++++++++++++++++++++++++++++++++
 include/linux/iio/iio.h         |  2 ++
 2 files changed, 41 insertions(+)

diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-core.c
index 70cb7eb..2e768bc 100644
--- a/drivers/iio/industrialio-core.c
+++ b/drivers/iio/industrialio-core.c
@@ -25,6 +25,7 @@
 #include <linux/slab.h>
 #include <linux/anon_inodes.h>
 #include <linux/debugfs.h>
+#include <linux/mutex.h>
 #include <linux/iio/iio.h>
 #include "iio_core.h"
 #include "iio_core_trigger.h"
@@ -1375,6 +1376,44 @@ void devm_iio_device_unregister(struct device *dev, struct iio_dev *indio_dev)
 }
 EXPORT_SYMBOL_GPL(devm_iio_device_unregister);
 
+/**
+ * iio_device_claim_direct_mode - Keep device in direct mode
+ * @indio_dev:	the iio_dev associated with the device
+ *
+ * If the device is in direct mode it is guaranteed to stay
+ * that way until iio_device_release_direct_mode() is called.
+ *
+ * Use with iio_device_release_direct_mode()
+ *
+ * Returns: 0 on success, -EBUSY on failure
+ */
+int iio_device_claim_direct_mode(struct iio_dev *indio_dev)
+{
+	mutex_lock(&indio_dev->mlock);
+
+	if (iio_buffer_enabled(indio_dev)) {
+		mutex_unlock(&indio_dev->mlock);
+		return -EBUSY;
+	}
+	return 0;
+}
+EXPORT_SYMBOL_GPL(iio_device_claim_direct_mode);
+
+/**
+ * iio_device_release_direct_mode - releases claim on direct mode
+ * @indio_dev:	the iio_dev associated with the device
+ *
+ * Release the claim. Device is no longer guaranteed to stay
+ * in direct mode.
+ *
+ * Use with iio_device_claim_direct_mode()
+ */
+void iio_device_release_direct_mode(struct iio_dev *indio_dev)
+{
+	mutex_unlock(&indio_dev->mlock);
+}
+EXPORT_SYMBOL_GPL(iio_device_release_direct_mode);
+
 subsys_initcall(iio_init);
 module_exit(iio_exit);
 
diff --git a/include/linux/iio/iio.h b/include/linux/iio/iio.h
index b2b1677..0b2773a 100644
--- a/include/linux/iio/iio.h
+++ b/include/linux/iio/iio.h
@@ -527,6 +527,8 @@ void iio_device_unregister(struct iio_dev *indio_dev);
 int devm_iio_device_register(struct device *dev, struct iio_dev *indio_dev);
 void devm_iio_device_unregister(struct device *dev, struct iio_dev *indio_dev);
 int iio_push_event(struct iio_dev *indio_dev, u64 ev_code, s64 timestamp);
+int iio_device_claim_direct_mode(struct iio_dev *indio_dev);
+void iio_device_release_direct_mode(struct iio_dev *indio_dev);
 
 extern struct bus_type iio_bus_type;
 
-- 
2.1.4


