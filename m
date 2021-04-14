X-GM-THRID: 6951097380954439680
X-Received: by 2002:a2e:a60a:: with SMTP id v10mr25653579ljp.267.1618428484123;
        Wed, 14 Apr 2021 12:28:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5c07:: with SMTP id q7ls580079ljb.11.gmail; Wed, 14 Apr
 2021 12:28:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwMUhylN1hwHnS9H6mrzKT7HBacSRd5dZJ/ktSchjR8Ap2wrUxNPEMv+2A4sMHwsTBTtb0p
X-Received: by 2002:a2e:a177:: with SMTP id u23mr14730100ljl.329.1618428482396;
        Wed, 14 Apr 2021 12:28:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618428482; cv=none;
        d=google.com; s=arc-20160816;
        b=1K6l1jxabF7Ae0TlFvHMpnGngNnHVm1xhoIOUpyTneGt+c27E/FTbs8TCYXvepybiH
         NUOKuQGBANFNwozc5BOAGiKDV7ursrWV6mxBJ295jp+OekNfHev6HbL9Wq7x9BXhDih1
         /8R9uOs60/7Uwla7FOYKg1DKxu4OR/p6eMZlnDDVmOrSXIVqFhnmKs6t8UJN3C78WJyI
         gLfqm7jk1neEwAzETZ6E3reds0JN1j6Dsbgc/3fXJTgQr6jabJK02enK0mYrkiJMe27g
         +RRPTCYDYLCU41Nb+ookzfhesNMIuounjpaSpLMOjnG31MIE3H+jhmzynyWXOjFKMpS9
         KTwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VfAx85OkCJIVXcb4Xjg0l17/YI2UWnOD3N2GZROAX/g=;
        b=ARONPF0PGtQJ4Z1XSwZN9O52Xdyd4ie3mfQuv6AhwoGtKJlVWLXlKI8uZnY0pdu5aU
         5WtAruczrh4xOY9DCAUunz4FOFS5i6qvySrUUGg1ru/ZYI+uoWpQLZIFnogLNuuPEyUY
         FEOIVfLPHprCXx8s+owLx4UDe9wxxb+K70pVJ6MYP3dwUBX/dfVSWIWAYF9qBSG9j4YI
         Jwr8ORINWld2M3gDcSC80kFuIszbxXV7DSQT/n2fgURjOvx/fJUk6Z5D1bqorwXoTNRr
         tcgMsDCMnNmrBnbePltEYAsPLbC8fJgjMj2t8n0Derq9FyZjbvhWw2kChbaZY2+QnxNW
         lCfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lif9Kjvp;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com. [2a00:1450:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id j7si22139lfm.9.2021.04.14.12.28.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 12:28:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) client-ip=2a00:1450:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lif9Kjvp;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62a.google.com with SMTP id mh2so11575381ejb.8
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 12:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VfAx85OkCJIVXcb4Xjg0l17/YI2UWnOD3N2GZROAX/g=;
        b=Lif9KjvpplLZV4pQxvTvW1JCFouT7uzPDBHPdpvLA/mhzajjriwDMXI+rq7SU5aoqk
         K8LqGT8hx7N9vl6bUzP7+vX1fuhPtbzq1SC07nLp9mSZJH30jtPAqZ9ZsGd1GThr1Ubw
         OH/zZkf73jUW4Qh9FzpqHh4S50s7EaliB3cBsGWPfKp6zfB+6lTJzDeQE2+dVltLDKPm
         p03V9WxiVICfIinQQ4EY9YqJwyCZv5MlcC4Wud5OgoTNYZT/3+3MbzbGBz1d8Glx8EFN
         L+84rN/qP3Lx6j0G85EJ4LhIilauIVT61gbeFpWXoan25i2+9ss3sMxF8VxYXTJE8a57
         Sg8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VfAx85OkCJIVXcb4Xjg0l17/YI2UWnOD3N2GZROAX/g=;
        b=epivbfJ7uRJz8lM0mdXrQLw5tNahqr6aoIANzf5ZL9Euo4owaZaOBZTNGS93tj2Jat
         DramV2LDBzZISRhRCrZEhL9pgQ+12LjgZuJ309MAcoJKTUYeAanPagN+AwwyQLqSY9sq
         5zXvnpTU42nR1kyXU2z4UsU4M6NzbXKw9f90R+CD5pdWPaacP8mjfCwtDXmL+HotR+ue
         /En/lzavsJ+ivATcIj/wiHNrPLVehJTJU4czPYRekm3rfIzf9o5bMkZb2fpDJe1o+kFt
         391eNZmH+jbL5QGVOdC699NrewmuiyA6E77/Vm4ZW/QEI8QFzXe7jXRMQUIblPLLjB59
         UnDg==
