X-GM-THRID: 8600984485888
X-Received: by 10.180.13.195 with SMTP id j3mr12513170wic.2.1426521661937;
        Mon, 16 Mar 2015 09:01:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.166 with SMTP id fx6ls644778wib.20.canary; Mon, 16 Mar
 2015 09:01:01 -0700 (PDT)
X-Received: by 10.180.80.132 with SMTP id r4mr5998513wix.4.1426521661397;
        Mon, 16 Mar 2015 09:01:01 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id o3si720243wib.2.2015.03.16.09.01.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 09:01:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x234.google.com with SMTP id k59so41731231wet.3
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 09:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=sQ4XJpF4sWzKw9reEAPTzpfyKKvi0yAIruBdZdGy6Dk=;
        b=HMTTrK0wQY2UcFxzCGQqx6zyzn3gdoDo6RXpmj10L8o/KMK5a9HQsleiCzlXFJ5d6T
         6+pmfbunhNzZCYW0T0xbSH3Me3o2W+AglgY3Gf9MBf0kK1eWGJ6Z9Vg7hERAYFwjAWHM
         U4Y/7dL7HeujDlu9jTV/WBHvZmCnC+GayaQvFag9VMyJHPexvHtZuqYhxDhharOoNKod
         1j7dqzb0ak1CcSngattcu415E0KjTaOaieDRnCK9TIkvdLfQVdvxLtK9xel0UToETobo
         GXtkGnHQ9pw63tJss5QS+F5gnvM4FRFri+bY9oTrv3+4sk3ICqD22pGeed68GZLcl1Bp
         8H4w==
X-Received: by 10.194.77.230 with SMTP id v6mr126544292wjw.25.1426521661306;
        Mon, 16 Mar 2015 09:01:01 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id dx11sm15983523wjb.23.2015.03.16.09.01.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 09:01:00 -0700 (PDT)
Date: Mon, 16 Mar 2015 18:00:18 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: rtl8192u: Rename struct to avoid CamelCase
Message-ID: <c0a6e220e1e9f35393d6da4166c1dc31b6274d87.1426518637.git.cristina.opriceana@gmail.com>
References: <cover.1426518637.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426518637.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch renames struct DRxPathSel to dynamic_rx_path_sel in order to
keep the notations consistent and to remove the warning:
"CHECK: Avoid CamelCase". Done with coccinelle:

@@ @@
struct
-DRxPathSel
+dynamic_rx_path_sel
{...}

@@ @@
struct
-DRxPathSel
+dynamic_rx_path_sel

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_dm.c | 2 +-
 drivers/staging/rtl8192u/r8192U_dm.h | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 510092d..a874138 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -40,7 +40,7 @@ struct dig_t dm_digtable;
 /* Store current software write register content for MAC PHY. */
 u8		dm_shadow[16][256] = { {0} };
 /* For Dynamic Rx Path Selection by Signal Strength */
-struct DRxPathSel DM_RxPathSelTable;
+struct dynamic_rx_path_sel DM_RxPathSelTable;
 /*------------------------Define global variable-----------------------------*/
 
 
diff --git a/drivers/staging/rtl8192u/r8192U_dm.h b/drivers/staging/rtl8192u/r8192U_dm.h
index b02ece0..f164629 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.h
+++ b/drivers/staging/rtl8192u/r8192U_dm.h
@@ -163,7 +163,7 @@ typedef enum tag_dig_cck_cs_ratio_state_definition {
 	DIG_CS_RATIO_HIGHER = 1,
 	DIG_CS_MAX
 } dm_dig_cs_ratio_e;
-struct DRxPathSel {
+struct dynamic_rx_path_sel {
 	u8		Enable;
 	u8		DbgMode;
 	u8		cck_method;
@@ -202,7 +202,7 @@ typedef struct tag_Tx_Config_Cmd_Format {
 /*------------------------Export global variable----------------------------*/
 extern struct dig_t dm_digtable;
 extern u8 dm_shadow[16][256];
-extern struct DRxPathSel DM_RxPathSelTable;
+extern struct dynamic_rx_path_sel DM_RxPathSelTable;
 /*------------------------Export global variable----------------------------*/
 
 
-- 
1.9.1


