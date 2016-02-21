X-GM-THRID: 6253814684108980224
X-Received: by 10.182.255.203 with SMTP id as11mr24548840obd.49.1456079698396;
        Sun, 21 Feb 2016 10:34:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.169 with SMTP id x9ls370077igl.25.canary; Sun, 21 Feb
 2016 10:34:58 -0800 (PST)
X-Received: by 10.50.112.232 with SMTP id it8mr7905697igb.9.1456079698132;
        Sun, 21 Feb 2016 10:34:58 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id u66si3016589pfa.2.2016.02.21.10.34.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 10:34:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id q63so79754520pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 10:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nn+KOnPhJ8R88jiX8E12U0pp0CMcXJpmDhj/bgfIdAs=;
        b=GGzmU+SBC4GnrlLu9wl9LT3YglCfccr6cHpSlHmSJxD3RSA2T9rQmXKVPqsOI7X52s
         h1gmztZ1zjn0e3Rz76DMKasV3/yozRoKxy0KJ+dvlzRrmD1V3KpVkPGwurkaaFvHDcDh
         wRxLyp3hf4is1cOZUMpwKWnCl9Mf9SodjcVf2Gr9LjDlt1b+2HVw2WaVV1VprPrC+4ZJ
         wWufHC+jxRbQlUedl35tPAgvFpkppo65jZlwDxD5WSImjeXcai1Q5eTu4Z01iTTUjNK9
         kOGeY4XPpU7E5KclRMCrZTKu8+zI0kJu3zkwkxdQSpzGaymCQSgw8efOLUTl9Tj/qt13
         bB5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=nn+KOnPhJ8R88jiX8E12U0pp0CMcXJpmDhj/bgfIdAs=;
        b=f2mTQIU4cflqZc1evFUbep8BYSqIlP1ZEv1CFmj5fiIMw2u0ZAxo+T8qP/bP2Lyzxs
         BFJ32uy+QaWQxIymsvOsENLg7PFVL8qm3sGAHZhUd454kinRceV8iXPFPr2EihBzzKV+
         7WBVwkTJRDPL57yB2VO4f8n0qxnXMggqPuZJwQrmvTqoO7XGUDJhKFyQpUCutg2x00An
         59wFB3NLyoDdVcYp/rIOjPUz8lTltYQMrthgBiVBokD2H1GNBQyNBSws4+P+a9B6yzTf
         W8pz8IK4nvesNzznRnHfVBLLLZ8T/hHlcDKa9iaiPLI2LSZCDrTXweCICP2aupwIrcha
         UH2Q==
X-Gm-Message-State: AG10YOR+EzrMG8u2BC1IlELYUI60DMa+C5fWGeM4Xhe5WWKFXbn0Ave6KlZDAzOXu5uUdQ==
X-Received: by 10.98.42.150 with SMTP id q144mr27431238pfq.73.1456079698005;
        Sun, 21 Feb 2016 10:34:58 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id dg1sm31501890pad.18.2016.02.21.10.34.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 10:34:57 -0800 (PST)
Date: Mon, 22 Feb 2016 00:05:31 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: rtl8192e: Prefer using macro DIV_ROUND_UP
Message-ID: <20160221183531.GA3400@Karyakshetra>
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
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index 496de4f..bc45cf0 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -233,7 +233,7 @@ static int rtllib_ccmp_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		ccmp_init_blocks(key->tfm, hdr, key->tx_pn, data_len,
 				 b0, b, s0);

-		blocks = (data_len + AES_BLOCK_LEN - 1) / AES_BLOCK_LEN;
+		blocks = DIV_ROUND_UP(data_len, AES_BLOCK_LEN);
 		last = data_len % AES_BLOCK_LEN;

 		for (i = 1; i <= blocks; i++) {
@@ -319,7 +319,7 @@ static int rtllib_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		ccmp_init_blocks(key->tfm, hdr, pn, data_len, b0, a, b);
 		xor_block(mic, b, CCMP_MIC_LEN);

-		blocks = (data_len + AES_BLOCK_LEN - 1) / AES_BLOCK_LEN;
+		blocks = DIV_ROUND_UP(data_len, AES_BLOCK_LEN);
 		last = data_len % AES_BLOCK_LEN;

 		for (i = 1; i <= blocks; i++) {
--
2.1.4


