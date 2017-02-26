X-GM-THRID: 6388887439725821952
X-Received: by 10.13.247.4 with SMTP id h4mr4949711ywf.4.1488130373379;
        Sun, 26 Feb 2017 09:32:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.46.193 with SMTP id i184ls1660821ita.10.canary-gmail; Sun,
 26 Feb 2017 09:32:52 -0800 (PST)
X-Received: by 10.99.185.77 with SMTP id v13mr4797371pgo.160.1488130372523;
        Sun, 26 Feb 2017 09:32:52 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id c123si2428159pfa.4.2017.02.26.09.32.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 09:32:52 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so9996130pgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 09:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0/zn/rvck9giha8Iat0K5PycUjDqMl6mYHPcs4Kxcy8=;
        b=OHCDGU+SlsTtb/ddgTIQYpsMeOtggxH3pnZ+h/fvN8r6WIIBJGRxHPoJmDy8f3mhIu
         LMxGQhnAGQEGDREXWajMtgn6QxOFYJG5zPiGcyD5YTOLyT6TB2DitinZWSOg3Q7cn9JG
         2gxYL3VcwDfPcLrd7UGC4EdNTUmUPwCztKWmUUHBr1uKjTSgYeelfymnBIetIqeh+ewQ
         ho5qFWKyh7yOKcLY8qGwImYTTLISiVBkist3I9Z8m8J7mEHP6FrUBKV1eEXOy1xZPdcr
         x8sXSCmIHoa6dwwSU6u/KUsQAEFuQugUdjGE4KC1X6h47lcFb/32COEWZav+pcNPP8ca
         4SkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0/zn/rvck9giha8Iat0K5PycUjDqMl6mYHPcs4Kxcy8=;
        b=ruFaYaVOz5MaWIPubSC03H/9ZKsz/aWvwl+ohDe5lV8D8C7BcYzgrM3f/hBVDo/mvz
         18F043xUoeUsWycDidn5J0cRK39iMJn2KS55qy4Gw0n5a4YSdyXCmU1Fw4RudmaVKSim
         Zle56jsRZrOBZZPUu8GA+tL2rseWA2hOwClZQKkm/lT8dAqdp3wtNdOT1E1sVPf52hHH
         61/6ZUhnEWZ5WkfSEYJK5lOpSQOyxYhdCdmeOscSsTdZJVabCKlzq9R2lb+Jc36/x+Gz
         3JepL74bPebWQCZSlEBuHcJKM7cLOewH5hFOCSxNZUFNJeVnLast6jdzySimmhcQm55t
         r4tA==
X-Gm-Message-State: AMke39mPoktwcPVak+pENS8p08VxDspdb4ODOtbr1RBj2w3/+0aJ6kSI2lbVgPyLaXV83w==
X-Received: by 10.84.218.78 with SMTP id f14mr18630629plm.146.1488130372179;
        Sun, 26 Feb 2017 09:32:52 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r73sm25751695pfe.55.2017.02.26.09.32.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 09:32:51 -0800 (PST)
Date: Sun, 26 Feb 2017 23:02:48 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v4 2/2] staging: ks7010: Unnecessary parentheses are removed.
Message-ID: <20170226173248.GA21452@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary parentheses are removed as reported by checkpatch.pl
to make coder nicer and to improve readability.
Also coding style is improved.For example:-
It's often nicer to read if &(foo[0]) is converted to foo like:
     memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
     memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
Changes in v4:
  - Commit message made more accurate and as per the changes.
  - previously versions were not marked.

 drivers/staging/ks7010/ks_hostif.c   | 44 ++++++++++++++++++------------------
 drivers/staging/ks7010/ks_wlan_net.c | 20 ++++++++--------
 2 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 6e36aa2aea99..1fbd495e5e63 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -113,7 +113,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 	int rc = 0;
 
 	DPRINTK(3, "\n");
-	ap = &priv->current_ap;
+	ap = &(priv->current_ap);
 
 	if ((priv->connect_status & CONNECT_STATUS_MASK) == DISCONNECT_STATUS) {
 		memset(ap, 0, sizeof(struct local_ap_t));
@@ -121,19 +121,19 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 	}
 
 	/* bssid */
