X-GM-THRID: 6259746101926035456
X-Received: by 10.182.142.8 with SMTP id rs8mr22440193obb.33.1457460714031;
        Tue, 08 Mar 2016 10:11:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.93.72 with SMTP id cs8ls1363084igb.29.canary; Tue, 08 Mar
 2016 10:11:53 -0800 (PST)
X-Received: by 10.107.157.10 with SMTP id g10mr607650ioe.28.1457460713739;
        Tue, 08 Mar 2016 10:11:53 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 12si633247pfb.1.2016.03.08.10.11.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 10:11:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 63so1722933pfe.0
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 10:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=O4YHybnpX3FUfvzSQs+SpED/S2xKy+Ac1I0W2tqUylE=;
        b=BIb28WsTOV4L6mYXCs/+SDv2PKumUGkt3fXSWCWVZC9J6UM0SKH3V6j1UplPNTa1Df
         +TR/l4Eh5MBa2jWP1ARDiecfJzeDjASY+wYeLedwKJ82BLtiB2W0pn3/xHZZyjpF3nIm
         +R6FU1rJQ0rm5AwYUz3DQusJ/0bEAcVAAmaC6DNI1lNSdUwDPdaos9+ZC4Sjvcl+b7nr
         TIKqkCQqs8cvWRo99rXXlPNzK9LS7wNlhn/j7cO8EL8y2i3w42Y3RRc3DewPalS3Zjgp
         7VT5/92KT+wQWppEQork3FsmzkGk70oZNepKW45Y2pOzB+5Z1q0DPxk+lAKQLn9IoVgC
         PRTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=O4YHybnpX3FUfvzSQs+SpED/S2xKy+Ac1I0W2tqUylE=;
        b=FTaMSR3OEMDbEC51ONqSDNgFRl4gYCjcsRiF93DYHeObZZ432jTUTyDajNQbBxMZ40
         mPvNAeWgxvBLjf/RULw+iOkszkffd6UQAggqqpYMAwcFLC0LehXhCw34O1jHgj/YJa6V
         1bCT6vE1Q3l/7x5fSsIvwhgNe/+QQZNm6MDTp9geoS5d95Rz6MdR6kivJhry3gfdcQCF
         dmbS2+8f7xF5XWE//m6MFcVIebgBV2vel33Rf1+uivhCSk4xXJdQHs1bsamIaIFZXHGw
         YaVWCJnzb/49jpYQzZvFfdpKQVAVlP/KzlkNpLZ5wTsbb5kloESMV8EyoRR1ZiEl+4Xf
         C8FQ==
X-Gm-Message-State: AD7BkJJdb37f731kuHRuH79q1uXleI6tbUZ1BfniNW3hLTWVMr6KF/HlJeT18UO5gQOISQ==
X-Received: by 10.98.16.70 with SMTP id y67mr44389238pfi.166.1457460713578;
        Tue, 08 Mar 2016 10:11:53 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h2sm6480238pfd.91.2016.03.08.10.11.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 10:11:53 -0800 (PST)
Date: Tue, 8 Mar 2016 23:29:37 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] staging: rtl8192e: Prefer using macro DIV_ROUND_UP
Message-ID: <20160308175937.GA30482@Karyakshetra>
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
  Changes in v3:
        -No change in this patch
	-Dropped the other two patches from the earlier patch-set
	(in staging/most/hdm-dim2 and staging/most/hdm-usb) that were breaking
	the build.


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


