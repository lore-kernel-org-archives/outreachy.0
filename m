X-GM-THRID: 7021822549853995008
X-Received: by 2002:a05:6512:acb:: with SMTP id n11mr10830174lfu.222.1634895473608;
        Fri, 22 Oct 2021 02:37:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:e85:: with SMTP id bi5ls2524362lfb.2.gmail; Fri, 22
 Oct 2021 02:37:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzQjb01ZF+rT59GVK8cWXbXot3DAAA/dno2Dh5/WKo8AriuXZY0009vcRDDmXOlUQlTAOoj
X-Received: by 2002:ac2:5a1d:: with SMTP id q29mr10447228lfn.469.1634895472077;
        Fri, 22 Oct 2021 02:37:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634895472; cv=none;
        d=google.com; s=arc-20160816;
        b=wcDHrh+GH/m+1ePoVK2l4ujrAdLWN6TMTGo4s4OXfUUWTvrFWrI8dv4rc0BZP/sDoX
         nii7k/XImUuaHNkWY3TaDxfYx0jw636b7rjw0mzBryWlmZkgOKcKcqGijeJhZenPvuO8
         l6pwr2KkgnQwFDpoUtZAuadsyAD5Gg3C45DFW2TlhKDG42vFYem+KDuFMmpL2RTOezWj
         YPdDCwHAVNAPGNZoNfNvzuk0EmPjW0R7kQUliX/v/UodT30vPcBfKQkwCvrJtWnfL4t/
         7dKp2XLPPEbRaJkMjJbQWq/JDW+my0CPnvBkqKxqcc2KJsrXoI1HxfqxbcQI2qgfHcmv
         GYkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=l4Vf8zU6lM4dAIRlmzW2kKVym7mK5P5jeMxIM0GYiAU=;
        b=KcXqwub0x1fJ1ghhM1MaRxbhfKvt2ryy1JXVwRLXpIxWL9r+BLmRPM8Xc+zxF+QQzF
         4zXtsnvYBVjWEzDa0vetWO8Fzzpvg6Bs5KSBtx/vuVIdppkB6seSq/YMC5L7tZMBWAF9
         NWvZmqQAtqnRSwgeeQqN75Gv0NzvtVV1921U22kIJQJYEU1vxwfSrbgoyMOeq1hSIy4v
         1IaCaKdkzulkB6TT7w5xdSfR1RdgKtOekJhpkSnCVf61Jxt2/TYSySk86mElRTRYg/D6
         XEBZS+4cZmq5Hu2mdhklMyjFhWn5kirC5wWu2DeQFgxWc4UX7anOb7dcNgjTFSqW0N6v
         beAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=aswhWG6q;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id t12si575490ljh.0.2021.10.22.02.37.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 02:37:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=aswhWG6q;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x431.google.com with SMTP id d13so3769711wrf.11
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Oct 2021 02:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=l4Vf8zU6lM4dAIRlmzW2kKVym7mK5P5jeMxIM0GYiAU=;
        b=aswhWG6qqkOneHofy3tcYGkagM26dASqaxYw2EqCbTG/dqnk6On9oKM9gLXpK2SeBT
         4Xci9k1Nxv+P9Nuu2+Nn1y7kfCrSOabeukPNDc1IrrIRtENls8EI0ioqWzKUjDp8Q8pt
         wKJlGnHXXEMg4qPWcvcthF8h0et+hWbf4UzJTuvbX3sMBnWnuZjsUwtvmn+D7io9AvRL
         HzI2n7kg78TzvuRfQLaZX/FoS1XZX76qT9CSjJ4aksOctrqhmrrXtVsLGs671mweyN9t
         fz3ZtmW07muWBKeSiXkg+wTBQLY1NrAY/fZt3Xi/N6V+yKf5EsSLmOVUxfSTdenIUH/n
         lzSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=l4Vf8zU6lM4dAIRlmzW2kKVym7mK5P5jeMxIM0GYiAU=;
        b=l+8spQZWqC+y0oFpYo6Y5E/K4rO6mrN/W2eYO2T/tiV7OMo7QEnPk00UtfzMy3YddZ
         VMgSobo/eP+Q6PhY69+snhE6pELLUNhv/7j4E1kDKfg+GSatrUNwiL3wg6yEjZpOu4LE
         V8xqyaaFqWsTvge6Pk1nVy62QWn9IUnBytRLWIAOaQ70eYLmdXh53sRU/CS7o8W2MCtJ
         q5hZqcyr1x8b+uI2L9SsqrN4GW6XHOcOreQMlEiRzNQGxw4/wOJrd2BjZEX64A3apmXE
         sybWkvwBrMao8QJ8VuS2aaKqRXywAuinzTO/uQyleWxnkB13R/7Wlo3cdiFt5idFVWj6
         2zmQ==
X-Gm-Message-State: AOAM5336zMgQHspe6ASW33dpNw9YsUxzgkkw/x5rfHktznfpuy5CV2eY
	ptv3Xz3bTn5bX1I0Aq+81UDPATKfhgjdIeiU
X-Received: by 2002:adf:d1e3:: with SMTP id g3mr14712574wrd.63.1634895471865;
        Fri, 22 Oct 2021 02:37:51 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id r15sm1643602wru.9.2021.10.22.02.37.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 02:37:51 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 3/5] staging: vt6655: Rename `bySleepCount` variable
Date: Fri, 22 Oct 2021 10:37:16 +0100
Message-Id: <70ee3b7d9797d546bab311840da5f8709397ce08.1634826774.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1634826774.git.karolinadrobnik@gmail.com>
References: <cover.1634826774.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop Hungarian notation in `bySleepCount` variable in
`RFvWriteWakeProgSyn` function. Change it to use snake case.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <bySleepCount>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 36708af7d612..a30ffacf720a 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -682,7 +682,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 	void __iomem *iobase = priv->port_offset;
 	int i;
 	unsigned char init_count = 0;
-	unsigned char bySleepCount = 0;
+	unsigned char sleep_count = 0;
 
 	VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
 	switch (byRFType) {
@@ -694,8 +694,8 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 
 		 /* Init Reg + Channel Reg (2) */
 		init_count = CB_AL2230_INIT_SEQ + 2;
-		bySleepCount = 0;
-		if (init_count > (MISCFIFO_SYNDATASIZE - bySleepCount))
+		sleep_count = 0;
+		if (init_count > (MISCFIFO_SYNDATASIZE - sleep_count))
 			return false;
 
 		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
@@ -710,8 +710,8 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 	case RF_AIROHA7230:
 		 /* Init Reg + Channel Reg (3) */
 		init_count = CB_AL7230_INIT_SEQ + 3;
-		bySleepCount = 0;
-		if (init_count > (MISCFIFO_SYNDATASIZE - bySleepCount))
+		sleep_count = 0;
+		if (init_count > (MISCFIFO_SYNDATASIZE - sleep_count))
 			return false;
 
 		if (uChannel <= CB_MAX_CHANNEL_24G) {
@@ -736,7 +736,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 		return false;
 	}
 
-	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(bySleepCount, init_count));
+	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(sleep_count, init_count));
 
 	return true;
 }
-- 
2.30.2


