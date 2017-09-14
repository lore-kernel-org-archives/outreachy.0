X-GM-THRID: 6465606659155689472
X-Received: by 10.99.110.3 with SMTP id j3mr12932875pgc.121.1505393299724;
        Thu, 14 Sep 2017 05:48:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.84.140 with SMTP id t134ls2245190ita.14.gmail; Thu, 14 Sep
 2017 05:48:19 -0700 (PDT)
X-Received: by 10.36.92.144 with SMTP id q138mr1124220itb.56.1505393299002;
        Thu, 14 Sep 2017 05:48:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505393298; cv=none;
        d=google.com; s=arc-20160816;
        b=dO1sbV48o4oagtMXiHFiMMjr7Y2lDQTzcddRxQ4vjwM55fwrGSL7zOpS4qzkMyml3J
         IFLJZQJaU/woaJaAcB9oz68nFrtzVCybsh7NyjfWw5njUFbYl7ao9280jMGQHZn0oh0r
         8jI4m831hpE+Y9zOSXNzxB21hXoTq9r9BIEpxgPjFf2XkGDNN3ncR1A1BdrwAsbm/cXO
         ElWfIaz+op46oHC+2KbQBZgivIPQTEViegJuvdlsFsD0dm8bs8Nun2m13/EJlK7X11f0
         9FbZLiVXbkTndcEa5tiamaZe85LwrMO8KL8313O+bJ6OgfL+2+hf5sBnKTOx6Ai4afBO
         4Ksw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=EWT7p4wJjWGPxqmN65SEqX87Mcnt4ftb/Q2AHbkNF/A=;
        b=oEjM1pCS2MgbDm2LrqvLfjLsj9n2jifi46xYO2hhodElUMB6BKNY9p7Om5Yk899v61
         rjyAPs6l0BqPAJaeySIg3CFjEVCZGilZswNtiGH+S8UETTdI5zvqeV04EO0e+MvZBiH/
         sxzCXMZX8ExVvrywxvuqT5VhRws9dMgtpVP1sW6OcpqWP7mXiptelmqtoDXlBVWUTZN2
         BblRFgH8eE9IHnkaYjgz1PxTEy6XqaOi/wmtyMHki1m1zSCR92lWAranQ56VJA58vMAi
         meQ0NwsQkmCy9Z1q9S2WWzO1SRFtMpdKQO00k5eys2QgS8pMESzXJbMjX8mKsBnRd2xN
         A9uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gpo+IUXM;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 88si1347372pfm.20.2017.09.14.05.48.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 05:48:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gpo+IUXM;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i130so1653792pgc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 05:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=EWT7p4wJjWGPxqmN65SEqX87Mcnt4ftb/Q2AHbkNF/A=;
        b=gpo+IUXMECWdjRatQQWZ1EFbzrvPxCjxhRtEQpOLL6u2iN0yr4rSvNO3J6daRcsn18
         2nnQOweS8bXjdXJG462A6c7ZP4tn/dlCC9giJBC2YHl4/Yc2kaZUhu1cLXFABzG1ndDP
         95NcLPCjyVjQJEkepWmMq6cZ1gH4+oaOm/umVHbeETJtGkkbbCWtDm8606qnAN7gOuOh
         BLDiLRp0bAPTyoKUKN5SPRidhqwzDbZtCFCBw/toV6PhZ3Fk1k/xEk3A0cxAnso5KgsA
         6WN0q6KR7+47sV2SSVIV7mzuTuoetc4twxd3Zn/gHW2B1XhuBFPO3kA8lM4uKQtdElpx
         qsag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EWT7p4wJjWGPxqmN65SEqX87Mcnt4ftb/Q2AHbkNF/A=;
        b=JLJsDyPxPxwjt+Udn0oNhvJQsCr9DNqDrTBvpyf1POT2ZWEsMUUp8AqRtmc3qpz9xL
         hobStZhPl/ICMFyUrQRqwSE1FgBw9/NDNUAhhESGeVFf8gqTK4BpkDO3x7LjjsTPYNB5
         CzMRfELiFvB/jpwkRpJgkay64tzttL3L8bdcEvLznSnbzydFgjn43Y4n8wkCVZPXD+Cj
         ozxDz4NWTpDJQBcYD8NAftup9/+QA23XxtyaBIBHtr7GymvY5xZa/3x2rD9ZOaN5C2Ua
         JY5uCmPlr0fqyeLJgLkW5CDCwuTO7eIc/qxfTOkY8qIlDTzzuyTCCVAFQJAW1lQMgSfj
         RNIg==
X-Gm-Message-State: AHPjjUiXKn1Tn9ljSIqllaIpbleymVN7eYsWhQ7aQ003B5iNvKkrE+7I
	tQcxnv/ylhR55g==
X-Google-Smtp-Source: ADKCNb6e0j5i7ZRHZ3QqDJSVr8c+E1jUdfuPZ9LyKfIe43w+LXpwlVagoXXKLaB9p2kGiD0C7jQ9KQ==
X-Received: by 10.99.99.130 with SMTP id x124mr20417283pgb.385.1505393298523;
        Thu, 14 Sep 2017 05:48:18 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.49.157.170])
        by smtp.gmail.com with ESMTPSA id y83sm30921222pff.167.2017.09.14.05.48.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 05:48:18 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gilad@benyossef.com
Cc: gregkh@linuxfoundation.org,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2] Staging: ccree: Use kcalloc instead of kzalloc
Date: Thu, 14 Sep 2017 18:18:13 +0530
Message-Id: <1505393293-5941-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Use kcalloc instead of kzalloc to check for overflow before
multiplication. Done using the following semantic patch by
coccinelle.

http://coccinelle.lip6.fr/rules/kzalloc.cocci

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v2:
 - eliminate parentheses around the first argument

 drivers/staging/ccree/ssi_sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ccree/ssi_sysfs.c b/drivers/staging/ccree/ssi_sysfs.c
index 0655658..f7e0c502 100644
--- a/drivers/staging/ccree/ssi_sysfs.c
+++ b/drivers/staging/ccree/ssi_sysfs.c
@@ -376,7 +376,7 @@ static int sys_init_dir(struct sys_dir *sys_dir, struct ssi_drvdata *drvdata,
 		return -ENOMEM;
 	/* allocate memory for directory's attributes list */
 	sys_dir->sys_dir_attr_list =
-		kzalloc(sizeof(struct attribute *) * (num_of_attrs + 1),
+		kcalloc(num_of_attrs + 1, sizeof(struct attribute *),
 			GFP_KERNEL);
 
 	if (!(sys_dir->sys_dir_attr_list)) {
-- 
2.7.4


