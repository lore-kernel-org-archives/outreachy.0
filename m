X-GM-THRID: 6257160535052124160
X-Received: by 10.182.226.201 with SMTP id ru9mr17400986obc.37.1456858977275;
        Tue, 01 Mar 2016 11:02:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.43.81 with SMTP id r78ls302819ior.40.gmail; Tue, 01 Mar
 2016 11:02:56 -0800 (PST)
X-Received: by 10.107.164.208 with SMTP id d77mr24480519ioj.22.1456858976465;
        Tue, 01 Mar 2016 11:02:56 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y20si2618954pfa.2.2016.03.01.11.02.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 11:02:56 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id l6so1950342pfl.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 11:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QX12q7pgg5cmLyLkulD7pAqulwRIxNhacJ2B1oRsv9M=;
        b=AbvkbSboa5HeJozPKjWplRtflPU8INtLfBQuPlCTotAKJrxAvmpGn6mUDqEcwnBaA7
         JVIKZaikA1qJGYCyorpd+6u2HzKB8I3/n49RuBTU9BN3YqPUI/o2Iw8TuxwG5un3dveQ
         4SF2NhZWawazJG5ewVjUV4Z04g+685Mi0Ek66Z+4p6qiP7EIXFOfwYhYfvUbzftlxYvy
         +vHGf24bTVifJMPwuM9m57qz0+mlj4+3BMqzUKPdOD9GyR68jVLkNh26yOrKBx4k0LCB
         XQt7qNyP07aFPMhmHD/sWfiHkrMKKeyoWKC03RLaZwMiQ6i9l7SEkevK2xiUJXtCQaA/
         fUBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=QX12q7pgg5cmLyLkulD7pAqulwRIxNhacJ2B1oRsv9M=;
        b=bCJc6NIQ+lBEUS7Wyl4n2U0waVrvCsPXPBMVZZ3IuTJLQywN0ayET0zJuji49lGEAF
         W5marMRK1vPTg1L/OmMLa0Z1zWlkjsPrdfhgvYVvHZe3ZTqYlJj2wGuQr4+Sl26DicCL
         IRw0ZWbCAHnIEH61Re4GxAP5mSdq4/mRXQlz1OXl7HXEEygn6kRoN6SaQ6SR7jnYB3VQ
         CpqbhH8PLVZbZgyU3sgigpRfJ/UDP4RQMBEymMJ9di6vLOmK2mkeYfZoTIxttQpDu3qp
         Bv0ZbuOqX2OdVzK6MNBDUvSsy+wZMDhpBRv3bYJ/YiE2zwcadz/pinGMoZ8UuSC5UDhM
         eTAQ==
X-Gm-Message-State: AD7BkJJb82RYyEWDil7YP4H6gE8kNvqPoI5cNDPJz7F0UISFYSQpkVvmUwGJ8OqMaw7wQw==
X-Received: by 10.98.75.129 with SMTP id d1mr2759689pfj.148.1456858976194;
        Tue, 01 Mar 2016 11:02:56 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-235.dhcp.embarqhsd.net. [67.232.71.235])
        by smtp.gmail.com with ESMTPSA id 81sm30488645pfa.12.2016.03.01.11.02.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 11:02:55 -0800 (PST)
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
Subject: [RFC PATCH 1/2] iio: core: implement iio_{claim|release}_direct_mode()
Date: Tue,  1 Mar 2016 11:02:45 -0800
Message-Id: <9a2950402af7277a4928a10eade4cc8b1187d8c8.1456794364.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456794364.git.amsfield22@gmail.com>
References: <cover.1456794364.git.amsfield22@gmail.com>

It is often the case that the driver wants to be sure a device stays
in direct mode while it is executing a task or series of tasks.  To
accomplish this today, the driver performs this sequence: 1) take the
device state lock, 2)verify it is not in a buffered mode, 3) execute
some tasks, and 4) release that lock.

This patch introduces a pair of helper functions that simplify these
steps and make it more semantically expressive.

iio_claim_direct_mode()
        If the device is not in any buffered mode it is guaranteed
        to stay that way until iio_release_direct_mode() is called.

iio_release_direct_mode()
        Release the claim. Device is no longer guaranteed to stay
        in direct mode.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/iio/industrialio-core.c | 39 +++++++++++++++++++++++++++++++++++++++
 include/linux/iio/iio.h         |  2 ++
 2 files changed, 41 insertions(+)

diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-core.c
index 70cb7eb..f6f0c89 100644
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
+ * iio_claim_direct_mode - Keep device in direct mode
+ * @indio_dev:	the iio_dev associated with the device
+ *
+ * If the device is in direct mode it is guaranteed to
+ * stay that way until iio_release_direct_mode() is called.
+ *
+ * Use with iio_release_direct_mode()
+ *
+ * Returns: 0 on success, -EINVAL on failure
+ */
+int iio_claim_direct_mode(struct iio_dev *indio_dev)
+{
+	mutex_lock(&indio_dev->mlock);
+
+	if (iio_buffer_enabled(indio_dev)) {
+		mutex_unlock(&indio_dev->mlock);
+		return -EINVAL;
+	}
+	return 0;
+}
+EXPORT_SYMBOL_GPL(iio_claim_direct_mode);
+
+/**
+ * iio_release_direct_mode - releases claim on direct mode
+ * @indio_dev:	the iio_dev associated with the device
+ *
+ * Release the claim. Device is no longer guaranteed to stay
+ * in direct mode.
+ *
+ * Use with iio_claim_direct_mode()
+ */
+void iio_release_direct_mode(struct iio_dev *indio_dev)
+{
+	mutex_unlock(&indio_dev->mlock);
+}
+EXPORT_SYMBOL_GPL(iio_release_direct_mode);
+
 subsys_initcall(iio_init);
 module_exit(iio_exit);
 
diff --git a/include/linux/iio/iio.h b/include/linux/iio/iio.h
index ce9e9c1..9efe2af 100644
--- a/include/linux/iio/iio.h
+++ b/include/linux/iio/iio.h
@@ -527,6 +527,8 @@ void iio_device_unregister(struct iio_dev *indio_dev);
 int devm_iio_device_register(struct device *dev, struct iio_dev *indio_dev);
 void devm_iio_device_unregister(struct device *dev, struct iio_dev *indio_dev);
 int iio_push_event(struct iio_dev *indio_dev, u64 ev_code, s64 timestamp);
+int iio_claim_direct_mode(struct iio_dev *indio_dev);
+void iio_release_direct_mode(struct iio_dev *indio_dev);
 
 extern struct bus_type iio_bus_type;
 
-- 
2.1.4


