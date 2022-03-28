Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4BC17E7
	for <outreachy@lists.linux.dev>; Mon, 28 Mar 2022 23:25:09 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id p12-20020a05600c430c00b0038cbdf52227so452383wme.2
        for <outreachy@lists.linux.dev>; Mon, 28 Mar 2022 16:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=W2+QnfDLI9bZuB4ejF4uihDFHRYkKKFrKgLbbWsABqo=;
        b=Cizk17/06JtJdVHd89UnYX6XuyelMuYjGc/F0qXSEg5VR3tOMHrG1aUjESEEm62VGy
         9ofWuXHOhFbIZI5/SvKK+eCJcOs7REHjmpXmq6Ylfo6yaYHyxnZTKRgab2Q1y7ZmSRB/
         XC46fCJxrNxB51030MdX3qTU/vLGd2duELlHoVlIDa8xywy579m5caUWJGR7c9QPzTa7
         oJVoJ0I09JDl3ohxL9YQC5bwexPlFN3TM8z44mTiLnGEm9l6eMV+GldjoDM3uPsLpA6M
         Ft13BmrkoNby4riW0U5KyGurYCLDH3gRDDsmq7IzWBzAjMY7hyRTUR7/ry3B5R/obTFp
         ZYAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=W2+QnfDLI9bZuB4ejF4uihDFHRYkKKFrKgLbbWsABqo=;
        b=RWeu+ZvXO35LIu158yI5SdfvjNvTPi+hFohWXR1W3e85L/3iCSoQb19pTGt/tdu3X/
         19uD2/pVGmCMgr1s87sY2orGAMP1qRgsZcli8XlB5jc9iWjuY2HVHm/JcSr7E02dB7jc
         9rAeQZLpw4Ao+8ZItNnTix/+BA2YJ3omvJUUEDcZG+8+Sl1wzb1pVo51bAcAdcNGAJ0j
         yptOkzD0XwII4DMvw8hmM51tYb7dt6JmnGbrL/q4/Wb5UMdPp03f02+kd4+xrjZpMgrL
         Yc1Ecs+jNTs1Lv2VSGwOyt+gIALUzhF6UmOVjtnfuUK46ibjG8RDfNv6kdnEJUsM0hEh
         PbYg==
X-Gm-Message-State: AOAM530/dE41LTKPcB5bga46JdO1DRK0vf8SvNClHLbsm04pg+8QKt+l
	mXRgxnG1kZAtUEqNDqcZu7o=
X-Google-Smtp-Source: ABdhPJyzqO0kh01/y3eCfZMQUE4yOSBWUcPimLlPZrb+yjgeieDaDEQFBuncHUjuEd5Dsj65Cya78g==
X-Received: by 2002:a7b:c452:0:b0:38c:9146:569 with SMTP id l18-20020a7bc452000000b0038c91460569mr2285041wmi.201.1648509907358;
        Mon, 28 Mar 2022 16:25:07 -0700 (PDT)
Received: from alaa-emad ([41.45.69.52])
        by smtp.gmail.com with ESMTPSA id i10-20020a0560001aca00b00203daf3759asm13945792wry.68.2022.03.28.16.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Mar 2022 16:25:07 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: outreachy@lists.linux.dev
Cc: toke@toke.dk,
	kvalo@kernel.org,
	davem@davemloft.net,
	kuba@kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	eng.alaamohamedsoliman.am@gmail.com
Subject: [PATCH] First Patch: Add Printk to pci.c
Date: Tue, 29 Mar 2022 01:24:49 +0200
Message-Id: <20220328232449.132550-1-eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.35.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch for adding Printk line to ath9k probe function as a task
for Outreachy internship

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
 drivers/net/wireless/ath/ath9k/pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/ath9k/pci.c b/drivers/net/wireless/ath/ath9k/pci.c
index a074e23013c5..e16bdf343a2f 100644
--- a/drivers/net/wireless/ath/ath9k/pci.c
+++ b/drivers/net/wireless/ath/ath9k/pci.c
@@ -892,6 +892,7 @@ static int ath_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	int ret = 0;
 	char hw_name[64];
 	int msi_enabled = 0;
+	printk(KERN_DEBUG "I can modify the Linux kernel!\n");
 
 	if (pcim_enable_device(pdev))
 		return -EIO;
-- 
2.35.1

