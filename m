X-GM-THRID: 6395260481558282240
X-Received: by 10.25.17.102 with SMTP id g99mr1476172lfi.6.1489046438392;
        Thu, 09 Mar 2017 00:00:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.22 with SMTP id e22ls639775ljb.12.gmail; Thu, 09 Mar
 2017 00:00:37 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr1833580ljb.2.1489046437514;
        Thu, 09 Mar 2017 00:00:37 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id b186si1989916wme.1.2017.03.09.00.00.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 00:00:37 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id v190so9571460wme.3
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 00:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Xg/93l6pIYSOR7QKBEi47x/MUZtzv3jrG41hVBFjcnw=;
        b=bcyOWwF+CplYa8+V8/bfAs5QQlvP/LWpUy/zmCg/MWAuCxPlnhPjl1tg5EnNULKsxn
         Z1s0dVm112hUGb7/iRc61D23fgVoCoYaAEeM3cY8i4aV6DxwJqzUqQQ+QOdfC0wk0Nj0
         eBRXFh4gPhD/rzJgJHKjgZ/B6CyakhADdJzLYFvCB6wsvCuMl42HFlpbKZJMwQR792M/
         vt4H8WnIoVpJgTOJLBxD9UFNwrN/Z6tRS1Kq5qy6tu6iIH7daGEW7zZt3bV0lM+XdOeU
         CThoChEz3IctCSFfS8anYLRMI6jyy4VBmHbNvPgRgWcOOb8JTE4PdlW9JDylf0kz6xPE
         G8Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Xg/93l6pIYSOR7QKBEi47x/MUZtzv3jrG41hVBFjcnw=;
        b=Q9vbv2IcRYLA4WNsxKovaK7G9mkkd1eVaHw+MMS6RGHaoAsAXE1RqxLIiYjFUQDZe5
         CPgfRsK7ML2I99RHVxrSpvoFeO4XJ8A+EwlibxmgzEAWx7eQnkQtroYbpWj6tOpCjcD4
         ZsWtlWE01dCuvRc7GKDfqg7ophopsDe0SZ/ZxywYPla/4ZyM33gK7c24cTfVFOXJ8+Kk
         ImJo78P4UI/sJ6mvHk31nhQ6888g1TbI8dqswuZ8Jb2UvG9jxP3x1tTNNFQzVru/0Iu1
         R6dJ5g4Lqv6BbuecgKuEBBNMFgASdSSeniUF/KdNpLTybvBBUc2bjIZ33raycf6mCpLY
         f2pA==
X-Gm-Message-State: AMke39lM4uYcHccbiY+qmoqb/j0PwcYF5RLYS8FIfDgZk3w5jHvU49droFil6e70mYZrKw==
X-Received: by 10.28.178.142 with SMTP id b136mr9022541wmf.57.1489046437325;
        Thu, 09 Mar 2017 00:00:37 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:930:abe5:5078:563b])
        by smtp.gmail.com with ESMTPSA id 94sm7162431wrl.50.2017.03.09.00.00.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 00:00:36 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2] staging: ks7010: eap_packet: Format comments to fit in line
Date: Thu,  9 Mar 2017 10:00:31 +0200
Message-Id: <20170309080031.23988-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Split lines to have less than 80 characters.

Fix the checkpatch.pl warning:
WARNING: line over 80 characters.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---

Changes since v1:
*Change the subject of the patch.
*Change the version of the patch.

 drivers/staging/ks7010/eap_packet.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
index df7f760..7a3decf 100644
--- a/drivers/staging/ks7010/eap_packet.h
+++ b/drivers/staging/ks7010/eap_packet.h
@@ -58,12 +58,15 @@ struct ieee802_1x_eapol_key {
 	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here
 	 */
 	unsigned char replay_counter[IEEE8021X_REPLAY_COUNTER_LEN];
-	unsigned char key_iv[IEEE8021X_KEY_IV_LEN];	/* cryptographically random number */
+	unsigned char key_iv[IEEE8021X_KEY_IV_LEN]; /* cryptographically random
+						     * number
+						     */
 	unsigned char key_index;	/*
 					 * key flag in the most significant bit:
 					 * 0 = broadcast (default key),
-					 * 1 = unicast (key mapping key); key index is in the
-					 * 7 least significant bits
+					 * 1 = unicast (key mapping key);
+					 * key index is in the 7 least
+					 * significant bits
 					 */
 	/*
 	 * HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key as
-- 
2.9.3


