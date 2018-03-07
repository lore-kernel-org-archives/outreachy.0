X-GM-THRID: 6530150669896122368
X-Received: by 10.99.110.133 with SMTP id j127mr4337490pgc.29.1520419183162;
        Wed, 07 Mar 2018 02:39:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.114.3 with SMTP id n3ls336302pgc.11.gmail; Wed, 07 Mar 2018
 02:39:41 -0800 (PST)
X-Google-Smtp-Source: AG47ELvRMMYbyaflppql7sWVB1BW/srlXXFwrjqKMKX+Q8o0/xNLCGhtE9iKAEf41f9lQfahdyrX
X-Received: by 10.99.119.135 with SMTP id s129mr4337722pgc.143.1520419181918;
        Wed, 07 Mar 2018 02:39:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520419181; cv=none;
        d=google.com; s=arc-20160816;
        b=sIgfpprTGkY4jHIyxf8gzY1Ej2i60Vfqy+vkh6z0KrIz3km8imWeXXkqelqQ66rKmM
         6tSbkE/+NiM/nCWIPtELoGBZ3KAoTlKjxFM/M/Kg0fglx7DYyVLOITpaW/m32mDAsuvb
         9YpkQN5nKY4Yn9EwdOxZbMWiZpUoqLj8Z2A30HwsNcpdWu2M8CwIsvup4ph/gzbPdxG+
         XkPMNGY/ySsbMjOulXlW2W0apERpQKncJ5QYD8MHfe8ceRH+s9AW92oYYb9iH4UVnGeg
         ZNJuCaclQ0g0mXboMQil/o6vnr1DoMiZ7yz+UqLVHrr0WU7s3qV56v+vf2tmQApLwr4l
         yEfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=sjRkNOE1Pl4vxp86cnAZdceo6eL00Be/53iAKIT0JLs=;
        b=HudoLnKqBSz4YkqoDvpLW+ddtKfhPiC3Ku8AkNisNu+dWppil3hDOfuBovaAV7vO/g
         d3NYRUwUZGDWmvHlvA7ohjKYZe5VWzYYPJuFA2y9NUbTJtlz5a/xlHL/f53YYzYxLE/E
         dCBIDZ4xD+OvzOsxIsoksmveseN/IZN/ro2FtrJvpssvcaDOe4WupSlYcafi3XZzEORw
         9pYlT3uVFtDLbxSMqFxz9LOFKqpavfvmpJ6rVSSw5cyW9jOKu6Wo5ltaVkyZZPtSoBjj
         OpPOwYBf32gqXayikt+Dml+2oAma77/I7viUlWtHyKzAFLlz3ulPS56NT+2Od5gPzRBL
         tOEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KeES6dJX;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x243.google.com (mail-pl0-x243.google.com. [2607:f8b0:400e:c01::243])
        by gmr-mx.google.com with ESMTPS id f78si108602pfa.5.2018.03.07.02.39.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Mar 2018 02:39:41 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) client-ip=2607:f8b0:400e:c01::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KeES6dJX;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x243.google.com with SMTP id m22-v6so1079353pls.5
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Mar 2018 02:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sjRkNOE1Pl4vxp86cnAZdceo6eL00Be/53iAKIT0JLs=;
        b=KeES6dJXnvpdmSaH101bZA+gJlJxSFFUwfrkMkjonxHgTtyHsV38Mc31xC6cHNNNZ9
         n20UpcStuvqnqN6I3F3izPDQRQf92H27K78MdKC9hj1cGwHGcOnaNqHxAZS03EKByXhi
         8JlTDdI0NKyDs9xGFCEKrtNAY0Mn8WUWKNJtQ4vaoivcYKEttppWb7G5Q/nmUUEaZNO/
         8a1bzSSrPpABAh+nyh57R7Dl/xydBpp43pBWBjRTUFbDOTqSQTtWLIzlPIxwoeL58yxL
         OwWjEqtfJv9UzuEhSfISBV0pTy/Gi+kJfB02kM1RJy7iWRi2KGFPsv9bLvC7poydXbMs
         8alg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sjRkNOE1Pl4vxp86cnAZdceo6eL00Be/53iAKIT0JLs=;
        b=MWlsrAXYgaGvr+p+Y2YRRo8ig11tYPEoxYOLJ7BtTSHFk83eJ86IAykmU2uSD3dNx5
         wwd5QELpa+ZyhpIHGfeUjPnodvSYZcnkKbOmZ9zM+egcbMnyfwp0llNHnraJEk7G5Mgv
         HN9OA0WILwNCYpkRceNtcL4rvIX1ZjERFM8JRGr1ZsyAP53lBpJmcL312oKRg8r0tP2r
         KVJfMs36cP0O7N6IKei677iD3dzQhD/xLZpkxbZ7kGHACA735uhtHP0EsOX/ly0faV3F
         NG8rH1+3SN7LQB25nBVOp+O6WZ48TEXoMZJgEv/K7lKb+pmj55fmhPbLjKuVEuOXYLhg
         OoIg==
