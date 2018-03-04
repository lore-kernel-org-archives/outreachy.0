X-GM-THRID: 6529221119652659200
X-Received: by 10.129.62.36 with SMTP id l36mr6427425ywa.80.1520202755514;
        Sun, 04 Mar 2018 14:32:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.224.135 with SMTP id j129ls720634ywe.28.gmail; Sun, 04 Mar
 2018 14:32:34 -0800 (PST)
X-Google-Smtp-Source: AG47ELvJrD6ZWwYIl35lnbyroUP3keS4g51civ9ALmw5rlhOfKK0vWPEIixPEHZidVpsIa60i2nX
X-Received: by 10.129.117.196 with SMTP id q187mr5788912ywc.71.1520202754112;
        Sun, 04 Mar 2018 14:32:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520202754; cv=none;
        d=google.com; s=arc-20160816;
        b=pTq7473F3l3Kn69uBjaLy87ntZ48j2sTNOPG5KY+XmoSsoVEWwyztxH8CW0I9bAXB7
         LM42EuDvKA/w5rRxYLUwvT/SzCbHaKcIH00E5QPbYZipEgyaWUniHp82i4o8QpANCYSz
         YrAnXoCfkEjSbAZ6HJvmDdk01kKJJxO8a74fgx8olQlHUaGwR05AK8fXFY8IgD/eHwif
         7L53lky59weUVLftj/3VIlLfSzM1IYIEGYFdu1or/stZ/yPm71cOg1dj90bCvTSUm0tF
         /CP3C7eWPuOuq1xIUT7Nv8Bx9kbI4ZdBGv4Gnpejpy6n8kkaTfOpQ5NlRDBrgET8f1rW
         x5tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=0EcoSxr8uK10sfCdT02nbLujxOjN2G2Om1NhhJW+u8k=;
        b=p9KCPSyou/bvNjaByKg7rJwn2adMkKhGs8pxJkg6zwbVwGCyBzimGzWYZHC2DgFKjC
         tpGqJgClI4DqtLxKP12e05rTyi3vFOndGUOYy+A/cZJ1bUyXd60blmn1e7obS0mExYIm
         HLbHAj/qkznJs5vI1jakRcTNN22p1+wL8LLngWY6QEgEMLz1qMOn+mjbXYCBKyY43kRD
         0C3SFg/2fRgwSnfvi9YPLGAvM/sn9Y2poQGj1WUuGCZn86w7IFSbaLYgd+g+NTsS/lub
         QR+9qU5HE7kbEhYCpJU+VP5hMRi5GpOo+3B5UyXQh4XR5aXfMJOrE1qbPmjc0jRlkUKW
         A9pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o4Vtwff1;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id q128si681086ywc.4.2018.03.04.14.32.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 14:32:34 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o4Vtwff1;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id r26so6068444pgv.13
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 14:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0EcoSxr8uK10sfCdT02nbLujxOjN2G2Om1NhhJW+u8k=;
        b=o4Vtwff1nzTX05I70h5vv9diXafCjZ8cV4L6b70W41Dcl+zZIa818EnjEOXSnmzatQ
         EWPh+ZrpM4Yu6iWsOIQYp++UZG4035+orIG+awirlYHGaIt40DooY/QPPLg5HjluLaiT
         JgFU5ZlipqZ9VvaRwdzzK+vlXjDMWA5QSUx2wSAHjZzPwG40rLUEm1T1zl1BcpHV7h35
         WdE/a0s4/IHkcWeTEgqXKOFF2apg2zb6i4NEMv7eOnonx6Ye0zsq8AH9+DnD9FvrNKQ1
         Uq7DuJ78r/RKpWX5tnXtM4oqE4KWU7hyPvbe+w5t8TnRJixMKY5iZke6qHOHUmkG7s7f
         ei5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0EcoSxr8uK10sfCdT02nbLujxOjN2G2Om1NhhJW+u8k=;
        b=IYYlhtSWt8V96nR16Hh71NY4h6iWupYFkeSkhiWb4Gt14uQ+E7eayP9MFn8GEusFXi
         jFOQL4aBH1YBFMMSRa0BQzXGcYmLZ1at2JU7pCXx77moDRqrP1z48vgxTx3wMs56lD8R
         sPw/MoQJi6cC81fy8TLGSP7cGYgGPBcH2iuegz47K80eiCUxTQVYdxNdN4AI5VeAgyjh
         XeMUvoDcS5ecVSXOAaXivgpeccMcZMikJbE6ntHFlib0tnyCd6zvnUT2JLuAeBuLVEfg
         JjtqDNB9tXgr0qAJb58VbZmm2sOxTwHtNkNX7UwVfoDXQcsjMRKTX+TaHvwQv94Wp2T8
         oVRg==
