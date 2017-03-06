X-GM-THRID: 6394467446448717824
X-Received: by 10.46.33.163 with SMTP id h35mr2947394lji.17.1488827971789;
        Mon, 06 Mar 2017 11:19:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.6.2 with SMTP id 2ls754505ljg.13.gmail; Mon, 06 Mar 2017
 11:19:31 -0800 (PST)
X-Received: by 10.25.79.23 with SMTP id d23mr2048967lfb.27.1488827971198;
        Mon, 06 Mar 2017 11:19:31 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id h198si89359wmg.1.2017.03.06.11.19.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:19:31 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id v190so15356161wme.3
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 11:19:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lPJM8J4aZ8VG5wbWntxLMwQg7/UaQSju+HJIcDz9QRE=;
        b=Cvuf121O4/IeC2WsX10cbBB7Abh8wqcWpuC9++q1Hj067pgcY3uHCd9XfUkowvJczx
         6Nb+hc9PF2Eoq9i13nbfQNpnA9DW9GDiuxIFPPblCCTNTD+mNRGxJUtUyZ/AwczK1mQS
         8MGm/cd4dJVje8i4Kk6gb3etZKcsO0BnvkIeILWazhof3AcIWdQvL6WY4pXdNRNC1hXO
         +pB8BqatpD+YF2nyz9p+5l1/9gy96ZaDwMZx/ZB2JUDFJnER35/d+dVybeiBOtwxkroH
         +zNPUS6f1sDB30YwAgh57dAtKB5GHEJ1LRZ3fgYz0LebM2iPelchPsS6bwas4wEmFvhd
         zywg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lPJM8J4aZ8VG5wbWntxLMwQg7/UaQSju+HJIcDz9QRE=;
        b=inUrrh72m1AIWE5u7x9IbuHpMqERif8pIezzBNyHRHZShG9Bpc55FIEsK9+ugAyGL5
         Sc/MPc+I7OGz6onOnKqfH7qPCKZlGhpXiVw8WoFhLxBCC3UdCpFzbdUnDsOBAj3K3bj/
         TkWbMkpswijeRaTmcaRgGGTcko0enE23B7arA1JWoQ9mjMAmAZwb5NHc7DSDJJShVFCC
         Bz1D3rbPtujJVE8dqINSmjGZbwHu1REAl4ktBuunobh/jV5/dvw93BJJytB5kTo7+1Lq
         1ivS8DRF5tRINmd9DnQ1p61y5+FND/8XB4m3W8q3oAUl663keR48MR2NUOzvpnyzYh6E
         XP4A==
X-Gm-Message-State: AMke39n67G3vAbbDE0EG4+Rb6rxt9JUJrU9RchCOb9rbSARerPxbK1nzjWMOtXmH290eLQ==
X-Received: by 10.28.9.213 with SMTP id 204mr15535116wmj.89.1488827970997;
        Mon, 06 Mar 2017 11:19:30 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id m188sm16004944wma.27.2017.03.06.11.19.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 11:19:30 -0800 (PST)
Date: Mon, 6 Mar 2017 21:19:29 +0200
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging:rtl8192e: Indent the code
Message-ID: <20170306191929.GA5046@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Indent the code in order to follow the rules and to
increase the readability of the code.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_wx.c                   | 6 +++---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c      | 2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index b1500ee..48109f6 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -668,11 +668,11 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
 	if (ieee->set_security)
 		ieee->set_security(ieee->dev, &sec);
 
-	 if (ieee->reset_on_keychange &&
+	if (ieee->reset_on_keychange &&
 	    ieee->iw_mode != IW_MODE_INFRA &&
 	    ieee->reset_port && ieee->reset_port(dev)) {
-		netdev_dbg(ieee->dev, "Port reset failed\n");
-		return -EINVAL;
+			netdev_dbg(ieee->dev, "Port reset failed\n");
+			return -EINVAL;
 	}
 	return ret;
 }
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
index 1bff0e9..14f3d9c 100644
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


