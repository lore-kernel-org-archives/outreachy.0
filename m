X-GM-THRID: 6810983981857636352
X-Received: by 2002:a05:6830:1159:: with SMTP id x25mr1178245otq.110.1585805787743;
        Wed, 01 Apr 2020 22:36:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:bf16:: with SMTP id r22ls274500oop.1.gmail; Wed, 01 Apr
 2020 22:36:26 -0700 (PDT)
X-Google-Smtp-Source: APiQypLGmhJjn6mG5Ga2bp5Avv5ShavyPM2QWv5bNzW/CDJdfdxOekYX5WhBT6CFbr8+ZRJEvzC1
X-Received: by 2002:a4a:d00d:: with SMTP id h13mr1442428oor.80.1585805786646;
        Wed, 01 Apr 2020 22:36:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585805786; cv=none;
        d=google.com; s=arc-20160816;
        b=UDR2idLG4cwIM6NkGojjS8vUwyFOoMOGgTNhIJJNVK9lYpFICCQqvaucbLEDTXdUXp
         +ttlOVcVYAmv1hiO/Cl4dDysbpOTVQMqU/SU98KhMTa6lC0W8QRFO9tY4p/WF5Se1yFj
         Kl7Lm0v8ZtJZ1pzW099N/ODBvzUS1Kk6KpyU6sVTc3q+BIizn9J5X928o/+ZGcdVzpiE
         TuSxXirlN7EcT452XyKemr4eB3y/8ELHdO/J7MkX7kPuW14Nigjjt5Mhe2IA23Bd4kbe
         YqARU7E/UWd3h8nMvTFnkEeyUfeF/0V1o1lWA7N81jksnN4hjmNrmSzmN4omK2a7GacB
         VckA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IAh7UMloMAsOoi/+PgYpkgLYca+CmRu3t0XReUuJ4tk=;
        b=WQI44JThzFZ33pI8sUX+EAb/hRW54Kb1U3QVWd4pmexkKtdbgvKfDm1PJfOAt2DUCJ
         /n35NH/IUfC6sSEtO4TbJGtlQUd/chwwh7LZh3Kp2IG+Ewij0LCZXk/HbkWhg+TS1WH8
         Rb4baIV6w6nB1aKKZbXXb3assEtaLoSNoCHz6Xd9fyJGOxl4akiU/fPz/k2r5Am7GH5b
         E7rjCMtO7yeWZQuwvR0xaU7lMBwTGTsmsOxtf9gQfOBKrzvr7BLFALutaCOIcHCIpwgm
         P3mN7/s0onl3xC9049KpPC+acmkpcQfCk5fFG29SJEgQhUeXyYx0r+lk1+OA67F6/QM1
         lvEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=emWiWxRZ;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t81si295993oie.5.2020.04.01.22.36.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 22:36:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=emWiWxRZ;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id 22so1220484pfa.9
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 22:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IAh7UMloMAsOoi/+PgYpkgLYca+CmRu3t0XReUuJ4tk=;
        b=emWiWxRZn9S+bqaR9D56ZUCgLabBF8zrQYPHzSlVMuFNfqroqPigGnFZbaSqLcXyia
         c75i0fPsGyIvSYmYGik6oKogT8lCvzw6MF6vNvuArNMgLwXSCPXd6vJ1+6lrFbqDrdNm
         26kdg/wkDTiigvjYGuC7badIIixE3CDwpHWxsG499qyXBYr3ZrTff8aivmSgcN4zbfGA
         /2tiOIY5x2A/T66ptBcrGN0p43qo8hJr9nf6iyluWyitOIm6DLDQHEz4VAtibqQWLKol
         s6QY2c8aH8nyUGHf/WO8b5ZquAvsNSoBfVHGTDCqkNfVb9ti10q2P++hOTtw6nFVpueJ
         oaGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IAh7UMloMAsOoi/+PgYpkgLYca+CmRu3t0XReUuJ4tk=;
        b=n32LDxS3YOi1oLSg50bw1w1PHjf13cKNh5LWw96QXh7Oz9QJ0g5GqJTwg92HnIgXLO
         eV2hmosHsbbfq6AIH7NUGgfwYe8bogxKJ2mmsHuXD8SEV5eYGVW5ZwkTnp2qWazDWhsZ
         Ww8qc16rSuiMYMQdeWnP3TY4w7tieKIW/aGMtlRnLzQVds5Hu5dK8szK3ai4tLa+SjRW
         mBzx8L98kx/BOsGFBRq6ByU9b6IX+jUbDI+4rk8xZupvUFGPGK8ssd2F0gQRSFjeOyT9
         UJkIB4VGkfzCm7UBDwOVrPPJ0VfH/EdDJjis24t9vlYJCIIKVawsEsYNvakNk6ePLKc7
         sh/A==
