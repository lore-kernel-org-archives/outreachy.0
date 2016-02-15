X-GM-THRID: 6251650339458514944
X-Received: by 10.112.205.164 with SMTP id lh4mr2102205lbc.6.1455575869205;
        Mon, 15 Feb 2016 14:37:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.21 with SMTP id v21ls663909wmv.32.canary; Mon, 15 Feb
 2016 14:37:48 -0800 (PST)
X-Received: by 10.28.6.14 with SMTP id 14mr1554401wmg.6.1455575868779;
        Mon, 15 Feb 2016 14:37:48 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id s141si925275wmd.1.2016.02.15.14.37.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 14:37:48 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id c200so17921297wme.0
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 14:37:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=X00CjquM3YF9VDVRw9SfTcNmQaJ2G0NGfAF2e069I5Y=;
        b=c7KffrGLvkucZl5Bh1w7XDExHsM8uHoKMBl8FmBH16089lvkqo4IFakOIZBZ6L9R9T
         8LJ9h2fK/hIaGNk9dJHgGLh8wIAtbGj7V24rmlHIgJCFDp8bC7fp8RJfIL4sY9JzhR96
         816nkpnlzFXbFL+cMKnkWtbGDfxanNHs108wyclHJTrkKcx7i80IytbmyKEBVuBNRlA9
         EftrFv6P55hMEPybxCcazJhzKBd34b2RmqXmRM10/u4qtd1W74X8kXMLRWRVM8j6awy7
         8WaBXAC2A75G9Z7MKAFDplngNw5UKBT6FaTPFJ85DOYFRAAdhwdpzH/2sEwgwzCIFtwu
         vLcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=X00CjquM3YF9VDVRw9SfTcNmQaJ2G0NGfAF2e069I5Y=;
        b=kg5jSVvdb9dR6DGg9gK3eFQMzR6LOkD7xZSN7Od5umaqOrjBvWb8/QOzR/YpNGOuhR
         /AS67K0RbVD7rrWpqhcUxayIk03j8WoAcoUd9lLMNQmJWZdaBb+o/Z0LgZRGZL6AVZco
         eUFfmPjybb6OYZFcacOEUJTS2lS3f26qGJUryPRUvAU6osL2ymdksi7Pl1gJ3vO3ZS5W
         6fkgnVJfMVth9s1B1TxU9YqahpZg6IQdgXrYImV7n0zT3VP6sPXfkBZciI/cQVabz/xZ
         byzRvWwkWFsi2+5khAnXcMUog7fOms8/6b0hRxbk32uIjtX3UBcP6x91tKW90UcQtQOb
         6vhg==
X-Gm-Message-State: AG10YOQnpN+SwocjeT83TnznNm5bBeMimH/txrRC/bRIhghs9OJOtJFmj7fJ+twYRYuXeg==
X-Received: by 10.28.126.205 with SMTP id z196mr14414573wmc.44.1455575868686;
        Mon, 15 Feb 2016 14:37:48 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id ka4sm27355170wjc.47.2016.02.15.14.37.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 14:37:47 -0800 (PST)
Date: Mon, 15 Feb 2016 23:37:45 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/7] staging: netlogic: Remove blank spaces after a cast
Message-ID: <f4a17902837b1e533f2155018c548a737df776c2.1455575263.git.nevola@gmail.com>
References: <cover.1455575263.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455575263.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove uneeded blank spaces after a cast. Checkpatch found these issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 59fbaba..b3f03b4 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -130,13 +130,13 @@ static void xlr_net_fmn_handler(int bkt, int src_stnid, int size, int code,
 	struct xlr_net_priv *priv;
 	u32 port, length;
 	unsigned char *addr;
-	struct xlr_adapter *adapter = (struct xlr_adapter *) arg;
+	struct xlr_adapter *adapter = (struct xlr_adapter *)arg;
 
 	length = (msg->msg0 >> 40) & 0x3fff;
 	if (length == 0) {
 		addr = bus_to_virt(msg->msg0 & 0xffffffffffULL);
 		addr = addr - MAC_SKB_BACK_PTR_SIZE;
-		skb = (struct sk_buff *) *(unsigned long *)addr;
+		skb = (struct sk_buff *)*(unsigned long *)addr;
 		dev_kfree_skb_any((struct sk_buff *)addr);
 	} else {
 		addr = (unsigned char *)
@@ -144,7 +144,7 @@ static void xlr_net_fmn_handler(int bkt, int src_stnid, int size, int code,
 		length = length - BYTE_OFFSET - MAC_CRC_LEN;
 		port = ((int)msg->msg0) & 0x0f;
 		addr = addr - MAC_SKB_BACK_PTR_SIZE;
-		skb = (struct sk_buff *) *(unsigned long *)addr;
+		skb = (struct sk_buff *)*(unsigned long *)addr;
 		skb->dev = adapter->netdev[port];
 		if (skb->dev == NULL)
 			return;
@@ -270,7 +270,7 @@ static void xlr_make_tx_desc(struct nlm_fmn_msg *msg, unsigned long addr,
 
 static void __maybe_unused xlr_wakeup_queue(unsigned long dev)
 {
-	struct net_device *ndev = (struct net_device *) dev;
+	struct net_device *ndev = (struct net_device *)dev;
 	struct xlr_net_priv *priv = netdev_priv(ndev);
 	struct phy_device *phydev = xlr_get_phydev(priv);
 
@@ -663,7 +663,7 @@ static int xlr_phy_write(u32 *base_addr, int phy_addr, int regnum, u16 val)
 	xlr_nae_wreg(base_addr, R_MII_MGMT_ADDRESS, (phy_addr << 8) | regnum);
 
 	/* Write the data which starts the write cycle */
-	xlr_nae_wreg(base_addr, R_MII_MGMT_WRITE_DATA, (u32) val);
+	xlr_nae_wreg(base_addr, R_MII_MGMT_WRITE_DATA, (u32)val);
 
 	/* poll for the read cycle to complete */
 	while (!timedout) {
-- 
2.7.0


