X-GM-THRID: 6529360493201588224
X-Received: by 10.157.31.14 with SMTP id x14mr7516249otd.29.1520235206419;
        Sun, 04 Mar 2018 23:33:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.198.6 with SMTP id w6ls1705247oif.22.gmail; Sun, 04 Mar
 2018 23:33:25 -0800 (PST)
X-Google-Smtp-Source: AG47ELs+lYrxhLwSRWWs5NbL/Bb2waN/G/nFX3se5fOk0iqi30vMs3u5vRvn9oFMi2YEYj6FKhds
X-Received: by 10.202.57.7 with SMTP id g7mr6615568oia.15.1520235205591;
        Sun, 04 Mar 2018 23:33:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520235205; cv=none;
        d=google.com; s=arc-20160816;
        b=j0RxavAY3OoCUWbLz5+8JRhHuzIa8iobb9tBF224HlrLRqbyRMnn43BmOmXyC+4PIu
         xjwKvqF+QYWHCY0Ov9DnGiQiEVa7a3s2D/GeKZ8ciMA+yBYMC6/ZNfqnm4aqOv4BS8nQ
         h1PyGEPR3k3fD4LVrshqmhV45zj/ZWeCesmGsrRAdArksuL1oA/4gFTkSrtodvaox3dE
         9kxbOcChMmI9yeGwP1Vnp9EmZBm67Bb3o9Ac9O5tF6ZahHHgFMPNw6S8cYjvQIfu9/8t
         CzcO5rzH93j8P1r06aHcFtpScebiVouuHUKLeSyoJl/2UWUHI4fv694hZpvpaB1njhQt
         92mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=KqFPgL951ulUrbax3HEmIgtMXHGZaXJwBsYua/b27e4=;
        b=UfSEjHS0bfP+7NDi4qc4PnGbDn+ycXbXOh6GaZqoly739mKtnV1sTXNjdAQrHUEBvY
         B7FuE4FZ3AQormg7X1Lfmsa2twBJIJyTn3reqzXi0ik/TWcdal+E6shQCJYiQmMbghwz
         I4AdQD52ec01LCvbfOGGJ8fqCpL7vds80PCpChzEGUeRcTJ1QJDAOD0FChI9zTt8ffni
         8NOpQl4t0cKafteohzsBZzc43Izubiz5C8C1mLfFecOXKd6VSBVzL8bZSTV7YPO0lwe1
         NgLeBEu9yz4P3YQd4F1t5UoCxXE7mIlFEq49GaQJSU/ZSUNP0QKH3zQ2X/7uSV4JguG/
         +2fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+75hort;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::22d as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x22d.google.com (mail-pg0-x22d.google.com. [2607:f8b0:400e:c05::22d])
        by gmr-mx.google.com with ESMTPS id x2si808518oia.5.2018.03.04.23.33.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 23:33:25 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::22d as permitted sender) client-ip=2607:f8b0:400e:c05::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+75hort;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::22d as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22d.google.com with SMTP id i133so6494811pgc.12
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 23:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KqFPgL951ulUrbax3HEmIgtMXHGZaXJwBsYua/b27e4=;
        b=T+75hortb832ZWYu28wcYZ2lg0Qz2+rBogW6gW/VePEy0evHMvj23qpsTuOfoOHPV0
         x29nmENSuVDZCdcxlp/3sJFKsKU7H+PxrpPMqxgv7SNS2wof+Cd6KAY2aL8I0mev8bUp
         vou9GaCBGUjyYDJBZ46POPoVISekuE77lCFkg1T04XEBjErGzur5qoLJ8wYuHKO9FsYF
         hArpSQq+SXXWbh7S7LMQa72F0je5MTiuRPWvms3plauAx2npfP5RsF19VcNJz4LD0o+6
         N83YQ1WPIVniA3aQAdutvpOLebJnITfi5aLyS1egpZ1iOCrhXJrXhnlSn9u3dCiL2KDg
         aG7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KqFPgL951ulUrbax3HEmIgtMXHGZaXJwBsYua/b27e4=;
        b=hqx89Cex7nRIPMkJo0r0i9xRLBWwdrf1DXTqhUpDDMbtmMcAptah7z9F9nhPo/eKJ9
         wFNiU6yNinZEeXYcEjRkJQRvBpqji7I+VmNgWnWIi8yU7PiNBWAPn91nX2HDxvDOKGqS
         x1+pkBlzK7P5iG0JFJD1/2u9x1Jfwu+yFy2BrbtE+6a2OB61IAz6od4m3FSTWhp49nxl
         8Wka8oW2eBGzB9XDWv0A6qUFd4otH2brQ8mtOvsXQfhBlLiZacdQdRm3vXmwc6xKugoa
         e5g+FzwFFhJDbZyoH9fISeVGAkZrnj4BNoiI48l+zWsqYSGY0U8sWXf++VeqrJRBMXlO
         ZuKg==
X-Gm-Message-State: APf1xPDCjYlDaZVi56ubA13cRb58Y50eaSBbDvAfYOSeEkfDNK3r16R1
	vYq17Rn97pfHnSlieOSnDLrOFw==
X-Received: by 10.101.89.6 with SMTP id f6mr11563361pgu.22.1520235204602;
        Sun, 04 Mar 2018 23:33:24 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u10sm21523456pfh.57.2018.03.04.23.33.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 23:33:23 -0800 (PST)
Date: Mon, 5 Mar 2018 13:02:56 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8192u: Replace printk() with appropriate
 net_*macro_ratelimited()
Message-ID: <20180305073256.GA4347@seema-Inspiron-15-3567>
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
changes in v2
*change the subject line, in v1 driver name was wrong.

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


