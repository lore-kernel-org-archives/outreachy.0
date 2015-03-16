X-GM-THRID: 8600984485888
X-Received: by 10.152.19.67 with SMTP id c3mr8200187lae.7.1426535821362;
        Mon, 16 Mar 2015 12:57:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.208 with SMTP id l16ls662487laa.66.gmail; Mon, 16 Mar
 2015 12:57:00 -0700 (PDT)
X-Received: by 10.152.164.171 with SMTP id yr11mr6564538lab.4.1426535820968;
        Mon, 16 Mar 2015 12:57:00 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id i8si762959wif.1.2015.03.16.12.57.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 12:57:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id dy8so46543419wib.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 12:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=uLcEmzTEWHyuhgl34yw5wsJ79IwT9wy/kV7IcUdcbpc=;
        b=SLIWPhQKWV6Z4wgFWPu4QC1i0UuuvnFMW1T4KNjzEXVYmIEr0MT3SzCf1ZXMuBrsji
         R9jPBuxt8DQYOCaBwCLaZcq3I9w1rIVekbXybfFuL3Zbd1sDLAYSEltw6NCGplA/uccj
         p4LUVYDZnrGhoY4axNWtQp+Rd6S21mQeqRfmE9w3rNXStKeJd73kvFNgWuYPgnoMgFlE
         X8OzfVAIjp8b6JYVANh0QlDxGCapb/+viaNs3eIO4jB9gl+zLJQmGQzm8jk12eUtzXNI
         iu0SxbGqh5AZc29KhlmrmohadG5AoqC4tz0Zd97qehPQtOZMUuMQqF3HTy90k604cVkl
         Ramw==
X-Received: by 10.194.192.167 with SMTP id hh7mr127335590wjc.151.1426535820888;
        Mon, 16 Mar 2015 12:57:00 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id 17sm16785473wjt.45.2015.03.16.12.56.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 12:57:00 -0700 (PDT)
Date: Mon, 16 Mar 2015 21:56:13 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] Staging: rtl8192u: Rename struct to avoid CamelCase
Message-ID: <4f739eaeea268c5ed359c8466e51008799a5ef22.1426534970.git.cristina.opriceana@gmail.com>
References: <cover.1426534970.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426534970.git.cristina.opriceana@gmail.com>
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
index 402abdf..12dd19e 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -40,7 +40,7 @@ struct dig dm_digtable;
 /* Store current software write register content for MAC PHY. */
 u8		dm_shadow[16][256] = { {0} };
 /* For Dynamic Rx Path Selection by Signal Strength */
-struct DRxPathSel DM_RxPathSelTable;
+struct dynamic_rx_path_sel DM_RxPathSelTable;
 
 /*------------------------Define global variable-----------------------------*/
 
diff --git a/drivers/staging/rtl8192u/r8192U_dm.h b/drivers/staging/rtl8192u/r8192U_dm.h
index 091fdd1..6cd32eb4 100644
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
 extern struct dig dm_digtable;
 extern u8 dm_shadow[16][256];
-extern struct DRxPathSel DM_RxPathSelTable;
+extern struct dynamic_rx_path_sel DM_RxPathSelTable;
 /*------------------------Export global variable----------------------------*/
 
 
-- 
1.9.1


