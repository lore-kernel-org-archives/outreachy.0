X-GM-THRID: 6207450266150633472
X-Received: by 10.182.107.162 with SMTP id hd2mr28884447obb.29.1445284715209;
        Mon, 19 Oct 2015 12:58:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.58.81 with SMTP id o17ls1252012obq.52.gmail; Mon, 19 Oct
 2015 12:58:34 -0700 (PDT)
X-Received: by 10.182.24.170 with SMTP id v10mr2870103obf.17.1445284714758;
        Mon, 19 Oct 2015 12:58:34 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id vy6si3440310pbc.1.2015.10.19.12.58.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 12:58:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id rc13so199895172pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 12:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=y3j+l334DXPFG6NtkK1QWaNEIBqCUA4BoiIH9nFdyPE=;
        b=xgHJPnIkYN7z+393oqF1mG8NAR7Zpo0/Vgfz2qEbgdwFeBqiTqlpHLk8G7SwQF8kZ1
         AlDrLmFhIoHz2/0TY9usnLYw+MeAOIoMjCDbKcY32/K30+MdmFEGqmqmLaV6e3VCP3MZ
         R4l98ZDPLw91rv3xZAb4Xwt+rHe5BMCSERqNwsSA3YruEfuJiwuSJ2IXrwXqNtJa/d+w
         iPKhLZI5T+K21OkJ5l25ALwfTWogrrBFmgimnHZJiHMslu8FPMwY/cjEdb8GvzoB4tHH
         CAu/qGdKZXZID8lgOVRLTziT2FsC5iUaB4/SnHR87nNNb9FlvDDVJnivSLTV0nkjrGGg
         6Ysw==
X-Received: by 10.66.163.136 with SMTP id yi8mr36515458pab.124.1445284714640;
        Mon, 19 Oct 2015 12:58:34 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id nu5sm37769905pbb.65.2015.10.19.12.58.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 19 Oct 2015 12:58:34 -0700 (PDT)
Date: Mon, 19 Oct 2015 12:58:33 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] staging: r8723au: break parameter list at separators and
 align to open braces
Message-ID: <14fcc21f09be16e4611372f93ec739efb73f6f36.1445282918.git.amsfield22@gmail.com>
References: <cover.1445282918.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445282918.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Improve readability by aligning the struct cmd_hdl wlancmds[] to fit
within 80 chars and cleaning up the adjacent index comments.

checkpatch.pl: WARNING: line over 80 characters

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_cmd.c | 64 +++++++++++++++++++-------------
 1 file changed, 38 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
index 46aea16..c3579ac 100644
--- a/drivers/staging/rtl8723au/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
@@ -22,7 +22,7 @@
 #include <rtw_sreset.h>
 
 static struct cmd_hdl wlancmds[] = {
-	GEN_DRV_CMD_HANDLER(0, NULL) /*0*/
+	GEN_DRV_CMD_HANDLER(0, NULL)					/*0*/
 	GEN_DRV_CMD_HANDLER(0, NULL)
 	GEN_DRV_CMD_HANDLER(0, NULL)
 	GEN_DRV_CMD_HANDLER(0, NULL)
@@ -32,18 +32,26 @@ static struct cmd_hdl wlancmds[] = {
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
-	GEN_MLME_EXT_HANDLER(0, NULL) /*10*/
+	GEN_MLME_EXT_HANDLER(0, NULL)					/*10*/
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
-	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex), join_cmd_hdl23a) /*14*/
-	GEN_MLME_EXT_HANDLER(sizeof(struct disconnect_parm), disconnect_hdl23a)
-	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex), createbss_hdl23a)
-	GEN_MLME_EXT_HANDLER(sizeof(struct setopmode_parm), setopmode_hdl23a)
-	GEN_MLME_EXT_HANDLER(sizeof(struct sitesurvey_parm), sitesurvey_cmd_hdl23a) /*18*/
-	GEN_MLME_EXT_HANDLER(sizeof(struct setauth_parm), setauth_hdl23a)
-	GEN_MLME_EXT_HANDLER(sizeof(struct setkey_parm), setkey_hdl23a) /*20*/
-	GEN_MLME_EXT_HANDLER(sizeof(struct set_stakey_parm), set_stakey_hdl23a)
+	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex),
+			     join_cmd_hdl23a)
+	GEN_MLME_EXT_HANDLER(sizeof(struct disconnect_parm),
+			     disconnect_hdl23a)
+	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex),
+			     createbss_hdl23a)
+	GEN_MLME_EXT_HANDLER(sizeof(struct setopmode_parm),
+			     setopmode_hdl23a)
+	GEN_MLME_EXT_HANDLER(sizeof(struct sitesurvey_parm),
+			     sitesurvey_cmd_hdl23a)
+	GEN_MLME_EXT_HANDLER(sizeof(struct setauth_parm),
+			     setauth_hdl23a)
+	GEN_MLME_EXT_HANDLER(sizeof(struct setkey_parm),		/*20*/
+			     setkey_hdl23a)
+	GEN_MLME_EXT_HANDLER(sizeof(struct set_stakey_parm),
+			     set_stakey_hdl23a)
 	GEN_MLME_EXT_HANDLER(sizeof(struct set_assocsta_parm), NULL)
 	GEN_MLME_EXT_HANDLER(sizeof(struct del_assocsta_parm), NULL)
 	GEN_MLME_EXT_HANDLER(sizeof(struct setstapwrstate_parm), NULL)
