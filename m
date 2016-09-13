X-GM-THRID: 6329788419736076288
X-Received: by 10.66.193.230 with SMTP id hr6mr359955pac.7.1473768711390;
        Tue, 13 Sep 2016 05:11:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.195 with SMTP id g64ls90151ioj.37.gmail; Tue, 13 Sep
 2016 05:11:50 -0700 (PDT)
X-Received: by 10.98.91.7 with SMTP id p7mr389462pfb.6.1473768710389;
        Tue, 13 Sep 2016 05:11:50 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id h124si3413197pfe.0.2016.09.13.05.11.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 05:11:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id p2so2931801pap.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 05:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Q35nuqjz6LLis1zmxaPlRqDnZqrW96ly009fl+2ZQU0=;
        b=BFmZ+Ca+a6Pz0u7HlBoozAJChdGFsOgU8+DSpS9USDIOmU/lPrWW8fzCqk/Yfs1xa1
         8RvUceF4HYEQAJmanUVGkxwOwagfgYoHimbFJxunt3p6zkjTGrgNGTeSYCvzO6FHF9p0
         C9UHdN5ZEkcLlfqchyBYpvDsZNrZeyEJl1Y1tfIfkCVWeLI9GUwoxX46iHtxPP+zGOUE
         n9YWTKcmaKowuUz9ixVKZrt+j3/Bwi34+rCOqN7GGj13MNk+GLNIA7ABNnkUdmXmSxGi
         tti+oz4B2g0joNMFKyeQCqQEDypNlmflPEATAHIw87XeTFOWPDSuNLqt2TuhvAUlkNw5
         XhLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Q35nuqjz6LLis1zmxaPlRqDnZqrW96ly009fl+2ZQU0=;
        b=au+/4XgspHkXjYrJP2fjf0hx88dX+AULkooT7+Vbbp81gS4UAvdEumlIsLj3v6GE36
         peyAHTsLOUmZ0F2Ox4rAe70UxQUuzSWh7qampgovbfoCn2zaWUgBdqO/QCtbRHr6qvzg
         8znwl60kkqNnp4luP5UTdA3I2XnCDCyEnnj9bZGk2tL4W1qQtlnjDbeDy2hUtwQY+W/S
         /6PL6KKfILqYb9jDy9ubBRB0VRNm2d7Pfv6AuC2ZBTCCgkAazlJwqVtdMayDfflYO3B3
         nmXBw8L/vUOYcQ0ehadVowE6nV/ePBxdEdKXsZGFoKOk1yyBwbCDqqkXyrJ9zkk0sTdw
         LhKA==
X-Gm-Message-State: AE9vXwOcrjHBz8v1tExFH70q6Bb46JLGYCYUv4oLZ1OxSx1YkWVwfY1Gaau7sc14rUOENA==
X-Received: by 10.66.86.198 with SMTP id r6mr777576paz.72.1473768709788;
        Tue, 13 Sep 2016 05:11:49 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.191.49])
        by smtp.gmail.com with ESMTPSA id f16sm26799922pfd.84.2016.09.13.05.11.41
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 05:11:48 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Tue, 13 Sep 2016 17:41:34 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: wilc1000: Remove struct typedef
Date: Tue, 13 Sep 2016 17:41:26 +0530
Message-Id: <1473768686-2025-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove typedef from structure tstrRSSI as using typedef for
structures is not preferred.
Found using coccinelle:

@r1@
type T;
@@

typedef struct { ... } T;

@script:python c1@
T2;
T << r1.T;
@@
if T[-2:] =="_t":
  coccinelle.T2 = T[:-2];
  print T
else:
  coccinelle.T2=T;

@r2@
type r1.T;
identifier c1.T2;
@@
-typedef
struct
+ T2
{ ... }
-T
;

@r3@
type r1.T;
identifier c1.T2;
@@
- T
+ struct T2

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index 076e06a..cff1698 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -70,11 +70,11 @@ enum connect_status {
 	CONNECT_STS_FORCE_16_BIT = 0xFFFF
 };
 
-typedef struct {
+struct tstrRSSI {
 	u8 u8Full;
 	u8 u8Index;
 	s8 as8RSSI[NUM_RSSI];
-} tstrRSSI;
+};
 
 struct network_info {
 	s8 rssi;
@@ -93,7 +93,7 @@ struct network_info {
 	u8 *ies;
 	u16 ies_len;
 	void *join_params;
-	tstrRSSI str_rssi;
+	struct tstrRSSI str_rssi;
 	u64 tsf_hi;
 };
 
-- 
1.9.1


