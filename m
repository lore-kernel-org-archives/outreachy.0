X-GM-THRID: 6808532332710985728
X-Received: by 2002:a2e:8911:: with SMTP id d17mr5564878lji.16.1585234973042;
        Thu, 26 Mar 2020 08:02:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7017:: with SMTP id l23ls1629443ljc.9.gmail; Thu, 26 Mar
 2020 08:02:51 -0700 (PDT)
X-Google-Smtp-Source: APiQypKJcjC/vaKfcbHLydswO84nkzp8xsEeKpL+dJBjwcVwMhYTK1jDryLknwfnbzDO9zT/Ifyi
X-Received: by 2002:a2e:81cf:: with SMTP id s15mr5517299ljg.87.1585234971233;
        Thu, 26 Mar 2020 08:02:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585234971; cv=none;
        d=google.com; s=arc-20160816;
        b=mkFKat13BsWeGz2cJ/griQ4kp9ZWC4TE7cYIVStVpJG/Sf8puuAA8xbMm+5jUT9r+q
         z1RrffKwr4B/wnAoHgPY+8jwDs0Vb+6/g8+VtJ2yW1tAtfW5ZXWg2kZMLNTH139hqxOq
         DaJwr9zJVAOOZmW1rOokTMZkgXe7c7AB4GhhbcFg4cSBPndDYMbEsWFFX25xarGN7x3H
         cC59Qz6kv6mzuqc/XEMxLSZULj5mJobg+9CoeTl055+MgMAaZpGOU6KzI0X/aDFctTY2
         qXc8R9SXfx9iOjuk0sytRL+Zw64H3SMk3R/5uuysVHjYgMQqvtHWGlqxWCWioIkMOc5b
         xfeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=B3bIDCxlEkUDJ83htCSIJuiCE7A4cZFUo0rRKp08usU=;
        b=allNmicKxv6osRas90QYw5sy3aU0gH0b6UjSPOjtL/c/f67T2ml7Is2BRejF7+4Hfc
         yTrnthGXyjxCFFpThAd+Z6ThFWsNDuNUGnbXCn9Ua1cinXW0M1HopyaQYsMr28AsJ7VG
         AFT4aPCEywIejU3FSqtBE/fjDFFzjlSeW4ThX7AQ3gKkIYey5YCxbme35yL05HuhsW00
         IBqcUsJ5szKDKB5EuVbh4ff/YvCDRrikn11XkBZCrJ2eLuyBtQGEPCo4uemjCMkwuhEx
         59stoqzaet1/MYYvEno495NsGSSZms6tyxDMzdnM5eICUjGyK0CfkKpwr9tnGPtKyt/F
         L2kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qws0Vj7f;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s22si115258ljp.0.2020.03.26.08.02.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 08:02:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qws0Vj7f;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id a25so8259823wrd.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 08:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B3bIDCxlEkUDJ83htCSIJuiCE7A4cZFUo0rRKp08usU=;
        b=qws0Vj7fDL8RtxQiKxiZEThKwr+mPr8C7lSSCfNpx/K4LSWjgPP0y3zERFllJZXUOT
         hJIyKq0e+NeZeAJE/ZwPTyU7mj0eW5cApaTON4cxWuCmVu3qVMM+5+m2x5cvM1xCvIz9
         o0aRdHRzrfWJ0aVB+eq7+K1quj/02gh3ejbtVqF52ptu3/7G6u4IU8z/QUdg4AHKHMb2
         r4sLI9WYr0CVtFqhWgPjquygmxe9/TcDjW7KiB7fm7QvM3APv42uYnyidDAlDV5IyEYD
         1vRWfK5efnaCo8o1bE1t6ES/4/UED6YuVmOtY5XhJwfn9qIrEq4apXMSlYhPXXhGjmDh
         1DlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B3bIDCxlEkUDJ83htCSIJuiCE7A4cZFUo0rRKp08usU=;
        b=qnOwc4OM4DbiYepJqcBeh5tARw7bhhUhpRvmUaiTt7iBoZiXe1nhJBnG7pxdXFMF1z
         Lfy/OqPAM5HmPrnEWbl6ArFo57TJU3IcL18S09ISCR4HttLd3wz1vVoyTDLCU31gdhZu
         aln93pThXQnfYnoz7LdLfbX63CbIO7FSngtQHg+94tGzuPhixhzfvEWTCE5kyuilihNW
         qxUfzxCdEA37+Q8mV6uad7znaiQL39/5B0nbZxhaY0F3nNcsFwYD/lKpl8Po5568RDYh
         /JDx/TA9EZJvpR7WsYas5UAUUP1usiPEppXI+no9/2caiomtTmzjK+v0gUF6y3Xkmh1Q
         MC7Q==
X-Gm-Message-State: ANhLgQ1Vbfcdn6SUakuCp1sesjPeD2bqT76i3jKZM8Xv4N2ADfSQRUGU
	RxGZMwsPHze20f0byiUQiusHI+hmXqQ=
X-Received: by 2002:adf:ce0d:: with SMTP id p13mr9603732wrn.8.1585234970121;
        Thu, 26 Mar 2020 08:02:50 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.98.179])
        by smtp.gmail.com with ESMTPSA id b202sm4043634wmd.15.2020.03.26.08.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 08:02:49 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 3/4] Staging: rtl8192u: ieee80211: Use netdev_info() with network devices.
