X-GM-THRID: 6392114405347164160
X-Received: by 10.129.55.213 with SMTP id e204mr2470388ywa.0.1488365880073;
        Wed, 01 Mar 2017 02:58:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls3472793otd.46.gmail; Wed, 01 Mar
 2017 02:57:59 -0800 (PST)
X-Received: by 10.157.47.7 with SMTP id h7mr2101610otb.98.1488365879623;
        Wed, 01 Mar 2017 02:57:59 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id h79si587967pfh.2.2017.03.01.02.57.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 02:57:59 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id x17so5495427pgi.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 02:57:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Ju0xWWT/mcnAt0yR5tEOg/V3Q25jS/bt0XJZ933zLsE=;
        b=Jj6HaGYx8xFSL8qOzfWgO972y3bjabv7shnXGiBh4JpLenZpMdRJcPFEErBS51862I
         wlDdi8KUAIbm6l9aE1ht4IfKRgGLgjCOAn+loEH7g0LqtMEX4sEh2QrJjLTbGC/nRmhN
         l7myU5a1eeqOqaN4iHxGIG34ln4fVBoQ4dUMstCmaPSxqB1cLyeodHh9pVXm5Fjf9RZf
         +kG8XDKsmO6LaC3Ux3C1Okx1eo56fRc5vMOg9syD9GcqRuhWO2Y4CUPprEKRWUUT99TH
         0G3NOi2RKNhw0USFNSIOAJ5bvL4mSjq2S256vCs5DLnTGdaBt9pccz//3hzg11t4586k
         JhmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Ju0xWWT/mcnAt0yR5tEOg/V3Q25jS/bt0XJZ933zLsE=;
        b=hxPc87sgULT+KBOWoOHhgYw2u/bc/BDWJDSx72jnozoswvbeyoq1okgLKbZCv545aw
         l0MdVS21aHtkqgA/saKunuFBrlo0hoi/NoZB2XIbdnqdqwZ+mZ00Q70KB42xyixYCg2+
         TmbivpuDbRHcI5+D8yQlx+UMplmF+kC6KnAbOc926kPFKmbLIIc2DHuniyqjShKuylQN
         YEc4vC4fNet91WjhmquAZhJtj1vZaItl0vr5KXRgUpzS9t8chqqdl1yRtcSkiV5hsVO9
         /R112+s1G/bb5GEj6rsTNZuwyrQ0KkWypgdVmZVXdZW7P1dNMGc8eiK8qLcThDGwA/yh
         e9QA==
X-Gm-Message-State: AMke39mPos5w5XBcfkYT5v/s0LPkXdj22dPGNQiFflWZjrK5PBd8zk8mMA6SDP0dK+FUBw==
X-Received: by 10.99.60.76 with SMTP id i12mr8127494pgn.30.1488365878929;
        Wed, 01 Mar 2017 02:57:58 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e7sm9860008pgp.2.2017.03.01.02.57.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 02:57:57 -0800 (PST)
Date: Wed, 1 Mar 2017 16:27:54 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ks7010: Unnecessary parentheses removed and
 improved coding style.
Message-ID: <20170301105754.GA21559@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary parentheses are removed as reported by checkpatch.pl
to make coder nicer and to improve readability.
Also coding style is improved as it's often nicer to read if
 &(foo[0]) is converted to foo like:
 memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
 memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c   | 23 +++++++++++------------
 drivers/staging/ks7010/ks_wlan_net.c | 18 +++++++++---------
 2 files changed, 20 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index ae7cf3ffae8e..946bb784935f 100644
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
@@ -828,13 +828,12 @@ void hostif_scan_indication(struct ks_wlan_private *priv)
 	if (priv->scan_ind_count != 0) {
 		for (i = 0; i < priv->aplist.size; i++) {	/* bssid check */
 			if (!memcmp
-			    (&(ap_info->bssid[0]),
-			     &(priv->aplist.ap[i].bssid[0]), ETH_ALEN)) {
+			    (ap_info->bssid,
+			     priv->aplist.ap[i].bssid, ETH_ALEN)) {
 				if (ap_info->frame_type ==
 				    FRAME_TYPE_PROBE_RESP)
 					get_ap_information(priv, ap_info,
-							   &(priv->aplist.
-							     ap[i]));
+							   &priv->aplist.ap[i]);
 				return;
 			}
 		}
@@ -2639,7 +2638,7 @@ int hostif_init(struct ks_wlan_private *priv)
 
 	priv->aplist.size = 0;
 	for (i = 0; i < LOCAL_APLIST_MAX; i++)
