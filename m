X-GM-THRID: 6251650339458514944
X-Received: by 10.25.22.154 with SMTP id 26mr51911lfw.3.1455698857684;
        Wed, 17 Feb 2016 00:47:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.64.134 with SMTP id n128ls945130wma.37.gmail; Wed, 17 Feb
 2016 00:47:37 -0800 (PST)
X-Received: by 10.28.158.216 with SMTP id h207mr199254wme.4.1455698857277;
        Wed, 17 Feb 2016 00:47:37 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id e130si927065wme.2.2016.02.17.00.47.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 00:47:37 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id b205so145032444wmb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 00:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=rhKTjA3SKlV089BabUKUq3YQMU6KfNaYRHNRiwezIc4=;
        b=wpOy3UH3HtvM3/xRaxAgQKsxttaRPEfJ4hTre18K93RKvR/Cgz69wTR0FGIlY4Ejye
         BvFz519JI1kSdluUdkJEH5gJ4bIcO5lmmT8wWDYtS//5Tpv/M0JPL5Ts1p54JaFF1c7n
         FrciEcBjxbWc2mVbyL3fUpIHknJrWQ1fhzr8boeDvLucciIIHlWAulYlspYnlkr5n4zy
         VJAeFj1mRBGnHrTdSMClWeeq9nQvfLyWNJs+wzlpSVJghXNAL+ZWMxapJJPh9i7k8EgS
         f8/qmoKapwdbnytoUYPj9RLnzE/mEtx1scmNB9sTiHY/aOHcoBIcNZiXhGwRxhKm2cIb
         u8wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=rhKTjA3SKlV089BabUKUq3YQMU6KfNaYRHNRiwezIc4=;
        b=GDl8JrL4FF5wAOPqelTWfpMuORXoQSfVIg2aZgHpwJGwCJzBuDTc2CVEZLrw8JnnRA
         KYsxExNQp+IhpYWoD6MM50X/QIm4e8HUqApqdpVJeQaSEVVb4kTrgyI3ZuGaWqbLenmr
         Uu5XY/p7u9JYlxO9LVVrEcL5gefYvhLTv6J1Vd2La2a3isE5m0H2dwTpYIuwDLaHN83W
         RtpSg8rSZML8U3EDMTcKYvYYH/Rq4IaQn8/9kYwJnzEcDqjpBRT3L9ms1KbiCOjMQYBi
         BKJZ3hjkUA9+JUS+OGLJ3AeDGSOfLooTHxXOvTwfdTlcekb92Q9GuDyYbm7qYmkEFLA1
         PrUA==
X-Gm-Message-State: AG10YOQsON+zatBkG1EEeFxQkOhXv3+fmEIvMS1ZzIVHL8kg9w+RYfvH1ohAi7KnhjvHIA==
X-Received: by 10.194.58.234 with SMTP id u10mr452168wjq.174.1455698857142;
        Wed, 17 Feb 2016 00:47:37 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([195.235.183.164])
        by smtp.gmail.com with ESMTPSA id v2sm1938225wmd.24.2016.02.17.00.47.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 00:47:36 -0800 (PST)
Date: Wed, 17 Feb 2016 09:47:33 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/7] staging: netlogic: Remove blank spaces after a cast
Message-ID: <c9cbfdb6a1a03f8aa978217dbcb9fa08d74b2f06.1455698124.git.nevola@gmail.com>
References: <cover.1455698124.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455698124.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove uneeded blank spaces after a cast. Checkpatch found these issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
v2: Include parentheses for pointers, as Julia suggested
v3: Change parenthesis position, as Sudip suggested

 drivers/staging/netlogic/xlr_net.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 59fbaba..00b45761 100644
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
+		skb = (struct sk_buff *)(*(unsigned long *)addr);
 		dev_kfree_skb_any((struct sk_buff *)addr);
 	} else {
 		addr = (unsigned char *)
@@ -144,7 +144,7 @@ static void xlr_net_fmn_handler(int bkt, int src_stnid, int size, int code,
 		length = length - BYTE_OFFSET - MAC_CRC_LEN;
 		port = ((int)msg->msg0) & 0x0f;
 		addr = addr - MAC_SKB_BACK_PTR_SIZE;
-		skb = (struct sk_buff *) *(unsigned long *)addr;
+		skb = (struct sk_buff *)(*(unsigned long *)addr);
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


