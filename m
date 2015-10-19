X-GM-THRID: 6207450266150633472
X-Received: by 10.68.222.104 with SMTP id ql8mr27621718pbc.9.1445284858878;
        Mon, 19 Oct 2015 13:00:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.149.18 with SMTP id x18ls1547778iod.65.gmail; Mon, 19 Oct
 2015 13:00:58 -0700 (PDT)
X-Received: by 10.66.240.138 with SMTP id wa10mr26649191pac.43.1445284858584;
        Mon, 19 Oct 2015 13:00:58 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id vy6si3440310pbc.1.2015.10.19.13.00.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 13:00:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id rc13so199895172pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 13:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=8GUNk9TSqm9nJR1cj2z03V9gefaecqTZMaVsSCEjTrM=;
        b=VVTqija+688U9j/qydh2JbvrPVBo11yhbNyevgyWZ8gigOlCFzQU/Mt84CRxiVWM5m
         Bb3acFiZIDm53knmJArg7hbOBgfRl906IpKI+JgFmAklMHx4Mu2V0CNOXR1oHiONbGfT
         Q8kPTrh1lDB3SVud8yhTPKPp5F7+xxogp4+cA4WqBvrYiy6qOBlYqAhrUjSzW01GlfWn
         eOdN+V0/Y4VN4K4AXpd2Iz37hbJ1kvo2QH1FidauC2uwyK7AcV1XmS1jDKNk3522CSxu
         BiUiN2mxpboTT1MvFO6Gzpujyr+75lg2lSPB20NV2G6No1lTEXcAykDpc3cwNgXpAqjV
         uZKQ==
X-Received: by 10.66.227.72 with SMTP id ry8mr37553242pac.105.1445284858442;
        Mon, 19 Oct 2015 13:00:58 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id ot8sm37793097pbb.26.2015.10.19.13.00.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 19 Oct 2015 13:00:57 -0700 (PDT)
Date: Mon, 19 Oct 2015 13:00:56 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] staging: r8723au: use kernel preferred style for block
 comments
Message-ID: <ca096ddbb44df952c41fd95e6397d902d3baf767.1445282918.git.amsfield22@gmail.com>
References: <cover.1445282918.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445282918.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Reworked comments per kernel coding style.

Resolves checkpatch:
WARNING: Block comments use * on subsequent lines

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_cmd.c | 74 ++++++++++++++++++++------------
 1 file changed, 46 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
