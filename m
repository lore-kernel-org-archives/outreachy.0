X-GM-THRID: 6671816179609239552
X-Received: by 2002:aca:502:: with SMTP id 2mr7437585oif.38.1553403261416;
        Sat, 23 Mar 2019 21:54:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6417:: with SMTP id h23ls2462017otl.3.gmail; Sat, 23 Mar
 2019 21:54:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwo+gPOrgQSRr95IWxi6bngnAxWsQq5km7Q6abYyojAqrtgHqlNQpxUdhgKXuxD50Ru+Rhq
X-Received: by 2002:a9d:3dc9:: with SMTP id l67mr13683123otc.199.1553403260505;
        Sat, 23 Mar 2019 21:54:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553403260; cv=none;
        d=google.com; s=arc-20160816;
        b=KJwvDyDHkEfDwcFhQh6Y32SidWbNncodo/8XuRvKA6VlRz/f4xnrUxkQhz1vxGXetf
         gy020/zqvW4Z3Zdid7WIksRkIrfQ0x+WQm8flrpeRJdT7+Se2Vj1nE+UPh2WteoCIMu/
         5GZQpvARma1a5CGnuk84YG/8it4yNoCyJOh2lx7evGSHKFHE0xOE1i/HTysB7hMSkqNG
         474vsOtFEw06/0V2+xrCVN06FS7h7u6rhjfPvMWFXMYst6vVkb8vMUz3rrxv0IzTHCHl
         LCmPJfKoAvlIMJj/W7t6NvYhgHarsFjRVTCnEipr5q9CMCwpjRmd4EFcO7JnqNhnJiQT
         8drw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=rpOYHiyQJC1Q9crSTJFcy8/2Wp+LONRAPBnBFXqQZtQ=;
        b=HGVp0/vUJ8BYoYeNf1osKIS92zVj00WZXiWayi7t1x2w/qDkFOnGakH7+FhW2VbUZa
         21I5XnEN3edKCj5YU8GEx4M4hZpF7hjmZtf2PX34ofRsSTnAvwOAvFuXmMlObZMZvbth
         XJgTirJtNrGyKf/+OHjEkmVmsRuCfEYuNQ5UQASkvzHnB1CQ96ghPZvhZY44SGiE8Ksf
         oupqiG3ITbX1dmbDJX3oFzQB33sPr1JfeniNtch5NKIExJFsNDgEEKO4J67CT8ERXjv3
         qQHoScLnkVqa6IpM9PYTO6+QyEg4AlLxO1YgUR67XcAQL35vQIMcDM2mXaptiILPZ7Kp
         yn6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tA5LHUDR;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id x31si679209otb.1.2019.03.23.21.54.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 21:54:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tA5LHUDR;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id 9so4115660pfj.13
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 21:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=rpOYHiyQJC1Q9crSTJFcy8/2Wp+LONRAPBnBFXqQZtQ=;
        b=tA5LHUDRbDO7UEAudkjoi2uBAjUX/LB7bZRGJFGK6M11G6pSzD9/cg6Q1WqP6thHTS
         yqdZcYHIY/UQUfAt4PVusoB5ZOp9zf/9BVSVsn6MRcr1KGc0FRhl1L3dv9WtiVp+mYMs
         PbVOYK6TU3o8TXanzHgQT8lKeKRMHSfxU7JOHuPnkcIb8ZawatIqqOkaHaQVA42x8FO0
         lcYkJOqG5ouCj1jDxvO5v+xkYjmc97lN0d75d8F/CuPHXiUJQydgEQsVT8HfNEo39uTM
         4SpcO7MCnm0BgWIjd8kY1NMwbCeiJPr8a+avBPNVzNuBi1y84NPRON6sSdqBAt1VMMLB
         Wr5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=rpOYHiyQJC1Q9crSTJFcy8/2Wp+LONRAPBnBFXqQZtQ=;
        b=tMKul8NPGiC2KyVQjuSz5ZA8Iy63oXVhSOoB7W0B0KPR2EHbTu2tb9amzJT3AD0oub
         OnIM3IJLQngjNKhDP266yOvaOlETK/G9Duky6t+Q0B1EcOyxMqT4/4SLCTiE1LIDPi+B
         pWKjxNPBiSxhGLDJ/oFeQDd19TiElKUoaB98TQK1CZhFsanyqfVSDtU3WjUiBiw+toBK
         IKknf19qZ2CjYEjDqqIOWC/zK6sEEgttrPm2UcTr0UPn58J9wZRABD5vvVxwt81MusvV
         ueEhvWeGXiX4rBoARun2G13ACXYabbfcZ3f7D3Zgo/0TsluyF7PfbdEIyL3egf2yGPo3
         CXhQ==
X-Gm-Message-State: APjAAAWbTePXy+G8K6hh2nLt2nZ7jZeK705QLJUoyrb6JZVcTXfG8Gef
	6M33r4zX1aqzQHMZXqN7/Rg=
X-Received: by 2002:a65:624c:: with SMTP id q12mr16478743pgv.75.1553403259951;
        Sat, 23 Mar 2019 21:54:19 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.202.114])
        by smtp.gmail.com with ESMTPSA id b15sm34275913pfj.167.2019.03.23.21.54.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 21:54:19 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: 
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: rtl8712: avoid camelcase variable name 'backupPMKIDList'
Date: Sun, 24 Mar 2019 10:23:49 +0530
Message-Id: <a1a477b391c68e9227270b49a1663ecb5dc7b260.1553403095.git.payal.s.kshirsagar.98@gmail.com>
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
index 4d473f0..fbd04f5 100644
--- a/drivers/staging/rtl8712/mlme_linux.c
+++ b/drivers/staging/rtl8712/mlme_linux.c
@@ -84,7 +84,7 @@ void r8712_os_indicate_connect(struct _adapter *adapter)
 	netif_carrier_on(adapter->pnetdev);
 }
 
-static struct RT_PMKID_LIST   backupPMKIDList[NUM_PMKID_CACHE];
+static struct RT_PMKID_LIST   backup_PMKID_List[NUM_PMKID_CACHE];
 void r8712_os_indicate_disconnect(struct _adapter *adapter)
 {
 	u8 backupPMKIDIndex = 0;
@@ -99,7 +99,7 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter)
 		 * disconnect with AP for 60 seconds.
 		 */
 
-		memcpy(&backupPMKIDList[0],
+		memcpy(&backup_PMKID_List[0],
 		       &adapter->securitypriv.PMKIDList[0],
 		       sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		backupPMKIDIndex = adapter->securitypriv.PMKIDIndex;
@@ -113,7 +113,7 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter)
 		 * for the following connection.
 		 */
 		memcpy(&adapter->securitypriv.PMKIDList[0],
-		       &backupPMKIDList[0],
+		       &backup_PMKID_List[0],
 		       sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		adapter->securitypriv.PMKIDIndex = backupPMKIDIndex;
 		adapter->securitypriv.btkip_countermeasure =
-- 
2.7.4


