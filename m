X-GM-THRID: 6329500500280475648
X-Received: by 10.13.204.87 with SMTP id o84mr16115227ywd.37.1473701675798;
        Mon, 12 Sep 2016 10:34:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.100 with SMTP id l91ls11445765otl.14.gmail; Mon, 12 Sep
 2016 10:34:35 -0700 (PDT)
X-Received: by 10.157.53.109 with SMTP id l42mr15967772ote.17.1473701675479;
        Mon, 12 Sep 2016 10:34:35 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 142si2656465pfx.2.2016.09.12.10.34.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:34:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id z84so47266pfi.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 10:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=EZbjBiHiOMJrwbjs+AuxsEDYmsYRNdV7I617KxgKLbo=;
        b=nhRqTThgyvDHaYSLj6STQ2Zbl72/lr+Vm2GODjE3p/V4OErVCuaCHSgE3XFYYH1eUn
         /QUjcs/Gze0kt1Z1JdyQZH62y+8o9G2y7xLoyu9DxA/UCShIcSpfm5ovf7hngPvSzFaB
         ybrhbxjAZGc9ytu8yFHKrp7WQhviZqQ2XyXruVoUUF7OYV7NBpbwaLCM55ROijaOY7oo
         orAUxH+I22PdsTQTpoZsnOtOqu+2WdWXkM9iGx1jV84O31ENrAGR4P+qM/YpgwL2AiKz
         pqljU0JeoMUAY6TAXqUCOMXv16KrdtujzEuTWJWaCo9+L25fGfc3YSkBj07Mwuf0AvLF
         RBow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EZbjBiHiOMJrwbjs+AuxsEDYmsYRNdV7I617KxgKLbo=;
        b=j/TN0YmjdF+vmSxFPGfu1aWujalNWzc2faRp5hNG0FvMMSO7TmtE6qWLYHgnH7XS6B
         Nm/nnFq2L5p8xm/NcjIs5mV7KIhevTwvJYM5U3szAu7cYpy5+nbjpDobpKPCrAnbpPo7
         tL6j8VAYMzX/mZGaVTkXFyUbQZ2twmc3l6zDqFu+OoCPFazLimRjLI3Q2EDBaDQdn/fa
         HCzghcfCr+Atl/f+Zy5Tx1HFt+b49lFSepf0B/SBNqd5tKFM/sHPOvZV/j17xuhYs5Ac
         a7ON83Z18S8yWsz31zOrFtQo4X+BHsSWMYZ2Mm5JsyQ5eEey75/zcfydGmLlevCphqT2
         87nA==
X-Gm-Message-State: AE9vXwMBr/10U3nErBqXqz4PLmx28U/XRwHXsqx6fRSuGsMoTad1iIRWSmAhoyeiIFPlQg==
X-Received: by 10.98.80.156 with SMTP id g28mr34844842pfj.19.1473701674995;
        Mon, 12 Sep 2016 10:34:34 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id ae7sm6775720pac.19.2016.09.12.10.34.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 10:34:34 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	wsa+renesas@sang-engineering.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] Moving begin & end comment quotes to separate line
Date: Mon, 12 Sep 2016 23:03:43 +0530
Message-Id: <20160912173343.11114-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

Changes made to ks7010/eap_packet.h lines 54,63,65,67,71,77 where the end quotes and
begin quotes for the multi line comment were not in a separate line.

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


