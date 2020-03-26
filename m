X-GM-THRID: 6805867897863274496
X-Received: by 2002:a2e:7401:: with SMTP id p1mr5128731ljc.279.1585226175676;
        Thu, 26 Mar 2020 05:36:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3188:: with SMTP id i8ls1163019lfe.4.gmail; Thu, 26
 Mar 2020 05:36:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs5uJNkVDy2o8AsQnGuuUamcuNzgl2QXj+K45iDQDm2YebP/qi26u3Ll/SeXp3pXOUYbzce
X-Received: by 2002:a05:6512:3191:: with SMTP id i17mr5639206lfe.33.1585226174190;
        Thu, 26 Mar 2020 05:36:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585226174; cv=none;
        d=google.com; s=arc-20160816;
        b=QICLjg4YQwOMuf7flni4kz5J4y9NLmKGGptq5hPHQnHYsYdoS4da7J6+l6HEQsll3h
         7JbRqsKQrpoxurMK545MRrQp37dBgSsT0ZEL43442OfKEdaVCSjtV6D9Uky9PkyHOqjL
         9B00QztfaX5zRQTOKSwBY1pAHe/Tix8XLnUfB2Vmw7njR1C5/K/U63QNovwtqM2n1A6V
         d+Q3IxCPrM8Ccpu6ryqTS00YtBLLiK8HXDh/INl6ZTpRa5MbWNgtqrpWmYbYAfz4ho7j
         31RoX6a2yN+ZICVKzviKJgg0JJ9QuATKbES+9qUlj6Xh4nDcFQJpkadyzw34/IRI6Nlh
         XlXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=y5/43DazHc6logD8KzGwto3dmgei5xvlAirpS03JCV8=;
        b=LQvCqrv903UyPksOB6XTEMQ/lYON3WXvNMkJq0nxlZ3nN+aJ1j4MJOo6moTk6Lpjt4
         +LxcWTZ8zHNFov+nPr1QHrHAjl6GpQsvzz6HtvNFbbekFxBozGh/56DmM8/uiU1K2kzj
         woql50OCuZGa7xGGQS5YhQliObweGFnUo7j/RrH0OKQ+7+AqEN/qaMp9q4dqdcDylJyQ
         YkU8m38GP1ZZjPbdAYqzsIhTclwPr5jP/haZ0DcZVZv0e/NlGRVIPEHjeYP2SMb9qnQv
         pwtfyT57rfgyfDtvHJAvb6CHcawlgyeMrELBeLVkTpi0ptcfso0Jf6Nl+B8JVCs7whgy
         QKFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id d12si121866lfi.2.2020.03.26.05.36.13
        for <outreachy-kernel@googlegroups.com>;
        Thu, 26 Mar 2020 05:36:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 20936 invoked from network); 26 Mar 2020 12:36:01 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.131.241)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 26 Mar 2020 12:36:01 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8723bs: core: Correct typos in comments
Date: Thu, 26 Mar 2020 18:05:40 +0530
Message-Id: <20200326123540.12401-1-vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct typos in comments.
Misspellings found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c       |  4 ++--
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c |  2 +-
 drivers/staging/rtl8723bs/core/rtw_ioctl_set.c |  2 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   |  2 +-
 drivers/staging/rtl8723bs/core/rtw_recv.c      | 10 +++++-----
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c |  2 +-
 drivers/staging/rtl8723bs/core/rtw_xmit.c      |  4 ++--
 7 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 744b40dd4cf0..9ee528e1dd34 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -522,7 +522,7 @@ int rtw_cmd_thread(void *context)
 				rtw_free_cmd_obj(pcmd);
 			} else {
 				/* todo: !!! fill rsp_buf to pcmd->rsp if (pcmd->rsp!= NULL) */
-				pcmd_callback(pcmd->padapter, pcmd);/* need conider that free cmd_obj in rtw_cmd_callback */
+				pcmd_callback(pcmd->padapter, pcmd);/* need consider that free cmd_obj in rtw_cmd_callback */
 			}
 		} else {
 			RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("%s: cmdcode = 0x%x callback not defined!\n", __func__, pcmd->cmdcode));
@@ -991,7 +991,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 		memcpy(&psetstakey_para->key, &psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey, 16);
 	}
 
