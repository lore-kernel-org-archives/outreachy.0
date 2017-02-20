X-GM-THRID: 6388887439725821952
X-Received: by 10.129.82.77 with SMTP id g74mr7035470ywb.50.1487573595603;
        Sun, 19 Feb 2017 22:53:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.196 with SMTP id x62ls9368945ota.32.gmail; Sun, 19 Feb
 2017 22:53:15 -0800 (PST)
X-Received: by 10.200.50.105 with SMTP id y38mr6198630qta.67.1487573595259;
        Sun, 19 Feb 2017 22:53:15 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id s64si1467573pfk.0.2017.02.19.22.53.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 22:53:15 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id a123so8929654pgc.3
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 22:53:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cjscyzgggq4/QlYDW+PhEHxTtW4frjNtj0vd8XBC9bA=;
        b=n24GcUQYHPdLX4blUDU6xpX6nqcqgWSxIBBlB25I+TfgK/6O1KxVtrYJ4Aqk9/efmf
         DQOxqExs+PYVlTCoulOxB4smVV8w/IY0IcPTADbeEDi2m5AZIZHKRSA1d79lvu772Inb
         jYscVM5JJbivRNJLnL0sNQbymazn7kqix44j/qcorvoQsd5ugnCkS36oCcSknvWpOpnh
         yvceHz44kIpqR+Uo4Xn7rnONXYBPhoMXmFWImoWbx4eNAHEeOYIfyGgG//lBNxtri5fi
         Xjai/Vl6+vxqo88UxPZeeOtheoaBrS3JGTyXqrljz4PVEH08RhZDf1X39kgiO3EmEAwH
         pS6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cjscyzgggq4/QlYDW+PhEHxTtW4frjNtj0vd8XBC9bA=;
        b=IneyXZb7aC09bmG4jDyZbo23Kx9kQHi2aPmhPaHsNjSzwcF7X6YHloGV4H7BBw9hD8
         x+hsB1u6o3VHyU8a9mniYTh41RDyEnDLa+4+UprRmeAiKLLji38Nu+Ul4uwkno/4vv9V
         jxN5c1WGQLHLAJ0DwDwajFetnktVoIdLAvTcoG4gzeWRfAbQg8NKvxhL8D/XxUdhBwdT
         6yrOYGk1gSE/GjTkMoVGu6ipCh23ulQ7kbFa/hYSkfaiaArxwsF12lDTj6r60dEZ5tKN
         AqRalrcxMuXyn8BsIgIa4ONVX6MO1yInPDUHnNOGycC1GwuMvoFV/lw94cxg+8PEj+Z+
         nOaw==
X-Gm-Message-State: AMke39lxnkleu3Z6tAi4j+Gv5AkbEIxWV4OU3Uq4d4rJhR9mGbl5TParoWwPfFH1I2BC1A==
X-Received: by 10.84.136.7 with SMTP id 7mr29701064plk.100.1487573594962;
        Sun, 19 Feb 2017 22:53:14 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f3sm32876249pga.34.2017.02.19.22.53.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Feb 2017 22:53:13 -0800 (PST)
Date: Mon, 20 Feb 2017 12:23:10 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: ks7010: Unnecessary parentheses are removed.
Message-ID: <20170220065310.GA21888@arushi-HP-Pavilion-Notebook>
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
 drivers/staging/ks7010/ks_hostif.c   | 20 ++++++++++----------
 drivers/staging/ks7010/ks_wlan_net.c | 20 ++++++++++----------
 2 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index ba283ab741a7..2d5ec57c5cfd 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -239,19 +239,19 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 					*(bp + 1));
 				ap->ssid.size = SSID_MAX_SIZE;
 			}
-			memcpy(&(ap->ssid.body[0]), bp + 2, ap->ssid.size);
+			memcpy(ap->ssid.body, bp + 2, ap->ssid.size);
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
+			memcpy(ap->rsn_ie.body, bp + 2, ap->rsn_ie.size);
 			break;
 		case 221:	/* WPA */
 			if (!memcmp(bp + 2, "\x00\x50\xf2\x01", 4)) {	/* WPA OUI check */
@@ -282,7 +282,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 						*(bp + 1));
 					ap->wpa_ie.size = RSN_IE_BODY_MAX;
 				}
-				memcpy(&(ap->wpa_ie.body[0]), bp + 2,
+				memcpy(ap->wpa_ie.body, bp + 2,
 				       ap->wpa_ie.size);
 			}
 			break;
@@ -832,8 +832,8 @@ void hostif_scan_indication(struct ks_wlan_private *priv)
 	if (priv->scan_ind_count != 0) {
 		for (i = 0; i < priv->aplist.size; i++) {	/* bssid check */
 			if (!memcmp
-			    (&(ap_info->bssid[0]),
-			     &(priv->aplist.ap[i].bssid[0]), ETH_ALEN)) {
+			    (ap_info->bssid,
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
index 8c55428b71c7..9f4bd7c3ea12 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -423,7 +423,7 @@ static int ks_wlan_get_wap(struct net_device *dev, struct iw_request_info *info,
 
 	/* for SLEEP MODE */
 	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS)
-		memcpy(awrq->sa_data, &(priv->current_ap.bssid[0]), ETH_ALEN);
+		memcpy(awrq->sa_data, priv->current_ap.bssid, ETH_ALEN);
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
+				 ap->ssid.body);
 
 	/* Add mode */
 	iwe.cmd = SIOCGIWMODE;
@@ -1496,7 +1496,7 @@ static inline char *ks_wlan_translate_scan(struct net_device *dev,
 	iwe.u.data.length = 0;
 	current_ev =
 	    iwe_stream_add_point(info, current_ev, end_buf, &iwe,
-				 &(ap->ssid.body[0]));
+				 ap->ssid.body);
 
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
+	strcpy(extra, priv->firmware_version);
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


