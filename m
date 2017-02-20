X-GM-THRID: 6389012671455297536
X-Received: by 10.157.36.82 with SMTP id p76mr1921519ota.101.1487557932620;
        Sun, 19 Feb 2017 18:32:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.105 with SMTP id r38ls9232349otd.15.gmail; Sun, 19 Feb
 2017 18:32:12 -0800 (PST)
X-Received: by 10.157.32.138 with SMTP id x10mr1567422ota.51.1487557932214;
        Sun, 19 Feb 2017 18:32:12 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h130si1968306pfe.1.2017.02.19.18.32.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 18:32:12 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c05::241 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c05::241 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pg0-x241.google.com with SMTP id a123so8140800pgc.3
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 18:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cEjPGgicgD+ASvLQGMrR/gQkywGAvZBoU7WrpDhCAF0=;
        b=1JbJRPkI1l5YNCTVUjKbn96i2d4hMougH9dI1Zud312H0lAjZDpVWKn0sZWqwB9CMP
         PDE8LMvlUm+PKIoC2+F0jwsyTt9uOPFuQQupsr+bBZph43yo49Mezxy7HJ6Eh//n/49L
         actYgivIKY45RgAD+NE/I//+QCz+MfZGLKUI5b2qEpaBKl5AunBV2p0Px8ZNzRKLUIx7
         cCsoV7+hWKEi8zjtqGyrazTxL2+xwV3EcttE6B/PFX0Hg0aihOqHfizH/hn7TAcQlMdz
         XZiiVYxjIIb4vI+DHWP9Rsc2TZgfxBv0d35T8KhZL7nr2CjHY5rrkI/8OT4qZ/0sR7gf
         nMJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cEjPGgicgD+ASvLQGMrR/gQkywGAvZBoU7WrpDhCAF0=;
        b=uZxIuUa8sSnxeZiX5+ksT3D5RC9EnlDeOtDVQrPwUGjN0SCQLCANYSMRcZ4czIoEq0
         kbMb/fEGo7Ap3JOmBBpnDXxrKdfUV2PYSoUaf252y1Lgs4niQqQvoGvQS06QSukTNnDM
         kipm4/+mpwvaDFqvYT+dHuQ4m2bm6SquIcmvZL6A/cl62rZ9S++64E6aj0ygGP8EXZeL
         WjuLID3DVJRJOCPQqURknuBnmP0c3gvA4E/IG2JgVs7XXwJTx93MIE3l6AfnbzB3yJW1
         RuddDeicjHYo6mOc4Kzyp9roCo2BgBPXjEi8+pIktw9jG3/t2omJD1tbXCT8lKimrc0U
         8bsg==
X-Gm-Message-State: AMke39kjD7NOhcsUwZYDO+m8HCJe6wZzJDyDb4/+wgfUxMl6tHvHvZaZ04A/cwDC05xaSu6T
X-Received: by 10.84.224.65 with SMTP id a1mr28672229plt.28.1487557931705;
        Sun, 19 Feb 2017 18:32:11 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id b18sm31292295pfd.106.2017.02.19.18.32.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Feb 2017 18:32:11 -0800 (PST)
Date: Sun, 19 Feb 2017 18:30:00 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, wsa@the-dreams.de,
	driverdev-devel@linuxdriverproject.org
