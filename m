X-GM-THRID: 6253814684108980224
X-Received: by 10.50.150.98 with SMTP id uh2mr11258644igb.2.1456143922952;
        Mon, 22 Feb 2016 04:25:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.8.42 with SMTP id o10ls554211iga.35.canary; Mon, 22 Feb
 2016 04:25:21 -0800 (PST)
X-Received: by 10.50.112.232 with SMTP id it8mr11219716igb.9.1456143921945;
        Mon, 22 Feb 2016 04:25:21 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id u66si3442826pfa.2.2016.02.22.04.25.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:25:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id yy13so90522657pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 04:25:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=QKfsY601YwVOZT+94EO3ysVtZauGSJU5vPFYyTpCLeM=;
        b=emIM3NwjQKQ/+6iMXCITO736xVVqKVSghKaepSm+RL2orivGULhkSmIWntvJphNDK3
         GxEbHpvlusvWSEqaLDfOsrPdGYOp+PS/s7aHvCegOxixPiA1SO3WMx5l//xLjUW0hSci
         MRDxmuqYUt5Dzg5hp9JYJILOC0eO6BDJzKd/DWXZRpYJBuY89VBi6HJfgJlK1+kJOYVR
         /1tlgLaLFfMjcQby5+BfFROQKO/Fpw0b0b8PLT+s5SuZx7YzoPg3UQ1UXTLeegr6n9qh
         wCHsviET2dYVJQDnTWMReYSKMd57uQf1vJEtNa9eyqxRaceY82iK7vr3hSnFtpxaU6cN
         hA9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=QKfsY601YwVOZT+94EO3ysVtZauGSJU5vPFYyTpCLeM=;
        b=AJHSj5ZArNdMcoHygbDsS+6wUyXsc/hNe7HGUohwbRboPcj0Nq4PcWf9XbN6hHQuV/
         RUgRtllUFbGenevZ/+L5+OctJfRHsKISdeCwv5pc2lM7iYaM4u3qOnuKYcpDgnFBmNc4
         j6ytpUnypUjyz8jouNPtXV6/1D9xf42R8Gb9usxpJA+0NaMHj+IpHQ0Bxtlt+aJv2Gxm
         PIQ4/6wV1CyETqI0I9I6WAPeIY9b0cZECe8iCnvKavkJ/i2Sy00pMOMINBhV8e3KBana
         DNpncDPLEE5hV3GkBFFuF+KRAEo6wOjJtTw3d2f74QmDAWiS46a2AlyFkwKq7zzNKZ3h
         +IGQ==
X-Gm-Message-State: AG10YOQu5zB4GSOCAilX+THNpvpq5mYeTWv8hjoiKnz9fxD06S3+6wVi2kNdpEAo1meWQA==
X-Received: by 10.66.186.14 with SMTP id fg14mr37794723pac.102.1456143921834;
        Mon, 22 Feb 2016 04:25:21 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y68sm36706181pfi.6.2016.02.22.04.25.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 04:25:21 -0800 (PST)
Date: Mon, 22 Feb 2016 17:55:53 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/4] staging: rtl8192e: Prefer using macro DIV_ROUND_UP
Message-ID: <20160222122553.GA16664@Karyakshetra>
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
 Changes in v2:
  - None for this file.
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


