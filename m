X-GM-THRID: 6209346946679701504
X-Received: by 10.50.114.2 with SMTP id jc2mr11899315igb.5.1445784554441;
        Sun, 25 Oct 2015 07:49:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.165.35 with SMTP id yv3ls1416529obb.97.gmail; Sun, 25 Oct
 2015 07:49:14 -0700 (PDT)
X-Received: by 10.182.113.132 with SMTP id iy4mr25421510obb.28.1445784554097;
        Sun, 25 Oct 2015 07:49:14 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id fa8si3136646pab.1.2015.10.25.07.49.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 07:49:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fa8so6799043pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 07:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references:mime-version:content-type:content-transfer-encoding;
        bh=+fte5BQrsuoX5/d2Yz4PybN4eU5++m/Z6TGynSiyk9c=;
        b=Vt24BiIYwYib5W+MAhWeoGTSRrUsxcazXsQ73F1hCp9AHyGf4cwTDMYWm2IDvLUHCn
         iIZ1vpTqD4tLfvg/Tqfyi6K9aPEtiM8F5o53Z5Q3KaIQr9WIKwbbkg0KyYTXFILQbbXp
         Wj6busXGX3APqOhtI+Gfmv70eyrM8HpT3BtIcCj8n89To449Yjsg2wBERL9C8ULuOt8S
         pappkWKiaTkqMW4GPTkCd5sZ65yvSbwd/mA90le69Z5PpcA78D58vs3CHKHSrEYoraGj
         QYVbccdhTx+1U0ItXe5v+QPQsleZEd/DuzeXFVWGzF8+yEr2cOtKeKE6zpfl34w9SDqs
         ThcQ==
X-Received: by 10.69.11.97 with SMTP id eh1mr17202924pbd.71.1445784553987;
        Sun, 25 Oct 2015 07:49:13 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id sn9sm29054172pac.16.2015.10.25.07.49.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 07:49:13 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/4] staging: slicoss: Adds space around operators
Date: Sun, 25 Oct 2015 07:48:56 -0700
Message-Id: <223be165d8b65b4514cdd03f95f4c0141b61ff2b.1445784166.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1445784166.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
 <cover.1445784166.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1445784166.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445784166.git.amarjargal.gundjalam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patch fixes the checkpatch.pl check:

CHECK: spaces preferred around that ‘’

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/slicoss/slic.h    |    4 ++--
 drivers/staging/slicoss/slicoss.c |    2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/slicoss/slic.h b/drivers/staging/slicoss/slic.h
index 6ccd1d5..92c6862 100644
--- a/drivers/staging/slicoss/slic.h
+++ b/drivers/staging/slicoss/slic.h
@@ -446,7 +446,7 @@ struct adapter {
 	*  SLIC Handles
 	*/
 	/* Object handles*/
-	struct slic_handle slic_handles[SLIC_CMDQ_MAXCMDS+1];
+	struct slic_handle slic_handles[SLIC_CMDQ_MAXCMDS + 1];
 	/* Free object handles*/
 	struct slic_handle *pfree_slic_handles;
 	/* Object handle list lock*/
@@ -512,6 +512,6 @@ struct adapter {
 #define FLUSH		true
 #define DONT_FLUSH	false
 
-#define SIOCSLICSETINTAGG        (SIOCDEVPRIVATE+10)
+#define SIOCSLICSETINTAGG        (SIOCDEVPRIVATE + 10)
 
 #endif /*  __SLIC_DRIVER_H__ */
diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index c88ed69..8ce9000 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -160,7 +160,7 @@ static void slic_mcast_set_bit(struct adapter *adapter, char *address)
 	/* Get the CRC polynomial for the mac address */
 	/* we use bits 1-8 (lsb), bitwise reversed,
 	 * msb (= lsb bit 0 before bitrev) is automatically discarded */
-	crcpoly = ether_crc(ETH_ALEN, address)>>23;
+	crcpoly = ether_crc(ETH_ALEN, address) >> 23;
 
 	/* We only have space on the SLIC for 64 entries.  Lop
 	 * off the top two bits. (2^6 = 64)
-- 
1.7.9.5


