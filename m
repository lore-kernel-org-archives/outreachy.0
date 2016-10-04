X-GM-THRID: 6337704033758740480
X-Received: by 10.28.166.200 with SMTP id p191mr407910wme.9.1475611709710;
        Tue, 04 Oct 2016 13:08:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.160 with SMTP id 32ls182690lfv.26.gmail; Tue, 04 Oct
 2016 13:08:28 -0700 (PDT)
X-Received: by 10.25.72.82 with SMTP id v79mr355668lfa.20.1475611708672;
        Tue, 04 Oct 2016 13:08:28 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id c74si550786wmd.3.2016.10.04.13.08.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 13:08:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id f193so16720808wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 13:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uEsLVWwPWKrAJvBkHTDsKJz4h9MA2LAlq7+gbTeWdVQ=;
        b=FXNsNu/PoQqYKqXES4IehUy2t6BOyl1CAhGX6npat87f+vfQjoAQWNXqPH6DPjyJ13
         tQbhr/yO4UlUfHXgIHVY/15XtRfWozW5eanO1nxjJFycz05dbMPNBuPNDzZxDxmF80mt
         fq7seGsmhNpBNuNoiwrnWgpC/xTPt+AXJiSevxRgugb0cblNdK96wPEhJyimwPWovDxi
         qm5i9lL8H8u7yqoT6a1UwrRklYqz2FAfD0lkVhTljuulhzXXF51KG0QTi0tSg+B1k+Zw
         PkiLGW7DsaK4Xk9gdKPuYfvklXKagrw6rk2aHyXNjw24bNfeAfXcxLad25XoTuNOIxgM
         sbrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uEsLVWwPWKrAJvBkHTDsKJz4h9MA2LAlq7+gbTeWdVQ=;
        b=GBEtWgY6meBv70ayUdJdCFQ8pJcul3Sen8V/6/x/t/UZH0VoyCHdeO/PdjC7WeJQrq
         VE6zB/1hK/dgR+anNE5SJgMo2IZ2sOYBrYaXjJItzW6shtR5Wc90L3FF6chsxm2c8jb1
         /M9ivzZ4Fsd+gO3wdAt5zgLcABzBTqD8VN8dATmKzrsvIRPxGwfJzNGTH4HdN6/yBsWV
         AEQRs+ZUkbcQjKl2PDlVnVzxxPa85SjT4D5/iBNfGZb+1m820LcoEW8+eQ3d3jtaQ+8K
         ZuV3VRS6a5H7hwTfsviztkRE//+ccvwB5EhiQlrDHsC15qGzGhIVnWpSMNXbBON8Yp5/
         PrmQ==
X-Gm-Message-State: AA6/9RlV2ylY8XI6sQaOT+eXcyA4lmTCQWTqH3BuQhNXe8DZ+Mr/dZXjeGSswSbPC+wakA==
X-Received: by 10.194.55.41 with SMTP id o9mr4427621wjp.228.1475611708026;
        Tue, 04 Oct 2016 13:08:28 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id a1sm5155561wjl.28.2016.10.04.13.08.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 04 Oct 2016 13:08:27 -0700 (PDT)
