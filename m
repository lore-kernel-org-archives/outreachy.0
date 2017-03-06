X-GM-THRID: 6394380881452072960
X-Received: by 10.46.22.68 with SMTP id 4mr2651201ljw.14.1488823556406;
        Mon, 06 Mar 2017 10:05:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.207 with SMTP id u198ls1536135lja.18.gmail; Mon, 06 Mar
 2017 10:05:55 -0800 (PST)
X-Received: by 10.46.21.91 with SMTP id 27mr2614479ljv.0.1488823555263;
        Mon, 06 Mar 2017 10:05:55 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id l138si71612wmg.0.2017.03.06.10.05.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 10:05:55 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id n11so15065651wma.0
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 10:05:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=9tJnDUf1qdEHSz0uZK9fx8B9+jj0f+tkMUoMnDOoGh8=;
        b=RP8uNuSLrmINyf1azSN5rzOVEvfZB0CyQv0HiCfEG40R7IJZfxIRrBlQ2TB3LB+NRk
         ZEP6KzuM9XKikH8k5zzWAObYGbp8QENBZvE9N0SEqFMzK+ExdsVyFokNcUVurncxtFBb
         phjW8iF8ThPO21PruozIjfP/THh2v8fXIABmTsM2Slx7R2Gdu0klbz02mRwD0iqz29IS
         ETNQNI6UgoaDZmRyU4qqrLuS9C6/YufgoCr/IMrqcWkU63O9fuPfW3YZu6kvl1T36iMH
         1S4J7g2cb2LUCZNabxYm1w1WiKhlutNfTSCHcZxenvsSM8xxumQ4QbkrHv0rOQR5Oxy4
         L4vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9tJnDUf1qdEHSz0uZK9fx8B9+jj0f+tkMUoMnDOoGh8=;
        b=iQzAGugnNV96GEtk4HoDrfyAQ/fj/TGZ/aV/mi+yr00PwdkUNVH+UFSdzMeDp7F0DK
         amkGWh4Vc7QzzTFI7w40iGcj9oRnZi4ARuiC13vK2C5yySaFFv3LVyQVFKrAKrwjSCsp
         JlE6Q29DAbHJwKRMdF5BSTax2VCBFyLuD4eic9hDPpA4r01VgzDNvrBdIA1aGcuwsFVt
         1YeqXb5bk5Aa1UgGr8vE1MJMqsPbqQ9b9aKREWi1tAsLvVlpPNnaQL1jMQrYnmbo76GZ
         iKn4Zah7R8TopMgoCeesMenGwi9di/DppN7P68df8LTdBZBE6/EGyn+egQ2wavZs9GYA
         GZ4A==
X-Gm-Message-State: AMke39kadOxWBGAecZHo3LATKdVqT3CidlkJxbaZJzRTnB6x2Rr5n7SKUhwixYE4onbQ0Q==
X-Received: by 10.28.74.69 with SMTP id x66mr13921813wma.124.1488823555008;
        Mon, 06 Mar 2017 10:05:55 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.69])
        by smtp.gmail.com with ESMTPSA id 36sm27905967wrz.8.2017.03.06.10.05.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 10:05:53 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v6] staging: speakup: i18n: Delete tab to indent
Date: Mon,  6 Mar 2017 20:05:51 +0200
Message-Id: <20170306180551.2820-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Added the previous changes of the patch in the v6.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v5:
*Added a space to align the code.
*Added a space after ':' in the subject of the patch.
*Deleted the '.c' in the subject of the patch.

Changes since v4:
*Applied the changes from v3 to the originl file.

Changes since v3:
*Added a space to align the code.

Changes since v2:
*Deleted spaces and added a tab.

Changes since v1:
*Deleted an extra tab to indent the code.

 drivers/staging/speakup/i18n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 1a3e348..11f1418 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
 			if (index >= MSG_FORMATTED_START &&
 			    index <= MSG_FORMATTED_END &&
 			    !fmt_validate(speakup_default_msgs[index],
-			                  newstr)) {
+					  newstr)) {
 				kfree(newstr);
 				return -EINVAL;
 			}
-- 
2.9.3


