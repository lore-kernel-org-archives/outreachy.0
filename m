X-GM-THRID: 6664357391399649280
X-Received: by 2002:aca:ed95:: with SMTP id l143mr10369187oih.56.1551666620176;
        Sun, 03 Mar 2019 18:30:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:be04:: with SMTP id o4ls2109481oif.1.gmail; Sun, 03 Mar
 2019 18:30:19 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYpyptootvWnE5mewmJXrYHnPczG3dh/qaJBhpMNbcavPQ2cgkLzG6NACGkvVpdGnpiCZww
X-Received: by 2002:aca:cd06:: with SMTP id d6mr10191247oig.10.1551666619028;
        Sun, 03 Mar 2019 18:30:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551666619; cv=none;
        d=google.com; s=arc-20160816;
        b=QEaqAHPkvHCb+OpWb52qMhMyYkn+PTOWoe8u5pVRcUGWF5r0Wmr3dVkKCr1xuoNkym
         /OkqjEk5Hh7aiULc6Bv2T/Yu+Akcbr3ACMsi12H45uffSBh1oG3zecf+5cKriyWURqbY
         Ash1Z1Xs1r/ACFm2wmdPgf4ydNCd6UAM1BjZASPkcQXvzW/ClsanMqXV90iEQpRhn6+4
         mF3iOjWIegnxxuU5kDs/arcs92CpR/Wvjm1NiuOISi4A6BYlAappq2Wos6xHa7obBb35
         hIWmeFli8419UdNDuUjiYC+QTLqOdRn1Z4LzQayXskDSH3akO6Q2hYW5PKfIGV4RYnar
         B/6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=h0kTcG1C3nCyH6BFVXDI0Agz09VGpFy0x/kjpnAvEzk=;
        b=B/aHA5rwBPAIlE/9k+cfkSFh2BW3XI3c1T3D8hy0pRB7Zk+yq2dGIv40MMa8yd1vL4
         nqFLdFlYECmvHu6+dw9pkJ3+Y6TQO+ONIXJasdqGYWTagGybtpfPJukn+xonssuGTtls
         fOdnUUJ9fvT0c0mf//nkkpeUK3hkNNmABcdrsRFtesHaNaac9VvaIMBL4MNQmtZpK1+R
         nQowgqn3g8HRWjWomi+0tXtJdlpNwmeskIxuFbffnHWyZjzX11YHJ0Szc+Rwb5Bb/C2/
         SQgf3pm6U2CH8MIvXldv7wweJn4NeQvELCjvB/GJO85KjEoXzklaaD69XZEU+PLG2PWY
         EAJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oryInB3G;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id x31si354140otb.1.2019.03.03.18.30.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 18:30:19 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oryInB3G;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x344.google.com with SMTP id m1so2977750otf.5
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 18:30:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=h0kTcG1C3nCyH6BFVXDI0Agz09VGpFy0x/kjpnAvEzk=;
        b=oryInB3GGrNFY2rSk0A9zgZse2K3RAnU+DTHISIzXsVJfZnl4aAI7IaXic14AMlUfT
         OdVDZRHVLAua6a1RR4trKFvtOuaxLGUkyaRP3JqKbXXpmXLO2i7yAIZERF44BBBsOoKT
         eG2hDLe88p/Ra9JPPcyFYtkxDv0ipKMvoUk5PmbnnOlNMyimogThMpQ9GMwI+DHcLrx7
         rafbJBDryawANrTwph2j41sqhtXpcmQ3QRNhNII0JKOosUaG6OczjGvAK/rL1ie3xKWp
         imb61TTl9IDanIQ7isPeGTCGXFWiBh9Ah6fEJ9cPJM7TiQIch62N3Kwx6C/9QXBYLvOg
         ITYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=h0kTcG1C3nCyH6BFVXDI0Agz09VGpFy0x/kjpnAvEzk=;
        b=MEXQxRRR62ZWt2CW83+xtmIb/ol5Pby0lgicBaOWUrOJb5u82vnqcsMEvM1Hw+WJFX
         NwJ1TwxSr+x0AX1eW6w/BZT9u758V0RJWWcGHdlr7AOAIg+Cj13hMOXeHiaRgDWdVbaH
         HteXQsL0NVwwBzcQ4f9TGwMpbMcXkcKkDJW5PSyQpo7tAfh9L63N32Jr2FTLV/ml/3wi
         IidRJ2MVdoZQw63iqp7vUSYzwEjgbEDIfDXLrt2/oLx/uZ76BkRRMiQA1COcUmyOfMjZ
         4dMKwkkcRws9EyTK6JxqpfnMcQuiWV8uMAQsNZxQSF/hAwo1KLxzgBsfvpnWeIT62UVa
         IdhA==
X-Gm-Message-State: APjAAAWLPFlHjLgGX4qhXru6jxDmwfj+pMSrGLVR6cpzicA9aY1uXycL
	vyYNR8IV0z4WNmGJmZU1IE0=
X-Received: by 2002:a9d:798c:: with SMTP id h12mr10471255otm.86.1551666618581;
        Sun, 03 Mar 2019 18:30:18 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id n25sm2081344otj.76.2019.03.03.18.30.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 03 Mar 2019 18:30:17 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Fix space around binary operator
Date: Sun,  3 Mar 2019 20:30:13 -0600
Message-Id: <20190304023013.18421-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the check as per Linux kernel style for use of spaces
CHECK: spaces preferred around that '-'

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/rf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 825b6ab5c0de..fd09b9771cf5 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -792,7 +792,7 @@ bool RFbSetPower(
 			byDec = byPwr + 10;
 
 		if (byDec >= priv->byMaxPwrLevel)
-			byDec = priv->byMaxPwrLevel-1;
+			byDec = priv->byMaxPwrLevel - 1;
 
 		byPwr = byDec;
 		break;
-- 
2.17.1


