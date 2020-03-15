X-GM-THRID: 6804291594898898944
X-Received: by 2002:a17:906:2894:: with SMTP id o20mr18529843ejd.341.1584247591835;
        Sat, 14 Mar 2020 21:46:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1e42:: with SMTP id i2ls8244900ejj.1.gmail; Sat, 14
 Mar 2020 21:46:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvWubJBZNpbFlfXYdInVBk6d1705VJ0x3X6Dr6mOc25mXwgFf7uiyFS31yjovgp5yNakmOL
X-Received: by 2002:a17:906:1cc2:: with SMTP id i2mr18757882ejh.283.1584247590686;
        Sat, 14 Mar 2020 21:46:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584247590; cv=none;
        d=google.com; s=arc-20160816;
        b=EDJKsz05zAiLtj+yhfW67LVKTCk1fw6Appby+++wZU2LFz7T/bZsLd/nMRXATUMFKH
         D613YoFtGa71OXI3Rih06edQ1L0VfVx+5e8MTEt2WvOpSNETDyBAJ9zvys82Rc2+PNGk
         g4ASqsqgdiTy3r+RBrZOPmXVq2qN14oPAPm1DlHM0UBu3CfxWxt9jLjFCw+H3bqqveSo
         MDfSDyU+JQxbtNYDuDVf0QCnXQszQ/lJ3VpH6A71xF74QLQa/8oybJSKkRI8CkxyN6Hz
         nGaUyxF4dHm8jHG/9WhF48h+2MLLJgAMauYDtXYUIdoCusumMgcRtjL3n/uBHCVFmdDI
         /tTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=uGOr7sAnaOBe9Hso/RjKQGsiJxtreaPjs9A4yn5GCrg=;
        b=Uco+8r7oLECjGPpXYMMd18Odgzpvm1/JCXD4+2H1bAsTOMY5NAd+6rPE+BmLfVqa6t
         hrBnb2uirtf0oQZVDgyp1ocy10TBtAPX8kv2421hib0VQZhrBFv8fM/v6+bj6iwYXPly
         zHX/0TFIpKAzCAdYiQF+luPuxDuESDPBaWD2KfN4HZiD1EKR7cwwU4taKODtbDv8pxiR
         dDIQA4FMfIwcoXyR4D1pF0M+vTmN9MVze1ylBHyBZdDhkFXp3S+XnVBF8LynLOWR7ZBI
         TJHmcqR3NqbO0cC6pBBpKQNGCibI8lKDiyl9IU4LWeDpX1reofWPZkOAW+wsozsH/aSM
         rdfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=bZwStloW;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id h10si741352edn.1.2020.03.14.21.46.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 21:46:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=bZwStloW;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x342.google.com with SMTP id n8so14054260wmc.4
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 21:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:subject:date:message-id;
        bh=uGOr7sAnaOBe9Hso/RjKQGsiJxtreaPjs9A4yn5GCrg=;
        b=bZwStloW7eFNTKg2IzlZVbrjA5zPd3zoHeBmqsHLGS7s5tD8JOWGmnZnrGSRoGHgOP
         TfEB2MUVTntkln6JAdgO4MlHrG1ect/39nremMdefCmeTYKSiUMxVMf1VoHX3lmMk2JC
         zGEIvNa/np74Ls6Ul9byw9LwI5F91v0kIO3I8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=uGOr7sAnaOBe9Hso/RjKQGsiJxtreaPjs9A4yn5GCrg=;
        b=k88ToG9qLp1mCJl93c5ox4thS1c16SDw/HUbQdopL3PFZA4SoAPDbQhQOFONNk6rWN
         lYnHjtT2/xOOQg08XF9RlPX5+qyrOC5N6e46NOUqHIqUDYPYJkrBsYghocHfpp2XOIE5
         ZOhfSv3egUx1KwamdBElR66XuICM5UwoiirWYbvjpI/5GWfG5NHEACKJmyo7nmYm/vAa
         4ai/Pry3wyjM9woV5Z94IVxw12aZYAf6A9xMq8+DIjrvvXQ9XTfBqwXkG34r0ICpmDPj
         6saxBM7Utjgiz6+MQkuHHfAikIpFD6t8kmvrb4nSs7wdaeOWZOWGd35dJApfjAuZ/3N/
         RYhQ==
X-Gm-Message-State: ANhLgQ2Ir4/mGvbk6BALQwlv/QG3utGHr8Vej9jP+FY5Bt8w10CfOuJ8
	sqp/pXFe0WdM78en5UMrGF5zaISMst5UHw==
X-Received: by 2002:a1c:9d41:: with SMTP id g62mr20717420wme.131.1584247590241;
        Sat, 14 Mar 2020 21:46:30 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id u1sm68508529wrt.78.2020.03.14.21.46.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2020 21:46:29 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net
Subject: [PATCH] staging: vt6655: device_main: switch multiple assignment for one assignment per line
Date: Sun, 15 Mar 2020 05:46:20 +0100
Message-Id: <20200315044620.14104-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

One assignment per line is preferred, instead of multiple assignments.
To prevent possible undefined behavior.
Issue found with checkpath.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/vt6655/device_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 0442f71494b2..c271e3937125 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -708,7 +708,8 @@ static int device_init_td1_ring(struct vnt_private *priv)
 
 	if (i > 0)
 		priv->apTD1Rings[i - 1].next_desc = cpu_to_le32(priv->td1_pool_dma);
-	priv->apTailTD[1] = priv->apCurrTD[1] = &priv->apTD1Rings[0];
+	priv->apCurrTD[1] = &priv->apTD1Rings[0];
+	priv->apTailTD[1] = &priv->apTD1Rings[0];
 
 	return 0;
 
-- 
2.17.1


