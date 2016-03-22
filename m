X-GM-THRID: 6264891484261056512
X-Received: by 10.157.19.108 with SMTP id q41mr3948593otq.42.1458658716897;
        Tue, 22 Mar 2016 07:58:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.225.71 with SMTP id ri7ls1412245igc.14.canary; Tue, 22 Mar
 2016 07:58:36 -0700 (PDT)
X-Received: by 10.107.16.34 with SMTP id y34mr27460902ioi.4.1458658716433;
        Tue, 22 Mar 2016 07:58:36 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id tu5si4007536pab.2.2016.03.22.07.58.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 07:58:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id 4so183730414pfd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 07:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=eq0qaolqv10ibZ4noAYmoaei/TS4oCroyGEePoU7k9k=;
        b=qO/cLqYUMEu369InwCpW8j9xhvjAumuijezsIQs8sbvluozrPiNPiURAnP7P5h1gWN
         Q18v/pIARiuPji10jyO6bZEP0CTk9HO6hrsgzAPNixPatBKI3xbVp4xo3D/vUzOLoMEm
         R+mFmT5Sx6G1vXrkUeKkV8IoRDHk3jDLJ5n6dUbfRfFanBTmqvpw5oTGto41b0Ia+IQY
         UD9bF/myItLrifJknFgQm0G6GcmV0m4/pGJF+k1RPbWyxLutJEUfLz9i2HaMJAL+ltgO
         CZMJbxU5JphNcYyRIhgZGDJNN7S6poJsQVZPPtEtyDUBKZ8tuOgT/YpoNk4I/bBlCTix
         MNsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=eq0qaolqv10ibZ4noAYmoaei/TS4oCroyGEePoU7k9k=;
        b=XAREeX3ikR/URMzORTp3i1quRKM2iYYGiMjIm56PDyQ04uN2jLLL39SdVQz7HG6rSJ
         +1sqfl297RXuISxIF6i2+Ck/m2mYgrOlCDDsva87RI+mL4tDL2wFbk/Gjr49XaEyC9zV
         OFaFsDDCmGpMVYKSOBVy4oTLakcqullm3L+1gJ+JU1cvnR0TMY1GT/t26O3VsFjlyIqr
         b4nzxqgyprjcpHy5yy+wmk2gIeovhM7k8iq51gznw4nNm0s0FD1E+7zAHzfIG6kdW01H
         D6vg1FSMDTbWCk6NK1RgSWL67Tuen7/ybolIwRLQ3BE9S/RMoDW88816KrjVZEZtsh61
         0/Fg==
X-Gm-Message-State: AD7BkJJvnrniA3NPnmGsrJmJrU8MCg+fyA+GsapiqrSGt8XItGclmMmIGTwNRsMGJliUHw==
X-Received: by 10.67.3.67 with SMTP id bu3mr54332331pad.39.1458658716210;
        Tue, 22 Mar 2016 07:58:36 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id yx1sm25386088pac.29.2016.03.22.07.58.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 07:58:35 -0700 (PDT)
Date: Tue, 22 Mar 2016 20:28:28 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: rtw_cmd: Clean up tests if NULL returned
 on failure
Message-ID: <20160322145828.GA5266@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Some functions like kmalloc/kzalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

This was done using Coccinelle:

@@
expression *e;
identifier l1;
@@

e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_cmd.c | 44 ++++++++++++++++----------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/drivers/staging/rtl8188eu/core/rtw_cmd.c
index f08d052..7748523 100644
--- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
+++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
@@ -258,11 +258,11 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SCAN, 1);

 	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;

 	psurveyPara = kzalloc(sizeof(struct sitesurvey_parm), GFP_ATOMIC);
-	if (psurveyPara == NULL) {
+	if (!psurveyPara) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -345,7 +345,7 @@ u8 rtw_createbss_cmd(struct adapter  *padapter)
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, (" createbss for SSid:%s\n", pmlmepriv->assoc_ssid.Ssid));

 	pcmd = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
