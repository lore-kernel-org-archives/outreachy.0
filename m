X-GM-THRID: 6394467446448717824
X-Received: by 10.46.87.27 with SMTP id l27mr551763ljb.28.1488925154245;
        Tue, 07 Mar 2017 14:19:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.70 with SMTP id x6ls201367ljd.21.gmail; Tue, 07 Mar 2017
 14:19:13 -0800 (PST)
X-Received: by 10.46.15.2 with SMTP id 2mr560622ljp.31.1488925153847;
        Tue, 07 Mar 2017 14:19:13 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id e72si498725wma.0.2017.03.07.14.19.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 14:19:13 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id u132so3269852wmg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 14:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8K8082pUaMn7Tqu/SpvPcnL7ok3IZK2wBB+D066fZeo=;
        b=gep5G2Bqe4Fl86uHZUCazNYGdx2mPIv850ABtOiGQWlON28l/QJpOa+BDFC83OU7OS
         JzWgu5VwHb0nWlIpzWoBwdqWr1OxWYMvlhyfZvbcPpoDL04qxe+PxEiwQ87/2Kmto7UE
         r4rImIrK0C54VId0J68pg/smM/sAvBFxY5sApmgpOQUax6Om9YWIkX2pm/BT+2qRMmk6
         TWKIXKdq5ZXxLyc1WhNJHsEAeHHRfFUJPRiPvElW4IoP7huC4OgIuce1f5SJR/N9aqW7
         8p5DEEOjZUiNsVI9uursaZpmhPaqr1fVkGcBF9u6mi6Kwd819SQNRswusUEl0jQRiggi
         7esg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8K8082pUaMn7Tqu/SpvPcnL7ok3IZK2wBB+D066fZeo=;
        b=mimcSn+1d7jGKBwdbZi5AK5uGsdZXRrD6g7lDxdBLWamgU7S+ZcjomN4slmIJVckRV
         uHqHFM8ADlEYk7RR111W2WFwH+jR7i4rcNwO5J69cXVUPbc1cksnlnnd6Fd/qdmLp8gB
         EwCbWv9ejpUBfBmLcybqWn7RwDCfFJMxjo8gJWH4G48QQR5jrnzeuXx/o6Lqn32Lb4J0
         yWVlCH3V1fNh0PAj9x2WqONsvkUsjASGimMIMMNfdQs/l9we859vafKsWuZvWEuAFOCh
         7IsGwWj2FnzpGm2LBoQL3HWnW2GQTU3uTPjd4PksMHyfypPhRLVt/L8lUnafeTrGTxoF
         69gA==
X-Gm-Message-State: AMke39kpdOysZWsPZaL5W0+uy2hOYR6V3mqWPHtblWO0CruYpBUvQYI0C1nHXT6RjQ6glQ==
X-Received: by 10.28.144.209 with SMTP id s200mr21052670wmd.134.1488925153650;
        Tue, 07 Mar 2017 14:19:13 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id x193sm2147372wme.23.2017.03.07.14.19.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 14:19:12 -0800 (PST)
Date: Wed, 8 Mar 2017 00:19:11 +0200
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rtl8192e: Indent the code
Message-ID: <20170307221911.GA13565@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Indent the code in order to follow the rules and to
increase the readability of the code.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
Changes in v2:
	- remove extra indentation
	- add a space after each ":" in subject line

 drivers/staging/rtl8192e/rtllib_wx.c                   | 2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c      | 2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index b1500ee..1102135 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -668,7 +668,7 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
 	if (ieee->set_security)
 		ieee->set_security(ieee->dev, &sec);
 
-	 if (ieee->reset_on_keychange &&
+	if (ieee->reset_on_keychange &&
 	    ieee->iw_mode != IW_MODE_INFRA &&
 	    ieee->reset_port && ieee->reset_port(dev)) {
 		netdev_dbg(ieee->dev, "Port reset failed\n");
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index f0fba81..10ab2bf0 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -939,7 +939,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	if (HTCCheck(ieee, skb->data))
 	{
 		if(net_ratelimit())
-		printk("find HTCControl\n");
+			printk("find HTCControl\n");
 		hdrlen += 4;
 		rx_stats->bContainHTC = true;
 	}
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 0ea90aa..ccb1221 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -466,7 +466,7 @@ void ieee80211_softmac_scan_syncro(struct ieee80211_device *ieee)
 			goto out;
 		ieee->set_chan(ieee->dev, ch);
 		if(channel_map[ch] == 1)
-		ieee80211_send_probe_requests(ieee);
+			ieee80211_send_probe_requests(ieee);
 
 		/* this prevent excessive time wait when we
 		 * need to wait for a syncro scan to end..
-- 
2.7.4


