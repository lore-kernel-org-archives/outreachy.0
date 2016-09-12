X-GM-THRID: 6329487812602101760
X-Received: by 10.157.46.36 with SMTP id q33mr16690037otb.40.1473698721129;
        Mon, 12 Sep 2016 09:45:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.23 with SMTP id 23ls11331389otg.44.gmail; Mon, 12 Sep
 2016 09:45:20 -0700 (PDT)
X-Received: by 10.13.203.69 with SMTP id n66mr4266302ywd.42.1473698720723;
        Mon, 12 Sep 2016 09:45:20 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 142si2608999pfx.2.2016.09.12.09.45.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 09:45:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 128so8330694pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 09:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=3RDSgFWlriIh9A3mZ29pV9UBf/BTdgM9Zha+tbqmQAQ=;
        b=JZEotzzJpT11+GKsCim3xbuB16qHqCVmjA4UY+R4lV0Vtr7KA1FBfnfvrypNWK/mOk
         /7ns1yEs/vEaF1DDR8AES6n5MePHrE4jnyMXiDfyhCWw/iKWyMv1NTymzCCzynVAnzXv
         JJ6emC8PGq3qUr4xLwdRgv/EkKFy8ta335WV3+rO4W3pIybvLDE8Evdva+7KyifZlkwd
         d9LHDIWAn6FL1HbufPAockJMvFtyMlYNH2X2WXdziK5pxcsbQVBXSjbfTXD8m5r/jZHX
         9zuQH8/VGXm5tIYI4JzMg04ThZ9i7SnvQ12TFvMm7/SrlnS3yDW/TM6B3Fkk4jraO1Pq
         VK3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3RDSgFWlriIh9A3mZ29pV9UBf/BTdgM9Zha+tbqmQAQ=;
        b=J2aBGJNSkA4AWNDy56kOGBXM8JiMZbvHD89tvRmz4JhWuFmrkoOUJzZN6hBneLDEkf
         TZbHXFXlJYy2nqDzQVXvNui1vHraKoRAeu48WQ9sKKiK/P4sR7qMqQgRAuWgmI+3fx+O
         NlZDjAHtpndAmGVJ1OIix0vBq/gVPP0eMeBVeYUA0JGRZSh3f3J+kUwg3Bwy7yJfu/zI
         330qQZFnlpaC4hzhgGRrq01RKzhcv38nEFBVA2JzzHp6CIx/PNlFBfuFDjwdbRXA6ChO
         vTwS6VJUUYbUxk3tlteSydQruTDQV5pIw74vfs3Pq3e4H76zZdBR0eJ73ytuD6DGis4R
         ZWhQ==
X-Gm-Message-State: AE9vXwNx48VKDYJ64O22keeVheiQIxMR018cDgQR8vP41oxyFGbg+l230xUWDMpTUqIPMw==
X-Received: by 10.98.96.193 with SMTP id u184mr35080848pfb.85.1473698720330;
        Mon, 12 Sep 2016 09:45:20 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id d5sm25787234pfc.4.2016.09.12.09.45.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 09:45:19 -0700 (PDT)
From: gs0510 <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	wsa+renesas@sang-engineering.com,
	gs0510 <gs051095@gmail.com>
Subject: [PATCH] Moved the trailing comment end quote to next line.
Date: Mon, 12 Sep 2016 22:14:40 +0530
Message-Id: <20160912164440.9174-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

Checkpatch displays error that the comment endings should be in separate
line, should not end in the same line as the comment.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/ks7010/eap_packet.h | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
index 16a392a..0a9ab097 100644
--- a/drivers/staging/ks7010/eap_packet.h
+++ b/drivers/staging/ks7010/eap_packet.h
@@ -52,15 +52,18 @@ struct ieee802_1x_eapol_key {
 	unsigned char type;
 	unsigned short key_length;
 	/* does not repeat within the life of the keying material used to
-	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here */
+	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here
+	*/
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
+	*/
 	unsigned char key_signature[IEEE8021X_KEY_SIGN_LEN];
 
 	/* followed by key: if packet body length = 44 + key length, then the
@@ -68,7 +71,8 @@ struct ieee802_1x_eapol_key {
 	 * if packet body length = 44, key field is absent and key_length
 	 * represents the number of least significant octets from
 	 * MS-MPPE-Send-Key attribute to be used as the keying material;
-	 * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key */
+	 * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key
+	*/
 } __attribute__ ((packed));
 
 #define WPA_NONCE_LEN 32
-- 
2.9.2


