X-GM-THRID: 6259749708730728448
X-Received: by 10.182.29.41 with SMTP id g9mr21985930obh.27.1457461553673;
        Tue, 08 Mar 2016 10:25:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.155.8 with SMTP id d8ls331605ioe.32.gmail; Tue, 08 Mar
 2016 10:25:53 -0800 (PST)
X-Received: by 10.66.142.164 with SMTP id rx4mr660945pab.2.1457461553368;
        Tue, 08 Mar 2016 10:25:53 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id 12si642357pfb.1.2016.03.08.10.25.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 10:25:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id 129so18473533pfw.1
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 10:25:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ajcNPHP8q2k/Knq9s26NS0LAhT3aMVPWOrqfxxBp+A4=;
        b=C9s00tyXRi3bOBFOTEGCjod9MYc0RwjxbH/I12dyF7m8ITP09AZtoN+5U0cBfZpJzH
         XEN0e7iRadP+neySvF1hEtJCIv3IhW7CibagOwD+1m2vRkL6Wy6CzExFUXbEVrPUPGQK
         ornmtKsPVziHouamztB6kdh3Nsc9o0Al0j5rlSMJJoW1mCzXtglaijDHl+t5bUa/sv5o
         Lfoudm78zKq7qcniT2mCv+uMm5TSpBuVZCGOb1Wxj3k1gPMzXz72UpOQAF2CCIMi36aT
         gBb56LNkKBPVw7q0gUo6JnSlCnDDLTopvgK4DmzjsxnwMhK2oonnB4URsFxPoR2KvaeM
         a9gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ajcNPHP8q2k/Knq9s26NS0LAhT3aMVPWOrqfxxBp+A4=;
        b=NaXOcqFobs8jqjODhHoVwG6JnCrmFNmUYDwOkLSgcm4t9ACX+L+kKCDX1vijZU4EDz
         sy5MxeIzDZWQpa7ZQNo4svhli3qtQ5uI7tPh950OqcmghY6aMYW8Mxh3ZtWdlnpsekXH
         8tgq2SmGn2csskTas9YSYoSUWING9TmgINrSG4BKdr+IP7bjwT6iVGLzU6KCYoYc3+vK
         CaXyJ6XOMLdJBIa2EujBHLU/omELpH98S0laC91umpmclRvw1WiwFJ4fhuRZC1MuuU0O
         0B8AHXIAkVQP0rYNbwFZZ3x6gKBN6wo4BZcPeaLunMrsvokLUUQrpysF+oufryoStYBp
         vkzw==
X-Gm-Message-State: AD7BkJLuszRYPSz0afjQC1n/qJ+a02+6yhnAfm7xW13LM2wyht3IZ+4M772uzJhZpz9kRw==
X-Received: by 10.98.93.155 with SMTP id n27mr43588464pfj.88.1457461553223;
        Tue, 08 Mar 2016 10:25:53 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 195sm6569759pfa.5.2016.03.08.10.25.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 10:25:52 -0800 (PST)
Date: Tue, 8 Mar 2016 23:43:40 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: ieee80211:  Prefer using macro
 DIV_ROUND_UP
Message-ID: <20160308181340.GA30933@Karyakshetra>
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