@@ -52,7 +60,7 @@ static struct cmd_hdl wlancmds[] = {
 	GEN_MLME_EXT_HANDLER(sizeof(struct setdatarate_parm), NULL)
 	GEN_MLME_EXT_HANDLER(sizeof(struct getdatarate_parm), NULL)
 	GEN_MLME_EXT_HANDLER(sizeof(struct setphyinfo_parm), NULL)
-	GEN_MLME_EXT_HANDLER(sizeof(struct getphyinfo_parm), NULL)  /*30*/
+	GEN_MLME_EXT_HANDLER(sizeof(struct getphyinfo_parm), NULL)	/*30*/
 	GEN_MLME_EXT_HANDLER(sizeof(struct setphy_parm), NULL)
 	GEN_MLME_EXT_HANDLER(sizeof(struct getphy_parm), NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
@@ -62,32 +70,36 @@ static struct cmd_hdl wlancmds[] = {
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
-	GEN_MLME_EXT_HANDLER(0, NULL)	/*40*/
+	GEN_MLME_EXT_HANDLER(0, NULL)					/*40*/
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
-	GEN_MLME_EXT_HANDLER(sizeof(struct addBaReq_parm), add_ba_hdl23a)
-	GEN_MLME_EXT_HANDLER(sizeof(struct set_ch_parm), set_ch_hdl23a) /* 46 */
+	GEN_MLME_EXT_HANDLER(sizeof(struct addBaReq_parm),
+			     add_ba_hdl23a)
+	GEN_MLME_EXT_HANDLER(sizeof(struct set_ch_parm),
+			     set_ch_hdl23a)
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
-	GEN_MLME_EXT_HANDLER(0, NULL) /*50*/
+	GEN_MLME_EXT_HANDLER(0, NULL)					/*50*/
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
-	GEN_MLME_EXT_HANDLER(sizeof(struct Tx_Beacon_param), tx_beacon_hdl23a) /*55*/
-
-	GEN_MLME_EXT_HANDLER(0, mlme_evt_hdl23a) /*56*/
-	GEN_MLME_EXT_HANDLER(0, rtw_drvextra_cmd_hdl23a) /*57*/
-
-	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl23a) /*58*/
-	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param), set_chplan_hdl23a) /*59*/
-	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param), led_blink_hdl23a) /*60*/
-
-	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelSwitch_param), set_csa_hdl23a) /*61*/
-	GEN_MLME_EXT_HANDLER(sizeof(struct TDLSoption_param), tdls_hdl23a) /*62*/
+	GEN_MLME_EXT_HANDLER(sizeof(struct Tx_Beacon_param),
+			     tx_beacon_hdl23a)
+	GEN_MLME_EXT_HANDLER(0, mlme_evt_hdl23a)
+	GEN_MLME_EXT_HANDLER(0, rtw_drvextra_cmd_hdl23a)
+	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl23a)
+	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param),
+			     set_chplan_hdl23a)
+	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param),		/*60*/
+			     led_blink_hdl23a)
+	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelSwitch_param),
+			     set_csa_hdl23a)
+	GEN_MLME_EXT_HANDLER(sizeof(struct TDLSoption_param),
+			     tdls_hdl23a)
 };
 
 struct _cmd_callback	rtw_cmd_callback[] = {
-- 
2.1.4


