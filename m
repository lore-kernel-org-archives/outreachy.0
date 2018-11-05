X-GM-THRID: 6620096919809032192
X-Received: by 2002:a24:c7:: with SMTP id 190-v6mr2912216ita.19.1541394813803;
        Sun, 04 Nov 2018 21:13:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:8979:: with SMTP id u54-v6ls7685326jaj.3.gmail; Sun, 04
 Nov 2018 21:13:33 -0800 (PST)
X-Google-Smtp-Source: AJdET5f/R/GflOSVWoIRaHHSweO44UuUjLMKWJsDL0RyR+Bg1ZzOu94klit73zUSsTk4ld4FIiym
X-Received: by 2002:a02:8930:: with SMTP id o45-v6mr17347275jaj.10.1541394813021;
        Sun, 04 Nov 2018 21:13:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541394812; cv=none;
        d=google.com; s=arc-20160816;
        b=tyiFG2WpNBst46SbDRDV8A/11mNX1Bbh28RYfCAeplJvhMTYyH1MH/nFS+CmdOUJpU
         6fizUBv786CbrawLXgJR778MBlNUQ+kqkmxPK/WlisjMnmngp0aJRRfP6gYBOQAI8W09
         i6lKMQQdPjVEwzZv/2L3Pv4BnWysbTZpPa92NipM/KId50TiLseR/fbwDC94gNlZ0F+D
         G0K6FV7y8pWXv4mIf0dLNUTwaQl/cRq5wHBQaoaFmoNbnoJoNKGrDiXADjJuBTFhhE73
         xS+pPzpxslFqvyGV2iGK5TkAMfVMV9bvWju977T1BF7F6D7XUTyQQLvMCJy3gT4TggLV
         G1hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=2mWddr2F9k+fF2ZfoPs80rsmgFAZDfiY6AuMFbnu8uo=;
        b=upyivXjU8iNnv2+H2Di93XQYs6h//UKW+kK8fWYwsEwdn4MZopKCWbbukbaSFYVrfg
         ngsj73q18673gYgeE7t3v720mxhMcSzVsRtFEs9ieWK7yj8mQKrJkij0BD/YpwM/mIWr
         GnVIOIoGXP7v24fB8Uq5/FoXx3wzxU7IWwyw2JnkrRTFR/uQ6YleYYLZS8HyDztUPRZy
         FysO2CJj9bAJn94A8htzN9CChO/JK8OLyiQhfFMhJl0JNPvviTwV9QyWlHSzX3k+Oxn8
         drHsdyGMekTqyn/+o2NW2sxMufwJEKHTgp2Kj5vM3YwXTCiN5FogLhKRB0zZA/KlnZPB
         kOuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FrZdXHsX;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id k14-v6si303680itk.0.2018.11.04.21.13.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 21:13:32 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FrZdXHsX;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62d.google.com with SMTP id n4-v6so3848176plp.2
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Nov 2018 21:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2mWddr2F9k+fF2ZfoPs80rsmgFAZDfiY6AuMFbnu8uo=;
        b=FrZdXHsXxdInAthWHfI38+wlKpFRbAOuVKdsDIxVsgwhpxruKpYqeiyySDfmaDjBLV
         2sHs8ZWrCHwfvoqs/hGoTXvnBMLMc1TSlKnXJKQnTHKeeL7rKOlARxF9PpcdNYNWPnEE
         jNJf1pNg03XXE58V4DYnirxD5bLN8ugDQdEY4fv9J+g4/yLUrAHn31lY3wAeRBlTOZx/
         f8EJyc8vq/0hafCFauhYsCaRsjoQJ+KZGNB4fgCuK0jV46Yg35I4HJ6tCsrTLQuEhiNv
         bBgAaGFbbS3gRLiF6b4ATraFkbZ6RNOoFC3mAEcYXmKhIAlWz7rTTxd+fWL1s0atZEql
         hgFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2mWddr2F9k+fF2ZfoPs80rsmgFAZDfiY6AuMFbnu8uo=;
        b=BWFJtl9Ss4impMHUKGevMPULaC4jGWaWlZfB7dtTMD8POI33V0UZgSdYU7I5ORDrQc
         XxwgRv8rn6v3Nrpg10yhrLV5TQTX6CeXLq2Ph+BAFTSHLe/qOOVe/pAZUR5RkqzVUtyv
         JT5VpbmF7HSpC47UwS2W67UHMKHpOctIwbvQ1BD0qlfgxdMe6yCGo9b23HPCVKv12CUx
         P90f6IgkmgWR57mpoy8n/rpdf+ibffcLYp0FJ+6BKD1Rpn63+qreQ6ixfxFVrWnkTyca
         QrmSfO9Xh+bVmSEPBvs+MZJZLsNOKaoWSyTV9hD91qsb9QNBp4ev2ZfIy+SQU1hVZRYZ
         PHcQ==
X-Gm-Message-State: AGRZ1gLo6OOhqW24EnZlkX8FI8qLDIeQmyo439CIn556klazIAasLgOW
	feMJZqDh0ZTwGkVhqy1Lv6w=
X-Received: by 2002:a17:902:20c5:: with SMTP id v5-v6mr20888021plg.156.1541394812510;
        Sun, 04 Nov 2018 21:13:32 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2107:ff4e:8e11:c0ad:8f43:911b])
        by smtp.gmail.com with ESMTPSA id p2sm5425750pgc.94.2018.11.04.21.13.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Nov 2018 21:13:31 -0800 (PST)
Date: Mon, 5 Nov 2018 10:43:27 +0530
From: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	linux-erofs@lists.ozlabs.org
Subject: [PATCH v2 1/2] staging: erofs: Modify conditional check.
Message-ID: <3db6ea6f3a7b1fab94e5dacc1ec4a026e38548c2.1541394756.git.digholebhagyashri@example.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Found issue using checkpatch.
Use ! for NULL test rather than explicitly comparing to NULL.

Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/erofs/data.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
index 6384f73..a671ad4 100644
--- a/drivers/staging/erofs/data.c
+++ b/drivers/staging/erofs/data.c
@@ -240,7 +240,7 @@ static inline struct bio *erofs_read_raw_page(
 		bio = NULL;
 	}
 
-	if (bio == NULL) {
+	if (!bio) {
 		struct erofs_map_blocks map = {
 			.m_la = blknr_to_addr(current_block),
 		};
-- 
2.7.4


