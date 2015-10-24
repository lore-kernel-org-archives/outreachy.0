X-GM-THRID: 6209346946679701504
X-Received: by 10.140.234.135 with SMTP id f129mr23439792qhc.9.1445726250683;
        Sat, 24 Oct 2015 15:37:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.57.71 with SMTP id g7ls509230igq.21.canary; Sat, 24 Oct
 2015 15:37:30 -0700 (PDT)
X-Received: by 10.66.182.135 with SMTP id ee7mr9564592pac.32.1445726250436;
        Sat, 24 Oct 2015 15:37:30 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id vy6si2866228pbc.1.2015.10.24.15.37.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 15:37:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv9so156527467pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 15:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references:mime-version:content-type:content-transfer-encoding;
        bh=+fte5BQrsuoX5/d2Yz4PybN4eU5++m/Z6TGynSiyk9c=;
        b=sJxHxIq45Lbw/uzjyEyUFyWipD+6N3LaJegBDe7e2Xdb1l0Y44D1UCDZSkuhB+r+G/
         lsM7Ot7kcl0bXW2R4Xjf1KFPpxIbsKarQzVOTNOadOve9GJBKEkwfJiiRLnO2zs1mX7F
         MCex6rOP0oh7Jf20p5XRYm8uysA0fS+1iUzcIRFahV26ASnZ+NoqbtTV1SKOwZPlreL0
         jXKXGsvvAXp14Gz82X3kjM6w+n27E6ncvDW+ubQPllejYoKDBU16xpxalxVADqTnNiLf
         903fnJ5HxIe+bjDgRj6LkzPO74M5UXEiUg0hU4c681e9KNDowE+0xJZhnXDnMeYEIoEj
         rD9Q==
X-Received: by 10.67.4.65 with SMTP id cc1mr13155155pad.141.1445726250353;
        Sat, 24 Oct 2015 15:37:30 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id fe8sm26017758pab.40.2015.10.24.15.37.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 15:37:30 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: slicoss: Adds space around operators
Date: Sat, 24 Oct 2015 15:37:12 -0700
Message-Id: <223be165d8b65b4514cdd03f95f4c0141b61ff2b.1445720974.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
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


