X-GM-THRID: 8600984485888
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,42921e707e4b56d5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.21.9 with SMTP id r9mr9492185lae.0.1426535763914;
        Mon, 16 Mar 2015 12:56:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.88.98 with SMTP id bf2ls672598wib.30.gmail; Mon, 16 Mar
 2015 12:56:03 -0700 (PDT)
X-Received: by 10.180.150.115 with SMTP id uh19mr6410960wib.7.1426535763598;
        Mon, 16 Mar 2015 12:56:03 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id gj20si764701wic.1.2015.03.16.12.56.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 12:56:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x234.google.com with SMTP id m6so48782242wgd.2
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 12:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=olh1MHsYKXQ9JRtyzWZ5RSLNinaOE73Lm/EdXDUhalM=;
        b=Z2ix2GHxS8AaA5dsdtCnlQqh9yXENElIaEoJvuQRk8SxmrDcZ76tEc5oOzqngg32Ix
         Z4zmATJjLRphQu8nHT48NHHbuHNT1m4ulnmp0Pz2UFOCG6W3vJa6HlGv3O5eF/OcF/hM
         PK++YkJzLSoDNXeBmW2qXCzdvZknv3ShPq10WH0rwadj7kBUI6xQZuIZF6/wQ817pk65
         K9J8NzFgLp1JnjwZkuv9yGVA4DY1Gi2ibNzeVLjOqlAGPUcGTTtoXh5TdQhe+zQyEPiV
         yYyusXN0o5rEY+D3ymC2sRruZp6yr1oIWD5Ytjbs3sUOhga4TT3PNVLIaUazkY9fVvct
         EjRA==
X-Received: by 10.180.12.84 with SMTP id w20mr127099273wib.9.1426535763513;
        Mon, 16 Mar 2015 12:56:03 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id bd3sm16745368wib.17.2015.03.16.12.56.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 12:56:02 -0700 (PDT)
Date: Mon, 16 Mar 2015 21:55:15 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] Staging: rtl8192u: Do not add new typedefs
Message-ID: <b16e872b9c5244f790cbcf81f3d801fddcae95f7.1426534970.git.cristina.opriceana@gmail.com>
References: <cover.1426534970.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426534970.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the dig_t and DRxPathSel type definitions in order to
avoid the following warning: "WARNING: Do not add new typedefs".
Done with coccinelle and this script:

@r@ type t; identifier id; @@
typedef struct id
{...}
t;

@script:python get_name@
t << r.t;
tdres;
@@
coccinelle.tdres = t.replace("_t", "");

@r_match@ type r.t; identifier r.id;
identifier get_name.tdres; @@
-typedef
struct
-id
+tdres
{...}
-t
;
@r_replace@ type r.t; identifier get_name.tdres; @@
-t
+struct tdres

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_dm.c |  5 +++--
 drivers/staging/rtl8192u/r8192U_dm.h | 12 ++++++------
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 8669162..402abdf 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -36,11 +36,12 @@ static u32 edca_setting_UL[HT_IOT_PEER_MAX] = {
 
 /*------------------------Define global variable-----------------------------*/
 /* Debug variable ? */
-dig_t	dm_digtable;
+struct dig dm_digtable;
 /* Store current software write register content for MAC PHY. */
 u8		dm_shadow[16][256] = { {0} };
 /* For Dynamic Rx Path Selection by Signal Strength */
-DRxPathSel	DM_RxPathSelTable;
+struct DRxPathSel DM_RxPathSelTable;
+
 /*------------------------Define global variable-----------------------------*/
 
 
diff --git a/drivers/staging/rtl8192u/r8192U_dm.h b/drivers/staging/rtl8192u/r8192U_dm.h
index 3008f91..091fdd1 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.h
+++ b/drivers/staging/rtl8192u/r8192U_dm.h
@@ -67,7 +67,7 @@
 
 /*------------------------------Define structure----------------------------*/
 /* 2007/10/04 MH Define upper and lower threshold of DIG enable or disable. */
-typedef struct _dynamic_initial_gain_threshold_ {
+struct dig {
 	u8		dig_enable_flag;
 	u8		dig_algorithm;
 	u8		dbg_mode;
@@ -98,7 +98,7 @@ typedef struct _dynamic_initial_gain_threshold_ {
 	bool		initialgain_lowerbound_state;
 
 	long		rssi_val;
-} dig_t;
+};
 
 typedef enum tag_dynamic_init_gain_state_definition {
 	DM_STA_DIG_OFF = 0,
@@ -163,7 +163,7 @@ typedef enum tag_dig_cck_cs_ratio_state_definition {
 	DIG_CS_RATIO_HIGHER = 1,
 	DIG_CS_MAX
 } dm_dig_cs_ratio_e;
-typedef struct _Dynamic_Rx_Path_Selection_ {
+struct DRxPathSel {
 	u8		Enable;
 	u8		DbgMode;
 	u8		cck_method;
@@ -177,7 +177,7 @@ typedef struct _Dynamic_Rx_Path_Selection_ {
 	u8		rf_rssi[4];
 	u8		rf_enable_rssi_th[4];
 	long		cck_pwdb_sta[4];
-} DRxPathSel;
+};
 
 typedef enum tag_CCK_Rx_Path_Method_Definition {
 	CCK_Rx_Version_1 = 0,
@@ -200,9 +200,9 @@ typedef struct tag_Tx_Config_Cmd_Format {
 
 
 /*------------------------Export global variable----------------------------*/
-extern dig_t dm_digtable;
+extern struct dig dm_digtable;
 extern u8 dm_shadow[16][256];
-extern DRxPathSel DM_RxPathSelTable;
+extern struct DRxPathSel DM_RxPathSelTable;
 /*------------------------Export global variable----------------------------*/
 
 
-- 
1.9.1


