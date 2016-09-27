X-GM-THRID: 6334891749875384320
X-Received: by 10.28.167.216 with SMTP id q207mr268016wme.4.1474988752236;
        Tue, 27 Sep 2016 08:05:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.21 with SMTP id v21ls203882wmv.23.gmail; Tue, 27 Sep
 2016 08:05:51 -0700 (PDT)
X-Received: by 10.28.21.17 with SMTP id 17mr267610wmv.16.1474988751583;
        Tue, 27 Sep 2016 08:05:51 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id u190si410958wmf.0.2016.09.27.08.05.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 08:05:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id l132so1603767wmf.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 08:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=09wlGzV15gj+aeOcOdIqp2INySeZEm8K6MxpnAOi8/Y=;
        b=S8AcRbV2JWnu/C64Ep2rTm4YBO+0wAuH2vMRTMFyeWEieuetBfHVT2j64VvbtPG9Dw
         6zXCdaeMrnfJ8P9lGCk/5eU9K/j8xpGHE5UfKSd3Tup84TU/iQaeFTJicLkGaXwU2Geo
         7M3U3ZMYr2Y5hy+9JjQzSb+A14BS8bboZq5iV70mAkZ6raL73oVfauxbGYJF6foGdaBV
         ycpSVTQTWT3Tb83HnNTHmhzaINVG/yGZBEcZUZbk6pTiivFvVrCfxGLnt4Z8YI6mUmrb
         OwSz01De5GoS6zm0aXbbvUk3px7Rror64BUYJynvzsAJKXdairHePKHw1itt1c+3hj7s
         3J0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=09wlGzV15gj+aeOcOdIqp2INySeZEm8K6MxpnAOi8/Y=;
        b=RCTOBVcWDkvSTPcu0wc4ftlnLmzrDoGNjKTav1bFKn69N8PO0KvJIVVZgKvfYfhtOz
         CyQ9sh7Q1AhnuDH12viYcrkbvHtGA241z1J3sCBqu9kR8hq/hEUYHL9D0oNscNlH0ah7
         TT+HGE4Vr4s1yJuWHHEwvcGpmMkf09kcp0mB5y1n+Ytr0QUV6G0cUJLsycmxvfUlNU7q
         0NVNtHDk1y1md+ONYpUEGLKOlW/GC2WMYPIepvoJILUOY33c6PRJzL5mGvtBYccr28XA
         H26zuxYylFuBlPre1lVsX4db/UAdL9ecK/2iE9tYmL2Iyjd6ElVabBQrqEbzWPgz+CdY
         zAqA==
X-Gm-Message-State: AA6/9RlqQ2D9YAXdHFH4+Zt1jv2ZdQ/ICnVV542Ef49B6R9jb0N22flNNtJofxpuFSLDtw==
X-Received: by 10.28.145.129 with SMTP id t123mr3372583wmd.64.1474988751134;
        Tue, 27 Sep 2016 08:05:51 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([109.166.128.1])
        by smtp.gmail.com with ESMTPSA id f8sm3162656wjh.45.2016.09.27.08.05.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Sep 2016 08:05:50 -0700 (PDT)
Date: Tue, 27 Sep 2016 18:05:48 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: ks7010 : Fix block comments warning
Message-ID: <20160927150547.GA11513@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Move final */ to a new line, to conform to
the kernel coding style for block comments.

Issue found by checkpatch.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
---
Chnages in v2:
	-Make the commit message clearer
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