-	if (pcmd == NULL) {
+	if (!pcmd) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -516,7 +516,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu

 	/* prepare cmd parameter */
 	param = kzalloc(sizeof(*param), GFP_KERNEL);
-	if (param == NULL) {
+	if (!param) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -525,7 +525,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
 	if (enqueue) {
 		/* need enqueue, prepare cmd_obj and enqueue */
 		cmdobj = kzalloc(sizeof(*cmdobj), GFP_KERNEL);
-		if (cmdobj == NULL) {
+		if (!cmdobj) {
 			res = _FAIL;
 			kfree(param);
 			goto exit;
@@ -624,20 +624,20 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, u8 *psta, u8 entry, u8 enqueue)
 		clear_cam_entry(padapter, entry);
 	} else {
 		ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
-		if (ph2c == NULL) {
+		if (!ph2c) {
 			res = _FAIL;
 			goto exit;
 		}

 		psetstakey_para = kzalloc(sizeof(struct set_stakey_parm), GFP_ATOMIC);
-		if (psetstakey_para == NULL) {
+		if (!psetstakey_para) {
 			kfree(ph2c);
 			res = _FAIL;
 			goto exit;
 		}

 		psetstakey_rsp = kzalloc(sizeof(struct set_stakey_rsp), GFP_ATOMIC);
-		if (psetstakey_rsp == NULL) {
+		if (!psetstakey_rsp) {
 			kfree(ph2c);
 			kfree(psetstakey_para);
 			res = _FAIL;
@@ -671,13 +671,13 @@ u8 rtw_addbareq_cmd(struct adapter *padapter, u8 tid, u8 *addr)


 	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}

 	paddbareq_parm = kzalloc(sizeof(struct addBaReq_parm), GFP_KERNEL);
-	if (paddbareq_parm == NULL) {
+	if (!paddbareq_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -708,13 +708,13 @@ u8 rtw_dynamic_chk_wk_cmd(struct adapter *padapter)


 	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}

 	pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_ATOMIC);
-	if (pdrvextra_cmd_parm == NULL) {
+	if (!pdrvextra_cmd_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -752,7 +752,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue)

 	/* prepare cmd parameter */
 	setChannelPlan_param = kzalloc(sizeof(struct SetChannelPlan_param), GFP_KERNEL);
-	if (setChannelPlan_param == NULL) {
+	if (!setChannelPlan_param) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -761,7 +761,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue)
 	if (enqueue) {
 		/* need enqueue, prepare cmd_obj and enqueue */
 		pcmdobj = kzalloc(sizeof(struct	cmd_obj), GFP_KERNEL);
-		if (pcmdobj == NULL) {
+		if (!pcmdobj) {
 			kfree(setChannelPlan_param);
 			res = _FAIL;
 			goto exit;
@@ -920,13 +920,13 @@ u8 rtw_lps_ctrl_wk_cmd(struct adapter *padapter, u8 lps_ctrl_type, u8 enqueue)

 	if (enqueue) {
 		ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
-		if (ph2c == NULL) {
+		if (!ph2c) {
 			res = _FAIL;
 			goto exit;
 		}

 		pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_ATOMIC);
-		if (pdrvextra_cmd_parm == NULL) {
+		if (!pdrvextra_cmd_parm) {
 			kfree(ph2c);
 			res = _FAIL;
 			goto exit;
@@ -963,13 +963,13 @@ u8 rtw_rpt_timer_cfg_cmd(struct adapter *padapter, u16 min_time)
 	u8	res = _SUCCESS;

 	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}

 	pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_ATOMIC);
-	if (pdrvextra_cmd_parm == NULL) {
+	if (!pdrvextra_cmd_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -1005,13 +1005,13 @@ u8 rtw_antenna_select_cmd(struct adapter *padapter, u8 antenna, u8 enqueue)

 	if (enqueue) {
 		ph2c = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
-		if (ph2c == NULL) {
+		if (!ph2c) {
 			res = _FAIL;
 			goto exit;
 		}

 		pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_KERNEL);
-		if (pdrvextra_cmd_parm == NULL) {
+		if (!pdrvextra_cmd_parm) {
 			kfree(ph2c);
 			res = _FAIL;
 			goto exit;
@@ -1103,13 +1103,13 @@ u8 rtw_chk_hi_queue_cmd(struct adapter *padapter)
 	u8	res = _SUCCESS;

 	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}

 	pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_KERNEL);
-	if (pdrvextra_cmd_parm == NULL) {
+	if (!pdrvextra_cmd_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
--
2.1.4


