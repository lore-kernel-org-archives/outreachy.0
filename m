X-GM-THRID: 6388887439725821952
X-Received: by 10.157.9.66 with SMTP id 60mr5719783otp.66.1487528774376;
        Sun, 19 Feb 2017 10:26:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.124.6 with SMTP id a6ls599586itd.22.gmail; Sun, 19 Feb 2017
 10:26:13 -0800 (PST)
X-Received: by 10.99.234.5 with SMTP id c5mr5629278pgi.172.1487528773599;
        Sun, 19 Feb 2017 10:26:13 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 23si1973784pfw.4.2017.02.19.10.26.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 10:26:13 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id a123so7198810pgc.3
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 10:26:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=oO+fq50sxHYMKbVUXDrsGIppJ9GDCUNgTJmcHXVlIJA=;
        b=EwEhzhx0tDPwgcIcwjqmlFOsY4TJrctTvvXn3QhK34maPaHyQq4Vg/3gURUqCuausQ
         W1Hl9BK5SZteQeFaIR7lHMC/uDJyi851Db+fD6jDa5+mYIpOMBMXUkXIAWuRPoU43kpU
         SZd/oP/wdJ1vJL1ViqwU5i7ynNNEruELmuWeb4nyqhQ73AnwQKtKO89fFdHA9r2fNOZe
         crRfEtACYQT1SDOS46s4/nif105cNxkgoDUeGXG0T22Qtq+VQ3JnLobqJpnmL0tSjODZ
         JU4InoJAR8BXpsrFvWL45FUM3VO2Rhj93kpAarNyQtKBc+M41DCRq6M4I4mjdElFft4m
         tFGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=oO+fq50sxHYMKbVUXDrsGIppJ9GDCUNgTJmcHXVlIJA=;
        b=hzMxoWPInt8VKGOgzFlPDqFhfQFW8TSxSiBZlyzuFbFVdefR4YdccGtO72+CyTQjIN
         9c92rKCQHrv2cFZqpLyZjjwGEQ6oWEmt+WooRAHsVLlcqlDB14WMuGg82x6vRUYIIovV
         rNP45hD9ck6LGGYSfMmwvP7ZCA6TTX5aFT8KIdmzvygD+eNd3o6W7+Prbs7DcBI/mmUj
         mX0DQTp+qYhOE7580YIDaNtb+yMByXsm3N4256E2IbajSIq6ABaSacDj89lBSoJqKlCB
         t6NWloS7bo5Ll2kTbDdHKsECzKLQ6OSDNPldx0YKCxl0v/P4P1bfRWhKgRGke+SRGaC4
         1EPw==
X-Gm-Message-State: AMke39kXl/lOYCjnSguHs+ayu9Re42iY7zGiEbjbA+OeoNPp/ARRSQAiCLuBw8nN3Mq8aA==
X-Received: by 10.99.8.4 with SMTP id 4mr22452774pgi.204.1487528773316;
        Sun, 19 Feb 2017 10:26:13 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m6sm30485781pfg.126.2017.02.19.10.26.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Feb 2017 10:26:11 -0800 (PST)
Date: Sun, 19 Feb 2017 23:56:08 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: ks7010: Unnecessary parentheses are removed.
Message-ID: <20170219182607.GA17005@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary parentheses should be avoided as reported by checkpatch.pl.
Remove unnecessary parentheses, as reported by checkpatch as are nicer
to read.For example:-
It's often nicer to read if &(foo[0]) is converted to foo like:
     memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
     memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c   | 24 ++++++++++++------------
 drivers/staging/ks7010/ks_wlan_net.c | 20 ++++++++++----------
 2 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 3b2e28749b63..bbc39cbabdc1 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -212,7 +212,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 	memset(ap, 0, sizeof(struct local_ap_t));
 
 	/* bssid */
-	memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
+	memcpy(&ap->bssid[0], &ap_info->bssid[0], ETH_ALEN);
 	/* rssi */
 	ap->rssi = ap_info->rssi;
 	/* sq */
@@ -224,7 +224,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 	/* channel */
 	ap->channel = ap_info->ch_info;
 
-	bp = &(ap_info->body[0]);
+	bp = &ap_info->body[0];
 	bsize = ap_info->body_size;
 	offset = 0;
 
@@ -239,19 +239,19 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 					*(bp + 1));
 				ap->ssid.size = SSID_MAX_SIZE;
 			}
