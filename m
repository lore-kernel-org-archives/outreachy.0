X-GM-THRID: 6394889714955976704
X-Received: by 10.46.71.15 with SMTP id u15mr579781lja.9.1488926288154;
        Tue, 07 Mar 2017 14:38:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.81 with SMTP id i17ls197796ljd.41.gmail; Tue, 07 Mar 2017
 14:38:07 -0800 (PST)
X-Received: by 10.46.15.2 with SMTP id 2mr569594ljp.31.1488926287745;
        Tue, 07 Mar 2017 14:38:07 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id p144si187142wme.2.2017.03.07.14.38.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 14:38:07 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id u48so2015646wrc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 14:38:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LZ3W1nH86exZ6QM4piC+COji/w2WYSSatzd3NXQ4yBQ=;
        b=Rj34Jbxs4KQumzl0jW/zNbWUtf0l4kyl6eia2j7BY2teEgLSmzujD3aMrdOWIW9nyN
         vE5a+slrAjYC0DeXGrDy1DG8a5/Xf1PwMJFDOYy94TvV60PBpCacyUgaO3tdFr3HmAvB
         Lbbd/gOJWhIkn7sQKnlEoJmxeovpIl+pH/IKti1BSDk2IolWPZKbHD/6fCQkncSY13hu
         VVm/3hZkYDLzrTbeHBmPFQSqd0q4kS45mrRLDYVBWJ1/xhoos6W6H8Ql9A46yF/CVrMs
         S61JO9QEOiS3mwo333X+X1QeOXNfIho1fIfSwDVk6FjPY0xzf7wQWTEZl9oyRnlMJsE1
         qj9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LZ3W1nH86exZ6QM4piC+COji/w2WYSSatzd3NXQ4yBQ=;
        b=YcMzUVpRBG508GMPd5Z5bbAiK2vLe/b9JkuLvooB1En9Yx06lGo2ytE6JvGyWdaqRe
         YkBq/tYHFDkvcwE6GPMj7XwVEYQchk9z6pxU9hJP4BrJMCvidSdEgEnn+67NBSEKMuFC
         vR9c3w5DhZ8z/aaHFdhEcKoAo/YX+vd+vwQDf6K/p1cubVXiU5qvIaNSzLiWSReEKY4G
         LWTogSzTd8qBYqoShCo3bqJuZTOYDf55rK+e7wCQO/K/yD3jkc+5N6d9QqblDKwqTfDi
         55fRIOcf51lM/87tfY13tTosMrmMo9BdQedvnVLP6NItW+ZgVgwGlnOZ8Vkkaz9ozxaN
         TJog==
X-Gm-Message-State: AMke39lWhG0jbkXU2xIKKPb7pe6xw5S2LFGQEeVTo+7uROWjma7Mq9i2y/oNiM6dhSFqPQ==
X-Received: by 10.223.136.82 with SMTP id e18mr2325356wre.28.1488926287572;
        Tue, 07 Mar 2017 14:38:07 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:8168:a9b6:7cd0:c4cf])
        by smtp.gmail.com with ESMTPSA id b17sm2181054wma.33.2017.03.07.14.38.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 14:38:06 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging: wilc1000: wilc_wlan_cfg: Delete blank line
Date: Wed,  8 Mar 2017 00:37:56 +0200
Message-Id: <20170307223756.6542-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Delete blank line before a '}' to fix the checkpath.pl issue:
CHECK: Blank lines aren't necessary before '}'.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan_cfg.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.c b/drivers/staging/wilc1000/wilc_wlan_cfg.c
index fed66dcd..f442e6f 100644
--- a/drivers/staging/wilc1000/wilc_wlan_cfg.c
+++ b/drivers/staging/wilc1000/wilc_wlan_cfg.c
@@ -490,7 +490,6 @@ int wilc_wlan_cfg_get_wid_value(u16 wid, u8 *buffer, u32 buffer_size)
 
 						i += toggle;
 						toggle ^= 1;
-
 					}
 					memcpy(buffer,  &g_cfg_str[i].str[1],
 					       size);
-- 
2.9.3