Subject: [PATCH] staging: ks7010: remove unecessary spaces after casts
Message-ID: <20170220023000.GA3393@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove spaces after casts found by checkpatch.pl. In some cases,
remove returns after casts and place them on a single line.

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/ks7010/ks_hostif.c | 206 ++++++++++++++++++-------------------
 1 file changed, 102 insertions(+), 104 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 97d7b56..1872f40 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -379,9 +379,8 @@ void hostif_data_indication(struct ks_wlan_private *priv)
 				       (priv->rxp) + ((priv->rx_size) - 8), 8);
 				priv->rx_size = priv->rx_size - 8;
 				if (auth_type > 0 && auth_type < 4) {	/* auth_type check */
-					MichaelMICFunction(&michel_mic, (uint8_t *) priv->wpa.key[auth_type - 1].rx_mic_key, (uint8_t *) priv->rxp, (int)priv->rx_size, (uint8_t) 0,	/* priority */
-							   (uint8_t *)
-							   michel_mic.Result);
+					MichaelMICFunction(&michel_mic, (uint8_t *)priv->wpa.key[auth_type - 1].rx_mic_key, (uint8_t *)priv->rxp, (int)priv->rx_size, (uint8_t)0,	/* priority */
+							   (uint8_t *)michel_mic.Result);
 				}
 				if (memcmp(michel_mic.Result, RecvMIC, 8)) {
 					now = jiffies;
@@ -400,7 +399,7 @@ void hostif_data_indication(struct ks_wlan_private *priv)
 					} else if (mic_failure->failure == 1) {
 						mic_failure->failure = 2;
 						mic_failure->counter =
-						    (uint16_t) ((now -
+						    (uint16_t)((now -
 								 mic_failure->
 								 last_failure_time)
 								/ HZ);
@@ -1219,37 +1218,37 @@ int hostif_data_request(struct ks_wlan_private *priv, struct sk_buff *packet)
 		    && !(priv->wpa.key[1].key_len)
 		    && !(priv->wpa.key[2].key_len)
 		    && !(priv->wpa.key[3].key_len)) {
-			pp->auth_type = cpu_to_le16((uint16_t) TYPE_AUTH);	/* no encryption */
+			pp->auth_type = cpu_to_le16((uint16_t)TYPE_AUTH);	/* no encryption */
 		} else {
 			if (priv->wpa.pairwise_suite == IW_AUTH_CIPHER_TKIP) {
-				MichaelMICFunction(&michel_mic, (uint8_t *) priv->wpa.key[0].tx_mic_key, (uint8_t *) &pp->data[0], (int)packet_len, (uint8_t) 0,	/* priority */
-						   (uint8_t *) michel_mic.
+				MichaelMICFunction(&michel_mic, (uint8_t *)priv->wpa.key[0].tx_mic_key, (uint8_t *)&pp->data[0], (int)packet_len, (uint8_t)0,	/* priority */
+						   (uint8_t *)michel_mic.
 						   Result);
 				memcpy(p, michel_mic.Result, 8);
 				length += 8;
 				packet_len += 8;
 				p += 8;
 				pp->auth_type =
-				    cpu_to_le16((uint16_t) TYPE_DATA);
+				    cpu_to_le16((uint16_t)TYPE_DATA);
 
 			} else if (priv->wpa.pairwise_suite ==
 				   IW_AUTH_CIPHER_CCMP) {
 				pp->auth_type =
-				    cpu_to_le16((uint16_t) TYPE_DATA);
+				    cpu_to_le16((uint16_t)TYPE_DATA);
 			}
 		}
 	} else {
 		if (eth_proto == ETHER_PROTOCOL_TYPE_EAP)
-			pp->auth_type = cpu_to_le16((uint16_t) TYPE_AUTH);
+			pp->auth_type = cpu_to_le16((uint16_t)TYPE_AUTH);
 		else
-			pp->auth_type = cpu_to_le16((uint16_t) TYPE_DATA);
+			pp->auth_type = cpu_to_le16((uint16_t)TYPE_DATA);
 	}
 
 	/* header value set */
 	pp->header.size =
 	    cpu_to_le16((uint16_t)
 			(sizeof(*pp) - sizeof(pp->header.size) + packet_len));
-	pp->header.event = cpu_to_le16((uint16_t) HIF_DATA_REQ);
+	pp->header.event = cpu_to_le16((uint16_t)HIF_DATA_REQ);
 
 	/* tx request */
 	result =
@@ -1293,9 +1292,9 @@ void hostif_mib_get_request(struct ks_wlan_private *priv,
 		return;
 	}
 	pp->header.size =
-	    cpu_to_le16((uint16_t) (sizeof(*pp) - sizeof(pp->header.size)));
-	pp->header.event = cpu_to_le16((uint16_t) HIF_MIB_GET_REQ);
-	pp->mib_attribute = cpu_to_le32((uint32_t) mib_attribute);
+	    cpu_to_le16((uint16_t)(sizeof(*pp) - sizeof(pp->header.size)));
+	pp->header.event = cpu_to_le16((uint16_t)HIF_MIB_GET_REQ);
+	pp->mib_attribute = cpu_to_le32((uint32_t)mib_attribute);
 
 	/* send to device request */
 	ps_confirm_wait_inc(priv);
@@ -1326,10 +1325,10 @@ void hostif_mib_set_request(struct ks_wlan_private *priv,
 	pp->header.size =
 	    cpu_to_le16((uint16_t)
 			(sizeof(*pp) - sizeof(pp->header.size) + size));
-	pp->header.event = cpu_to_le16((uint16_t) HIF_MIB_SET_REQ);
-	pp->mib_attribute = cpu_to_le32((uint32_t) mib_attribute);
-	pp->mib_value.size = cpu_to_le16((uint16_t) size);
-	pp->mib_value.type = cpu_to_le16((uint16_t) type);
+	pp->header.event = cpu_to_le16((uint16_t)HIF_MIB_SET_REQ);
+	pp->mib_attribute = cpu_to_le32((uint32_t)mib_attribute);
+	pp->mib_value.size = cpu_to_le16((uint16_t)size);
+	pp->mib_value.type = cpu_to_le16((uint16_t)type);
 	memcpy(&pp->mib_value.body, vp, size);
 
 	/* send to device request */
@@ -1352,9 +1351,9 @@ void hostif_start_request(struct ks_wlan_private *priv, unsigned char mode)
 		return;
 	}
 	pp->header.size =
-	    cpu_to_le16((uint16_t) (sizeof(*pp) - sizeof(pp->header.size)));
-	pp->header.event = cpu_to_le16((uint16_t) HIF_START_REQ);
-	pp->mode = cpu_to_le16((uint16_t) mode);
+	    cpu_to_le16((uint16_t)(sizeof(*pp) - sizeof(pp->header.size)));
+	pp->header.event = cpu_to_le16((uint16_t)HIF_START_REQ);
+	pp->mode = cpu_to_le16((uint16_t)mode);
 
 	/* send to device request */
 	ps_confirm_wait_inc(priv);
@@ -1380,12 +1379,12 @@ void hostif_ps_adhoc_set_request(struct ks_wlan_private *priv)
 	}
 	memset(pp, 0, sizeof(*pp));
 	pp->header.size =
-	    cpu_to_le16((uint16_t) (sizeof(*pp) - sizeof(pp->header.size)));
-	pp->header.event = cpu_to_le16((uint16_t) HIF_PS_ADH_SET_REQ);
-	pp->phy_type = cpu_to_le16((uint16_t) (priv->reg.phy_type));
-	pp->cts_mode = cpu_to_le16((uint16_t) (priv->reg.cts_mode));
-	pp->scan_type = cpu_to_le16((uint16_t) (priv->reg.scan_type));
-	pp->channel = cpu_to_le16((uint16_t) (priv->reg.channel));
+	    cpu_to_le16((uint16_t)(sizeof(*pp) - sizeof(pp->header.size)));
+	pp->header.event = cpu_to_le16((uint16_t)HIF_PS_ADH_SET_REQ);
+	pp->phy_type = cpu_to_le16((uint16_t)(priv->reg.phy_type));
+	pp->cts_mode = cpu_to_le16((uint16_t)(priv->reg.cts_mode));
+	pp->scan_type = cpu_to_le16((uint16_t)(priv->reg.scan_type));
+	pp->channel = cpu_to_le16((uint16_t)(priv->reg.channel));
 	pp->rate_set.size = priv->reg.rate_set.size;
 	memcpy(&pp->rate_set.body[0], &priv->reg.rate_set.body[0],
 	       priv->reg.rate_set.size);
@@ -1400,7 +1399,7 @@ void hostif_ps_adhoc_set_request(struct ks_wlan_private *priv)
 		capability |= BSS_CAP_SHORT_SLOT_TIME;	/* ShortSlotTime support */
 		capability &= ~(BSS_CAP_DSSS_OFDM);	/* DSSS OFDM */
 	}
