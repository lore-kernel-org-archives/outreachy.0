X-GM-THRID: 6671816179609239552
X-Received: by 2002:a24:242:: with SMTP id 63mr4089022itu.39.1553406077849;
        Sat, 23 Mar 2019 22:41:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a0a:: with SMTP id v10ls3804988ita.2.gmail; Sat, 23 Mar
 2019 22:41:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyWiubZrTaWS3wvYRvqNqy9EywOWKF+u0ZbOMFdiV3wkG47IA+UPuP1uePoHKLZlzj8iR6v
X-Received: by 2002:a24:3dc7:: with SMTP id n190mr7496535itn.62.1553406076943;
        Sat, 23 Mar 2019 22:41:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553406076; cv=none;
        d=google.com; s=arc-20160816;
        b=b15FIp1uCsOf9gCsfF1tRlT6L1GBg7FxcPhVwMRAmfqlmAu24FKDcJzTwerVIhAsxF
         XBQZt9Py8xp9hACJtz/cYj0dnT8iJGaqcPkVtVZQ/ZqPQChNkhX7yHZTnMLJxrcLbHAm
         jh9GF8U7aA8k5F8sQj0jSgPjLjXgWRHNTBa/Y3eas9OQdCJLtbDbABDfY19mfB8siOoN
         jjJNZodcCchZN0hlwNAwTsaFDkIBhWY3X8Av0jw9yK3hS65X9g4YD4HLS6yficNRVtBw
         BEDTXZaOFHvdLwFvwOmVbu0P1bzc13clSwzk+7DqPUzC1Q/+Q/CF8wUA7Jb2+IKEhGBi
         0QVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=uiYWS1xJ6lBthKmOmyWJWxK9uDaBPGSLhE4YPT3neXU=;
        b=AvWGsDSoxMNKBNLTQlkxjyzvUKX5fQQrAEyeBOLFVtZBd5NuRrQlGAYNiaEjZzA4wi
         8pKrVuAo9OH9TEE3rvU36NKgorcjaa80tq2rZ333qpDWa/pclLDrkoiCj3a/e/0XEs4S
         bJGYUyun/TToAiIJ7vbI40JpmN0u7chKnZW5DvnJqS4j1+JDeWWyYmkq2OrMkGGZRuVn
         uUjApCbBgY6FpSJ9or2zW7DAiUCFhoX20VmRRGmT8f2hKH1jPuNCTRnvPVLUWXk6Wy3S
         jp0XDFC76R2RUjaixPqn4FWxv5ZRrSzGKPVtcqifqlWg19GI8DWD4QPFIaBGOK1ZyuqI
         JssA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DRPrJ+O0;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id u1si972063itb.2.2019.03.23.22.41.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 22:41:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DRPrJ+O0;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id p10so4182575pff.3
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 22:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uiYWS1xJ6lBthKmOmyWJWxK9uDaBPGSLhE4YPT3neXU=;
        b=DRPrJ+O0yrwQIThTG0YAmBA+R3BxpHpMJxo71X11Xx/mVkE5EfCRroh/5Z2/2/p9mO
         aKKjLn7XUszYRxmJwNGlcJtwBsM0A5PwAobu6oVYB4dHr9+RkF1hkNVwWz18qTJ2zoBd
         dfnswXNMcv/Yb0XaW/2Bivx2zOWhz851DQiPtqwciOJOFX39WX6dMAPRaM/UD7ryPlmW
         zBt4UK17anrp0YP5rM5I6TtZvQvHqZ6Q1T9U0faW5SLn3PplQRjskCl5BsY46SN5LB9R
         CgYjURU31Aem607UBhtEChK6eh03MzPfFk6cxGPOPovIyCk87+Oz/7lqnLmZEFRb5PzK
         p1Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uiYWS1xJ6lBthKmOmyWJWxK9uDaBPGSLhE4YPT3neXU=;
        b=lTbvVvEGa3gnkZtSdwLUTRPUNMMn4Ul5tfApEdm8zIjj1zcQh+uSVcu+lnBPGJMo7E
         KQeSoyjC+c6ZpOFV6JXqUSFqjQtR/bL55jVPmngl1Fm6NTGLewlaYThiV90E/UpKqM1g
         pmLMRDQhOqPx+ipxC1W+2Wyq9HY9jCmPjNa5hqi4fgLu2Q1Yk8ygMaCw1YULdNIn1FG8
         qT36s3jWHiytyLudWE3yhylBsVgDAoNgkYYk5XW5488rIx6MapdQot4cjhpccCN5HQYD
         x8esaO4JzgYgpBTGEBJPVAM3zHo4Qn4cyvggIwbKhMra8CJZQ1Bp3X+pU8u+btL1VYo0
         J+yQ==
X-Gm-Message-State: APjAAAW8WLRjXhOhRWvP7X/RFKLdhzOeyTAJg1IlNQQ5l/0QKwM9t4E/
	4AR7y5480KPvs0nXBPJyM1AqO2pV
X-Received: by 2002:a17:902:112c:: with SMTP id d41mr18632262pla.177.1553406076046;
        Sat, 23 Mar 2019 22:41:16 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.202.114])
        by smtp.gmail.com with ESMTPSA id e23sm14934032pfi.7.2019.03.23.22.41.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 22:41:15 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH 2/6 v2] staging: rtl8712: avoid camelcase variable name 'backupPMKIDList'
Date: Sun, 24 Mar 2019 11:11:01 +0530
Message-Id: <1553406061-8336-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Eliminate camelcase variable names to fix the style issue – ‘avoid
camelcase’.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
Changes in v2:
	-backup_PMKID_List replaced with backup_PMKID_list
 drivers/staging/rtl8712/mlme_linux.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
index fbd04f5..12b8eaf 100644
--- a/drivers/staging/rtl8712/mlme_linux.c
+++ b/drivers/staging/rtl8712/mlme_linux.c
@@ -84,7 +84,7 @@ void r8712_os_indicate_connect(struct _adapter *adapter)
 	netif_carrier_on(adapter->pnetdev);
 }
 
-static struct RT_PMKID_LIST   backup_PMKID_List[NUM_PMKID_CACHE];
+static struct RT_PMKID_LIST   backup_PMKID_list[NUM_PMKID_CACHE];
 void r8712_os_indicate_disconnect(struct _adapter *adapter)
 {
 	u8 backupPMKIDIndex = 0;
@@ -99,7 +99,7 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter)
 		 * disconnect with AP for 60 seconds.
 		 */
 
-		memcpy(&backup_PMKID_List[0],
+		memcpy(&backup_PMKID_list[0],
 		       &adapter->securitypriv.PMKIDList[0],
 		       sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		backupPMKIDIndex = adapter->securitypriv.PMKIDIndex;
@@ -113,7 +113,7 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter)
 		 * for the following connection.
 		 */
 		memcpy(&adapter->securitypriv.PMKIDList[0],
-		       &backup_PMKID_List[0],
+		       &backup_PMKID_list[0],
 		       sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		adapter->securitypriv.PMKIDIndex = backupPMKIDIndex;
 		adapter->securitypriv.btkip_countermeasure =
-- 
2.7.4


