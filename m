X-GM-THRID: 8600984485888
X-Received: by 10.112.44.167 with SMTP id f7mr6924842lbm.9.1426521586262;
        Mon, 16 Mar 2015 08:59:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.133 with SMTP id gu5ls661807wib.33.gmail; Mon, 16 Mar
 2015 08:59:45 -0700 (PDT)
X-Received: by 10.194.95.67 with SMTP id di3mr9345021wjb.0.1426521585857;
        Mon, 16 Mar 2015 08:59:45 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id c8si502391wiw.1.2015.03.16.08.59.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 08:59:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id j2so47449367wif.1
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 08:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=C/njOHjMt/C8/50J0XPCgB/TyaRvBus193KQeiZwtoI=;
        b=zY/yQhdefYujEm6UUE5bjaC4wKK/Vchz5ApCtAIcKl8aBTFDUWJIr49WHwO7BZPpEI
         NuNbjwrM6oxxRefOyX6hotQITXnwTTwlTZ3piaLrbCzp2id/Ogg51pXDM3XsAnlT3Kq0
         5TccrlO9D1miMiHxj5XHBgTgRKa2GIKtXo41Gg801xFlVDkWanPTCWzkjb+p5QT7EEGs
         pep/YTSVrLS9U5uK2Wj9wu7bdWlddUiZllLJeEOg5VrT9zd+H0xeTjeDxtUiKDaNPevX
         TL8uaKRVI3Q1wKLepA2nCZTiYdQchcOurhBN13remn/piqEptVm9cTYE/K4qMA23+2Mu
         ksNA==
X-Received: by 10.194.223.5 with SMTP id qq5mr126784848wjc.152.1426521585772;
        Mon, 16 Mar 2015 08:59:45 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id m10sm15954733wij.5.2015.03.16.08.59.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 08:59:45 -0700 (PDT)
Date: Mon, 16 Mar 2015 17:59:02 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: rtl8192u: Do not add new typedefs
Message-ID: <8b18c84b5d3f5634071109cbaf158ffb04f08970.1426518637.git.cristina.opriceana@gmail.com>
References: <cover.1426518637.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426518637.git.cristina.opriceana@gmail.com>
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
coccinelle.tdres = t;

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
 drivers/staging/rtl8192u/r8192U_dm.c |  4 ++--
 drivers/staging/rtl8192u/r8192U_dm.h | 12 ++++++------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index b57b658..510092d 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -36,11 +36,11 @@ static u32 edca_setting_UL[HT_IOT_PEER_MAX] = {
 
 /*------------------------Define global variable-----------------------------*/
 /* Debug variable ? */
-dig_t	dm_digtable;
+struct dig_t dm_digtable;
 /* Store current software write register content for MAC PHY. */
 u8		dm_shadow[16][256] = { {0} };
 /* For Dynamic Rx Path Selection by Signal Strength */
-DRxPathSel	DM_RxPathSelTable;
+struct DRxPathSel DM_RxPathSelTable;
 /*------------------------Define global variable-----------------------------*/
 
 
diff --git a/drivers/staging/rtl8192u/r8192U_dm.h b/drivers/staging/rtl8192u/r8192U_dm.h
index 3008f91..b02ece0 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.h
+++ b/drivers/staging/rtl8192u/r8192U_dm.h
@@ -67,7 +67,7 @@
 
 /*------------------------------Define structure----------------------------*/
 /* 2007/10/04 MH Define upper and lower threshold of DIG enable or disable. */
-typedef struct _dynamic_initial_gain_threshold_ {
+struct dig_t {
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
+extern struct dig_t dm_digtable;
 extern u8 dm_shadow[16][256];
-extern DRxPathSel DM_RxPathSelTable;
+extern struct DRxPathSel DM_RxPathSelTable;
 /*------------------------Export global variable----------------------------*/
 
 
-- 
1.9.1