-		memset(&(priv->aplist.ap[i]), 0, sizeof(struct local_ap_t));
+		memset(&priv->aplist.ap[i], 0, sizeof(struct local_ap_t));
 	priv->infra_status = 0;
 	priv->current_rate = 4;
 	priv->connect_status = DISCONNECT_STATUS;
@@ -2662,12 +2661,12 @@ int hostif_init(struct ks_wlan_private *priv)
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
index 9cec19f1babc..d06dfe0f6732 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -421,7 +421,7 @@ static int ks_wlan_get_wap(struct net_device *dev, struct iw_request_info *info,
 
 	/* for SLEEP MODE */
 	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS)
-		memcpy(awrq->sa_data, &(priv->current_ap.bssid[0]), ETH_ALEN);
+		memcpy(awrq->sa_data, priv->current_ap.bssid, ETH_ALEN);
 	else
 		eth_zero_addr(awrq->sa_data);
 
@@ -1455,7 +1455,7 @@ static inline char *ks_wlan_translate_scan(struct net_device *dev,
 	iwe.u.data.flags = 1;
 	current_ev =
 	    iwe_stream_add_point(info, current_ev, end_buf, &iwe,
-				 &(ap->ssid.body[0]));
+				 ap->ssid.body);
 
 	/* Add mode */
 	iwe.cmd = SIOCGIWMODE;
@@ -1497,7 +1497,7 @@ static inline char *ks_wlan_translate_scan(struct net_device *dev,
 	iwe.u.data.length = 0;
 	current_ev =
 	    iwe_stream_add_point(info, current_ev, end_buf, &iwe,
-				 &(ap->ssid.body[0]));
+				 ap->ssid.body);
 
 	/* Rate : stuffing multiple values in a single event require a bit
 	 * more of magic - Jean II */
@@ -1613,7 +1613,7 @@ static int ks_wlan_get_scan(struct net_device *dev,
 		current_ev = ks_wlan_translate_scan(dev, current_ev,
 //                                                  extra + IW_SCAN_MAX_DATA,
 						    extra + dwrq->length,
-						    &(priv->current_ap));
+						    &priv->current_ap);
 	}
 #endif
 	/* Read and parse all entries */
@@ -1626,7 +1626,7 @@ static int ks_wlan_get_scan(struct net_device *dev,
 		current_ev = ks_wlan_translate_scan(dev, info, current_ev,
 //                                                  extra + IW_SCAN_MAX_DATA,
 						    extra + dwrq->length,
-						    &(priv->aplist.ap[i]));
+						    &priv->aplist.ap[i]);
 	}
 	/* Length of data */
 	dwrq->length = (current_ev - extra);
@@ -2082,7 +2082,7 @@ static int ks_wlan_set_pmksa(struct net_device *dev,
 		}
 		break;
 	case IW_PMKSA_FLUSH:
-		memset(&(priv->pmklist), 0, sizeof(priv->pmklist));
+		memset(&priv->pmklist, 0, sizeof(priv->pmklist));
 		INIT_LIST_HEAD(&priv->pmklist.head);
 		for (i = 0; i < PMK_LIST_MAX; i++)
 			INIT_LIST_HEAD(&priv->pmklist.pmk[i].list);
@@ -2179,7 +2179,7 @@ static int ks_wlan_get_firmware_version(struct net_device *dev,
 {
 	struct ks_wlan_private *priv =
 	    (struct ks_wlan_private *)netdev_priv(dev);
-	strcpy(extra, &(priv->firmware_version[0]));
+	strcpy(extra, priv->firmware_version);
 	dwrq->length = priv->version_size + 1;
 	return 0;
 }
@@ -2437,7 +2437,7 @@ static int ks_wlan_data_read(struct net_device *dev,
 		read_length = priv->dev_size[priv->dev_count];
 
 	/* Copy data */
-	memcpy(extra, &(priv->dev_data[priv->dev_count][0]), read_length);
+	memcpy(extra, &priv->dev_data[priv->dev_count][0], read_length);
 
 	spin_unlock(&priv->dev_read_lock);	/* release spin lock */
 
@@ -3261,7 +3261,7 @@ static int ks_wlan_netdev_ioctl(struct net_device *dev, struct ifreq *rq,
 
 	switch (cmd) {
 	case SIOCIWFIRSTPRIV + 20:	/* KS_WLAN_SET_STOP_REQ */
-		rc = ks_wlan_set_stop_request(dev, NULL, &(wrq->u.mode), NULL);
+		rc = ks_wlan_set_stop_request(dev, NULL, &wrq->u.mode, NULL);
 		break;
 		// All other calls are currently unsupported
 	default:
-- 
2.11.0