Date: Tue, 4 Oct 2016 23:08:25 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: ks7010: fix brace coding style issue
Message-ID: <20161004200825.GA5652@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This is a patch to the ks_wlan_net.c file that fixes up a brace coding
style warning found by checkpatch.pl tool, by deleting the unnecessary braces for single statement blocks.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
---
 drivers/staging/ks7010/ks_wlan_net.c | 155 +++++++++++++++++------------------
 1 file changed, 73 insertions(+), 82 deletions(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index b2b4fa4..77a77a9 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -88,9 +88,9 @@ int ks_wlan_update_phy_information(struct ks_wlan_private *priv)
 
 	DPRINTK(4, "in_interrupt = %ld\n", in_interrupt());
 
-	if (priv->dev_state < DEVICE_STATE_READY) {
+	if (priv->dev_state < DEVICE_STATE_READY)
 		return -1;	/* not finished initialize */
-	}
+
 	if (atomic_read(&update_phyinfo))
 		return 1;
 
@@ -182,19 +182,18 @@ static int ks_wlan_get_name(struct net_device *dev,
 	struct ks_wlan_private *priv =
 	    (struct ks_wlan_private *)netdev_priv(dev);
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
-	if (priv->dev_state < DEVICE_STATE_READY) {
+	if (priv->dev_state < DEVICE_STATE_READY)
 		strcpy(cwrq, "NOT READY!");
-	} else if (priv->reg.phy_type == D_11B_ONLY_MODE) {
+	else if (priv->reg.phy_type == D_11B_ONLY_MODE)
 		strcpy(cwrq, "IEEE 802.11b");
-	} else if (priv->reg.phy_type == D_11G_ONLY_MODE) {
+	else if (priv->reg.phy_type == D_11G_ONLY_MODE)
 		strcpy(cwrq, "IEEE 802.11g");
-	} else {
+	else
 		strcpy(cwrq, "IEEE 802.11b/g");
-	}
 
 	return 0;
 }
@@ -209,9 +208,8 @@ static int ks_wlan_set_freq(struct net_device *dev,
 	    (struct ks_wlan_private *)netdev_priv(dev);
 	int rc = -EINPROGRESS;	/* Call commit handler */
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
 
 	/* for SLEEP MODE */
 	/* If setting by frequency, convert to a channel */
@@ -257,13 +255,13 @@ static int ks_wlan_get_freq(struct net_device *dev,
 	    (struct ks_wlan_private *)netdev_priv(dev);
 	int f;
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
-	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
+	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS)
 		f = (int)priv->current_ap.channel;
-	} else
+		else
 		f = (int)priv->reg.channel;
 	fwrq->m = frequency_list[f - 1] * 100000;
 	fwrq->e = 1;
@@ -283,9 +281,9 @@ static int ks_wlan_set_essid(struct net_device *dev,
 
 	DPRINTK(2, " %d\n", dwrq->flags);
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 
 	/* for SLEEP MODE */
 	/* Check if we asked for `any' */
@@ -301,14 +299,14 @@ static int ks_wlan_set_essid(struct net_device *dev,
 			len--;
 
 		/* Check the size of the string */
-		if (len > IW_ESSID_MAX_SIZE) {
+		if (len > IW_ESSID_MAX_SIZE)
 			return -EINVAL;
-		}
+
 #else
 		/* Check the size of the string */
-		if (dwrq->length > IW_ESSID_MAX_SIZE + 1) {
+		if (dwrq->length > IW_ESSID_MAX_SIZE + 1)
 			return -E2BIG;
-		}
+
 #endif
 
 		/* Set the SSID */
@@ -340,9 +338,9 @@ static int ks_wlan_get_essid(struct net_device *dev,
 	struct ks_wlan_private *priv =
 	    (struct ks_wlan_private *)netdev_priv(dev);
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 
 	/* for SLEEP MODE */
 	/* Note : if dwrq->flags != 0, we should
@@ -385,17 +383,17 @@ static int ks_wlan_set_wap(struct net_device *dev, struct iw_request_info *info,
 
 	DPRINTK(2, "\n");
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
 	if (priv->reg.operation_mode == MODE_ADHOC ||
 	    priv->reg.operation_mode == MODE_INFRASTRUCTURE) {
 		memcpy(priv->reg.bssid, (u8 *) & ap_addr->sa_data, ETH_ALEN);
 
-		if (is_valid_ether_addr((u8 *) priv->reg.bssid)) {
+		if (is_valid_ether_addr((u8 *) priv->reg.bssid))
 			priv->need_commit |= SME_MODE_SET;
-		}
+
 	} else {
 		eth_zero_addr(priv->reg.bssid);
 		return -EOPNOTSUPP;
@@ -421,15 +419,14 @@ static int ks_wlan_get_wap(struct net_device *dev, struct iw_request_info *info,
 	struct ks_wlan_private *priv =
 	    (struct ks_wlan_private *)netdev_priv(dev);
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
-	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
+	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS)
 		memcpy(awrq->sa_data, &(priv->current_ap.bssid[0]), ETH_ALEN);
-	} else {
+	else
 		eth_zero_addr(awrq->sa_data);
-	}
 
 	awrq->sa_family = ARPHRD_ETHER;
 
@@ -445,15 +442,14 @@ static int ks_wlan_set_nick(struct net_device *dev,
 	struct ks_wlan_private *priv =
 	    (struct ks_wlan_private *)netdev_priv(dev);
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
 
 	/* for SLEEP MODE */
 	/* Check the size of the string */
-	if (dwrq->length > 16 + 1) {
+	if (dwrq->length > 16 + 1)
 		return -E2BIG;
-	}
+
 	memset(priv->nick, 0, sizeof(priv->nick));
 	memcpy(priv->nick, extra, dwrq->length);
 
@@ -469,9 +465,9 @@ static int ks_wlan_get_nick(struct net_device *dev,
 	struct ks_wlan_private *priv =
 	    (struct ks_wlan_private *)netdev_priv(dev);
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
 	strncpy(extra, priv->nick, 16);
 	extra[16] = '\0';
@@ -490,9 +486,9 @@ static int ks_wlan_set_rate(struct net_device *dev,
 	    (struct ks_wlan_private *)netdev_priv(dev);
 	int i = 0;
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
 	if (priv->reg.phy_type == D_11B_ONLY_MODE) {
 		if (vwrq->fixed == 1) {
@@ -727,13 +723,13 @@ static int ks_wlan_get_rate(struct net_device *dev,
 	DPRINTK(2, "in_interrupt = %ld update_phyinfo = %d\n",
 		in_interrupt(), atomic_read(&update_phyinfo));
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
-	if (!atomic_read(&update_phyinfo)) {
+	if (!atomic_read(&update_phyinfo))
 		ks_wlan_update_phy_information(priv);
-	}
+
 	vwrq->value = ((priv->current_rate) & RATE_MASK) * 500000;
 	if (priv->reg.tx_rate == TX_RATE_FIXED)
 		vwrq->fixed = 1;
@@ -752,15 +748,15 @@ static int ks_wlan_set_rts(struct net_device *dev, struct iw_request_info *info,
 	    (struct ks_wlan_private *)netdev_priv(dev);
 	int rthr = vwrq->value;
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
 	if (vwrq->disabled)
 		rthr = 2347;
-	if ((rthr < 0) || (rthr > 2347)) {
+	if ((rthr < 0) || (rthr > 2347))
 		return -EINVAL;
-	}
+
 	priv->reg.rts = rthr;
 	priv->need_commit |= SME_RTS;
 
@@ -775,9 +771,9 @@ static int ks_wlan_get_rts(struct net_device *dev, struct iw_request_info *info,
 	struct ks_wlan_private *priv =
 	    (struct ks_wlan_private *)netdev_priv(dev);
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
 	vwrq->value = priv->reg.rts;
 	vwrq->disabled = (vwrq->value >= 2347);
@@ -796,15 +792,15 @@ static int ks_wlan_set_frag(struct net_device *dev,
 	    (struct ks_wlan_private *)netdev_priv(dev);
 	int fthr = vwrq->value;
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
 	if (vwrq->disabled)
 		fthr = 2346;
-	if ((fthr < 256) || (fthr > 2346)) {
+	if ((fthr < 256) || (fthr > 2346))
 		return -EINVAL;
-	}
+
 	fthr &= ~0x1;	/* Get an even value - is it really needed ??? */
 	priv->reg.fragment = fthr;
 	priv->need_commit |= SME_FRAG;
@@ -821,9 +817,9 @@ static int ks_wlan_get_frag(struct net_device *dev,
 	struct ks_wlan_private *priv =
 	    (struct ks_wlan_private *)netdev_priv(dev);
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
 	vwrq->value = priv->reg.fragment;
 	vwrq->disabled = (vwrq->value >= 2346);
@@ -843,9 +839,9 @@ static int ks_wlan_set_mode(struct net_device *dev,
 
 	DPRINTK(2, "mode=%d\n", *uwrq);
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
 	switch (*uwrq) {
 	case IW_MODE_ADHOC:
@@ -877,9 +873,8 @@ static int ks_wlan_get_mode(struct net_device *dev,
 	struct ks_wlan_private *priv =
 	    (struct ks_wlan_private *)netdev_priv(dev);
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
 
 	/* for SLEEP MODE */
 	/* If not managed, assume it's ad-hoc */
@@ -913,9 +908,8 @@ static int ks_wlan_set_encode(struct net_device *dev,
 
 	DPRINTK(2, "flags=%04X\n", dwrq->flags);
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
 
 	/* for SLEEP MODE */
 	/* index check */
@@ -959,9 +953,9 @@ static int ks_wlan_set_encode(struct net_device *dev,
 			}
 			/* Send the key to the card */
 			priv->reg.wep_key[index].size = key.len;
-			for (i = 0; i < (priv->reg.wep_key[index].size); i++) {
+			for (i = 0; i < (priv->reg.wep_key[index].size); i++)
 				priv->reg.wep_key[index].val[i] = key.key[i];
-			}
+
 			priv->need_commit |= (SME_WEP_VAL1 << index);
 			priv->reg.wep_index = index;
 			priv->need_commit |= SME_WEP_INDEX;
@@ -973,9 +967,9 @@ static int ks_wlan_set_encode(struct net_device *dev,
 			priv->reg.wep_key[2].size = 0;
 			priv->reg.wep_key[3].size = 0;
 			priv->reg.privacy_invoked = 0x00;
-			if (priv->reg.authenticate_type == AUTH_TYPE_SHARED_KEY) {
+			if (priv->reg.authenticate_type == AUTH_TYPE_SHARED_KEY)
 				priv->need_commit |= SME_MODE_SET;
-			}
+
 			priv->reg.authenticate_type = AUTH_TYPE_OPEN_SYSTEM;
 			wep_on_off = WEP_OFF;
 			priv->need_commit |= SME_WEP_FLAG;
@@ -997,14 +991,14 @@ static int ks_wlan_set_encode(struct net_device *dev,
 		priv->need_commit |= SME_WEP_FLAG;
 
 	if (dwrq->flags & IW_ENCODE_OPEN) {
-		if (priv->reg.authenticate_type == AUTH_TYPE_SHARED_KEY) {
+		if (priv->reg.authenticate_type == AUTH_TYPE_SHARED_KEY)
 			priv->need_commit |= SME_MODE_SET;
-		}
+
 		priv->reg.authenticate_type = AUTH_TYPE_OPEN_SYSTEM;
 	} else if (dwrq->flags & IW_ENCODE_RESTRICTED) {
-		if (priv->reg.authenticate_type == AUTH_TYPE_OPEN_SYSTEM) {
+		if (priv->reg.authenticate_type == AUTH_TYPE_OPEN_SYSTEM)
 			priv->need_commit |= SME_MODE_SET;
-		}
+
 		priv->reg.authenticate_type = AUTH_TYPE_SHARED_KEY;
 	}
 //      return -EINPROGRESS;            /* Call commit handler */
@@ -1026,9 +1020,9 @@ static int ks_wlan_get_encode(struct net_device *dev,
 	char zeros[16];
 	int index = (dwrq->flags & IW_ENCODE_INDEX) - 1;
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
 	dwrq->flags = IW_ENCODE_DISABLED;
 
@@ -1056,9 +1050,8 @@ static int ks_wlan_get_encode(struct net_device *dev,
 	/* Copy the key to the user buffer */
 	if ((index >= 0) && (index < 4))
 		dwrq->length = priv->reg.wep_key[index].size;
-	if (dwrq->length > 16) {
+	if (dwrq->length > 16)
 		dwrq->length = 0;
-	}
 #if 1	/* IW_ENCODE_NOKEY; */
 	if (dwrq->length) {
 		if ((index >= 0) && (index < 4))
@@ -1086,9 +1079,8 @@ static int ks_wlan_get_txpow(struct net_device *dev,
 			     struct iw_request_info *info,
 			     struct iw_param *vwrq, char *extra)
 {
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
 
 	/* for SLEEP MODE */
 	/* Not Support */
@@ -1113,9 +1105,8 @@ static int ks_wlan_get_retry(struct net_device *dev,
 			     struct iw_request_info *info,
 			     struct iw_param *vwrq, char *extra)
 {
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
 
 	/* for SLEEP MODE */
 	/* Not Support */
@@ -1139,9 +1130,9 @@ static int ks_wlan_get_range(struct net_device *dev,
 
 	DPRINTK(2, "\n");
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
 	dwrq->length = sizeof(struct iw_range);
 	memset(range, 0, sizeof(*range));
@@ -1267,9 +1258,9 @@ static int ks_wlan_set_power(struct net_device *dev,
 	    (struct ks_wlan_private *)netdev_priv(dev);
 	short enabled;
 
-	if (priv->sleep_mode == SLP_SLEEP) {
+	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
-	}
+
 	/* for SLEEP MODE */
 	enabled = vwrq->disabled ? 0 : 1;
 	if (enabled == 0) {	/* 0 */
-- 
2.7.4