index 7bf0f30..33164d3 100644
--- a/drivers/staging/rtl8723au/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
@@ -176,9 +176,9 @@ struct _cmd_callback	rtw_cmd_callback[] = {
 };
 
 /*
-Caller and the rtw_cmd_thread23a can protect cmd_q by spin_lock.
-No irqsave is necessary.
-*/
+ * Caller and the rtw_cmd_thread23a can protect cmd_q by spin_lock.
+ * No irqsave is necessary.
+ */
 
 int rtw_init_cmd_priv23a(struct cmd_priv *pcmdpriv)
 {
@@ -315,8 +315,10 @@ post_process:
 				 pcmd_callback, pcmd->cmdcode);
 			rtw_free_cmd_obj23a(pcmd);
 		} else {
-			/* need consider that free cmd_obj in
-			   rtw_cmd_callback */
+			/*
+			 * need consider that free cmd_obj in
+			 * rtw_cmd_callback
+			 */
 			pcmd_callback(pcmd->padapter, pcmd);
 		}
 	} else {
@@ -518,11 +520,13 @@ int rtw_joinbss_cmd23a(struct rtw_adapter *padapter,
 	       get_wlan_bssid_ex_sz(&pnetwork->network));
 
 	psecnetwork->IELength = 0;
-	/*  Added by Albert 2009/02/18 */
-	/*  If the the driver wants to use the bssid to create the
+
+	/*
+	 *  If the the driver wants to use the bssid to create the
 	 *  connection. If not,  we have to copy the connecting AP's
 	 *  MAC address to it so that the driver just has the bssid
-	 *  information for PMKIDList searching. */
+	 *  information for PMKIDList searching.
+	 */
 
 	if (pmlmepriv->assoc_by_bssid == false)
 		ether_addr_copy(&pmlmepriv->assoc_bssid[0],
@@ -557,10 +561,13 @@ int rtw_joinbss_cmd23a(struct rtw_adapter *padapter,
 	phtpriv->ht_option = false;
 	if (pregistrypriv->ht_enable) {
 		u32 algo = padapter->securitypriv.dot11PrivacyAlgrthm;
-		/*	Added by Albert 2010/06/23 */
-		/*	For the WEP mode, we will use the bg mode to do
-			the connection to avoid some IOT issue. */
-		/*	Especially for Realtek 8192u SoftAP. */
+
+		/*
+		 * For the WEP mode, we will use the bg mode to do
+		 * the connection to avoid some IOT issue.
+		 * Especially for Realtek 8192u SoftAP.
+		 */
+
 		if (algo != WLAN_CIPHER_SUITE_WEP40 &&
 		    algo != WLAN_CIPHER_SUITE_WEP104 &&
 		    algo != WLAN_CIPHER_SUITE_TKIP) {
@@ -630,9 +637,13 @@ int rtw_disassoc_cmd23a(struct rtw_adapter *padapter, u32 deauth_timeout_ms,
 		init_h2fwcmd_w_parm_no_rsp(cmdobj, param, _DisConnect_CMD_);
 		res = rtw_enqueue_cmd23a(cmdpriv, cmdobj);
 	} else {
-		/* no need to enqueue, do the cmd hdl directly and
-		   free cmd parameter */
 		if (H2C_SUCCESS != disconnect_hdl23a(padapter, (u8 *)param))
+
+		/*
+		 * no need to enqueue, do the cmd hdl
+		 * directly and free cmd parameter
+		 */
+
 			res = _FAIL;
 		kfree(param);
 	}
@@ -867,16 +878,18 @@ static void traffic_status_watchdog(struct rtw_adapter *padapter)
 	int BusyThreshold = 100;
 	struct rt_link_detect *ldi = &pmlmepriv->LinkDetectInfo;
 
-	/*  */
 	/*  Determine if our traffic is busy now */
-	/*  */
 	if (check_fwstate(pmlmepriv, _FW_LINKED)) {
 		if (rtl8723a_BT_coexist(padapter))
 			BusyThreshold = 50;
 		else if (ldi->bBusyTraffic)
 			BusyThreshold = 75;
-		/*  if we raise bBusyTraffic in last watchdog, using
-		    lower threshold. */
+
+		/*
+		 * if we raise bBusyTraffic in last watchdog,
+		 * using lower threshold.
+		 */
+
 		if (ldi->NumRxOkInPeriod > BusyThreshold ||
 		    ldi->NumTxOkInPeriod > BusyThreshold) {
 			bBusyTraffic = true;
@@ -947,9 +960,7 @@ static void dynamic_chk_wk_hdl(struct rtw_adapter *padapter, u8 *pbuf, int sz)
 
 	rtl8723a_HalDmWatchDog(padapter);
 
-	/*  */
 	/*  BT-Coexist */
-	/*  */
 	rtl8723a_BT_do_coexist(padapter);
 }
 
@@ -1234,8 +1245,8 @@ void rtw_evt_work(struct work_struct *work)
 	} else {
 		/*
 		 * Enqueue into cmd_thread for others.
-		 * ework will be turned into a c2h_evt and freed once it
-		 * has been consumed.
+		 * ework will be turned into a c2h_evt and
+		 * freed once it has been consumed.
 		 */
 		rtw_c2h_wk_cmd23a(adapter, (u8 *)&ework->u.c2h_evt);
 	}
@@ -1402,11 +1413,16 @@ void rtw_createbss_cmd23a_callback(struct rtw_adapter *padapter,
 		memcpy(&pwlan->network, pnetwork, pnetwork->Length);
 		/* pwlan->fixed = true; */
 
-		/* list_add_tail(&pwlan->list,
-		   &pmlmepriv->scanned_queue.queue); */
+		/*
+		 * list_add_tail(&pwlan->list,
+		 * &pmlmepriv->scanned_queue->queue);
+		 */
+
+		/*
+		 *  copy pdev_network information to
+		 *  pmlmepriv->cur_network
+		 */
 
-		/*  copy pdev_network information to
-		    pmlmepriv->cur_network */
 		memcpy(&tgt_network->network, pnetwork,
 		       get_wlan_bssid_ex_sz(pnetwork));
 
@@ -1415,8 +1431,10 @@ void rtw_createbss_cmd23a_callback(struct rtw_adapter *padapter,
 		clr_fwstate(pmlmepriv, _FW_UNDER_LINKING);
 
 		spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
-		/*  we will set _FW_LINKED when there is one more sat to
-		    join us (rtw_stassoc_event_callback23a) */
+		/*
+		 * we will set _FW_LINKED when there is one more
+		 * sat to join us (rtw_stassoc_event_callback23a)
+		 */
 	}
 
 createbss_cmd_fail:
-- 
2.1.4


