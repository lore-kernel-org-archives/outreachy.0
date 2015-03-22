X-GM-THRID: 9152848986112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,56524335c2ab2304
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.90.169 with SMTP id bx9mr827152wib.6.1426984051895;
        Sat, 21 Mar 2015 17:27:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.68 with SMTP id k4ls618827lam.53.gmail; Sat, 21 Mar
 2015 17:27:31 -0700 (PDT)
X-Received: by 10.112.77.101 with SMTP id r5mr14742188lbw.4.1426984051002;
        Sat, 21 Mar 2015 17:27:31 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id sf8si184573wic.2.2015.03.21.17.27.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 17:27:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id gn9so24185330wib.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 17:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=IiI79Zib6SinxdmJqe2gxnkV+FF6Ycp01qdoztan5ag=;
        b=R/IQH2jtpcvOrDnd9YJRwlKP7pYWluPvmEmxSy1iBrctwtTApRyik2u4ZS9EZKtjWd
         rCgcsbCRKV2T/1s/SRVQZuK8ZHHtSY+1Mgf0E/VWw+nREwU/hMHL+LeiXXBvyb9FRdBo
         J5ZLGqkZzwjeADbcUwGobdfQV2JeyOgYWD8QuBurc+TD3BVra3tr/22T97HPIdjQIeKr
         LzsTL8beAwhHs+x1RNCx4G/lo3aGVLHT9HHU9caGw5lUH4NHJwqJnM03r3UKPvlb5vPU
         X7MsONE9/OW255NlH7Ge9P3PqVMZwrP40JAZ4HITZSgiS4EarllRdHue/2d6RNbhO82E
         PODg==
X-Received: by 10.180.104.33 with SMTP id gb1mr7735424wib.33.1426984050938;
        Sat, 21 Mar 2015 17:27:30 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id l4sm4425809wiw.6.2015.03.21.17.27.29
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 17:27:30 -0700 (PDT)
Date: Sun, 22 Mar 2015 02:26:44 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org
Subject: [PATCH v2 1/2] Staging: iio: Place driver in sleep mode on error
Message-ID: <ac0d5b2399b00fe9763c7844c726ffad0a65df99.1426981797.git.cristina.opriceana@gmail.com>
References: <cover.1426981797.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426981797.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Put device in sleep mode if an error is encountered after
initialization in order to avoid wasting power.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843_core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
index 0074af2..7de19c2 100644
--- a/drivers/staging/iio/magnetometer/hmc5843_core.c
+++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
@@ -611,7 +611,7 @@ int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
 	ret = iio_triggered_buffer_setup(indio_dev, NULL,
 					 hmc5843_trigger_handler, NULL);
 	if (ret < 0)
-		return ret;
+		goto buffer_setup_err;
 
 	ret = iio_device_register(indio_dev);
 	if (ret < 0)
@@ -619,8 +619,12 @@ int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
 
 	return 0;
 
+buffer_setup_err:
+	hmc5843_set_mode(iio_priv(indio_dev), HMC5843_MODE_SLEEP);
+	return ret;
 buffer_cleanup:
 	iio_triggered_buffer_cleanup(indio_dev);
+	hmc5843_set_mode(iio_priv(indio_dev), HMC5843_MODE_SLEEP);
 	return ret;
 }
 EXPORT_SYMBOL(hmc5843_common_probe);
-- 
1.9.1