X-Gm-Message-State: APf1xPCZpQW+OpmNmMHZMNceBntTvQuCrv7K3XMrg2VPcBn7y188Mx07
	4KYTVn6h16aHoS964r7G8swyGQ==
X-Received: by 10.167.130.193 with SMTP id f1mr12998428pfn.241.1520202752953;
        Sun, 04 Mar 2018 14:32:32 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 205sm21326295pfy.117.2018.03.04.14.32.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 14:32:31 -0800 (PST)
Date: Mon, 5 Mar 2018 04:02:06 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: irda: Replace printk() with appropriate
 net_*macro_ratelimited()
Message-ID: <20180304223205.GA31416@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace printk having a log level with the appropriate
net_*macro_ratelimited.
It's better to use actual device name as a prefix in error messages.
Indentation is also changed, to fix the  checkpatch issue if line is not
exceding 80 characters.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c      | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index e6648f7..200fe5f 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -73,7 +73,7 @@ static void *ieee80211_ccmp_init(int key_idx)
 
 	priv->tfm = (void *)crypto_alloc_cipher("aes", 0, CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->tfm)) {
-		printk(KERN_DEBUG "ieee80211_crypt_ccmp: could not allocate crypto API aes\n");
+		net_dbg_ratelimited("ieee80211_crypt_ccmp: could not allocate crypto API aes\n");
 		priv->tfm = NULL;
 		goto fail;
 	}
@@ -276,22 +276,22 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	keyidx = pos[3];
 	if (!(keyidx & (1 << 5))) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "CCMP: received packet without ExtIV flag from %pM\n",
-				hdr->addr2);
+			net_dbg_ratelimited("CCMP: received packet without ExtIV flag from %pM\n",
+					    hdr->addr2);
 		}
 		key->dot11RSNAStatsCCMPFormatErrors++;
 		return -2;
 	}
 	keyidx >>= 6;
 	if (key->key_idx != keyidx) {
-		printk(KERN_DEBUG "CCMP: RX tkey->key_idx=%d frame keyidx=%d priv=%p\n",
-			key->key_idx, keyidx, priv);
+		net_dbg_ratelimited("CCMP: RX tkey->key_idx=%d frame keyidx=%d priv=%p\n",
+				    key->key_idx, keyidx, priv);
 		return -6;
 	}
 	if (!key->key_set) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "CCMP: received packet from %pM with keyid=%d that does not have a configured key\n",
-				hdr->addr2, keyidx);
+			net_dbg_ratelimited("CCMP: received packet from %pM with keyid=%d that does not have a configured key\n",
+					    hdr->addr2, keyidx);
 		}
 		return -3;
 	}
@@ -306,8 +306,8 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 
 	if (memcmp(pn, key->rx_pn, CCMP_PN_LEN) <= 0) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "CCMP: replay detected: STA=%pM previous PN %pm received PN %pm\n",
-			       hdr->addr2, key->rx_pn, pn);
+			net_dbg_ratelimited("CCMP: replay detected: STA=%pM previous PN %pm received PN %pm\n",
+					    hdr->addr2, key->rx_pn, pn);
 		}
 		key->dot11RSNAStatsCCMPReplays++;
 		return -4;
@@ -341,8 +341,8 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 
 		if (memcmp(mic, a, CCMP_MIC_LEN) != 0) {
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG "CCMP: decrypt failed: STA=%pM\n",
-					hdr->addr2);
+				net_dbg_ratelimited("CCMP: decrypt failed: STA=%pM\n",
+						    hdr->addr2);
 			}
 			key->dot11RSNAStatsCCMPDecryptErrors++;
 			return -5;
-- 
2.7.4


