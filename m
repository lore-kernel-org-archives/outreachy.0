X-GM-THRID: 6669361827248340992
X-Received: by 2002:aca:aa94:: with SMTP id t142mr8047216oie.17.1552831806075;
        Sun, 17 Mar 2019 07:10:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:62c:: with SMTP id 41ls2143097otn.2.gmail; Sun, 17 Mar
 2019 07:10:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzVbZj9vActg1iS0tuzfAzZRVCc0L+GhSx3d1ShB8B8Af3tpiZLHSIw4yBsdwWK5h98aqao
X-Received: by 2002:a9d:19d1:: with SMTP id k75mr7374529otk.49.1552831805142;
        Sun, 17 Mar 2019 07:10:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552831805; cv=none;
        d=google.com; s=arc-20160816;
        b=hy4mVFiQpbcTeMEoOEZmvu4TtTPO9gfS1FwaM1pKIxlIXtyzjjts3LJtwikKGV8fsU
         AxUM0tGtilMP7yR4mV44m8+Ykp/MRtzkuHVtWyzqGiaF2/jxRDv6G6e87Dat3xGiOALd
         8uiC4StK96aE1H1benoY5LbPAGTVH7BHdBSwE4PHmX0YoLvyK9C9zaMl2gBU68zjW9So
         sXnXTBRiOliSmr8Iv6EFkzX+PLKP6CpFDlHUBQQwTkZHOXO+udNiBeZVeLvvewUzaOrf
         zofieNzcrhbjRqz4bgxM1h4fbTlF+dep4qHqFkTSnvTGOwLONW+z2Aw/9uc2Sj9Hg4pK
         vzvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=9jnPAYa8MXmfIKxqYpA0g6Li0v6dbBPf4RVN5wyyWss=;
        b=MPY9HuhFgKkowbQZ2WtsU3TputMU8tVxkkdCxJpEG07gkmC9rqyU8DLxWs3mrOcvTh
         dCrLY79wg4TKtWy4hFsGLRfX8L66yenT1i1wUNYEpekWU3H8heZ0cM9entA8TC0oUC7i
         f19J+GEAJ6NLFulVmLomb2g3iQfmXR7m1dWgAL4wO7UuXFUPnFRfb7/ds7ws4Tp5TRD9
         DOwh9JxOdVO+3ra3ohmmryuMIyAZqA/lmCpXcJ5hGUUnIgLAFaNeiSmVetER+Rfzvh5I
         zaIdP4JMdx478vJ+vVjvm5Fq16qXoDEEoXO8+Vby/nQBJRcQ4AgVyNNYMn3B97kDDMPZ
         +gog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IwYsGhID;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t14si96406oth.5.2019.03.17.07.10.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 07:10:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IwYsGhID;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id v1so4858942pgi.5
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 07:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=9jnPAYa8MXmfIKxqYpA0g6Li0v6dbBPf4RVN5wyyWss=;
        b=IwYsGhIDqwFsdY85R1l5JnACsUD7h0YWGl3jZObuvrsZcY5WWHBcvrVerLPj4I39fj
         kiAvyWkFHI2tbq4R+j+cdyX5Elc9lG3by2JUNfxg1lDMlR/N2Ep7zIobfqaxS1NNOxA/
         rRJY5hJXfaAO7UVRmXVgeSuMxH+csofEvJtjvkxfOmDRgcc4n1PvPAoyOkXXN2rlZxgg
         2tuHxPULt2Qjl1UaoFa+w0EC3OwbR0SzJsj8yz1L+HvPTWee44Jg6TX8PE5H6gFsFJRP
         bor/JlC21GBF/HUorzV7K3AAKic4rvpvRLbXybSJfeTwtcCNs3upRVu4CWPGCgZTbDr+
         o8gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9jnPAYa8MXmfIKxqYpA0g6Li0v6dbBPf4RVN5wyyWss=;
        b=atHzaSRGOG6IpssN3lD4pImw5DgDTsyUTuqO42U4r3OR2SN0kMyqexz9k2hMBot2AU
         R2o2YTAkIejPJMxZohPS5P6VLTxs/VyZXOeBK3h3DOax8TptFGNOUn+zS8s5PklzWiod
         iosa1/cvaXlteZeh22b9ACeFUYBI2aG/5VEm7YTxUAKu3+GJwIFIUf5tCUJ6jVWIJUY7
         Y+Pq3iS+RlYbKv+lKgaOeusUIYto35WF6xy5xvjxiSBv6OdwWzGYh+rs3/2jfD9a+P3W
         biKNTX1PiPVsolQV5pHHyrCegvuJeb3FYYILLSeulAi4GKZT3nlOekbim8NU/d7cXxAl
         wqKA==
X-Gm-Message-State: APjAAAW54L87u86ITnILuuJ0hJYqynaEwzqK3UI435ZHZ+HVpibojaD/
	PpMSxEC7xbUohhRexXUlHlUe+brZ
X-Received: by 2002:aa7:90c7:: with SMTP id k7mr14123155pfk.186.1552831804169;
        Sun, 17 Mar 2019 07:10:04 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.111.180])
        by smtp.gmail.com with ESMTPSA id q18sm9988877pgv.9.2019.03.17.07.10.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 17 Mar 2019 07:10:03 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel]staging: greybus: line over 80 characters
Date: Sun, 17 Mar 2019 19:39:50 +0530
Message-Id: <1552831790-11088-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix line over 80 characters

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/greybus/arche-platform.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index 70debee..307ff51 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -47,8 +47,10 @@ struct arche_platform_drvdata {
 	struct gpio_desc *svc_reset;
 	bool is_reset_act_hi;
 	struct gpio_desc *svc_sysboot;
-	struct gpio_desc *wake_detect;	/* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
-
+	struct gpio_desc *wake_detect; /*
+					* bi-dir,maps to WAKE_MOD & WAKE_FRAME
+					* signals
+					*/
 	enum arche_platform_state state;
 
 	struct gpio_desc *svc_refclk_req;
-- 
2.7.4


