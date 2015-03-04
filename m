X-GM-THRID: 6648489836544
X-Received: by 10.180.87.166 with SMTP id az6mr4109867wib.1.1425494192164;
        Wed, 04 Mar 2015 10:36:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.104 with SMTP id r8ls205582lar.48.gmail; Wed, 04 Mar
 2015 10:36:31 -0800 (PST)
X-Received: by 10.112.224.12 with SMTP id qy12mr904384lbc.10.1425494191644;
        Wed, 04 Mar 2015 10:36:31 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id gj20si120477wic.1.2015.03.04.10.36.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 10:36:31 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wivr20 with SMTP id r20so1214241wiv.3
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 10:36:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=8OA56kXor2n6sWLhcHIWrIzXmHQutYJBhRoKIJcKz78=;
        b=CiyoK5CVhlE5SrE4iIn2U6qLRk9hGDhhZuMyI4qNQc6D9KaWz30y2Gg3vXxf1cpDFO
         qbSP1dgTGb1a4Iilhilbqn7n+K/VpgQ/Xpu1ADPYirfIyo+/XgMse1vRhwl7m/WWOguG
         EVachcuI1+AbFZPgW4dQi7m+v23nqG2w4jXcWb8oL5qLwDgyl2IIsZrXmj0cbTzOuPbU
         CtAHZRHH53Ny5e7CRjcRZByQyLlchpTOd+K7wFyIvpGjLMewEfL2assZ+izl/hAVPAr+
         jvxOFqjdaYvMORE2q4NQweWkhhW4iji2y0oOF9bLStcZWUBImfHC6nD34NuXncJfW6vu
         4aKg==
X-Received: by 10.180.214.99 with SMTP id nz3mr15643647wic.82.1425494191548;
        Wed, 04 Mar 2015 10:36:31 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([85.107.63.81])
        by mx.google.com with ESMTPSA id l4sm26324104wiw.9.2015.03.04.10.36.30
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 10:36:31 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: vt6656: Fix prefer ether_addr_copy() over memcpy()
Date: Wed,  4 Mar 2015 20:36:44 +0200
Message-Id: <1425494204-8831-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

Fixed the checkpatch.pl warning in rxtx.c file
WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
addresses are __aligned(2)

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 33baf26..f6c2cf8 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -755,9 +755,9 @@ static void vnt_fill_txkey(struct vnt_usb_send_context *tx_context,
 		else
 			mic_hdr->hlen = cpu_to_be16(22);
 
-		memcpy(mic_hdr->addr1, hdr->addr1, ETH_ALEN);
-		memcpy(mic_hdr->addr2, hdr->addr2, ETH_ALEN);
-		memcpy(mic_hdr->addr3, hdr->addr3, ETH_ALEN);
+		ether_addr_copy(mic_hdr->addr1, hdr->addr1);
+		ether_addr_copy(mic_hdr->addr2, hdr->addr2);
+		ether_addr_copy(mic_hdr->addr3, hdr->addr3);
 
 		mic_hdr->frame_control = cpu_to_le16(
 			le16_to_cpu(hdr->frame_control) & 0xc78f);
@@ -765,7 +765,7 @@ static void vnt_fill_txkey(struct vnt_usb_send_context *tx_context,
 				le16_to_cpu(hdr->seq_ctrl) & 0xf);
 
 		if (ieee80211_has_a4(hdr->frame_control))
-			memcpy(mic_hdr->addr4, hdr->addr4, ETH_ALEN);
+			ether_addr_copy(mic_hdr->addr4, hdr->addr4);
 
 
 		memcpy(key_buffer, tx_key->key, WLAN_KEY_LEN_CCMP);
-- 
1.8.3.2