-			memcpy(&(ap->ssid.body[0]), bp + 2, ap->ssid.size);
+			memcpy(&ap->ssid.body[0], bp + 2, ap->ssid.size);
 			break;
 		case 1:	/* rate */
 		case 50:	/* ext rate */
 			if ((*(bp + 1) + ap->rate_set.size) <=
 			    RATE_SET_MAX_SIZE) {
-				memcpy(&(ap->rate_set.body[ap->rate_set.size]),
+				memcpy(&ap->rate_set.body[ap->rate_set.size],
 				       bp + 2, *(bp + 1));
 				ap->rate_set.size += *(bp + 1);
 			} else {
 				DPRINTK(1, "size over :: rate size=%d\n",
 					(*(bp + 1) + ap->rate_set.size));
-				memcpy(&(ap->rate_set.body[ap->rate_set.size]),
+				memcpy(&ap->rate_set.body[ap->rate_set.size],
 				       bp + 2,
 				       RATE_SET_MAX_SIZE - ap->rate_set.size);
 				ap->rate_set.size +=
@@ -269,7 +269,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 					*(bp + 1));
 				ap->rsn_ie.size = RSN_IE_BODY_MAX;
 			}
-			memcpy(&(ap->rsn_ie.body[0]), bp + 2, ap->rsn_ie.size);
+			memcpy(&ap->rsn_ie.body[0], bp + 2, ap->rsn_ie.size);
 			break;
 		case 221:	/* WPA */
 			if (!memcmp(bp + 2, "\x00\x50\xf2\x01", 4)) {	/* WPA OUI check */
@@ -282,7 +282,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 						*(bp + 1));
 					ap->wpa_ie.size = RSN_IE_BODY_MAX;
 				}
-				memcpy(&(ap->wpa_ie.body[0]), bp + 2,
+				memcpy(&ap->wpa_ie.body[0], bp + 2,
 				       ap->wpa_ie.size);
 			}
 			break;
