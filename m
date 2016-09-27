X-GM-THRID: 6334891749875384320
X-Received: by 10.46.0.208 with SMTP id e77mr1219216lji.7.1474956923075;
        Mon, 26 Sep 2016 23:15:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.23 with SMTP id m23ls1746444wma.3.gmail; Mon, 26 Sep
 2016 23:15:22 -0700 (PDT)
X-Received: by 10.28.221.9 with SMTP id u9mr90862wmg.2.1474956922267;
        Mon, 26 Sep 2016 23:15:22 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id p199si1044575wmd.1.2016.09.26.23.15.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 23:15:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id b71so770822lfg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 23:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=g2eQj71o+vQ79ghGuxVzrxXN3JUGrx3yDW1Ww4wA3qQ=;
        b=YHvNyxGVQHnWFwBMf/37YBaRFfUVxLM84OuUukcFXtQ248cdD+asU0GimHUELxcpUk
         ohkyc9LqzlEmRaTEzLNR+9aCUFnL0UEKRQ/8sByeCV8dQAA7QJ9kHrS53ft7NDYpV47x
         9DOfECZmNR2XU4U4SJShyaRcxQ1FzFJB9rm6V/HHiI9HRcTplcYBv5lG5cjGV4G/Hzx8
         OzhyF8DGL8h9orVXZ7I8U9pweuubEraU7xsg6HfyKeCcg873kpoLRlwLcT7rubtCg0kQ
         qspFXVetYdjGD0j+zya5OASDs5nAfDKKsXWZMOF9Lw7cZobURCmDxQA7GZM34O5XNDlr
         Dyug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=g2eQj71o+vQ79ghGuxVzrxXN3JUGrx3yDW1Ww4wA3qQ=;
        b=AVMLpAyOW8irQyF0OWx9wC+7Lu2jnzHdqspzhoImBHwVnaoQVrX1y4VqfZo+sP7ZXn
         os2QSh4nWlpkyVj9ul8KDNBhXPAgt0OHAb6v1DE82fVVkinBLkXZEZCowDi8NcGdecu0
         6guNABZWLW0koUFqzTRbC+989qIiZNfZd2wJlLN22o8ScuUQ2OLyslTNaZXd/5pYOw4I
         /1oGQtpq2b2tkgwfrmem73rlg7Ifw0VZOixB1BNnxsgql8Jyzw90aFqe5wrqyCI4+bPG
         pEqy85DDzYiFUjOiwIQHnwhErDfE9pKXap/U/0Fr3fcO++ezafQX261htMmMDYf49ZzA
         pETA==
X-Gm-Message-State: AE9vXwMWe1LXC04x4t4qDicksi/5QtaEvGPRJ3w1hCwG0RKlupi+rFaSLyEY4JFzELRk/A==
X-Received: by 10.194.235.166 with SMTP id un6mr21484464wjc.169.1474956921990;
        Mon, 26 Sep 2016 23:15:21 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id pj2sm829457wjb.8.2016.09.26.23.15.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Sep 2016 23:15:21 -0700 (PDT)
Date: Tue, 27 Sep 2016 09:15:20 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: ks7010 : Fix block comments warning
Message-ID: <20160927061520.GA21545@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl  warning:

WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
---
 drivers/staging/ks7010/eap_packet.h | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
index 16a392a..639a22a 100644
--- a/drivers/staging/ks7010/eap_packet.h
+++ b/drivers/staging/ks7010/eap_packet.h
@@ -52,15 +52,18 @@ struct ieee802_1x_eapol_key {
 	unsigned char type;
 	unsigned short key_length;
 	/* does not repeat within the life of the keying material used to
-	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here */
+	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here
+	 */
 	unsigned char replay_counter[IEEE8021X_REPLAY_COUNTER_LEN];
 	unsigned char key_iv[IEEE8021X_KEY_IV_LEN];	/* cryptographically random number */
 	unsigned char key_index;	/* key flag in the most significant bit:
 					 * 0 = broadcast (default key),
 					 * 1 = unicast (key mapping key); key index is in the
-					 * 7 least significant bits */
+					 * 7 least significant bits
+					 */
 	/* HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key as
-	 * the key */
+	 * the key
+	 */
 	unsigned char key_signature[IEEE8021X_KEY_SIGN_LEN];
 
 	/* followed by key: if packet body length = 44 + key length, then the
@@ -68,7 +71,8 @@ struct ieee802_1x_eapol_key {
 	 * if packet body length = 44, key field is absent and key_length
 	 * represents the number of least significant octets from
 	 * MS-MPPE-Send-Key attribute to be used as the keying material;
-	 * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key */
+	 * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key
+	 */
 } __attribute__ ((packed));
 
 #define WPA_NONCE_LEN 32
-- 
1.9.1


