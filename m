X-GM-THRID: 6395175956255866880
X-Received: by 10.157.3.103 with SMTP id 94mr3244276otv.100.1488992934210;
        Wed, 08 Mar 2017 09:08:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.99 with SMTP id i96ls1177490iod.45.gmail; Wed, 08 Mar
 2017 09:08:53 -0800 (PST)
X-Received: by 10.99.55.71 with SMTP id g7mr3499663pgn.157.1488992933189;
        Wed, 08 Mar 2017 09:08:53 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id u12si702415pfd.3.2017.03.08.09.08.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 09:08:53 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 77so3967100pgc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 09:08:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ZCeBfe4pWY71h6vTmIopnijLbg7Nf/lsFpeWGCdjWD8=;
        b=MOoqCah9UTPaOkMK0/shB69Dc7aGV2vkrljdNo6qE5v6BdaHKAGfAktFWVPJgJVyoV
         UU03dsHGpr/WD5ULgituSTYMQYkLunihNP+ddKR2AqcJHkagWETfchIY3GiokyWHFNNo
         avFl75inRk5MdMTm2eKq73OCu15WJ2xWlKRCa4iOwcXAm4kQchNhhAJGS7gWyIVEO0FO
         oSG5CAe9k/TfUU77q4wlr4CfSZdF6HfqoqOIO34hhcqVz3Fzbqvc9PJg8wpPKzaYx7MG
         VxDetwiLCHE2CoXYnd84brlXFgshGVNUZBm86WbYF7+osazIwXzylCHbfzImaKAgpWCm
         1/SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ZCeBfe4pWY71h6vTmIopnijLbg7Nf/lsFpeWGCdjWD8=;
        b=R7M5TiTGeP/3Dggs+LeT9PbY2tLCKkL15l+5oLQateddqs+LKnOL6Ikaostvr98s4V
         pXm1+uTiS358ME4ITyHUf9cGninMmUM6j/zJ7Gb6En3q9HEMCfISgoRZTSg/Spuknb/B
         H0jJsOZs3DyxsOc1U/sEV4Vp6Ao1Su+p5eHgc5WPhGUy3ysP0twOtmoV/O+3FsjC2FFW
         qObL207BWBzkRynS4eZbYyWZALtAJCPiPy13y83vFCxp2DKoM8O+ndTW+mXbs5OflWYw
         +835pF0B8GZhIKWyaeWosXlbXt69WjmvU/f5uOmeVTT5FmcE8KuTCiErZ7C7kBdE089+
         y/Zg==
X-Gm-Message-State: AMke39kj/yuHESE59ATNRCebghy7+ZdTIhRQMf6lJ3Z1nYTh1QQkJHwKSd74fQJBAXlZSg==
X-Received: by 10.98.55.66 with SMTP id e63mr8471928pfa.156.1488992932971;
        Wed, 08 Mar 2017 09:08:52 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id t189sm7325484pfb.81.2017.03.08.09.08.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 09:08:52 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: vc04_services: Use ARRAY_SIZE macro
Date: Wed,  8 Mar 2017 22:36:22 +0530
Message-Id: <1488992782-19111-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Use ARRAY_SIZE to calculate the size of an array.
The semantic patch used can be found here:
https://github.com/coccinelle/coccinellery/blob/master/arraysize/array.cocci

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
index f07cd44..3d87ce3 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
@@ -81,9 +81,7 @@ static struct vchiq_debugfs_log_entry vchiq_debugfs_log_entries[] = {
 	{ "susp", &vchiq_susp_log_level },
 	{ "arm",  &vchiq_arm_log_level },
 };
-static int n_log_entries =
-	sizeof(vchiq_debugfs_log_entries)/sizeof(vchiq_debugfs_log_entries[0]);
-
+static int n_log_entries = ARRAY_SIZE(vchiq_debugfs_log_entries);
 
 static struct dentry *vchiq_clients_top(void);
 static struct dentry *vchiq_debugfs_top(void);
-- 
2.7.4


