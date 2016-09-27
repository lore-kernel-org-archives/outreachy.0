X-GM-THRID: 6334891749875384320
X-Received: by 10.25.206.200 with SMTP id e191mr1554517lfg.3.1475007034265;
        Tue, 27 Sep 2016 13:10:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.10 with SMTP id s10ls1724373lja.12.gmail; Tue, 27 Sep
 2016 13:10:33 -0700 (PDT)
X-Received: by 10.25.22.65 with SMTP id m62mr1552343lfi.29.1475007033663;
        Tue, 27 Sep 2016 13:10:33 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id p199si1395974wmd.1.2016.09.27.13.10.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 13:10:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id b4so2793616wmb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 13:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KmQLch44hjg32waV+B261Cc6WTDMzvWohVuJXtAidxg=;
        b=Z4wNSPfxSyKJsD7lbzzRF4v1VKY0l0YtRB8+W03QN4kBxfyFdoG3rKJLFMKoCRXVvM
         NLhZbKMzn99iz5AUGbAs0Z4WSxcw3sT70doITNDa9kJ+l+Eln1YYd1jwVedfIufG3Gtj
         j2G7LvClFX8yCb9faQR4OZnWDumG0PQ9LtSMCbJqKGxVcHlTN0syn7Ky5fXP5jpZ4+KS
         6ctJL2SX5kGioHvjoa9h4gyNiPY64kA4o9o1M9N4GBc+LxpRBQR6VPpHWzlypKr2MgE8
         1IEyNC1ALQLd2OURZZ20LqM09Y7KkP5AF07g8gzX6NjFQC8dSe1b9ECxcekgsCGiNrQw
         jh0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KmQLch44hjg32waV+B261Cc6WTDMzvWohVuJXtAidxg=;
        b=cTqCxqQSXUe1S7uNmkNzDoyi6STXYsOuNEaE2IybCmkFvjkcd+od103vdloNjBUNQh
         xUdOBQSAvTWQxj+YF0xWKVYwusQD5qU3K7it+i+NELh9Xlb/rYfuijsDKOXZjXZmcl0o
         x2ZTVkzg4oDm1/oedD7Fnc26KcT+D3JXMUNCEM82hcQwXLe71H8VQFGtnxjU2xHAo8Mo
         uxscipZwXV/FVLjBbk6rl9xpWcvD14oebjWJFSl9QpysPMktAl+ODpfXF2tnJi1enfMW
         3vl4/txja7FKoxRnbeU/Dr0YD9KIhWnXpszGuVB48pX2bgSguIBgBoLq4C1rHw6n3ohT
         l7wQ==
X-Gm-Message-State: AA6/9RnUNEn+JU2KD4Mpe0TIQFH9Dwe8NZD4Qke3VBMCOXDd05aPaEcllBN/dJz9+vINHQ==
X-Received: by 10.194.201.201 with SMTP id kc9mr9532397wjc.53.1475007033407;
        Tue, 27 Sep 2016 13:10:33 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id q142sm18528964wmd.4.2016.09.27.13.10.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Sep 2016 13:10:32 -0700 (PDT)
Date: Tue, 27 Sep 2016 23:10:31 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: ks7010 : Fix block comments warning
Message-ID: <20160927201031.GA8014@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Move final */ to a new line, to conform to
the kernel coding style for block comments.

Issue found by checkpatch.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
---
Chnages in v3:
	- adding a * to respect the coding style rule for multi-line
	  comments
---
 drivers/staging/ks7010/eap_packet.h | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
index 16a392a..6399da4 100644
--- a/drivers/staging/ks7010/eap_packet.h
+++ b/drivers/staging/ks7010/eap_packet.h
@@ -51,24 +51,32 @@ enum { EAPOL_KEY_TYPE_RC4 = 1, EAPOL_KEY_TYPE_RSN = 2,
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
 } __attribute__ ((packed));
 
 #define WPA_NONCE_LEN 32
-- 
1.9.1


