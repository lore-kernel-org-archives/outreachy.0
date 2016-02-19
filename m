X-GM-THRID: 6252993813687566336
X-Received: by 10.67.8.2 with SMTP id dg2mr13005119pad.16.1455888574620;
        Fri, 19 Feb 2016 05:29:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.133 with SMTP id b5ls244191igx.5.canary; Fri, 19 Feb
 2016 05:29:34 -0800 (PST)
X-Received: by 10.107.198.137 with SMTP id w131mr14258556iof.9.1455888574156;
        Fri, 19 Feb 2016 05:29:34 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id 12si1615402pfb.1.2016.02.19.05.29.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 05:29:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id q63so51245249pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 05:29:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=owpy6ZIDBAWPcdRcWBUZwKcRrnKhNe1tG6Ji4TbiEkk=;
        b=EVM2tvi7y2+FT72ar8bOMlAVXlalzrkVcKyzjnDmxF2OODh5v3BeXAHm5vFm0daTNg
         iNXkjIL2hfQPQzq3lZUaFlLWnxfv1UGuClbj6qu6ldvSz53eTG0Ak7NXSox1X2IId6r4
         RuhJ4z+FP2Nrrf4FfRz4RIKEV9Q/8WB86j8U1smIVVQqQwDfUXssjwT+xYY5vFCiTN7F
         J4Gxzu42RYeaY3f8tYKBnOFdr5Nm9dqF75tmu6FddDSU37vNaY9QWHCco9Tx85jQrDM2
         fmlAnR7/CZchR/MvDp7XXkRFJIkEQyzCxF0dha+YwRPWQKKrFlmj5oS6RRG+R35IuPD+
         YUIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=owpy6ZIDBAWPcdRcWBUZwKcRrnKhNe1tG6Ji4TbiEkk=;
        b=EyiUZGzr9wlDbm/KdSEL/qNTLIG6Z+2y2+bpvrMKvpW9ZdZPbDgeTKsmvm7E2+Fm6f
         RyZaxlEYOfniG83jImT/IT3qYblL4bA+5540jbxzGBzqCz9eaCCK64ReYi08WjINCbJN
         x11kspcZkzU18rThMkWLb9OkXlhN5Kxmtq0l5bunajJGGJxIUYQ4uDBQRyelc+IZ5z9z
         TgrDU82XvMBPq37eDsUPWioJlAkFOS8m9fm4ZHS3Ccp3nlV+j32YC3QbTbuuYTaBbXep
         grx1qcQymBcAFvGh7SOGFO/EwdMYNykY29jh8sA3oWZGRlpapcozyC9uAwiwam8meOO2
         bM4Q==
X-Gm-Message-State: AG10YORQHGfxQuo30/9Jr2kSBvDzQZ4ahPGiUDBS3/eCHliE5ZTF0wQo2Ctyu/GgO6Ml6w==
X-Received: by 10.98.13.86 with SMTP id v83mr18000471pfi.162.1455888574015;
        Fri, 19 Feb 2016 05:29:34 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.156.250])
        by smtp.gmail.com with ESMTPSA id o17sm17940438pfj.50.2016.02.19.05.29.28
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 05:29:33 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 19 Feb 2016 18:59:21 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: wilc1000: Remove and rename struct typedefs
Date: Fri, 19 Feb 2016 18:59:20 +0530
Message-Id: <1455888560-9796-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch gets rid of struct typedefs wilc_cfg_byte_t, wilc_cfg_hword_t, 
wilc_cfg_word_t and wilc_cfg_str_t as as linux kernel coding style 
guidelines suggest not using typdefs for structure types.
Also drop '_t' from the names.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan_cfg.c |  8 ++++----
 drivers/staging/wilc1000/wilc_wlan_cfg.h | 16 ++++++++--------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.c b/drivers/staging/wilc1000/wilc_wlan_cfg.c
index 496e3d2..101b7b8 100644
--- a/drivers/staging/wilc1000/wilc_wlan_cfg.c
+++ b/drivers/staging/wilc1000/wilc_wlan_cfg.c
@@ -44,7 +44,7 @@ struct wilc_mac_cfg_t {
 
 static struct wilc_mac_cfg_t g_mac;
 
-static wilc_cfg_byte_t g_cfg_byte[] = {
+static struct wilc_cfg_byte g_cfg_byte[] = {
 	{WID_BSS_TYPE, 0},
 	{WID_CURRENT_TX_RATE, 0},
 	{WID_CURRENT_CHANNEL, 0},
@@ -87,7 +87,7 @@ static wilc_cfg_byte_t g_cfg_byte[] = {
 	{WID_NIL, 0}
 };
 
-static wilc_cfg_hword_t g_cfg_hword[] = {
+static struct wilc_cfg_hword g_cfg_hword[] = {
 	{WID_LINK_LOSS_THRESHOLD, 0},
 	{WID_RTS_THRESHOLD, 0},
 	{WID_FRAG_THRESHOLD, 0},
@@ -108,7 +108,7 @@ static wilc_cfg_hword_t g_cfg_hword[] = {
 	{WID_NIL, 0}
 };
 
-static wilc_cfg_word_t g_cfg_word[] = {
+static struct wilc_cfg_word g_cfg_word[] = {
 	{WID_FAILED_COUNT, 0},
 	{WID_RETRY_COUNT, 0},
 	{WID_MULTIPLE_RETRY_COUNT, 0},
@@ -131,7 +131,7 @@ static wilc_cfg_word_t g_cfg_word[] = {
 
 };
 
-static wilc_cfg_str_t g_cfg_str[] = {
+static struct wilc_cfg_str g_cfg_str[] = {
 	{WID_SSID, g_mac.ssid},	/* 33 + 1 bytes */
 	{WID_FIRMWARE_VERSION, g_mac.firmware_version},
 	{WID_OPERATIONAL_RATE_SET, g_mac.supp_rate},
diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.h b/drivers/staging/wilc1000/wilc_wlan_cfg.h
index 5f74eb8..9b74cc3 100644
--- a/drivers/staging/wilc1000/wilc_wlan_cfg.h
+++ b/drivers/staging/wilc1000/wilc_wlan_cfg.h
@@ -10,25 +10,25 @@
 #ifndef WILC_WLAN_CFG_H
 #define WILC_WLAN_CFG_H
 
-typedef struct {
+struct wilc_cfg_byte {
 	u16 id;
 	u16 val;
-} wilc_cfg_byte_t;
+};
 
-typedef struct {
+struct wilc_cfg_hword {
 	u16 id;
 	u16 val;
-} wilc_cfg_hword_t;
+};
 
-typedef struct {
+struct wilc_cfg_word {
 	u32 id;
 	u32 val;
-} wilc_cfg_word_t;
+};
 
-typedef struct {
+struct wilc_cfg_str {
 	u32 id;
 	u8 *str;
-} wilc_cfg_str_t;
+};
 
 struct wilc;
 int wilc_wlan_cfg_set_wid(u8 *frame, u32 offset, u16 id, u8 *buf, int size);
-- 
1.9.1