-	pp->capability = cpu_to_le16((uint16_t) capability);
+	pp->capability = cpu_to_le16((uint16_t)capability);
 
 	/* send to device request */
 	ps_confirm_wait_inc(priv);
@@ -1422,11 +1421,11 @@ void hostif_infrastructure_set_request(struct ks_wlan_private *priv)
 		return;
 	}
 	pp->header.size =
-	    cpu_to_le16((uint16_t) (sizeof(*pp) - sizeof(pp->header.size)));
-	pp->header.event = cpu_to_le16((uint16_t) HIF_INFRA_SET_REQ);
-	pp->phy_type = cpu_to_le16((uint16_t) (priv->reg.phy_type));
-	pp->cts_mode = cpu_to_le16((uint16_t) (priv->reg.cts_mode));
-	pp->scan_type = cpu_to_le16((uint16_t) (priv->reg.scan_type));
+	    cpu_to_le16((uint16_t)(sizeof(*pp) - sizeof(pp->header.size)));
+	pp->header.event = cpu_to_le16((uint16_t)HIF_INFRA_SET_REQ);
+	pp->phy_type = cpu_to_le16((uint16_t)(priv->reg.phy_type));
+	pp->cts_mode = cpu_to_le16((uint16_t)(priv->reg.cts_mode));
+	pp->scan_type = cpu_to_le16((uint16_t)(priv->reg.scan_type));
 
 	pp->rate_set.size = priv->reg.rate_set.size;
 	memcpy(&pp->rate_set.body[0], &priv->reg.rate_set.body[0],
@@ -1444,10 +1443,10 @@ void hostif_infrastructure_set_request(struct ks_wlan_private *priv)
 		capability |= BSS_CAP_SHORT_SLOT_TIME;	/* ShortSlotTime support */
 		capability &= ~(BSS_CAP_DSSS_OFDM);	/* DSSS OFDM not support */
 	}