-	/* jeff: set this becasue at least sw key is ready */
+	/* jeff: set this because at least sw key is ready */
 	padapter->securitypriv.busetkipkey = true;
 
 	if (enqueue) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 6018d877a8a6..ca98274ae390 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -217,7 +217,7 @@ u8 *rtw_get_ie_ex(u8 *in_ie, uint in_len, u8 eid, u8 *oui, u8 oui_len, u8 *ie, u
  * rtw_ies_remove_ie - Find matching IEs and remove
  * @ies: Address of IEs to search
  * @ies_len: Pointer of length of ies, will update to new length
- * @offset: The offset to start scarch
+ * @offset: The offset to start search
  * @eid: Element ID to match
  * @oui: OUI to match
  * @oui_len: OUI length
diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index eb08569db5ea..8b5f6a66bfb8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -439,7 +439,7 @@ u8 rtw_set_802_11_infrastructure_mode(struct adapter *padapter,
 
 		if ((*pold_state == Ndis802_11Infrastructure) || (*pold_state == Ndis802_11IBSS)) {
 			if (check_fwstate(pmlmepriv, _FW_LINKED) == true) {
-				rtw_indicate_disconnect(padapter); /* will clr Linked_state; before this function, we must have chked whether  issue dis-assoc_cmd or not */
+				rtw_indicate_disconnect(padapter); /* will clr Linked_state; before this function, we must have checked whether issue dis-assoc_cmd or not */
 			}
 	       }
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 9ff35a2da024..6ac9184d59a6 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -1193,7 +1193,7 @@ inline void rtw_set_ips_deny(struct adapter *padapter, u32 ms)
 /*
 * rtw_pwr_wakeup - Wake the NIC up from: 1)IPS. 2)USB autosuspend
 * @adapter: pointer to struct adapter structure
-* @ips_deffer_ms: the ms wiil prevent from falling into IPS after wakeup
+* @ips_deffer_ms: the ms will prevent from falling into IPS after wakeup
 * Return _SUCCESS or _FAIL
 */
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 7fa8c84cf5f4..5245098b9ecf 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -1179,7 +1179,7 @@ sint validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_
 
 					/* DBG_871X("after handling ps-poll, tim =%x\n", pstapriv->tim_bitmap); */
 
-					/* upate BCN for TIM IE */
+					/* update BCN for TIM IE */
 					/* update_BCNTIM(padapter); */
 					update_beacon(padapter, _TIM_IE_, NULL, true);
 				}
@@ -1205,7 +1205,7 @@ sint validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_
 
 					pstapriv->tim_bitmap &= ~BIT(psta->aid);
 
-					/* upate BCN for TIM IE */
+					/* update BCN for TIM IE */
 					/* update_BCNTIM(padapter); */
 					update_beacon(padapter, _TIM_IE_, NULL, true);
 				}
@@ -1953,7 +1953,7 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 	for (i = 0; i < nr_subframes; i++) {
 		sub_pkt = subframes[i];
 
-		/* Indicat the packets to upper layer */
+		/* Indicate the packets to upper layer */
 		if (sub_pkt) {
 			rtw_os_recv_indicate_pkt(padapter, sub_pkt, &prframe->u.hdr.attrib);
 		}
@@ -2606,14 +2606,14 @@ static void rtw_signal_stat_timer_hdl(struct timer_list *t)
 		if (recvpriv->signal_strength_data.update_req == 0) {/*  update_req is clear, means we got rx */
 			avg_signal_strength = recvpriv->signal_strength_data.avg_val;
 			num_signal_strength = recvpriv->signal_strength_data.total_num;
-			/*  after avg_vals are accquired, we can re-stat the signal values */
+			/*  after avg_vals are acquired, we can re-stat the signal values */
 			recvpriv->signal_strength_data.update_req = 1;
 		}
 
 		if (recvpriv->signal_qual_data.update_req == 0) {/*  update_req is clear, means we got rx */
 			avg_signal_qual = recvpriv->signal_qual_data.avg_val;
 			num_signal_qual = recvpriv->signal_qual_data.total_num;
-			/*  after avg_vals are accquired, we can re-stat the signal values */
+			/*  after avg_vals are acquired, we can re-stat the signal values */
 			recvpriv->signal_qual_data.update_req = 1;
 		}
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 49807d865e32..110338dbe372 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1503,7 +1503,7 @@ void update_beacon_info(struct adapter *padapter, u8 *pframe, uint pkt_len, stru
 
 		switch (pIE->ElementID) {
 		case _VENDOR_SPECIFIC_IE_:
-			/* to update WMM paramter set while receiving beacon */
+			/* to update WMM parameter set while receiving beacon */
 			if (!memcmp(pIE->data, WMM_PARA_OUI, 6) && pIE->Length == WLAN_WMM_LEN)	/* WMM */
 				if (WMM_param_handler(padapter, pIE))
 					report_wmm_edca_update(padapter);
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index fdb585ff5925..571353404a95 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -1180,7 +1180,7 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_fram
 			mpdu_len -= pattrib->icv_len;
 
 		if (bmcst) {
-			/*  don't do fragment to broadcat/multicast packets */
+			/*  don't do fragment to broadcast/multicast packets */
 			mem_sz = _rtw_pktfile_read(&pktfile, pframe, pattrib->pktlen);
 		} else {
 			mem_sz = _rtw_pktfile_read(&pktfile, pframe, mpdu_len);
@@ -2303,7 +2303,7 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 				pstapriv->tim_bitmap |= BIT(psta->aid);
 
 				if (update_tim)
-					/* upate BCN for TIM IE */
+					/* update BCN for TIM IE */
 					update_beacon(padapter, _TIM_IE_, NULL, true);
 			}
 
-- 
2.20.1


