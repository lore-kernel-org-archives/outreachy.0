X-GM-THRID: 6335694378410967040
X-Received: by 10.25.221.149 with SMTP id w21mr53476lfi.25.1475143800328;
        Thu, 29 Sep 2016 03:10:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.167 with SMTP id e39ls246236lji.49.gmail; Thu, 29 Sep
 2016 03:09:59 -0700 (PDT)
X-Received: by 10.25.139.9 with SMTP id n9mr51674lfd.22.1475143799498;
        Thu, 29 Sep 2016 03:09:59 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id c13si1714423wme.3.2016.09.29.03.09.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 03:09:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id b4so9968715wmb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 03:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ffFp7YaAHMS6LDtfmUKZZwEQTGjx+zQDFSN5+C1R5Pg=;
        b=m9G4s+PvNGGfPOwl6x5lrWDWjPgH4QSJn2FkRlLea/FFLX9krx3X/X/yAA4wXJcw/c
         N8i3KLPFRc1dGSWpBlc9fVzaKF79oP593SIE8Y9z1InpkJWO0tGksSApqnE1l8YBKgJX
         x9McR1hn7pYq7JfcSk0zuUbC2sJ4/QCiLsO8Jvw+hIlUJZtcb+QKEb5DCiWrBd5Oqfpa
         YsONqz86dDZUr0X+m0yVdVUL7AHpO5Mj30txYSX+vW/69bYSc7qTRpkoko5K9GCPzuYE
         J5zv+gEConcgBIo4EwQ/PZHguHWw/EBmEEWe64JT0L3GG7vhbYpzyP9tybFaiYJp4H1I
         MNWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ffFp7YaAHMS6LDtfmUKZZwEQTGjx+zQDFSN5+C1R5Pg=;
        b=Je68aIZXPs52hRLX/s74RRyz2Is3r+8ZrYzFTeLWVA2HqZo6ZRHrepFaRYBqsjyf+B
         2FJXprSzc5n11E7+daIc/xZ+o1kwzaUG/J+QjsY0hEwckdFCMsjJnBeVRGu4Doy6c1zK
         BzsoTkbQfiIF2d8/gbvznvawUV2D5uhu3nUTV0hsd7PtWkMRUJUH1IN9/DovQgU8FjON
         cYQqICSEC3Ffp6dahHkHyRUfmHTPJdFiC0EQG52WURwRBGoxqeAfFgepqwSmJMBr+2+C
         +gzrjPuoXFfKHhb4KGv9K9MZb09J7/5PYIDV4xsxFJ18oQHas138vCQPl04ZymoDR/4+
         HiAQ==
X-Gm-Message-State: AA6/9Rnw3giEa2/xErhIM7iSCiVpgQ03/CApLhYEEKV7t98oBE2ja3ojAajUn3Tmr10mvg==
X-Received: by 10.28.21.193 with SMTP id 184mr2068736wmv.26.1475143799007;
        Thu, 29 Sep 2016 03:09:59 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([109.166.128.1])
        by smtp.gmail.com with ESMTPSA id w138sm2997990wmd.1.2016.09.29.03.09.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Sep 2016 03:09:58 -0700 (PDT)
Date: Thu, 29 Sep 2016 13:09:56 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] Staging : ks7010 : Fix block comments warninig
Message-ID: <20160929100956.GA15879@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Move final */ to a new line, to conform to
the kernel coding style for block comments.

Issue found by checkpatch.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
---
Changes for v4:
	- update my local tree and rebase it
---
 drivers/staging/ks7010/eap_packet.h | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
index 373c0fe..df7f760 100644
--- a/drivers/staging/ks7010/eap_packet.h
+++ b/drivers/staging/ks7010/eap_packet.h
@@ -53,24 +53,32 @@ enum { EAPOL_KEY_TYPE_RC4 = 1, EAPOL_KEY_TYPE_RSN = 2,
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
-	unsigned char key_index;	/* key flag in the most significant bit:
+	unsigned char key_index;	/*
+					 * key flag in the most significant bit:
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
 } __packed;
 
 #define WPA_NONCE_LEN 32
-- 
1.9.1


