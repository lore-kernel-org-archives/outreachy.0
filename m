X-GM-THRID: 6253685194266509312
X-Received: by 10.129.130.71 with SMTP id s68mr21872895ywf.29.1456049548682;
        Sun, 21 Feb 2016 02:12:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.35 with SMTP id t35ls548753ioe.37.gmail; Sun, 21 Feb
 2016 02:12:28 -0800 (PST)
X-Received: by 10.50.61.100 with SMTP id o4mr6052042igr.10.1456049548353;
        Sun, 21 Feb 2016 02:12:28 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id 12si2549084pfb.1.2016.02.21.02.12.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 02:12:28 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id yy13so74800495pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 02:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ajcNPHP8q2k/Knq9s26NS0LAhT3aMVPWOrqfxxBp+A4=;
        b=QbWby08zhtMxhz9lQIBvb68kCcZuRXlAUu7kc3jZNe+duFP1rYsJiF5mWp5fAurPmG
         rYgI5fJykXI9xxaU0HQzDkt6Zv8E7TX+RX/yWQUmY9cUDe9u83vYBU9471pHfdFujNuW
         m6XrCJTPe4lz1oC6QOkJiBsiW+QLxY2wpZetCWigmq4HDVB/9/enN7FjOCVJ9bDn0gMr
         6j8CkLvAbOPVXorLf5gzXvAFtDsw8XyFDHBVD+baFsLi5cACBqBu7Z8GmpvNBR6QjM5n
         N9au52a4ESX4t3da+O+cRxbTWWPtLLbwZpee+CtrhUam5h4/0+y3frqdO6sOdytg6cvA
         5/UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ajcNPHP8q2k/Knq9s26NS0LAhT3aMVPWOrqfxxBp+A4=;
        b=cklc/1BugSkY+2ZtR+wcWXWL0lvhJ3PE7WbMWi5Ks/zQCd53974R3mJ+0WtDSNZTLW
         4rd5cyCBmua7pPLLuSqz0GjgxbC8D1CTLthV//WDbVG0gWUKkQMRlIGjOTmec4P0Vc48
         2jTqXrNTGzs2vhJwgEpnSMqj2Z5ZeqNrvkZmZenTinftiW6+Zzdq8T86h063SK4p4cAv
         kT8GPKMhGpHN+ciVnEIrhVNdQHqtgRy8frDmu+mWf0mN8GM6ZhGP66BtrOIUSJzB49Mi
         6iYQTI4y3VKNw/aRqRW6WN004UT6IsHpHdUyLsagW6GzODwDrtI84b78nlgXseoFgfaw
         qVUw==
X-Gm-Message-State: AG10YOTIY712S51d847eB82DmxRZ/DruopCqRu8LzFw0Ql5RQfcy81DgxmO02ejypJVwfA==
X-Received: by 10.66.97.101 with SMTP id dz5mr21048500pab.61.1456049548224;
        Sun, 21 Feb 2016 02:12:28 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w12sm29144527pfa.79.2016.02.21.02.12.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 02:12:27 -0800 (PST)
Date: Sun, 21 Feb 2016 15:43:00 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: ieee80211: Use macro DIV_ROUND_UP
Message-ID: <20160221101300.GA26117@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index 27ce481..2dc25cc 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -242,7 +242,7 @@ static int ieee80211_ccmp_encrypt(struct sk_buff *skb, int hdr_len, void *priv)

 		ccmp_init_blocks(key->tfm, hdr, key->tx_pn, data_len, b0, b, s0);

-		blocks = (data_len + AES_BLOCK_LEN - 1) / AES_BLOCK_LEN;
+		blocks = DIV_ROUND_UP(data_len, AES_BLOCK_LEN);
 		last = data_len % AES_BLOCK_LEN;

 		for (i = 1; i <= blocks; i++) {
@@ -331,7 +331,7 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		ccmp_init_blocks(key->tfm, hdr, pn, data_len, b0, a, b);
 		xor_block(mic, b, CCMP_MIC_LEN);

-		blocks = (data_len + AES_BLOCK_LEN - 1) / AES_BLOCK_LEN;
+		blocks = DIV_ROUND_UP(data_len, AES_BLOCK_LEN);
 		last = data_len % AES_BLOCK_LEN;

 		for (i = 1; i <= blocks; i++) {
--
2.1.4