-	pp->capability = cpu_to_le16((uint16_t) capability);
+	pp->capability = cpu_to_le16((uint16_t)capability);
 	pp->beacon_lost_count =
-	    cpu_to_le16((uint16_t) (priv->reg.beacon_lost_count));
-	pp->auth_type = cpu_to_le16((uint16_t) (priv->reg.authenticate_type));
+	    cpu_to_le16((uint16_t)(priv->reg.beacon_lost_count));
+	pp->auth_type = cpu_to_le16((uint16_t)(priv->reg.authenticate_type));
 
 	pp->channel_list.body[0] = 1;
 	pp->channel_list.body[1] = 8;
@@ -1488,11 +1487,11 @@ static void hostif_infrastructure_set2_request(struct ks_wlan_private *priv)
 		return;
 	}
 	pp->header.size =
-	    cpu_to_le16((uint16_t) (sizeof(*pp) - sizeof(pp->header.size)));
-	pp->header.event = cpu_to_le16((uint16_t) HIF_INFRA_SET2_REQ);
-	pp->phy_type = cpu_to_le16((uint16_t) (priv->reg.phy_type));
-	pp->cts_mode = cpu_to_le16((uint16_t) (priv->reg.cts_mode));
-	pp->scan_type = cpu_to_le16((uint16_t) (priv->reg.scan_type));
+	    cpu_to_le16((uint16_t)(sizeof(*pp) - sizeof(pp->header.size)));
+	pp->header.event = cpu_to_le16((uint16_t)HIF_INFRA_SET2_REQ);
+	pp->phy_type = cpu_to_le16((uint16_t)(priv->reg.phy_type));
+	pp->cts_mode = cpu_to_le16((uint16_t)(priv->reg.cts_mode));
+	pp->scan_type = cpu_to_le16((uint16_t)(priv->reg.scan_type));
 
 	pp->rate_set.size = priv->reg.rate_set.size;
 	memcpy(&pp->rate_set.body[0], &priv->reg.rate_set.body[0],
@@ -1510,10 +1509,10 @@ static void hostif_infrastructure_set2_request(struct ks_wlan_private *priv)
 		capability |= BSS_CAP_SHORT_SLOT_TIME;	/* ShortSlotTime support */
 		capability &= ~(BSS_CAP_DSSS_OFDM);	/* DSSS OFDM not support */
 	}
-	pp->capability = cpu_to_le16((uint16_t) capability);
+	pp->capability = cpu_to_le16((uint16_t)capability);
 	pp->beacon_lost_count =
-	    cpu_to_le16((uint16_t) (priv->reg.beacon_lost_count));
-	pp->auth_type = cpu_to_le16((uint16_t) (priv->reg.authenticate_type));
+	    cpu_to_le16((uint16_t)(priv->reg.beacon_lost_count));
+	pp->auth_type = cpu_to_le16((uint16_t)(priv->reg.authenticate_type));
 
 	pp->channel_list.body[0] = 1;
 	pp->channel_list.body[1] = 8;
@@ -1558,12 +1557,12 @@ void hostif_adhoc_set_request(struct ks_wlan_private *priv)
 	}
 	memset(pp, 0, sizeof(*pp));
 	pp->header.size =
-	    cpu_to_le16((uint16_t) (sizeof(*pp) - sizeof(pp->header.size)));
-	pp->header.event = cpu_to_le16((uint16_t) HIF_ADH_SET_REQ);
-	pp->phy_type = cpu_to_le16((uint16_t) (priv->reg.phy_type));
-	pp->cts_mode = cpu_to_le16((uint16_t) (priv->reg.cts_mode));
-	pp->scan_type = cpu_to_le16((uint16_t) (priv->reg.scan_type));
-	pp->channel = cpu_to_le16((uint16_t) (priv->reg.channel));
+	    cpu_to_le16((uint16_t)(sizeof(*pp) - sizeof(pp->header.size)));
+	pp->header.event = cpu_to_le16((uint16_t)HIF_ADH_SET_REQ);
+	pp->phy_type = cpu_to_le16((uint16_t)(priv->reg.phy_type));
+	pp->cts_mode = cpu_to_le16((uint16_t)(priv->reg.cts_mode));
+	pp->scan_type = cpu_to_le16((uint16_t)(priv->reg.scan_type));
+	pp->channel = cpu_to_le16((uint16_t)(priv->reg.channel));
 	pp->rate_set.size = priv->reg.rate_set.size;
 	memcpy(&pp->rate_set.body[0], &priv->reg.rate_set.body[0],
 	       priv->reg.rate_set.size);
