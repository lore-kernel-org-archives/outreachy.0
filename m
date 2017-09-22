X-GM-THRID: 6468588291165782016
X-Received: by 10.223.184.104 with SMTP id u37mr855566wrf.29.1506085587064;
        Fri, 22 Sep 2017 06:06:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.143.66 with SMTP id r63ls139962wmd.7.canary-gmail; Fri, 22
 Sep 2017 06:06:26 -0700 (PDT)
X-Received: by 10.223.152.207 with SMTP id w73mr845825wrb.13.1506085586138;
        Fri, 22 Sep 2017 06:06:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506085586; cv=none;
        d=google.com; s=arc-20160816;
        b=TRddn1QcCozN4HlgJ6y6/aDI3+N9FeUhvysAKA8XKHE+t80sMRx5UbxFMXyVIbWrWr
         SC9tX21yeQ+EwDLTJrwEhZIUWVFoKOV4QUs1nf2DKKpF8H3/bUZo/2hX8aHIpVMv7lrA
         e07PGplB/ITcbaYBnu6mFfJvRJd8+0OrJBvg3iuzgULgIWRgD+0+rrXCXG5JcopxBLju
         FdPqIpGdfbz4EgJIDAECT44ClcOpcOHIR6dR0u7ptJyMslJUJFHxjkiy1ujUXBerZUkZ
         MPBg+d9lCJ9vhqCdg4blbYNr/FVC6f2LtyIIUjCiI4qEijzUf+6V3BAYt36gI5Qiv7Zm
         9riw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=wM1rmUYHm9LCbUZ6GR0bSkcFtw727B+pA6S+/R2J1Bc=;
        b=XxHuzEZ8BEBTGD5QP2YWc+3843o+QeALR/9JBfsbpx11Xo1ipLBkKU2CZainZDwdpV
         Iy2SH471SNgD68FhWhX5npkNMLsxihtrtO2BWMB1C9PDIouvf8m6vPrAxqFjiWcB6pFC
         rjLRPLV6flJPvbGDzqo6hq5B6APfOwU0rRmjBnBC7m84tjdyrAEeLUTmh3ObEBQ3P7KJ
         8cXeCP4OpgIp31jjvGuRoIp6Qw3urP3YY7UOZwWfCEiFMMgXBZ9NJEFB5/XPSyECnhDL
         wGaM9S5+tstGj3kqs9wU01PDYclFLSuoIGUgAvxtWsr2boljDdxoV/Qbdd47agq+zXlg
         S/ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mWBwRVXF;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id c142si183932wmh.3.2017.09.22.06.06.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 06:06:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mWBwRVXF;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id r136so1243392wmf.3
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 06:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=wM1rmUYHm9LCbUZ6GR0bSkcFtw727B+pA6S+/R2J1Bc=;
        b=mWBwRVXFKuhG3chDuECMQ1B3UmdhePOTF737fUvWVfs0M43OWoS9eCAdAGLqyETfXH
         i1ra9IQjpXcH4lhj2Pu96+BUhM4f008Qq1nTmPw261A3AJQmtpGvCuzlUtYIB/Cw+iqK
         rT7FTZqPhV0IfzZBRWCfhx3TK33hSCORneVSxjzIikWINU0GVrPWwC7qqi5ZCoLCUH+7
         kJ/cmUyCyO8X6uvBIVO0NS5UfLTjNx8+CPBQk3/+WgV1kLNtYFvXKPWMEELpSg0pMCcR
         PGKt3N/nHlF0bd+aF5AUPzEd8LY2hiwVFe5j/cy31a8JQ9uSqmi1CnfbbMXszweonDuS
         lOow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=wM1rmUYHm9LCbUZ6GR0bSkcFtw727B+pA6S+/R2J1Bc=;
        b=fLKMM1fr+R8IMWoGrSAOBkqwcn9+HRlHLjYqdxdGP7drH4e28pqWxe+Py/PaV2+UpS
         YDYSGegGZ7kffmbrfRuQLQQnMXFOul9Zdc/x2UedKVXxOYXrEw+Q0ST2QYCFLxe5KKcQ
         lsf9Ki26uqVw3J5F51yCS9vXr9qBAOSwRS6i8Uw3Mc9Y6swW9Yk7Qh9kkhbqmDUUpeDy
         06d9ARo7RrfZmHTouvz0XqaoyBp7MYXWvsjrMm2FTNRI4MpaqkLdai6zc5XVwnOfxWp1
         VsxGR01+zKUqnl06MR8U4Xy2A8yTC/qvRzeaA9x7pYb/BBAzCd0chX9ltv26o6dRHwXi
         BpEg==
X-Gm-Message-State: AHPjjUjUsGBP1LWSAHiD7txRWGwlg10RxJCJ37WAtdrvhCfS/vuRDk+5
	GUPbH5lgu2NXOWOhnc7v9I89gjPR
X-Google-Smtp-Source: AOwi7QA3vpzoIdiAdriZDTJJvgsfTlTTRKV+lKOFMIvlwS46ZT/KjfoDXRoL/SqZ50XzmjlbAIQz2g==
X-Received: by 10.28.166.135 with SMTP id p129mr4078676wme.147.1506085585862;
        Fri, 22 Sep 2017 06:06:25 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id f188sm3154wme.21.2017.09.22.06.06.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 22 Sep 2017 06:06:25 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] Staging: rtl8723bs: core: Code clean up