X-Gm-Message-State: AGi0PubbR6W2f1hujiWZ3yeQqeoXM47aAS5Q03l8rgsN4nbB+WCFaj6i
	5bCKdQZ0oMRNgjqijBj6EhYKBJRjmMDZ4Q==
X-Received: by 2002:a65:5249:: with SMTP id q9mr1774384pgp.150.1585805785687;
        Wed, 01 Apr 2020 22:36:25 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id y28sm2863136pfp.128.2020.04.01.22.36.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 22:36:25 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH 1/2] staging: gasket: Fix 4 over 80 char warnings
Date: Wed,  1 Apr 2020 22:36:16 -0700
Message-Id: <20200402053617.826678-2-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200402053617.826678-1-jbwyatt4@gmail.com>
References: <20200402053617.826678-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix 4 over 80 char warnings by caching long enum values into local
variables.

All enums are only used once inside each function (and once inside
the entire file).

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/gasket/apex_driver.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index 46199c8ca441..f48209ec7d24 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -253,6 +253,8 @@ static int apex_get_status(struct gasket_dev *gasket_dev)
 /* Enter GCB reset state. */
 static int apex_enter_reset(struct gasket_dev *gasket_dev)
 {
+	int idle_gen_reg = APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER;
+
 	if (bypass_top_level)
 		return 0;
 
@@ -263,7 +265,7 @@ static int apex_enter_reset(struct gasket_dev *gasket_dev)
 	 *    - Enable GCB idle
 	 */
 	gasket_read_modify_write_64(gasket_dev, APEX_BAR_INDEX,
-				    APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER,
+				    idle_gen_reg,
 				    0x0, 1, 32);
 
 	/*    - Initiate DMA pause */
@@ -395,11 +397,12 @@ static int apex_device_cleanup(struct gasket_dev *gasket_dev)
 	u64 scalar_error;
 	u64 hib_error;
 	int ret = 0;
+	int status = APEX_BAR2_REG_SCALAR_CORE_ERROR_STATUS;
 
 	hib_error = gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
 				       APEX_BAR2_REG_USER_HIB_ERROR_STATUS);
 	scalar_error = gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
-					  APEX_BAR2_REG_SCALAR_CORE_ERROR_STATUS);
+					  status);
 
 	dev_dbg(gasket_dev->dev,
 		"%s 0x%p hib_error 0x%llx scalar_error 0x%llx\n",
@@ -584,6 +587,8 @@ static int apex_pci_probe(struct pci_dev *pci_dev,
 	ulong page_table_ready, msix_table_ready;
 	int retries = 0;
 	struct gasket_dev *gasket_dev;
+	int page_table_init = APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT;
+	int msix_table_init = APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT;
 
 	ret = pci_enable_device(pci_dev);
 	if (ret) {
@@ -606,10 +611,10 @@ static int apex_pci_probe(struct pci_dev *pci_dev,
 	while (retries < APEX_RESET_RETRY) {
 		page_table_ready =
 			gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
-					   APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT);
+					   page_table_init);
 		msix_table_ready =
 			gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
-					   APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT);
+					   msix_table_init);
 		if (page_table_ready && msix_table_ready)
 			break;
 		schedule_timeout(msecs_to_jiffies(APEX_RESET_DELAY));
-- 
2.25.1