@@ -1580,7 +1579,7 @@ void hostif_adhoc_set_request(struct ks_wlan_private *priv)
 		capability |= BSS_CAP_SHORT_SLOT_TIME;	/* ShortSlotTime support */
 		capability &= ~(BSS_CAP_DSSS_OFDM);	/* DSSS OFDM not support */
 	}
-	pp->capability = cpu_to_le16((uint16_t) capability);
+	pp->capability = cpu_to_le16((uint16_t)capability);
 
 	/* send to device request */
 	ps_confirm_wait_inc(priv);
@@ -1603,11 +1602,11 @@ void hostif_adhoc_set2_request(struct ks_wlan_private *priv)
 	}
 	memset(pp, 0, sizeof(*pp));
 	pp->header.size =
-	    cpu_to_le16((uint16_t) (sizeof(*pp) - sizeof(pp->header.size)));
-	pp->header.event = cpu_to_le16((uint16_t) HIF_ADH_SET_REQ);
-	pp->phy_type = cpu_to_le16((uint16_t) (priv->reg.phy_type));
-	pp->cts_mode = cpu_to_le16((uint16_t) (priv->reg.cts_mode));
-	pp->scan_type = cpu_to_le16((uint16_t) (priv->reg.scan_type));
+	    cpu_to_le16((uint16_t)(sizeof(*pp) - sizeof(pp->header.size)));
+	pp->header.event = cpu_to_le16((uint16_t)HIF_ADH_SET_REQ);
+	pp->phy_type = cpu_to_le16((uint16_t)(priv->reg.phy_type));
+	pp->cts_mode = cpu_to_le16((uint16_t)(priv->reg.cts_mode));
+	pp->scan_type = cpu_to_le16((uint16_t)(priv->reg.scan_type));
 	pp->rate_set.size = priv->reg.rate_set.size;
 	memcpy(&pp->rate_set.body[0], &priv->reg.rate_set.body[0],
 	       priv->reg.rate_set.size);
@@ -1624,7 +1623,7 @@ void hostif_adhoc_set2_request(struct ks_wlan_private *priv)
 		capability |= BSS_CAP_SHORT_SLOT_TIME;	/* ShortSlotTime support */
 		capability &= ~(BSS_CAP_DSSS_OFDM);	/* DSSS OFDM not support */
 	}
-	pp->capability = cpu_to_le16((uint16_t) capability);
+	pp->capability = cpu_to_le16((uint16_t)capability);
 
 	pp->channel_list.body[0] = priv->reg.channel;
 	pp->channel_list.size = 1;
@@ -1649,8 +1648,8 @@ void hostif_stop_request(struct ks_wlan_private *priv)
 		return;
 	}
 	pp->header.size =
-	    cpu_to_le16((uint16_t) (sizeof(*pp) - sizeof(pp->header.size)));
-	pp->header.event = cpu_to_le16((uint16_t) HIF_STOP_REQ);
+	    cpu_to_le16((uint16_t)(sizeof(*pp) - sizeof(pp->header.size)));
+	pp->header.event = cpu_to_le16((uint16_t)HIF_STOP_REQ);
 
 	/* send to device request */
 	ps_confirm_wait_inc(priv);
@@ -1671,14 +1670,14 @@ void hostif_phy_information_request(struct ks_wlan_private *priv)
 		return;
 	}
 	pp->header.size =
-	    cpu_to_le16((uint16_t) (sizeof(*pp) - sizeof(pp->header.size)));
-	pp->header.event = cpu_to_le16((uint16_t) HIF_PHY_INFO_REQ);
+	    cpu_to_le16((uint16_t)(sizeof(*pp) - sizeof(pp->header.size)));
+	pp->header.event = cpu_to_le16((uint16_t)HIF_PHY_INFO_REQ);
 	if (priv->reg.phy_info_timer) {
-		pp->type = cpu_to_le16((uint16_t) TIME_TYPE);
-		pp->time = cpu_to_le16((uint16_t) (priv->reg.phy_info_timer));
+		pp->type = cpu_to_le16((uint16_t)TIME_TYPE);
+		pp->time = cpu_to_le16((uint16_t)(priv->reg.phy_info_timer));
 	} else {
-		pp->type = cpu_to_le16((uint16_t) NORMAL_TYPE);
-		pp->time = cpu_to_le16((uint16_t) 0);
+		pp->type = cpu_to_le16((uint16_t)NORMAL_TYPE);
+		pp->time = cpu_to_le16((uint16_t)0);
 	}
 
 	/* send to device request */