-	memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);
+	memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
 	/* essid */
-	memcpy(ap->ssid.body, priv->reg.ssid.body,
+	memcpy(&(ap->ssid.body[0]), &(priv->reg.ssid.body[0]),
 	       priv->reg.ssid.size);
 	ap->ssid.size = priv->reg.ssid.size;
 	/* rate_set */
-	memcpy(ap->rate_set.body, ap_info->rate_set.body,
+	memcpy(&(ap->rate_set.body[0]), &(ap_info->rate_set.body[0]),
 	       ap_info->rate_set.size);
 	ap->rate_set.size = ap_info->rate_set.size;
 	if (ap_info->ext_rate_set.size) {
 		/* rate_set */
-		memcpy(&ap->rate_set.body[ap->rate_set.size],
-		       ap_info->ext_rate_set.body,
+		memcpy(&(ap->rate_set.body[ap->rate_set.size]),
+		       &(ap_info->ext_rate_set.body[0]),
 		       ap_info->ext_rate_set.size);
 		ap->rate_set.size += ap_info->ext_rate_set.size;
 	}
@@ -153,11 +153,11 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 		ap->rsn_ie.id = 0x30;
 		if (ap_info->rsn.size <= RSN_IE_BODY_MAX) {
 			ap->rsn_ie.size = ap_info->rsn.size;
-			memcpy(ap->rsn_ie.body, ap_info->rsn.body,
+			memcpy(&(ap->rsn_ie.body[0]), &(ap_info->rsn.body[0]),
 			       ap_info->rsn.size);
 		} else {
 			ap->rsn_ie.size = RSN_IE_BODY_MAX;
-			memcpy(ap->rsn_ie.body, ap_info->rsn.body,
+			memcpy(&(ap->rsn_ie.body[0]), &(ap_info->rsn.body[0]),
 			       RSN_IE_BODY_MAX);
 		}
 	} else if ((ap_info->rsn_mode & RSN_MODE_WPA)
@@ -165,11 +165,11 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 		ap->wpa_ie.id = 0xdd;
 		if (ap_info->rsn.size <= RSN_IE_BODY_MAX) {
 			ap->wpa_ie.size = ap_info->rsn.size;
-			memcpy(ap->wpa_ie.body, ap_info->rsn.body,
+			memcpy(&(ap->wpa_ie.body[0]), &(ap_info->rsn.body[0]),
 			       ap_info->rsn.size);
 		} else {
 			ap->wpa_ie.size = RSN_IE_BODY_MAX;
-			memcpy(ap->wpa_ie.body, ap_info->rsn.body,
+			memcpy(&(ap->wpa_ie.body[0]), &(ap_info->rsn.body[0]),
 			       RSN_IE_BODY_MAX);
 		}
 	} else {
@@ -212,7 +212,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 	memset(ap, 0, sizeof(struct local_ap_t));
 
 	/* bssid */
-	memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);
+	memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
 	/* rssi */
 	ap->rssi = ap_info->rssi;
 	/* sq */
@@ -224,7 +224,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 	/* channel */
 	ap->channel = ap_info->ch_info;
 
-	bp = ap_info->body;
+	bp = &(ap_info->body[0]);
 	bsize = ap_info->body_size;
 	offset = 0;
 
@@ -239,19 +239,19 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 					*(bp + 1));
 				ap->ssid.size = SSID_MAX_SIZE;
 			}
-			memcpy(ap->ssid.body, bp + 2, ap->ssid.size);
+			memcpy(&(ap->ssid.body[0]), bp + 2, ap->ssid.size);
 			break;
 		case 1:	/* rate */
 		case 50:	/* ext rate */
 			if ((*(bp + 1) + ap->rate_set.size) <=
 			    RATE_SET_MAX_SIZE) {
-				memcpy(&ap->rate_set.body[ap->rate_set.size],
+				memcpy(&(ap->rate_set.body[ap->rate_set.size]),
 				       bp + 2, *(bp + 1));
 				ap->rate_set.size += *(bp + 1);
 			} else {
 				DPRINTK(1, "size over :: rate size=%d\n",
 					(*(bp + 1) + ap->rate_set.size));
-				memcpy(&ap->rate_set.body[ap->rate_set.size],
+				memcpy(&(ap->rate_set.body[ap->rate_set.size]),
 				       bp + 2,
 				       RATE_SET_MAX_SIZE - ap->rate_set.size);
 				ap->rate_set.size +=
@@ -269,7 +269,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 					*(bp + 1));
 				ap->rsn_ie.size = RSN_IE_BODY_MAX;
 			}
-			memcpy(ap->rsn_ie.body, bp + 2, ap->rsn_ie.size);
+			memcpy(&(ap->rsn_ie.body[0]), bp + 2, ap->rsn_ie.size);
 			break;
 		case 221:	/* WPA */
 			if (!memcmp(bp + 2, "\x00\x50\xf2\x01", 4)) {	/* WPA OUI check */
@@ -282,7 +282,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 						*(bp + 1));
 					ap->wpa_ie.size = RSN_IE_BODY_MAX;
 				}
-				memcpy(ap->wpa_ie.body, bp + 2,
+				memcpy(&(ap->wpa_ie.body[0]), bp + 2,
 				       ap->wpa_ie.size);
 			}
 			break;
@@ -832,8 +832,8 @@ void hostif_scan_indication(struct ks_wlan_private *priv)
 	if (priv->scan_ind_count != 0) {
 		for (i = 0; i < priv->aplist.size; i++) {	/* bssid check */
 			if (!memcmp
-			    (ap_info->bssid,
-			     &priv->aplist.ap[i].bssid[0], ETH_ALEN)) {
+			    (&(ap_info->bssid[0]),
+			     &(priv->aplist.ap[i].bssid[0]), ETH_ALEN)) {
 				if (ap_info->frame_type ==
 				    FRAME_TYPE_PROBE_RESP)
 					get_ap_information(priv, ap_info,
@@ -2652,7 +2652,7 @@ int hostif_init(struct ks_wlan_private *priv)
 
 	priv->aplist.size = 0;
 	for (i = 0; i < LOCAL_APLIST_MAX; i++)
-		memset(&priv->aplist.ap[i], 0, sizeof(struct local_ap_t));
+		memset(&(priv->aplist.ap[i]), 0, sizeof(struct local_ap_t));
 	priv->infra_status = 0;
 	priv->current_rate = 4;
 	priv->connect_status = DISCONNECT_STATUS;
@@ -2675,12 +2675,12 @@ int hostif_init(struct ks_wlan_private *priv)
 	INIT_WORK(&priv->ks_wlan_wakeup_task, ks_wlan_hw_wakeup_task);
 
 	/* WPA */
-	memset(&priv->wpa, 0, sizeof(priv->wpa));
+	memset(&(priv->wpa), 0, sizeof(priv->wpa));
 	priv->wpa.rsn_enabled = 0;
 	priv->wpa.mic_failure.failure = 0;
 	priv->wpa.mic_failure.last_failure_time = 0;
 	priv->wpa.mic_failure.stop = 0;
-	memset(&priv->pmklist, 0, sizeof(priv->pmklist));
+	memset(&(priv->pmklist), 0, sizeof(priv->pmklist));
 	INIT_LIST_HEAD(&priv->pmklist.head);
 	for (i = 0; i < PMK_LIST_MAX; i++)
 		INIT_LIST_HEAD(&priv->pmklist.pmk[i].list);
diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index 9f4bd7c3ea12..8c55428b71c7 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -423,7 +423,7 @@ static int ks_wlan_get_wap(struct net_device *dev, struct iw_request_info *info,
 
 	/* for SLEEP MODE */
 	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS)
-		memcpy(awrq->sa_data, priv->current_ap.bssid, ETH_ALEN);
+		memcpy(awrq->sa_data, &(priv->current_ap.bssid[0]), ETH_ALEN);
 	else
 		eth_zero_addr(awrq->sa_data);
 
@@ -1364,7 +1364,7 @@ static int ks_wlan_get_aplist(struct net_device *dev,
 		return -EPERM;
 	/* for SLEEP MODE */
 	for (i = 0; i < priv->aplist.size; i++) {
-		memcpy(address[i].sa_data, &priv->aplist.ap[i].bssid[0],
+		memcpy(address[i].sa_data, &(priv->aplist.ap[i].bssid[0]),
 		       ETH_ALEN);
 		address[i].sa_family = ARPHRD_ETHER;
 		qual[i].level = 256 - priv->aplist.ap[i].rssi;
@@ -1454,7 +1454,7 @@ static inline char *ks_wlan_translate_scan(struct net_device *dev,
 	iwe.u.data.flags = 1;
 	current_ev =
 	    iwe_stream_add_point(info, current_ev, end_buf, &iwe,
-				 ap->ssid.body);
+				 &(ap->ssid.body[0]));
 
 	/* Add mode */
 	iwe.cmd = SIOCGIWMODE;
@@ -1496,7 +1496,7 @@ static inline char *ks_wlan_translate_scan(struct net_device *dev,
 	iwe.u.data.length = 0;
 	current_ev =
 	    iwe_stream_add_point(info, current_ev, end_buf, &iwe,
-				 ap->ssid.body);
+				 &(ap->ssid.body[0]));
 
 	/* Rate : stuffing multiple values in a single event require a bit
 	 * more of magic - Jean II */
@@ -1612,7 +1612,7 @@ static int ks_wlan_get_scan(struct net_device *dev,
 		current_ev = ks_wlan_translate_scan(dev, current_ev,
 //                                                  extra + IW_SCAN_MAX_DATA,
 						    extra + dwrq->length,
-						    &priv->current_ap);
+						    &(priv->current_ap));
 	}
 #endif
 	/* Read and parse all entries */
@@ -1625,7 +1625,7 @@ static int ks_wlan_get_scan(struct net_device *dev,
 		current_ev = ks_wlan_translate_scan(dev, info, current_ev,
 //                                                  extra + IW_SCAN_MAX_DATA,
 						    extra + dwrq->length,
-						    &priv->aplist.ap[i]);
+						    &(priv->aplist.ap[i]));
 	}
 	/* Length of data */
 	dwrq->length = (current_ev - extra);
@@ -2080,7 +2080,7 @@ static int ks_wlan_set_pmksa(struct net_device *dev,
 		}
 		break;
 	case IW_PMKSA_FLUSH:
-		memset(&priv->pmklist, 0, sizeof(priv->pmklist));
+		memset(&(priv->pmklist), 0, sizeof(priv->pmklist));
 		INIT_LIST_HEAD(&priv->pmklist.head);
 		for (i = 0; i < PMK_LIST_MAX; i++)
 			INIT_LIST_HEAD(&priv->pmklist.pmk[i].list);
@@ -2178,7 +2178,7 @@ static int ks_wlan_get_firmware_version(struct net_device *dev,
 {
 	struct ks_wlan_private *priv =
 	    (struct ks_wlan_private *)netdev_priv(dev);
-	strcpy(extra, priv->firmware_version);
+	strcpy(extra, &(priv->firmware_version[0]));
 	dwrq->length = priv->version_size + 1;
 	return 0;
 }
@@ -2433,7 +2433,7 @@ static int ks_wlan_data_read(struct net_device *dev,
 		read_length = priv->dev_size[priv->dev_count];
 
 	/* Copy data */
-	memcpy(extra, &priv->dev_data[priv->dev_count][0], read_length);
+	memcpy(extra, &(priv->dev_data[priv->dev_count][0]), read_length);
 
 	spin_unlock(&priv->dev_read_lock);	/* release spin lock */
 
@@ -3254,7 +3254,7 @@ static int ks_wlan_netdev_ioctl(struct net_device *dev, struct ifreq *rq,
 
 	switch (cmd) {
 	case SIOCIWFIRSTPRIV + 20:	/* KS_WLAN_SET_STOP_REQ */
-		rc = ks_wlan_set_stop_request(dev, NULL, &wrq->u.mode, NULL);
+		rc = ks_wlan_set_stop_request(dev, NULL, &(wrq->u.mode), NULL);
 		break;
 		// All other calls are currently unsupported
 	default:
-- 
2.11.0


