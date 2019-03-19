X-GM-THRID: 6670105232964321280
X-Received: by 2002:aca:c6c8:: with SMTP id w191mr964040oif.24.1553005820993;
        Tue, 19 Mar 2019 07:30:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cd4d:: with SMTP id d74ls857734oig.8.gmail; Tue, 19 Mar
 2019 07:30:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzW8rCxfn2/ix5mPzP/1HyvJWNHcmWetwUC1smbW1D82+JwAQEfGiaPYPaqZ6ASmHVK5ADg
X-Received: by 2002:aca:f156:: with SMTP id p83mr939866oih.18.1553005818144;
        Tue, 19 Mar 2019 07:30:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553005818; cv=none;
        d=google.com; s=arc-20160816;
        b=oyrOKvzYqVf5KtxelknDxsOcFACcR6lBDWhQu/YjEfHEdKJO2/zjWLrBMiYCGCSdF5
         pz1TriPcjUCgoPDEa1Az0fFlzBMeSVClMu+/l7656X4gvMA5cHpx58nVjTD5+FoBAeGl
         slDwecfddELEkkwyUoRyLF8MADLXB9M7KtiJkBAcCnHMHV+aFvsgvVkj7kdHWezIBlyt
         x7oYRvdYqTJxF1RNgoZ33EVD95v3avQ2bKOItEGr3W8Hu5AuOd2vFc1TTU677RwvS5L0
         FisSx9u9kShBMmzC/E5wBU+5eqAOW/C95V3yELKBz20h1AydGpU2R9X7rVqGBUAlQp/l
         DoLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=zoqQNXD7KPr4RWW6vo+04F4H4H1t+Bo+Mu1VYOg921c=;
        b=o/FQOnecenkO9xi+IKx1cOnljDdXJpDSx86DYsgS9YsFDa0rw6KZQmZg2JxqX11hf5
         YoW5nRiYOHfETSo1amVrz8RE9BJF5L61RkZ/8nEURtSXBSyowJrJot706FAcvXtk72GC
         FZ/IFXO/OPlZCJYXRvX1fQsXyZ+sZScHlfzWoV5zWG6nDXPZWu+hC43pc5v4gPkquh7n
         CHIMVaXDaDzvfAFkU5c8JlUFnWCauD7OFzBovlbNU290ZXus4XZFPP0aXyydAWRmGJMf
         sWy9SXfTOVe8DzoqgeDXAV0FiaOhPAHJzwZFpPnmUMNDOakWnYDNyJUYOIXtRyM56SiF
         ZcbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=elSG2efF;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id t14si514941oth.5.2019.03.19.07.30.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:30:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=elSG2efF;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id d25so13808512pfn.8
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 07:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zoqQNXD7KPr4RWW6vo+04F4H4H1t+Bo+Mu1VYOg921c=;
        b=elSG2efF9HoBHjnbXBY3ckDXRKQz4FjnkJu05g1HUlZKYkGzdwzhJ4Rz0BxDJ5B/Bd
         I7RccJC2xSbF4IUqXCPLgro4SEw4ozJFCKa4zz/fQz1ji8gBugnMwqOdwIEeLagmDrX8
         aRGf+p0ZIKbYwWisiuFvRIg2vgVO1NP8c37cGwSkVzl6RS3tFAviW1jA7Cha4aHzMgAD
         kzZtXX0sDytuxmBWyPD0YSQEVsOgtBQcEiSJhJxzhwfEcxuNp6+yr5+CSMwz16S959Yf
         0RRo5CuWuMtUU8ZVeZ+XQtwyzoUUiAFp+n3FgyrdM9ATcix3LXe/NidTT2x2dUftw+m8
         YvpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zoqQNXD7KPr4RWW6vo+04F4H4H1t+Bo+Mu1VYOg921c=;
        b=OI4P1bFnMNqz8mF7c2a74jArf43uyjgHr3LmciuM2+p37ppiCLluEQj4NKvnijXCzU
         X0U5HVWmNwMQ7cRoJYa8PU+q3O4wAqxzMTkzL9QZj6aoO6c0TQFhyS2aJFjboA4PB9OG
         FyMWeD6i+RQj5rNe4xGDAs2hxwZlWhyfKYfy1lQyzt7dmMJVyfW/DrU4+7ymksnb+blM
         m2FeGaSMaJThUievhvU5BVE2NOO4jtqa6xoqkgy57aGG6yJWSnd5kbhv5O74kPEYnTzC
         tjweCU9vEAIkBSHrpZDHShQcHVckHPuHO6wA4khpmFXJhZSjYS0ZnCqXaYsYlhF8UiuY
         sFfw==
X-Gm-Message-State: APjAAAUaZStUcSTwSbeoQU126YGX+7NwQWoDM5FE+mK+crbWUOHvlxZO
	SIBIhffFqvVxA1ko/F39I/gAjow6
X-Received: by 2002:a62:fb04:: with SMTP id x4mr2255409pfm.83.1553005817515;
        Tue, 19 Mar 2019 07:30:17 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:75f4:f821:faec:9887])
        by smtp.googlemail.com with ESMTPSA id h87sm33283304pfj.20.2019.03.19.07.30.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:30:16 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: rtl8192u: r8192U_dm: Remove unnecessary blank lines.
Date: Tue, 19 Mar 2019 20:00:03 +0530
Message-Id: <20190319143003.9118-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>

Remove unnecessary blank lines.
Issue found by checkpatch.pl

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
No changes
 drivers/staging/rtl8192u/r8190_rtl8256.c | 1 +
 drivers/staging/rtl8192u/r8192U_dm.c     | 3 ---
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index a8c8e8c0660d..0c42eac07e2c 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -230,6 +230,7 @@ void phy_set_rf8256_cck_tx_power(struct net_device *dev, u8 powerlevel)
 {
 	u32	TxAGC = 0;
 	struct r8192_priv *priv = ieee80211_priv(dev);
+
 	TxAGC = powerlevel;
 
 	if (priv->bDynamicTxLowPower) {
diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 6c9f9d82477d..4fe4c99a0880 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -45,17 +45,14 @@ static struct dynamic_rx_path_sel DM_RxPathSelTable;
 
 /*------------------------Define global variable-----------------------------*/
 
-
 /*------------------------Define local variable------------------------------*/
 /*------------------------Define local variable------------------------------*/
 
-
 /*--------------------Define export function prototype-----------------------*/
 extern	void dm_check_fsync(struct net_device *dev);
 
 /*--------------------Define export function prototype-----------------------*/
 
-
 /*---------------------Define local function prototype-----------------------*/
 /* DM --> Rate Adaptive */
 static	void	dm_check_rate_adaptive(struct net_device *dev);
-- 
2.17.1