X-Gm-Message-State: APf1xPDdO7x/1fSFUTGk1dlE1Z9n7uUml4IVPuiSkoXbbGAx8bJXlvnT
	8leHJfS2c7dMAFb2C34ys46Kpg==
X-Received: by 2002:a17:902:7044:: with SMTP id h4-v6mr19693176plt.378.1520419181033;
        Wed, 07 Mar 2018 02:39:41 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e23sm33387351pfi.76.2018.03.07.02.39.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Mar 2018 02:39:39 -0800 (PST)
Date: Wed, 7 Mar 2018 16:09:09 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: rtl8192u: Replace printk() with more standardize
 output format.
Message-ID: <20180307103908.GA19612@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

printk() is the raw way to print output and should be avoided.

For drivers with defined "struct device object", dev_*macro() is
prefer and for "struct netdevice object", netdev_*macro() is prefer over
dev_*macro() to standardize the output format within the subsystem.

If no "struct device object" is defined prefer pr_*macro() over printk().

This patch Replace printk having a log level with the appropriate output
format according to the order of preference.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
Changes in v3
*In version2 net_*macro_ratelimited was used which is not helping in
standardizing the output format.

Changes in v2
*change the subject line, driver name was wrong.

 .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c      | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index e6648f7..a4b4042 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -73,7 +73,7 @@ static void *ieee80211_ccmp_init(int key_idx)
 
 	priv->tfm = (void *)crypto_alloc_cipher("aes", 0, CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->tfm)) {
-		printk(KERN_DEBUG "ieee80211_crypt_ccmp: could not allocate crypto API aes\n");
+		pr_debug("ieee80211_crypt_ccmp: could not allocate crypto API aes\n");
 		priv->tfm = NULL;
 		goto fail;
 	}
@@ -276,22 +276,22 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	keyidx = pos[3];
 	if (!(keyidx & (1 << 5))) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "CCMP: received packet without ExtIV flag from %pM\n",
-				hdr->addr2);
+			netdev_dbg(skb->dev, "CCMP: received packet without ExtIV flag from %pM\n",
+				   hdr->addr2);
 		}
 		key->dot11RSNAStatsCCMPFormatErrors++;
 		return -2;
 	}
 	keyidx >>= 6;
 	if (key->key_idx != keyidx) {
-		printk(KERN_DEBUG "CCMP: RX tkey->key_idx=%d frame keyidx=%d priv=%p\n",
-			key->key_idx, keyidx, priv);
+		netdev_dbg(skb->dev, "CCMP: RX tkey->key_idx=%d frame keyidx=%d priv=%p\n",
+			   key->key_idx, keyidx, priv);
 		return -6;
 	}
 	if (!key->key_set) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "CCMP: received packet from %pM with keyid=%d that does not have a configured key\n",
-				hdr->addr2, keyidx);
+			netdev_dbg(skb->dev, "CCMP: received packet from %pM with keyid=%d that does not have a configured key\n",
+				   hdr->addr2, keyidx);
 		}
 		return -3;
 	}
@@ -306,8 +306,8 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 
 	if (memcmp(pn, key->rx_pn, CCMP_PN_LEN) <= 0) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "CCMP: replay detected: STA=%pM previous PN %pm received PN %pm\n",
-			       hdr->addr2, key->rx_pn, pn);
+			netdev_dbg(skb->dev, "CCMP: replay detected: STA=%pM previous PN %pm received PN %pm\n",
+				   hdr->addr2, key->rx_pn, pn);
 		}
 		key->dot11RSNAStatsCCMPReplays++;
 		return -4;
@@ -341,8 +341,8 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 
 		if (memcmp(mic, a, CCMP_MIC_LEN) != 0) {
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG "CCMP: decrypt failed: STA=%pM\n",
-					hdr->addr2);
+				netdev_dbg(skb->dev, "CCMP: decrypt failed: STA=%pM\n",
+					   hdr->addr2);
 			}
 			key->dot11RSNAStatsCCMPDecryptErrors++;
 			return -5;
-- 
2.7.4


