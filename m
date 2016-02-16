X-GM-THRID: 6251650339458514944
X-Received: by 10.112.135.234 with SMTP id pv10mr2871956lbb.24.1455662195572;
        Tue, 16 Feb 2016 14:36:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.21 with SMTP id v21ls889494wmv.32.canary; Tue, 16 Feb
 2016 14:36:35 -0800 (PST)
X-Received: by 10.194.24.233 with SMTP id x9mr2694840wjf.0.1455662195169;
        Tue, 16 Feb 2016 14:36:35 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id w197si1951wmw.3.2016.02.16.14.36.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 14:36:35 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22c.google.com with SMTP id g62so2182719wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 14:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=JwI4D1W2pL/ubiBdzIq1yGzneY5pPhO36AnHG1xYRP0=;
        b=WZibJUXnqqmeaAswDx7E3C0KiJjk2L9lNvGDlfVHDwibHZvC7d9gJzmv7L2GeSgPbh
         pqt4onmwTMxQm0OubWdTh4oMzdX9YVivW4KTe36NP0+7XWF/la4ySrc+SKojj2hkTZMX
         eqxiNH70Q3KfF+7uv8i2rQUoO/lJ+o6R1V4N90ndqLBYAbEmEH81wIXHq9v4IWSXOD0U
         ZHMStGGGucoiORdZxt3XzHzSj1uVlhD6FqfrR0FV+j2ME82zhSnR2aBvzNdpoqaEH2aU
         QjAqACwhJ5UOcqfqlUooj0HJ2KXVJ+7QGIhOaizeU08A8nZOhrlBuC8/n9IRUw6NXf1C
         qKMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=JwI4D1W2pL/ubiBdzIq1yGzneY5pPhO36AnHG1xYRP0=;
        b=kxF3e95/H4YfyQDQDft551JFREKzM0Yti/lyI4UDoh2FyRvwf2IeFO4f3ai7MK2K6k
         HEEfvS06gSQ3XVZcxMZlKUmUMIsc+2nKEi2Ug8QRYkGFeuOxk3wyf7fQnnMtOcoY9MOu
         tRHxeZToYFPdIlXnheyV5zqPUfgf+LtvPIVSy6ZjoKE8umwUqi0yJ8hLZHJtyhz42N/s
         Zr/2DsCqDvDHr/l0nxVa/2paYc4y3hUZqhLbsw4Ou60WVvD1YSn68BHIm7wWMy4tPrKc
         74cu4Fzy8UqoRfhR3kIjoMQmJXl2a2fX0GUFtyDRhAovXhW9Xd0NVDr2Pi6fUaIRl8LO
         GLJw==
X-Gm-Message-State: AG10YORO1of2dKPm4SgjgEJGTPTLnduCUJW/e8xU5PjQM3bhQLq6ICSnQf6XCQOvStzeOQ==
X-Received: by 10.28.188.138 with SMTP id m132mr21971126wmf.29.1455662195089;
        Tue, 16 Feb 2016 14:36:35 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id c136sm22392971wmd.3.2016.02.16.14.36.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 14:36:33 -0800 (PST)
Date: Tue, 16 Feb 2016 23:36:31 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/7] staging: netlogic: Remove blank spaces after a cast
Message-ID: <d3ee83a0b5ee4adb0b7ba37995c1809284532197.1455661648.git.nevola@gmail.com>
References: <cover.1455661648.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455661648.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove uneeded blank spaces after a cast. Checkpatch found these issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
v2: Include parentheses for pointers, as Julia suggested

 drivers/staging/netlogic/xlr_net.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 59fbaba..b89e3cb 100644
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
+		skb = (struct sk_buff *)(*)(unsigned long *)addr;
 		dev_kfree_skb_any((struct sk_buff *)addr);
 	} else {
 		addr = (unsigned char *)
@@ -144,7 +144,7 @@ static void xlr_net_fmn_handler(int bkt, int src_stnid, int size, int code,
 		length = length - BYTE_OFFSET - MAC_CRC_LEN;
 		port = ((int)msg->msg0) & 0x0f;
 		addr = addr - MAC_SKB_BACK_PTR_SIZE;
-		skb = (struct sk_buff *) *(unsigned long *)addr;
+		skb = (struct sk_buff *)(*)(unsigned long *)addr;
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