@@ -1702,11 +1701,11 @@ void hostif_power_mngmt_request(struct ks_wlan_private *priv,
 		return;
 	}
 	pp->header.size =
-	    cpu_to_le16((uint16_t) (sizeof(*pp) - sizeof(pp->header.size)));
-	pp->header.event = cpu_to_le16((uint16_t) HIF_POWERMGT_REQ);
-	pp->mode = cpu_to_le32((uint32_t) mode);
-	pp->wake_up = cpu_to_le32((uint32_t) wake_up);
-	pp->receiveDTIMs = cpu_to_le32((uint32_t) receiveDTIMs);
+	    cpu_to_le16((uint16_t)(sizeof(*pp) - sizeof(pp->header.size)));
+	pp->header.event = cpu_to_le16((uint16_t)HIF_POWERMGT_REQ);
+	pp->mode = cpu_to_le32((uint32_t)mode);
+	pp->wake_up = cpu_to_le32((uint32_t)wake_up);
+	pp->receiveDTIMs = cpu_to_le32((uint32_t)receiveDTIMs);
 
 	/* send to device request */
 	ps_confirm_wait_inc(priv);
@@ -1728,9 +1727,8 @@ void hostif_sleep_request(struct ks_wlan_private *priv, unsigned long mode)
 			return;
 		}
 		pp->header.size =
-		    cpu_to_le16((uint16_t)
-				(sizeof(*pp) - sizeof(pp->header.size)));
-		pp->header.event = cpu_to_le16((uint16_t) HIF_SLEEP_REQ);
+		    cpu_to_le16((uint16_t)(sizeof(*pp) - sizeof(pp->header.size)));
+		pp->header.event = cpu_to_le16((uint16_t)HIF_SLEEP_REQ);
 
 		/* send to device request */
 		ps_confirm_wait_inc(priv);
@@ -1761,12 +1759,12 @@ void hostif_bss_scan_request(struct ks_wlan_private *priv,
 		return;
 	}
 	pp->header.size =
-	    cpu_to_le16((uint16_t) (sizeof(*pp) - sizeof(pp->header.size)));
-	pp->header.event = cpu_to_le16((uint16_t) HIF_SCAN_REQ);
+	    cpu_to_le16((uint16_t)(sizeof(*pp) - sizeof(pp->header.size)));
+	pp->header.event = cpu_to_le16((uint16_t)HIF_SCAN_REQ);
 	pp->scan_type = scan_type;
 
-	pp->ch_time_min = cpu_to_le32((uint32_t) 110);	/* default value */
-	pp->ch_time_max = cpu_to_le32((uint32_t) 130);	/* default value */
+	pp->ch_time_min = cpu_to_le32((uint32_t)110);	/* default value */
+	pp->ch_time_max = cpu_to_le32((uint32_t)130);	/* default value */
 	pp->channel_list.body[0] = 1;
 	pp->channel_list.body[1] = 8;
 	pp->channel_list.body[2] = 2;
@@ -1817,10 +1815,10 @@ void hostif_mic_failure_request(struct ks_wlan_private *priv,
 		return;
 	}
 	pp->header.size =
-	    cpu_to_le16((uint16_t) (sizeof(*pp) - sizeof(pp->header.size)));
-	pp->header.event = cpu_to_le16((uint16_t) HIF_MIC_FAILURE_REQ);
-	pp->failure_count = cpu_to_le16((uint16_t) failure_count);
-	pp->timer = cpu_to_le16((uint16_t) timer);
+	    cpu_to_le16((uint16_t)(sizeof(*pp) - sizeof(pp->header.size)));
+	pp->header.event = cpu_to_le16((uint16_t)HIF_MIC_FAILURE_REQ);
+	pp->failure_count = cpu_to_le16((uint16_t)failure_count);
+	pp->timer = cpu_to_le16((uint16_t)timer);
 
 	/* send to device request */
 	ps_confirm_wait_inc(priv);
@@ -1873,7 +1871,7 @@ void hostif_sme_set_wep(struct ks_wlan_private *priv, int type)
 
 	switch (type) {
 	case SME_WEP_INDEX_REQUEST:
-		val = cpu_to_le32((uint32_t) (priv->reg.wep_index));
+		val = cpu_to_le32((uint32_t)(priv->reg.wep_index));
 		hostif_mib_set_request(priv, DOT11_WEP_DEFAULT_KEY_ID,
 				       sizeof(val), MIB_VALUE_TYPE_INT, &val);
 		break;
@@ -1910,7 +1908,7 @@ void hostif_sme_set_wep(struct ks_wlan_private *priv, int type)
 					       &priv->reg.wep_key[3].val[0]);
 		break;
 	case SME_WEP_FLAG_REQUEST:
