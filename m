Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44E47C
	for <outreachy@lists.linux.dev>; Tue,  1 Nov 2022 14:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1667312051; bh=A+QfO/YINQhudLM+SVEsievah9Os34KKogPAnpubIl8=;
	h=X-EA-Auth:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type;
	b=WRKx5mtPCC/yzklUZkh46V33DHNTasq2tMjRxMW8O+ZoSzi29OHdi8MKWD2Yw74GL
	 QWIW+XhnSIEmsbbf7ngGEpMIrySd2eRQx0ZyuGoqZz1qN/pLtgAaZex1hIWhLO6SmV
	 KBGKPG4wDp7PODxfVVVgmj8Fk73ijsTualQgXtkA=
Received: by b-6.in.mailobj.net [192.168.90.16] with ESMTP
	via [213.182.55.206]
	Tue,  1 Nov 2022 15:14:11 +0100 (CET)
X-EA-Auth: GsWXJ450+yr+9B83X4WedE+KNqbh/1iIKA66A6mUEGfMjq3GUdMczmTUP8EDOY3G+frdB39BKUmLjGBsobicKOAzja2JNH3Q
Date: Tue, 1 Nov 2022 19:44:08 +0530
From: Deepak R Varma <drv@mailo.com>
To: outreachy@lists.linux.dev
Subject: Coccinelle based patch processing
Message-ID: <Y2Epr3nxdZs/Cc6+@ubunlion>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="juLirnl1RHRxL4V1"
Content-Disposition: inline


--juLirnl1RHRxL4V1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,
I have a coccicheck produced patch [attached here] using the following command.
Can you please suggest how to submit this as a patch? Is there a document that I
can follow to accomplish the submission?

   make coccicheck COCCI=./scripts/coccinelle/misc/returnvar.cocci M=driver/staging/r8188eu/ MODE=patch

Thank you,
./drv

--juLirnl1RHRxL4V1
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="cocci-auto.patch"

diff -u -p a/drivers/staging/r8188eu/hal/rtl8188eu_xmit.c b/drivers/staging/r8188eu/hal/rtl8188eu_xmit.c
--- a/drivers/staging/r8188eu/hal/rtl8188eu_xmit.c
+++ b/drivers/staging/r8188eu/hal/rtl8188eu_xmit.c
@@ -149,7 +149,6 @@ static void fill_txdesc_phy(struct pkt_a

 static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bagg_pkt)
 {
-	int	pull = 0;
 	uint	qsel;
 	u8 data_rate, pwr_status, offset;
 	struct adapter		*adapt = pxmitframe->padapter;
@@ -295,7 +294,7 @@ static s32 update_txdesc(struct xmit_fra
 	ODM_SetTxAntByTxInfo_88E(&haldata->odmpriv, pmem, pattrib->mac_id);

 	rtl8188eu_cal_txdesc_chksum(ptxdesc);
-	return pull;
+	return 0;
 }

 /* for non-agg data frame or  management frame */
diff -u -p a/drivers/staging/r8188eu/core/rtw_recv.c b/drivers/staging/r8188eu/core/rtw_recv.c
--- a/drivers/staging/r8188eu/core/rtw_recv.c
+++ b/drivers/staging/r8188eu/core/rtw_recv.c
@@ -1415,7 +1415,6 @@ static int amsdu_to_msdu(struct adapter

 	struct recv_priv *precvpriv = &padapter->recvpriv;
 	struct __queue *pfree_recv_queue = &precvpriv->free_recv_queue;
-	int	ret = _SUCCESS;

 	nr_subframes = 0;

@@ -1513,7 +1512,7 @@ exit:
 	prframe->len = 0;
 	rtw_free_recvframe(prframe, pfree_recv_queue);/* free this recv_frame */

-	return ret;
+	return _SUCCESS;
 }

 static bool check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num)
diff -u -p a/drivers/staging/r8188eu/core/rtw_ap.c b/drivers/staging/r8188eu/core/rtw_ap.c
--- a/drivers/staging/r8188eu/core/rtw_ap.c
+++ b/drivers/staging/r8188eu/core/rtw_ap.c
@@ -1020,7 +1020,6 @@ u8 ap_free_sta(struct adapter *padapter,
 int rtw_sta_flush(struct adapter *padapter)
 {
 	struct list_head *phead, *plist;
-	int ret = 0;
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
@@ -1028,7 +1027,7 @@ int rtw_sta_flush(struct adapter *padapt
 	u8 bc_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};

 	if ((pmlmeinfo->state & 0x03) != WIFI_FW_AP_STATE)
-		return ret;
+		return 0;

 	spin_lock_bh(&pstapriv->asoc_list_lock);
 	phead = &pstapriv->asoc_list;
@@ -1051,7 +1050,7 @@ int rtw_sta_flush(struct adapter *padapt

 	associated_clients_update(padapter, true);

-	return ret;
+	return 0;
 }

 /* called > TSR LEVEL for USB or SDIO Interface*/
diff -u -p a/drivers/staging/r8188eu/os_dep/ioctl_linux.c b/drivers/staging/r8188eu/os_dep/ioctl_linux.c
--- a/drivers/staging/r8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/r8188eu/os_dep/ioctl_linux.c
@@ -2979,8 +2979,6 @@ static int rtw_p2p_set(struct net_device
 			       struct iw_request_info *info,
 			       union iwreq_data *wrqu, char *extra)
 {
-	int ret = 0;
-
 	if (!memcmp(extra, "enable =", 7)) {
 		rtw_wext_p2p_enable(dev, info, wrqu, &extra[7]);
 	} else if (!memcmp(extra, "setDN =", 6)) {
@@ -3027,7 +3025,7 @@ static int rtw_p2p_set(struct net_device
 		rtw_p2p_set_persistent(dev, info, wrqu, &extra[11]);
 	}

-	return ret;
+	return 0;
 }

 static int rtw_p2p_get2(struct net_device *dev,


--juLirnl1RHRxL4V1--