X-Gm-Message-State: AOAM531OOty7RR8ZwpoW3tP0aVU/V+6albLcITw4h2xIktkyrxm7itV1
	23m9vmKqkPPRK6EXIHy6vFbUWO/MtyQL8tnq
X-Received: by 2002:a17:906:724b:: with SMTP id n11mr455008ejk.338.1618428481883;
        Wed, 14 Apr 2021 12:28:01 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id gn3sm259049ejc.2.2021.04.14.12.28.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 12:28:01 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Matthew Wilcox <willy@infradead.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	Fabio Aiuto <fabioaiuto83@gmail.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: [Outreachy kernel] [PATCH v3 2/2] staging: rtl8723bs: Remove everything related with LedBlink
Date: Wed, 14 Apr 2021 21:27:50 +0200
Message-Id: <20210414192750.4974-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210414192750.4974-1-fmdefrancesco@gmail.com>
References: <20210414192750.4974-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed struct LedBlink_param. Removed LedBlink entries in
rtw_cmd_callback[] and in wlancmds[]. Everything related to LedBlink is
not anymore needed. Removed extra blank lines in the two mentioned
arrays and changend the numbers set in comments for having them in line
with the shift.

Reported-by: Fabio Aiuto <fabioaiuto83@gmail.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v2: Added this patch as 2/2.
Changes from v1: No changes.

 drivers/staging/rtl8723bs/core/rtw_cmd.c    | 27 ++++++---------------
 drivers/staging/rtl8723bs/include/rtw_cmd.h | 14 +++--------
 2 files changed, 11 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index f82dbd4f4c3d..a74e6846f2df 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -22,7 +22,6 @@ static struct _cmd_callback rtw_cmd_callback[] = {
 	{GEN_CMD_CODE(_Write_EEPROM), NULL},
 	{GEN_CMD_CODE(_Read_EFUSE), NULL},
 	{GEN_CMD_CODE(_Write_EFUSE), NULL},
-
 	{GEN_CMD_CODE(_Read_CAM),	NULL},	/*10*/
 	{GEN_CMD_CODE(_Write_CAM),	 NULL},
 	{GEN_CMD_CODE(_setBCNITV), NULL},
@@ -33,7 +32,6 @@ static struct _cmd_callback rtw_cmd_callback[] = {
 	{GEN_CMD_CODE(_SetOpMode), NULL},
 	{GEN_CMD_CODE(_SiteSurvey), &rtw_survey_cmd_callback}, /*18*/
 	{GEN_CMD_CODE(_SetAuth), NULL},
-
 	{GEN_CMD_CODE(_SetKey), NULL},	/*20*/
 	{GEN_CMD_CODE(_SetStaKey), &rtw_setstaKey_cmdrsp_callback},
 	{GEN_CMD_CODE(_SetAssocSta), &rtw_setassocsta_cmdrsp_callback},
@@ -44,7 +42,6 @@ static struct _cmd_callback rtw_cmd_callback[] = {
 	{GEN_CMD_CODE(_SetDataRate), NULL},
 	{GEN_CMD_CODE(_GetDataRate), NULL},
 	{GEN_CMD_CODE(_SetPhyInfo), NULL},
-
 	{GEN_CMD_CODE(_GetPhyInfo), NULL}, /*30*/
 	{GEN_CMD_CODE(_SetPhy), NULL},
 	{GEN_CMD_CODE(_GetPhy), NULL},
@@ -55,7 +52,6 @@ static struct _cmd_callback rtw_cmd_callback[] = {
 	{GEN_CMD_CODE(_JoinbssRpt), NULL},
 	{GEN_CMD_CODE(_SetRaTable), NULL},
 	{GEN_CMD_CODE(_GetRaTable), NULL},
-
 	{GEN_CMD_CODE(_GetCCXReport), NULL}, /*40*/
 	{GEN_CMD_CODE(_GetDTMReport),	NULL},
 	{GEN_CMD_CODE(_GetTXRateStatistics), NULL},
@@ -67,24 +63,19 @@ static struct _cmd_callback rtw_cmd_callback[] = {
 	{GEN_CMD_CODE(_SwitchAntenna), NULL},
 	{GEN_CMD_CODE(_SetCrystalCap), NULL},
 	{GEN_CMD_CODE(_SetSingleCarrierTx), NULL},	/*50*/
-
 	{GEN_CMD_CODE(_SetSingleToneTx), NULL}, /*51*/
 	{GEN_CMD_CODE(_SetCarrierSuppressionTx), NULL},
 	{GEN_CMD_CODE(_SetContinuousTx), NULL},
 	{GEN_CMD_CODE(_SwitchBandwidth), NULL},		/*54*/
 	{GEN_CMD_CODE(_TX_Beacon), NULL},/*55*/
-
 	{GEN_CMD_CODE(_Set_MLME_EVT), NULL},/*56*/
 	{GEN_CMD_CODE(_Set_Drv_Extra), NULL},/*57*/
 	{GEN_CMD_CODE(_Set_H2C_MSG), NULL},/*58*/
 	{GEN_CMD_CODE(_SetChannelPlan), NULL},/*59*/
-	{GEN_CMD_CODE(_LedBlink), NULL},/*60*/
-
-	{GEN_CMD_CODE(_SetChannelSwitch), NULL},/*61*/
-	{GEN_CMD_CODE(_TDLS), NULL},/*62*/
-	{GEN_CMD_CODE(_ChkBMCSleepq), NULL}, /*63*/
-
-	{GEN_CMD_CODE(_RunInThreadCMD), NULL},/*64*/
+	{GEN_CMD_CODE(_SetChannelSwitch), NULL},/*60*/
+	{GEN_CMD_CODE(_TDLS), NULL},/*61*/
+	{GEN_CMD_CODE(_ChkBMCSleepq), NULL}, /*62*/
+	{GEN_CMD_CODE(_RunInThreadCMD), NULL},/*63*/
 };
 
 static struct cmd_hdl wlancmds[] = {
@@ -144,17 +135,13 @@ static struct cmd_hdl wlancmds[] = {
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(0, NULL)
 	GEN_MLME_EXT_HANDLER(sizeof(struct Tx_Beacon_param), tx_beacon_hdl) /*55*/
-
 	GEN_MLME_EXT_HANDLER(0, mlme_evt_hdl) /*56*/
 	GEN_MLME_EXT_HANDLER(0, rtw_drvextra_cmd_hdl) /*57*/
-
 	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
 	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param), set_chplan_hdl) /*59*/
-	GEN_MLME_EXT_HANDLER(0, NULL) /*60*/
-
-	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelSwitch_param), set_csa_hdl) /*61*/
-	GEN_MLME_EXT_HANDLER(sizeof(struct TDLSoption_param), tdls_hdl) /*62*/
-	GEN_MLME_EXT_HANDLER(0, chk_bmc_sleepq_hdl) /*63*/
+	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelSwitch_param), set_csa_hdl) /*60*/
+	GEN_MLME_EXT_HANDLER(sizeof(struct TDLSoption_param), tdls_hdl) /*61*/
+	GEN_MLME_EXT_HANDLER(0, chk_bmc_sleepq_hdl) /*62*/
 	GEN_MLME_EXT_HANDLER(sizeof(struct RunInThread_param), run_in_thread_hdl) /*63*/
 };
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
index 517ae3b51386..28d2d2732374 100644
--- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
@@ -537,11 +537,6 @@ struct SetChannelPlan_param {
 	u8 channel_plan;
 };
 
-/*H2C Handler index: 60 */
-struct LedBlink_param {
-	void *pLed;
-};
-
 /*H2C Handler index: 61 */
 struct SetChannelSwitch_param {
 	u8 new_ch_no;
@@ -709,13 +704,12 @@ enum {
 	GEN_CMD_CODE(_Set_H2C_MSG), /*58*/
 
 	GEN_CMD_CODE(_SetChannelPlan), /*59*/
-	GEN_CMD_CODE(_LedBlink), /*60*/
 
-	GEN_CMD_CODE(_SetChannelSwitch), /*61*/
-	GEN_CMD_CODE(_TDLS), /*62*/
-	GEN_CMD_CODE(_ChkBMCSleepq), /*63*/
+	GEN_CMD_CODE(_SetChannelSwitch), /*60*/
+	GEN_CMD_CODE(_TDLS), /*61*/
+	GEN_CMD_CODE(_ChkBMCSleepq), /*62*/
 
-	GEN_CMD_CODE(_RunInThreadCMD), /*64*/
+	GEN_CMD_CODE(_RunInThreadCMD), /*63*/
 
 	MAX_H2CCMD
 };
-- 
2.31.1


