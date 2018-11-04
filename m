X-GM-THRID: 6620096919809032192
X-Received: by 2002:a9d:2caa:: with SMTP id p39mr4492811otb.36.1541361426929;
        Sun, 04 Nov 2018 11:57:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:2cd5:: with SMTP id e21ls2949692otd.0.gmail; Sun, 04 Nov
 2018 11:57:06 -0800 (PST)
X-Google-Smtp-Source: AJdET5ceU7FvMN2NQ+F/o4gOKQ9c7Sy5jX8Ih/Ur+XAsBGM5IXgyw/GI701wI8XoC0G/6hIsSW6Q
X-Received: by 2002:a9d:da8:: with SMTP id 37mr6424096ots.13.1541361426343;
        Sun, 04 Nov 2018 11:57:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541361426; cv=none;
        d=google.com; s=arc-20160816;
        b=C7atovBLzSYryuwD12rk6J2EhBH9aoNR+YiJAW3Q9pA9y7fffvGCWhA5VLvEWKIz5e
         L7Q/p+7Tbn18f2832ikLhq1LyoicnE3AlmxGzLrGJI+xpAG0WWMyKK9f8xWPtuht7erS
         /KBKhXcU6ZC/QYacrUzBRw5SGqbzA9XDGvb+8Ib3/xhIpeo7AmqHaF24l/GuAg1eydCW
         Sa6bkuXM4pIaVccZktFbQPP00Q2aeAkyTJvBOtjNEu1LYr8Uuygt076RUgUsGd1wR06p
         rR9O6y6q7bRO/PD7gYw2z/gyYWJjuDrNbAeSyG6HAv8OgNWE7eZyssvZZ7sv8yij7zZQ
         0LpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=O8aqkaZZ9TslldfL8CmLeHvfXkUzBAmgoNNPKLJppRY=;
        b=c24j1sqy49FiiRQOtjhcxYDlETgyhxZ+RkVtr/LkjOzv2q3uzYK4V6Awf6IlB83UMs
         IwfSRwpAf45dM685XjWLMRpuOx1B4LyXxAOCXAXJQBJfBJ2y8ubtfHaQ/SdaNnkw7U4q
         X9MHvo4Jm6L9vChhN1eLTrKDkKn0afOP0/xbfH/5z2RXW6OijSZUTzONg1e//AwCvRxJ
         5kI0aNkLXv7gtI+ZvKGHnTu7I1ApI191NHP3EWUfKnJZm569M2LNKQ3OZbRDbdr3cWW4
         xeOq6TdnMW4HAmIQdn8ruMwxFoi1ZJ3e03IKRPOyPelM15Joppzog/KlK6JfMi+axf5U
         RUig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hBvFrryM;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id d1si78080otb.3.2018.11.04.11.57.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 11:57:06 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hBvFrryM;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x632.google.com with SMTP id b5-v6so3360522pla.6
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Nov 2018 11:57:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=O8aqkaZZ9TslldfL8CmLeHvfXkUzBAmgoNNPKLJppRY=;
        b=hBvFrryMo+cvjJjw8dvoo0uHzTVPJ+KMxeQxd34r7K8nLgjEKvlGA+gR0p3nTz0Sa3
         OzXV8xKoxbbpzZyUOKk78Cy50gA9jZZ4sYdh5PAjovExAMx07cNBijnClotMG298JBQ5
         vwu0Pr3ZTB+OY1Tr7q+cEroKj2aUj7D25FxV9pkFQTakcakhaNJN5yxLgcblCitRCyRc
         scwdId8K7qyRlLrphiySXzC624bWTsTiewcPTg4PIhCNJzpw8ZBSc59kgpcV35YvBlUm
         mOFXPyARGRyrE/dwyN5ixiKuEpxpz43DQ23HQF7UcI2o4QYtGClFuBjWzv0G6XwTZhlJ
         NIFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=O8aqkaZZ9TslldfL8CmLeHvfXkUzBAmgoNNPKLJppRY=;
        b=hEshzpTSKtHHnWG1YkVKvHmwFohJ4Aa2BTsV3q2326aFjQkpH1fKZtrS3aKLZj9MvE
         YdsnukM1X8aHdw8t68KaGfMxgbQ/ff21fVMNAnio7XeY/w0pOPaqaW6Q09jNsX78T1ah
         22vwGoL+MaFc7qyMDH/tk2Hx/3RigIQiopNWVvKr6Omh4WGNyybqxWGEtAeniaw1U2LS
         aQcKpsPi7T9l8kxF411JQjYNWx1MR6ID1dcu7IpxEojHMP/8tF+78KmuS+1y9jMtQflj
         E8Nc8CTJSkq5H6hLqoXCUoIGJPxcFeKYx+FZtQZKGLsdM2U8AOJBZK2GEY2JZMBMBf7e
         kcrw==
X-Gm-Message-State: AGRZ1gLSUF9xAchRKuNce+24n61kTwqZxkyCwQ/Fu1xhulQqetR7WQPv
	29NhYJ99iB4cP+gMp9/9gl65Ng3vBGk=
X-Received: by 2002:a17:902:708b:: with SMTP id z11-v6mr20038036plk.151.1541361425753;
        Sun, 04 Nov 2018 11:57:05 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([49.35.118.235])
        by smtp.gmail.com with ESMTPSA id o70-v6sm4409177pfo.86.2018.11.04.11.57.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Nov 2018 11:57:05 -0800 (PST)
Date: Mon, 5 Nov 2018 01:27:01 +0530
From: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	linux-erofs@lists.ozlabs.org
Subject: [PATCH] staging: erofs: Modify conditional check.
Message-ID: <20181104195701.GA18201@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch includes modified condition to check for bio struct.

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


