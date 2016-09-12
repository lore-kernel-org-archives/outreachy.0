X-GM-THRID: 6329516418404450304
X-Received: by 10.157.47.73 with SMTP id h67mr9420778otb.5.1473705381978;
        Mon, 12 Sep 2016 11:36:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.87 with SMTP id k23ls9820799otd.5.gmail; Mon, 12 Sep
 2016 11:36:21 -0700 (PDT)
X-Received: by 10.237.34.129 with SMTP id p1mr17194690qtc.9.1473705381538;
        Mon, 12 Sep 2016 11:36:21 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id h124si2591608pfe.0.2016.09.12.11.36.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 11:36:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id p2so1887118pap.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 11:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=GMk1TgiYeijsCfu/GVwGwJtZQoOobajsLMir7SFoW3Y=;
        b=D0OrDuYrWxaHsWlUJsBdIFa1CvgA0oEvH+Yupcgnn8/gP0TtoER5KZZlXLd2+ry0tc
         yL5c66sbybNdB+aSUzblWDEvK+mtE5JVkx3YfkMsHGV7cQqywLDwU9Ta3IKTjZeMgEoy
         N20tquEMPEISADcBd2XIa3Q9wIxyTf7iNyfbibEAWr2lXpicH02ViJ4yaVk6RxPl3OdX
         dmPuL/XYY4RAE0o+5mvmqt2amk7fTDHvKouMsKSLvXhXno2DuhHm2tWy+UmUxp0gg2/z
         FXmY9vsY+u1UlrdfKl11HScQxU/VUsCJHPwNRkm6OdyJhOaorDHrxFK1ZCENuQV8TI06
         WAAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GMk1TgiYeijsCfu/GVwGwJtZQoOobajsLMir7SFoW3Y=;
        b=dAecPwNmdzoktUY2wfR+QRHsEZh3pJYvMZYxtK496zZ8ZgRkIawqv/nnEL6/Vd56t/
         z5cAsde09F9r6LvHLSVDCEUENWM15O8JEkgRsYxZ4YylaoBg5Ere4cuuRKK8xF/xk8C2
         goTRxmOMzf7bK1D5wN3PoIX61o5EJ/KXabju/IRneEdGM7rGHlsTIiK+9kwIy7Wvmu52
         WvpdqaAR3IqRJn02rK/Mfvg2CXULLXx4ltEePNxbe/h3hKnamKZlt7NYkkjtDJOd5nJi
         EZ631NsdnNbPGYPMcKXZ7NcsUG3FXKjOlrTizg1ljbqI4ZOPUhr6XT4GLWomHXjFAK73
         KYPg==
X-Gm-Message-State: AE9vXwOp49dJ+D4iorHreaqO8l+oo1p2HDDUe8GoP3WUVDTrdpRE2ozUz14CBtAtneLQVg==
X-Received: by 10.66.145.73 with SMTP id ss9mr35713846pab.82.1473705380936;
        Mon, 12 Sep 2016 11:36:20 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id 10sm24990026paq.20.2016.09.12.11.36.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 11:36:20 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	wsa+renesas@sang-engineering.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: ks7010:adjust comment begin & end markers
Date: Tue, 13 Sep 2016 00:05:40 +0530
Message-Id: <20160912183540.12969-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

Fixing checkpatch warnings for trailing markers on the same line as the
comment.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/ks7010/eap_packet.h | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
index 16a392a..ad5dff8 100644
--- a/drivers/staging/ks7010/eap_packet.h
+++ b/drivers/staging/ks7010/eap_packet.h
@@ -51,24 +51,31 @@ enum { EAPOL_KEY_TYPE_RC4 = 1, EAPOL_KEY_TYPE_RSN = 2,
 struct ieee802_1x_eapol_key {
 	unsigned char type;
 	unsigned short key_length;
-	/* does not repeat within the life of the keying material used to
-	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here */
+	/*
+	 * does not repeat within the life of the keying material used to
+	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here
+	 */
 	unsigned char replay_counter[IEEE8021X_REPLAY_COUNTER_LEN];
 	unsigned char key_iv[IEEE8021X_KEY_IV_LEN];	/* cryptographically random number */
 	unsigned char key_index;	/* key flag in the most significant bit:
 					 * 0 = broadcast (default key),
 					 * 1 = unicast (key mapping key); key index is in the
-					 * 7 least significant bits */
-	/* HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key as
-	 * the key */
+					 * 7 least significant bits
+					 */
+	/*
+	 * HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key as
+	 * the key
+	 */
 	unsigned char key_signature[IEEE8021X_KEY_SIGN_LEN];
 
-	/* followed by key: if packet body length = 44 + key length, then the
+	/*
+	 * followed by key: if packet body length = 44 + key length, then the
 	 * key field (of key_length bytes) contains the key in encrypted form;
 	 * if packet body length = 44, key field is absent and key_length
 	 * represents the number of least significant octets from
 	 * MS-MPPE-Send-Key attribute to be used as the keying material;
-	 * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key */
+	 * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key
+	 */
 } __attribute__ ((packed));
 
 #define WPA_NONCE_LEN 32
-- 
2.9.2