-		val = cpu_to_le32((uint32_t) (priv->reg.privacy_invoked));
+		val = cpu_to_le32((uint32_t)(priv->reg.privacy_invoked));
 		hostif_mib_set_request(priv, DOT11_PRIVACY_INVOKED,
 				       sizeof(val), MIB_VALUE_TYPE_BOOL, &val);
 		break;
@@ -1938,7 +1936,7 @@ void hostif_sme_set_rsn(struct ks_wlan_private *priv, int type)
 
 	switch (type) {
 	case SME_RSN_UCAST_REQUEST:
-		wpa_suite.size = cpu_to_le16((uint16_t) 1);
+		wpa_suite.size = cpu_to_le16((uint16_t)1);
 		switch (priv->wpa.pairwise_suite) {
 		case IW_AUTH_CIPHER_NONE:
 			if (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2)
@@ -2036,7 +2034,7 @@ void hostif_sme_set_rsn(struct ks_wlan_private *priv, int type)
 				       &wpa_suite.suite[0][0]);
 		break;
 	case SME_RSN_AUTH_REQUEST:
-		wpa_suite.size = cpu_to_le16((uint16_t) 1);
+		wpa_suite.size = cpu_to_le16((uint16_t)1);
 		switch (priv->wpa.key_mgmt_suite) {
 		case IW_AUTH_KEY_MGMT_802_1X:
 			if (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2)
@@ -2080,23 +2078,23 @@ void hostif_sme_set_rsn(struct ks_wlan_private *priv, int type)
 				       MIB_VALUE_TYPE_OSTRING, &wpa_suite);
 		break;
 	case SME_RSN_ENABLED_REQUEST:
-		val = cpu_to_le32((uint32_t) (priv->wpa.rsn_enabled));
+		val = cpu_to_le32((uint32_t)(priv->wpa.rsn_enabled));
 		hostif_mib_set_request(priv, DOT11_RSN_ENABLED,
 				       sizeof(val), MIB_VALUE_TYPE_BOOL, &val);
 		break;
 	case SME_RSN_MODE_REQUEST:
 		if (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) {
 			rsn_mode.rsn_mode =
-			    cpu_to_le32((uint32_t) RSN_MODE_WPA2);
-			rsn_mode.rsn_capability = cpu_to_le16((uint16_t) 0);
+			    cpu_to_le32((uint32_t)RSN_MODE_WPA2);
+			rsn_mode.rsn_capability = cpu_to_le16((uint16_t)0);
 		} else if (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA) {
 			rsn_mode.rsn_mode =
-			    cpu_to_le32((uint32_t) RSN_MODE_WPA);
-			rsn_mode.rsn_capability = cpu_to_le16((uint16_t) 0);
+			    cpu_to_le32((uint32_t)RSN_MODE_WPA);
+			rsn_mode.rsn_capability = cpu_to_le16((uint16_t)0);
 		} else {
 			rsn_mode.rsn_mode =
-			    cpu_to_le32((uint32_t) RSN_MODE_NONE);
-			rsn_mode.rsn_capability = cpu_to_le16((uint16_t) 0);
+			    cpu_to_le32((uint32_t)RSN_MODE_NONE);
+			rsn_mode.rsn_capability = cpu_to_le16((uint16_t)0);
 		}
 		hostif_mib_set_request(priv, LOCAL_RSN_MODE, sizeof(rsn_mode),
 				       MIB_VALUE_TYPE_OSTRING, &rsn_mode);
@@ -2187,7 +2185,7 @@ void hostif_sme_mode_setup(struct ks_wlan_private *priv)
 		break;
 	case MODE_INFRASTRUCTURE:
 		/* Infrastructure mode */
-		if (!is_valid_ether_addr((u8 *) priv->reg.bssid)) {
+		if (!is_valid_ether_addr((u8 *)priv->reg.bssid)) {
 			hostif_infrastructure_set_request(priv);
 		} else {
 			hostif_infrastructure_set2_request(priv);
@@ -2197,7 +2195,7 @@ void hostif_sme_mode_setup(struct ks_wlan_private *priv)
 		break;
 	case MODE_ADHOC:
 		/* IEEE802.11 Ad-Hoc mode */
-		if (!is_valid_ether_addr((u8 *) priv->reg.bssid)) {
+		if (!is_valid_ether_addr((u8 *)priv->reg.bssid)) {
 			hostif_adhoc_set_request(priv);
 		} else {
 			hostif_adhoc_set2_request(priv);
@@ -2227,13 +2225,13 @@ void hostif_sme_multicast_set(struct ks_wlan_private *priv)
 	memset(set_address, 0, NIC_MAX_MCAST_LIST * ETH_ALEN);
 
 	if (dev->flags & IFF_PROMISC) {
-		filter_type = cpu_to_le32((uint32_t) MCAST_FILTER_PROMISC);
+		filter_type = cpu_to_le32((uint32_t)MCAST_FILTER_PROMISC);
 		hostif_mib_set_request(priv, LOCAL_MULTICAST_FILTER,
 				       sizeof(filter_type), MIB_VALUE_TYPE_BOOL,
 				       &filter_type);
 	} else if ((netdev_mc_count(dev) > NIC_MAX_MCAST_LIST)
 		   || (dev->flags & IFF_ALLMULTI)) {
-		filter_type = cpu_to_le32((uint32_t) MCAST_FILTER_MCASTALL);
+		filter_type = cpu_to_le32((uint32_t)MCAST_FILTER_MCASTALL);
 		hostif_mib_set_request(priv, LOCAL_MULTICAST_FILTER,
 				       sizeof(filter_type), MIB_VALUE_TYPE_BOOL,
 				       &filter_type);
@@ -2252,7 +2250,7 @@ void hostif_sme_multicast_set(struct ks_wlan_private *priv)
 					       &set_address[0]);
 		} else {
 			filter_type =
-			    cpu_to_le32((uint32_t) MCAST_FILTER_MCAST);
+			    cpu_to_le32((uint32_t)MCAST_FILTER_MCAST);
 			priv->sme_i.sme_flag |= SME_MULTICAST;
 			hostif_mib_set_request(priv, LOCAL_MULTICAST_FILTER,
 					       sizeof(filter_type),
@@ -2330,12 +2328,12 @@ void hostif_sme_set_key(struct ks_wlan_private *priv, int type)
 
 	switch (type) {
 	case SME_SET_FLAG:
-		val = cpu_to_le32((uint32_t) (priv->reg.privacy_invoked));
+		val = cpu_to_le32((uint32_t)(priv->reg.privacy_invoked));
 		hostif_mib_set_request(priv, DOT11_PRIVACY_INVOKED,
 				       sizeof(val), MIB_VALUE_TYPE_BOOL, &val);
 		break;
 	case SME_SET_TXKEY:
-		val = cpu_to_le32((uint32_t) (priv->wpa.txkey));
+		val = cpu_to_le32((uint32_t)(priv->wpa.txkey));
 		hostif_mib_set_request(priv, DOT11_WEP_DEFAULT_KEY_ID,
 				       sizeof(val), MIB_VALUE_TYPE_INT, &val);
 		break;
@@ -2404,7 +2402,7 @@ void hostif_sme_set_pmksa(struct ks_wlan_private *priv)
 			i++;
 		}
 	}
-	pmkcache.size = cpu_to_le16((uint16_t) (priv->pmklist.size));
+	pmkcache.size = cpu_to_le16((uint16_t)(priv->pmklist.size));
 	hostif_mib_set_request(priv, LOCAL_PMK,
 			       sizeof(priv->pmklist.size) + (ETH_ALEN +
 							     IW_PMKID_LEN) *
@@ -2478,12 +2476,12 @@ void hostif_sme_execute(struct ks_wlan_private *priv, int event)
 		hostif_stop_request(priv);
 		break;
 	case SME_RTS_THRESHOLD_REQUEST:
-		val = cpu_to_le32((uint32_t) (priv->reg.rts));
+		val = cpu_to_le32((uint32_t)(priv->reg.rts));
 		hostif_mib_set_request(priv, DOT11_RTS_THRESHOLD,
 				       sizeof(val), MIB_VALUE_TYPE_INT, &val);
 		break;
 	case SME_FRAGMENTATION_THRESHOLD_REQUEST:
-		val = cpu_to_le32((uint32_t) (priv->reg.fragment));
+		val = cpu_to_le32((uint32_t)(priv->reg.fragment));
 		hostif_mib_set_request(priv, DOT11_FRAGMENTATION_THRESHOLD,
 				       sizeof(val), MIB_VALUE_TYPE_INT, &val);
 		break;
@@ -2560,7 +2558,7 @@ void hostif_sme_execute(struct ks_wlan_private *priv, int event)
 		hostif_sme_sleep_set(priv);
 		break;
 	case SME_SET_REGION:
-		val = cpu_to_le32((uint32_t) (priv->region));
+		val = cpu_to_le32((uint32_t)(priv->region));
 		hostif_mib_set_request(priv, LOCAL_REGION,
 				       sizeof(val), MIB_VALUE_TYPE_INT, &val);
 		break;
-- 
2.7.4