@@ -832,8 +832,8 @@ void hostif_scan_indication(struct ks_wlan_private *priv)
 	if (priv->scan_ind_count != 0) {
 		for (i = 0; i < priv->aplist.size; i++) {	/* bssid check */
 			if (!memcmp
-			    (&(ap_info->bssid[0]),
-			     &(priv->aplist.ap[i].bssid[0]), ETH_ALEN)) {
+			    (&ap_info->bssid[0],
+			     &priv->aplist.ap[i].bssid[0], ETH_ALEN)) {
 				if (ap_info->frame_type ==
 				    FRAME_TYPE_PROBE_RESP)
 					get_ap_information(priv, ap_info,
@@ -2652,7 +2652,7 @@ int hostif_init(struct ks_wlan_private *priv)
 
 	priv->aplist.size = 0;
 	for (i = 0; i < LOCAL_APLIST_MAX; i++)
-		memset(&(priv->aplist.ap[i]), 0, sizeof(struct local_ap_t));
+		memset(&priv->aplist.ap[i], 0, sizeof(struct local_ap_t));
 	priv->infra_status = 0;
 	priv->current_rate = 4;
 	priv->connect_status = DISCONNECT_STATUS;
@@ -2675,12 +2675,12 @@ int hostif_init(struct ks_wlan_private *priv)
 	INIT_WORK(&priv->ks_wlan_wakeup_task, ks_wlan_hw_wakeup_task);
 
 	/* WPA */
-	memset(&(priv->wpa), 0, sizeof(priv->wpa));
+	memset(&priv->wpa, 0, sizeof(priv->wpa));
 	priv->wpa.rsn_enabled = 0;
 	priv->wpa.mic_failure.failure = 0;
 	priv->wpa.mic_failure.last_failure_time = 0;
 	priv->wpa.mic_failure.stop = 0;
-	memset(&(priv->pmklist), 0, sizeof(priv->pmklist));
+	memset(&priv->pmklist, 0, sizeof(priv->pmklist));
 	INIT_LIST_HEAD(&priv->pmklist.head);
 	for (i = 0; i < PMK_LIST_MAX; i++)
 		INIT_LIST_HEAD(&priv->pmklist.pmk[i].list);
diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index 8c55428b71c7..2233c9fa982a 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -423,7 +423,7 @@ static int ks_wlan_get_wap(struct net_device *dev, struct iw_request_info *info,
 
 	/* for SLEEP MODE */
 	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS)
-		memcpy(awrq->sa_data, &(priv->current_ap.bssid[0]), ETH_ALEN);
+		memcpy(awrq->sa_data, &priv->current_ap.bssid[0], ETH_ALEN);
 	else
 		eth_zero_addr(awrq->sa_data);
 
@@ -1364,7 +1364,7 @@ static int ks_wlan_get_aplist(struct net_device *dev,
 		return -EPERM;
 	/* for SLEEP MODE */
 	for (i = 0; i < priv->aplist.size; i++) {
-		memcpy(address[i].sa_data, &(priv->aplist.ap[i].bssid[0]),
+		memcpy(address[i].sa_data, &priv->aplist.ap[i].bssid[0],
 		       ETH_ALEN);
 		address[i].sa_family = ARPHRD_ETHER;
 		qual[i].level = 256 - priv->aplist.ap[i].rssi;
@@ -1454,7 +1454,7 @@ static inline char *ks_wlan_translate_scan(struct net_device *dev,
 	iwe.u.data.flags = 1;
 	current_ev =
 	    iwe_stream_add_point(info, current_ev, end_buf, &iwe,
-				 &(ap->ssid.body[0]));
+				 &ap->ssid.body[0]);
 
 	/* Add mode */
 	iwe.cmd = SIOCGIWMODE;
@@ -1496,7 +1496,7 @@ static inline char *ks_wlan_translate_scan(struct net_device *dev,
 	iwe.u.data.length = 0;
 	current_ev =
 	    iwe_stream_add_point(info, current_ev, end_buf, &iwe,
-				 &(ap->ssid.body[0]));
+				 &ap->ssid.body[0]);
 
 	/* Rate : stuffing multiple values in a single event require a bit
 	 * more of magic - Jean II */
@@ -1612,7 +1612,7 @@ static int ks_wlan_get_scan(struct net_device *dev,
 		current_ev = ks_wlan_translate_scan(dev, current_ev,
 //                                                  extra + IW_SCAN_MAX_DATA,
 						    extra + dwrq->length,
-						    &(priv->current_ap));
+						    &priv->current_ap);
 	}
 #endif
 	/* Read and parse all entries */
@@ -1625,7 +1625,7 @@ static int ks_wlan_get_scan(struct net_device *dev,
 		current_ev = ks_wlan_translate_scan(dev, info, current_ev,
 //                                                  extra + IW_SCAN_MAX_DATA,
 						    extra + dwrq->length,
-						    &(priv->aplist.ap[i]));
+						    &priv->aplist.ap[i]);
 	}
 	/* Length of data */
 	dwrq->length = (current_ev - extra);
@@ -2080,7 +2080,7 @@ static int ks_wlan_set_pmksa(struct net_device *dev,
 		}
 		break;
 	case IW_PMKSA_FLUSH:
-		memset(&(priv->pmklist), 0, sizeof(priv->pmklist));
+		memset(&priv->pmklist, 0, sizeof(priv->pmklist));
 		INIT_LIST_HEAD(&priv->pmklist.head);
 		for (i = 0; i < PMK_LIST_MAX; i++)
 			INIT_LIST_HEAD(&priv->pmklist.pmk[i].list);
@@ -2178,7 +2178,7 @@ static int ks_wlan_get_firmware_version(struct net_device *dev,
 {
 	struct ks_wlan_private *priv =
 	    (struct ks_wlan_private *)netdev_priv(dev);
-	strcpy(extra, &(priv->firmware_version[0]));
+	strcpy(extra, &priv->firmware_version[0]);
 	dwrq->length = priv->version_size + 1;
 	return 0;
 }
@@ -2433,7 +2433,7 @@ static int ks_wlan_data_read(struct net_device *dev,
 		read_length = priv->dev_size[priv->dev_count];
 
 	/* Copy data */
-	memcpy(extra, &(priv->dev_data[priv->dev_count][0]), read_length);
+	memcpy(extra, &priv->dev_data[priv->dev_count][0], read_length);
 
 	spin_unlock(&priv->dev_read_lock);	/* release spin lock */
 
@@ -3254,7 +3254,7 @@ static int ks_wlan_netdev_ioctl(struct net_device *dev, struct ifreq *rq,
 
 	switch (cmd) {
 	case SIOCIWFIRSTPRIV + 20:	/* KS_WLAN_SET_STOP_REQ */
-		rc = ks_wlan_set_stop_request(dev, NULL, &(wrq->u.mode), NULL);
+		rc = ks_wlan_set_stop_request(dev, NULL, &wrq->u.mode, NULL);
 		break;
 		// All other calls are currently unsupported
 	default:
-- 
2.11.0