Date: Thu, 26 Mar 2020 11:02:37 -0400
Message-Id: <ce20980cc1947255b8a2de3c1f1364c11c163b9e.1585233434.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585233434.git.jane.pnx9@gmail.com>
References: <cover.1585233434.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

netdev_info() should be used instead of printk(KERN_INFO ...)
since it's specific to and preferable for printing messages
for network devices.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 .../rtl8192u/ieee80211/ieee80211_softmac.c    | 28 +++++++++++--------
 .../rtl8192u/ieee80211/ieee80211_softmac_wx.c |  4 +--
 .../staging/rtl8192u/ieee80211/ieee80211_tx.c |  4 +--
 3 files changed, 20 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 90692db81b71..1e79bc771fce 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -1270,14 +1270,15 @@ static void ieee80211_associate_step2(struct ieee80211_device *ieee)
 static void ieee80211_associate_complete_wq(struct work_struct *work)
 {
 	struct ieee80211_device *ieee = container_of(work, struct ieee80211_device, associate_complete_wq);
-	printk(KERN_INFO "Associated successfully\n");
+
+	netdev_info(ieee->dev, "Associated successfully\n");
 	if (ieee80211_is_54g(&ieee->current_network) &&
 	    (ieee->modulation & IEEE80211_OFDM_MODULATION)) {
 		ieee->rate = 108;
-		printk(KERN_INFO"Using G rates:%d\n", ieee->rate);
+		netdev_info(ieee->dev, "Using G rates:%d\n", ieee->rate);
 	} else {
 		ieee->rate = 22;
-		printk(KERN_INFO"Using B rates:%d\n", ieee->rate);
+		netdev_info(ieee->dev, "Using B rates:%d\n", ieee->rate);
 	}
 	if (ieee->pHTInfo->bCurrentHTSupport && ieee->pHTInfo->bEnableHT) {
 		printk("Successfully associated, ht enabled\n");
@@ -1391,12 +1392,13 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee

 			strncpy(ieee->current_network.ssid, tmp_ssid, IW_ESSID_MAX_SIZE);
 			ieee->current_network.ssid_len = tmp_ssid_len;
-			printk(KERN_INFO"Linking with %s,channel:%d, qos:%d, myHT:%d, networkHT:%d\n",
-			       ieee->current_network.ssid,
-			       ieee->current_network.channel,
-			       ieee->current_network.qos_data.supported,
-			       ieee->pHTInfo->bEnableHT,
-			       ieee->current_network.bssht.bdSupportHT);
+			netdev_info(ieee->dev,
+				    "Linking with %s,channel:%d, qos:%d, myHT:%d, networkHT:%d\n",
+				    ieee->current_network.ssid,
+				    ieee->current_network.channel,
+				    ieee->current_network.qos_data.supported,
+				    ieee->pHTInfo->bEnableHT,
+				    ieee->current_network.bssht.bdSupportHT);

 			//ieee->pHTInfo->IOTAction = 0;
 			HTResetIOTSetting(ieee->pHTInfo);
@@ -1421,11 +1423,13 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
 				    (ieee->modulation & IEEE80211_OFDM_MODULATION)) {
 					ieee->rate = 108;
 					ieee->SetWirelessMode(ieee->dev, IEEE_G);
-					printk(KERN_INFO"Using G rates\n");
+					netdev_info(ieee->dev,
+						    "Using G rates\n");
 				} else {
 					ieee->rate = 22;
 					ieee->SetWirelessMode(ieee->dev, IEEE_B);
-					printk(KERN_INFO"Using B rates\n");
+					netdev_info(ieee->dev,
+						    "Using B rates\n");
 				}
 				memset(ieee->dot11HTOperationalRateSet, 0, 16);
 				//HTSetConnectBwMode(ieee, HT_CHANNEL_WIDTH_20, HT_EXTCHNL_OFFSET_NO_EXT);
@@ -1622,7 +1626,7 @@ ieee80211_rx_assoc_rq(struct ieee80211_device *ieee, struct sk_buff *skb)
 	if (assoc_rq_parse(skb, dest) != -1)
 		ieee80211_resp_to_assoc_rq(ieee, dest);

-	printk(KERN_INFO"New client associated: %pM\n", dest);
+	netdev_info(ieee->dev, "New client associated: %pM\n", dest);
 	//FIXME
 }

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
index b1baaa18b129..f434a26cdb2f 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
@@ -459,8 +459,8 @@ int ieee80211_wx_set_rawtx(struct ieee80211_device *ieee,
 	else
 		ieee->raw_tx = 0;

-	printk(KERN_INFO"raw TX is %s\n",
-	      ieee->raw_tx ? "enabled" : "disabled");
+	netdev_info(ieee->dev, "raw TX is %s\n",
+		    ieee->raw_tx ? "enabled" : "disabled");

 	if (ieee->iw_mode == IW_MODE_MONITOR) {
 		if (prev == 0 && ieee->raw_tx) {
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 44684b7fae72..0ee054d82832 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -203,8 +203,8 @@ int ieee80211_encrypt_fragment(

 	atomic_dec(&crypt->refcnt);
 	if (res < 0) {
-		printk(KERN_INFO "%s: Encryption failed: len=%d.\n",
-		       ieee->dev->name, frag->len);
+		netdev_info(ieee->dev, "Encryption failed: len=%d.\n",
+			    frag->len);
 		ieee->ieee_stats.tx_discards++;
 		return -1;
 	}
---
2.20.1


