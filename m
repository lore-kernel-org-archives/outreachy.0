X-GM-THRID: 6393400648864366592
X-Received: by 10.25.212.76 with SMTP id l73mr1100459lfg.13.1488650791523;
        Sat, 04 Mar 2017 10:06:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.198 with SMTP id s189ls1280666lja.6.gmail; Sat, 04 Mar
 2017 10:06:30 -0800 (PST)
X-Received: by 10.25.17.102 with SMTP id g99mr1073787lfi.6.1488650790655;
        Sat, 04 Mar 2017 10:06:30 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id f7si534970wmg.3.2017.03.04.10.06.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 10:06:30 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id v190so7666174wme.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 10:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=abqONdId8ou5sKLiwn1hUObIBQQQc1Hm07Hys83tBDg=;
        b=cQ3W0o/SDtS4Vheag9KX2V4dHnUUsQXOVqMrYUCKEPAutt25zbEbs9iXMkWmR+sED3
         FgjBC9A4PFGVk9tyl0U9ay7AkdYaKGWhBSC/C6skCi9MLPxNBtI4iqY5UhPtSnRfodah
         g2jkCO0mMhI04Cc9Evg9AjMPafH8T6cRPoj1z1aT/uy2k7H/d9bsAJjo3Q2hig2A89HQ
         r0Z+pJF6v7YohmpNaXK4NQ2nOHDjdRhmvw8eFsxtw3PCcmSljty9+n5J4yOULHRlQm7S
         dD8ZSG43py3AZXjLUpnUIKM1EVfc2Spu8cgs5V4k0RPl4H3nhVIkQ6QzavUtL1vJVj/S
         WS9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=abqONdId8ou5sKLiwn1hUObIBQQQc1Hm07Hys83tBDg=;
        b=VPh6gg+BiGxuU2vQZ1alsswm8wxwRPOe6BINnPsa6Mt5if3agiP1iiEHLWX5Io9kV+
         wEH5/DuZwRO3o5USldKeZn2UE3EVeBKmSVWY6Ep1SAqfbwi9AQJUktp/ax8pCaYmMsqk
         40es6YJ6dACZor0doulJ636J7uhun+YFnFounqxvtFrvHHiPWXyjgtlf4fO1G3yMHqnQ
         kjX7p31aUpPhysZWAW0ANZrM44HZlP0VKmawcksMnbD+AEfYaBd4LMyhpoT6QpwGybtc
         Sa8Cgo2Hm7rt3wit0DQQDuQjGUY79MGiHaIlD9OARiyztLPyswAEC2FrMtze3lL39lt6
         ZRfg==
X-Gm-Message-State: AMke39nvffnSzqbTtFq9hQzOIZ7mnVKe0/pM0nAFWkCNrm1b1MUCbhL/3TO1iuwQqKBLkw==
X-Received: by 10.28.166.133 with SMTP id p127mr7859643wme.62.1488650790437;
        Sat, 04 Mar 2017 10:06:30 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.250.134])
        by smtp.gmail.com with ESMTPSA id w17sm20054850wra.28.2017.03.04.10.06.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 10:06:29 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: outreachy-kernel@googlegroups.com,
	w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v3] staging:speakup:i18n.c: Delete tab to indent
Date: Sat,  4 Mar 2017 20:06:25 +0200
Message-Id: <20170304180625.6456-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Added a space to align code.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/i18n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index f4b3f48..11f1418 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
 			if (index >= MSG_FORMATTED_START &&
 			    index <= MSG_FORMATTED_END &&
 			    !fmt_validate(speakup_default_msgs[index],
-					 newstr)) {
+					  newstr)) {
 				kfree(newstr);
 				return -EINVAL;
 			}
-- 
2.9.3


