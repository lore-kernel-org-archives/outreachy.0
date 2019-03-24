X-GM-THRID: 6671816179609239552
X-Received: by 2002:a81:2cd7:: with SMTP id s206mr15502588yws.22.1553403265762;
        Sat, 23 Mar 2019 21:54:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:1b07:: with SMTP id b7ls5061621ywb.6.gmail; Sat, 23 Mar
 2019 21:54:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwGOpal9gGkF7FSqJhfE9BoeqjyZz2S+OpjMIAx4i8DUB14Y3A/qsLuDhmJ2i8Bw42CBAl/
X-Received: by 2002:a81:4657:: with SMTP id t84mr15712726ywa.478.1553403264645;
        Sat, 23 Mar 2019 21:54:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553403264; cv=none;
        d=google.com; s=arc-20160816;
        b=OwVYfFSfFlyKfsHyRlI8fDoE+b+mBo0qe8jdIKQB01Nn5eoJfcZmN2UjVWXQZ3Pigr
         A5+CrTKOow4Vpppf/VX8jYz4mYEkrhBEUtz+0KVfbQVnDDP4Y+x8AnAzsG3kt+Vbw9at
         dxArfG52JcFe1iTsipE5gGvJmFvJm6ODt4SCnBlOa6f6HvHiEBxQtp4WTCes75VTldr0
         fNCN7X+F6vWOtPigGduBu987l+GMEAwLPAX7OIBBPVAAoa142l6wcwUVPSm3mC9OaoHR
         tS2gLIArzU2f6Shl3+a0Ik7V1bohqYbHr4mj0NduFVA908Cmrhd6l1bSbnaUBB3bhh0q
         Hbzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=vQsUEfRr1YAC01aNN5A/L+7qJKoy6cejqs+LQ4uplfs=;
        b=xJ4d6cwcMSe67399Vyov2yqDeq/80KwIARbsxuTVHvijICvFIJ9y4jpgkZMfA1bvmN
         l2ryyTAzKXMMQyIKtg1CjF8e/8c3YJhwA2r0lKryiUR0L5NXanw0yVQXiIR5EsHcxmOe
         3ZG1Ejgo1oiMrd+7zRQcwlfqf6Fl1/ZJIQ6HqhZZMYOXR1tbwZUKaf/aggYqrq9S0wpD
         FnrDEXn6kkZI7i1hwSA5VofM9PAT5i+gvS0CHEwV5jbEjKH/STh9LyOzBKywW16PhcI2
         X7Kmk7L2S+SIYaXZ0nixNtC1X5mPBdLBbcax7my3Xw+H7hcTh13gY0PmAMJ2vlqXKT+G
         jQ5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C4OA3U+u;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id z204si20576ywa.2.2019.03.23.21.54.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 21:54:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C4OA3U+u;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id u9so4172445pgo.7
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 21:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=vQsUEfRr1YAC01aNN5A/L+7qJKoy6cejqs+LQ4uplfs=;
        b=C4OA3U+uIT4NqXGyyRNx2V9OCbXjdBboLfqgAYzegS+XopuQ7nDdwwXct8cLXdb27T
         wPmPRAYJq5mCtuitNXe61Ohu2/XhM37mjJDCPL2BLhDAFdgTHJDZuZyCe8T2PpKlnMd9
         hpU21PYwrl/7nVnFXP3ZhSdir+vzb+jKUHmOvsS9EVEOeR8DOobOs/seVMHqCoIhVQXw
         C5296TehzcybcoCMxkMsQ59WMJKIXZPZ4kD5IId3n3qY16BR9QxPfVtxTdAaJbeeHYb5
         2byL0ag7RHPX0M70X+pMDNroh7L/Wx4zijSoZDi4QEd8XsLtSKyapPm2PwjsKIbrl12u
         sGRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=vQsUEfRr1YAC01aNN5A/L+7qJKoy6cejqs+LQ4uplfs=;
        b=DP+ecoupZSdbMRq5toEfewoO6OOdE3ChRS/k3mI3EXsGbXhqWMYSe2BhslH4+4nJ1E
         Wiuoz1XBXpaUZAn0pQ12Pt7DirCy7uJXsGO0I49QjfaNF38I7pj4k6LOyxr8T591Fk4a
         cKkwCdW8NReNr7egq/6A5mGm0iDyymifpTXFl3i52DiQhXlnd9hnopxBuNcjmjtDHpGY
         8TQ8kFRV04YXz7DkJesxiwjRcIS09136ypz/W67dRr3hxtmnmidtm9EFDNlean236qQ7
         pAG1GgyC62s7vDjcklyWqGzRRPiwLQJMq/j8YaKLAGMrtGCLYwjVHbohRXGAh6REO8F4
         puRA==
X-Gm-Message-State: APjAAAWBktfXBDgRcn9nTGiuFIiO41mmsstfYB+sfcBFouDNUsc7Grq/
	Rph4dvvzWaF1RmGAzUALg1I=
X-Received: by 2002:a65:6283:: with SMTP id f3mr17374511pgv.108.1553403264424;
        Sat, 23 Mar 2019 21:54:24 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.202.114])
        by smtp.gmail.com with ESMTPSA id b15sm34275913pfj.167.2019.03.23.21.54.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 21:54:23 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: 
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: rtl8712: avoid camelcase variable name 'backupPMKIDIndex'
Date: Sun, 24 Mar 2019 10:23:50 +0530
Message-Id: <056c0c77f7a7cfa3f9d478839955a294448f4173.1553403095.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <e0cba4211ae056d80a743a81f01e4cef07663c27.1553403095.git.payal.s.kshirsagar.98@gmail.com>
References: <e0cba4211ae056d80a743a81f01e4cef07663c27.1553403095.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553403095.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553403095.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Eliminate camelcase variable names to fix the style issue – ‘avoid
camelcase’.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/mlme_linux.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
index fbd04f5..2463344 100644
--- a/drivers/staging/rtl8712/mlme_linux.c
+++ b/drivers/staging/rtl8712/mlme_linux.c
@@ -87,7 +87,7 @@ void r8712_os_indicate_connect(struct _adapter *adapter)
 static struct RT_PMKID_LIST   backup_PMKID_List[NUM_PMKID_CACHE];
 void r8712_os_indicate_disconnect(struct _adapter *adapter)
 {
-	u8 backupPMKIDIndex = 0;
+	u8 backup_PMKID_index = 0;
 	u8 backupTKIPCountermeasure = 0x00;
 
 	r8712_indicate_wx_disassoc_event(adapter);
@@ -102,7 +102,7 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter)
 		memcpy(&backup_PMKID_List[0],
 		       &adapter->securitypriv.PMKIDList[0],
 		       sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
-		backupPMKIDIndex = adapter->securitypriv.PMKIDIndex;
+		backup_PMKID_index = adapter->securitypriv.PMKIDIndex;
 		backupTKIPCountermeasure =
 			adapter->securitypriv.btkip_countermeasure;
 		memset((unsigned char *)&adapter->securitypriv, 0,
@@ -115,7 +115,7 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter)
 		memcpy(&adapter->securitypriv.PMKIDList[0],
 		       &backup_PMKID_List[0],
 		       sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
-		adapter->securitypriv.PMKIDIndex = backupPMKIDIndex;
+		adapter->securitypriv.PMKIDIndex = backup_PMKID_index;
 		adapter->securitypriv.btkip_countermeasure =
 					 backupTKIPCountermeasure;
 	} else { /*reset values in securitypriv*/
-- 
2.7.4


