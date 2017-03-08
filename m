X-GM-THRID: 6395260481558282240
X-Received: by 10.46.33.82 with SMTP id h79mr1675120ljh.7.1489012614527;
        Wed, 08 Mar 2017 14:36:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.92.129 with SMTP id q123ls494467ljb.23.gmail; Wed, 08 Mar
 2017 14:36:53 -0800 (PST)
X-Received: by 10.25.150.2 with SMTP id y2mr1321356lfd.21.1489012613558;
        Wed, 08 Mar 2017 14:36:53 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id e72si854115wma.0.2017.03.08.14.36.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 14:36:53 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id u132so8300708wmg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 14:36:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ZdsHiqRcFdV2li5EG9xhFpZ3iUmcrzgy9/hOYT6zFaY=;
        b=Vbdm7nq+kfMpxc9fdeaTjyIGX6BHmetVjuX8HuBPnMRGEXfYKLzVr50n6hFrZirevy
         DAvl/QY5+onmEFzMvU79aFIi6AoQ5KlJoGjXRs4h2D3QmhuPYomPXcicF8QS40DteK6A
         hTzdHbeXyBshyWoeWbaVPjMLRQ0pHvx1Pw0X7nUSD7lK3ojgn5EcFFodL/H5N/f2oQOQ
         Dxcj1aVByWvj+j5rFxQgXjdcFKyuXGE3W7QrJRoB+61TpO7h24zu9OMtV3mWYbU4fkJL
         R8ye+K/5bsam7laajNdOSY6V3JwAi4fKZKR69jBN06thBsrEp6iwtYhqyEKefVGATuSm
         e98Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ZdsHiqRcFdV2li5EG9xhFpZ3iUmcrzgy9/hOYT6zFaY=;
        b=hcezeSPvbdJLPAeTJsnTntpnaDGf4i4AlyAS17nY06ze5e6lJDtYg2l3+jj4QhrRsX
         C4PrldkznsmZQToYv6ZGmIDFOPoxTegyItLC37dqw9VM0vyWbwPw51Vo8Ng+a+CQXlSh
         7K5B/dZkGLO+JcrN8IkpHWaUPX4znTHTj3kUx3+ZLFSI+IzAynOI7uEeLrbKD0Agqjow
         uvz6G702yDjTACy2fh8I7zYVm5215GEXzLzd6vJHhWwrFLPloyXAkGiqx/rcQZJPCvbb
         edd5gDofiqasS34yv/w6Qjne/CuP1BE6ruJXPzHktunvngr24AH3UFIthi8AmtQfQDHR
         4i2g==
X-Gm-Message-State: AMke39mrQSxbxnPPC/+tjR9xr3p0P/DyyEcgfob8XWeN+MQIOSQhD29DuT742yGHBEBY7Q==
X-Received: by 10.28.213.142 with SMTP id m136mr8114343wmg.90.1489012613384;
        Wed, 08 Mar 2017 14:36:53 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:930:abe5:5078:563b])
        by smtp.gmail.com with ESMTPSA id d1sm5841015wrb.62.2017.03.08.14.36.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 14:36:52 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging: ks7010: eap_packet: Format comments to fit in line
Date: Thu,  9 Mar 2017 00:36:50 +0200
Message-Id: <20170308223650.3791-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Split lines to have less than 80 characters.

Fix the checkpatch.pl warning:
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


