X-GM-THRID: 6395186049294794752
X-Received: by 10.46.7.80 with SMTP id i16mr1314699ljd.5.1488995284698;
        Wed, 08 Mar 2017 09:48:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.7 with SMTP id s7ls477648lja.48.gmail; Wed, 08 Mar 2017
 09:48:03 -0800 (PST)
X-Received: by 10.25.156.74 with SMTP id f71mr1193433lfe.26.1488995283883;
        Wed, 08 Mar 2017 09:48:03 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id p144si441164wme.2.2017.03.08.09.48.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 09:48:03 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id v190so7259317wme.3
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 09:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Fl2wckzEjrZj1KS6pWVpn45aRrlE7bnPOpxfz/GmkSQ=;
        b=W9iABoQUkjWBpLr7QogY0+VEaS9Y0BasEKDmUyTodp0jSwm8PW5x0SdSVrWuNoQ8T0
         oP9nllotMyzrYqoFheW/AbPOxNYHh+1Tk2MzTfmIQZg8e7zG5PwUFFJf3HlDZzn9D+qt
         G6rX8nyXZ3/ercYF7SHlF6AMwogEKnjfTacC/Wew4MohfrLOyyt6414csrVjGcA/Hcql
         EOir5tFgviQbl5qVwc4znEvC+YiruEzGryM/YYVocgnboXI10Xi4v/j+M/48vt01kS1s
         05jPuBZ5vL8bhcbTkSfWxEAXsRCJwZYSdhnGOpaobk+qcEIB5GUCc3oCoyEvYJLC0JJ2
         CLRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Fl2wckzEjrZj1KS6pWVpn45aRrlE7bnPOpxfz/GmkSQ=;
        b=kzqfsbKED5WRkS+ZFhfPp1k1/r0WbZrwgNILH9JofZyjE+0dUUEtFIU6F2I7senlrb
         f1lRoN1MLB3ZwucAdAD7YN/1YOpfZyHB24YLr5iT/HyK/euc/rhR3n8+CGGQi2Avvgog
         iujmXBM93X5iwbLfyVO6NyjfpJR8H3UBvLFhna8uLGsnqhTSS9dBJZv6pHPV4h/4FAM8
         3y5mY2xdWUx4qXuXm9JHJdBxhkQ6D/w/44ZTgBhGBKpcT42ebWjV3tw9/Fx3ouHhMVzd
         Y8igDnD3XMZdm9eRSlnWCA7Be2dPtiStaiO7GUBzoTBsSgu5xJ4iVwRFfMQOE9vAVo2I
         JDyw==
X-Gm-Message-State: AMke39kFIlLQvHrnmIbw3C+qCYkYlfsBux1e7Pg8lqPV/1RH6xGpl7jQdC6RnVoHfqUAbw==
X-Received: by 10.28.72.193 with SMTP id v184mr24145333wma.105.1488995283673;
        Wed, 08 Mar 2017 09:48:03 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id v3sm5072491wrb.39.2017.03.08.09.48.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 09:48:02 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging: ks7010: eap_packet: Rearrange the code
Date: Wed,  8 Mar 2017 19:47:53 +0200
Message-Id: <20170308174753.5540-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Split lines to have less than 80 characters.

Fix the checkpath.pl warning:
WARNING: line over 80 characters.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
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