Date: Fri, 22 Sep 2017 06:05:18 -0700
Message-Id: <d4d5c3de83b0f69541a95edc96df02c9bf2d84da.1506084848.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506084848.git.georgiana.chelu93@gmail.com>
References: <cover.1506084848.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506084848.git.georgiana.chelu93@gmail.com>
References: <cover.1506084848.git.georgiana.chelu93@gmail.com>

Clean the code to improve the coding style.

Fix minor issues reported by checkpatch.pl:
* CHECK: Alignment should match open parenthesis
* WARNING: line over 80 characters

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 36 ++++++++++++++++-----------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 6c59faf..b88c6e1 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -510,7 +510,8 @@ void free_mlme_ext_priv(struct mlme_ext_priv *pmlmeext)
 	if (!padapter)
 		return;
 
-	if (padapter->bDriverStopped) {
+	if (padapter->bDriverStopped)
+	{
 		del_timer_sync(&pmlmeext->survey_timer);
 		del_timer_sync(&pmlmeext->link_timer);
 		/* del_timer_sync(&pmlmeext->ADDBA_timer); */
@@ -638,7 +639,8 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 
 #ifdef CONFIG_AUTO_AP_MODE
 	if (check_fwstate(pmlmepriv, _FW_LINKED) &&
-			pmlmepriv->cur_network.join_res) {
+	            pmlmepriv->cur_network.join_res)
+	{
 		struct sta_info *psta;
 		u8 *mac_addr, *peer_addr;
 		struct sta_priv *pstapriv = &padapter->stapriv;
@@ -761,8 +763,10 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 			return _SUCCESS;
 
 _issue_probersp:
-		if ((check_fwstate(pmlmepriv, _FW_LINKED)  &&
-			pmlmepriv->cur_network.join_res) || check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
+		if ((check_fwstate(pmlmepriv, _FW_LINKED) &&
+		     pmlmepriv->cur_network.join_res) ||
+		    check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE))
+		{
 			/* DBG_871X("+issue_probersp during ap mode\n"); */
 			issue_probersp(padapter, get_sa(pframe), is_valid_p2p_probereq);
 		}
@@ -2350,8 +2354,8 @@ void update_mgntframe_attrib_addr(struct adapter *padapter, struct xmit_frame *p
 
 void dump_mgntframe(struct adapter *padapter, struct xmit_frame *pmgntframe)
 {
-	if (padapter->bSurpriseRemoved ||
-		padapter->bDriverStopped) {
+	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
+	{
 		rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
 		rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
 		return;
@@ -2368,8 +2372,8 @@ s32 dump_mgntframe_and_wait(struct adapter *padapter, struct xmit_frame *pmgntfr
 	struct xmit_buf *pxmitbuf = pmgntframe->pxmitbuf;
 	struct submit_ctx sctx;
 
-	if (padapter->bSurpriseRemoved ||
-		padapter->bDriverStopped) {
+	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
+	{
 		rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
 		rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
 		return ret;
@@ -2397,8 +2401,8 @@ s32 dump_mgntframe_and_wait_ack(struct adapter *padapter, struct xmit_frame *pmg
 	u32 timeout_ms = 500;/*   500ms */
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
-	if (padapter->bSurpriseRemoved ||
-		padapter->bDriverStopped) {
+	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
+	{
 		rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
 		rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
 		return -1;
@@ -6356,10 +6360,11 @@ static int rtw_scan_ch_decision(struct adapter *padapter, struct rtw_ieee80211_c
 		DBG_871X(FUNC_ADPT_FMT" "CHAN_FMT"\n", FUNC_ADPT_ARG(padapter), CHAN_ARG(&in[i]));
 
 		set_idx = rtw_ch_set_search_ch(pmlmeext->channel_set, in[i].hw_value);
-		if (in[i].hw_value && !(in[i].flags & RTW_IEEE80211_CHAN_DISABLED)
-			&& set_idx >= 0
-			&& rtw_mlme_band_check(padapter, in[i].hw_value)
-		) {
+		if (in[i].hw_value &&
+		    !(in[i].flags & RTW_IEEE80211_CHAN_DISABLED) &&
+		    set_idx >= 0 &&
+		    rtw_mlme_band_check(padapter, in[i].hw_value))
+		{
 			if (j >= out_num) {
 				DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT" out_num:%u not enough\n",
 					FUNC_ADPT_ARG(padapter), out_num);
@@ -6383,7 +6388,8 @@ static int rtw_scan_ch_decision(struct adapter *padapter, struct rtw_ieee80211_c
 
 			DBG_871X(FUNC_ADPT_FMT" ch:%u\n", FUNC_ADPT_ARG(padapter), pmlmeext->channel_set[i].ChannelNum);
 
-			if (rtw_mlme_band_check(padapter, pmlmeext->channel_set[i].ChannelNum)) {
+			if (rtw_mlme_band_check(padapter, pmlmeext->channel_set[i].ChannelNum))
+			{
 
 				if (j >= out_num) {
 					DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT" out_num:%u not enough\n",
-- 
2.7.4


