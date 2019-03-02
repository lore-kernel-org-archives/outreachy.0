X-GM-THRID: 6663618170330284032
X-Received: by 2002:a63:2d3:: with SMTP id 202mr3269240pgc.4.1551494517464;
        Fri, 01 Mar 2019 18:41:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:a041:: with SMTP id u1ls4065142pgn.0.gmail; Fri, 01 Mar
 2019 18:41:56 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYlfLKVpxqnnPPpqufQGpXy2ACg1/kK+s9U0cL5uQ+VShFkRjVWSJpZ5gku2cDIXHwIHJRE
X-Received: by 2002:a62:11d0:: with SMTP id 77mr3306065pfr.126.1551494516735;
        Fri, 01 Mar 2019 18:41:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551494516; cv=none;
        d=google.com; s=arc-20160816;
        b=bjvpCXGLxSrpVx8LPKbOrw+iSCeO4kAkTGAF1K0N4VqcA6m68VZKV1zD6xpkUB17EL
         sxG2zJ+m856UbnbmBKiY/L81p4IhmMp3LsmXyljKBLlUNaPBfKOFWlYsealx1ccgb8ge
         Zt4IKjMQSn8yag1xsB2zHRsg/g1OWLGhcncXsBuWdgx7/zBgLUxgx9mwvYx2yFaTiVz7
         Zp2yJSdjUS09NPS9147GQ13hs5AWdDiM+LL5ymQcGJCiC2z8wEjbrE5bkI3oVenNPA1w
         Ust3WdgKCcQ1EqODfrk8m/0NG8MWB0rcE7R9YLxKjRttNNqn3Pk2VR+Y3mWrxEceZNFU
         CnIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Ixm3OSkHzLpzA1t635kIN18bz9297Yg049h9Vu/f9oo=;
        b=0GLwoycTNIuy9U5AEEfmsQ5Siad/ytc0StkGS0ZUvo7rtYNTLSI+TWNwzRgbbE3u5T
         ntG0Q0fu6B4e9yZbTwbCHlcldFV84kcNsHGckfUsrxgj2SotCoxxaFHQcAZUXhu5U3Oy
         E3eXyvEKT1dMkonWa8qQjn9VRhBrSQWME6fPNG9YWFchRP8ueAm3/Wi76BYDF2JOgTkO
         rCHMRl6+4AZ5NVuPWHYYU6jk/3nLsNbdaGm8mVGiAp1a7oBqOlyKAbepQVnO8mj9q6s+
         meGaVO7P46KamNvy0I/6mVOUVSWxPO/QZ4gNx+ZnD1t0vpwFVXE9jXLL+3qh38+ojcOO
         Fyjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iJ3+trrG;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id u20si1382270pfj.3.2019.03.01.18.41.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 18:41:56 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iJ3+trrG;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id i8so21148140oib.10
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 18:41:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Ixm3OSkHzLpzA1t635kIN18bz9297Yg049h9Vu/f9oo=;
        b=iJ3+trrGk9gMsEMVCd3+W7k37gYhUS9eZk+qZagjxhq7owpjs0ZW8tBlGRFOBqOWKa
         WPk2fUvzu4fkiJcKp6370mTaGBTu8Mg1FDNi2uVxBS2wTS+JUoxES5YIbPWEdQvAFrUT
         1LAMfPEH+bm9Xk1MbHJZ5zIJszptNB+NtvnOvs0bm8b0z/gqf2+b70PZRqs4OlznipzF
         YB26QsBxQWztCfDKntTS1vZxclmLNKwdaPG8ld2VxusWgPwYIH3gAk9PmgUrdL74qCdh
         kFnNibrrB5FEH+7vAqrBY84u+buECEyWBA0z6cujgx53Q2W0wKnYmBGjRZ6PaZ5ia8O/
         8WZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Ixm3OSkHzLpzA1t635kIN18bz9297Yg049h9Vu/f9oo=;
        b=jwuxOJCrTR6rgt6QVAPyrd/aLQCU5MK3xw2/OuW2a9HbV8rALZmVjio36ZCRBdABEn
         ewh0cEJyW0HuVXVwf8ZSltdkmYZNTeuxeTBH+ZANhSIhJZEX8UwcM/7GqxU1xflDlASn
         c3O8Vd7PObDDMRBPxTv5FhVhcaqAx2bq+wFk0CFi/Njsdn3S+yIQzDuDwvEfZ4dpPI7a
         ArYvBbn4u/rBRfpaaxlOXr8cF5FyB1YdOzeeIIq6iRExnAxbGi7IK2Tou5k0tsPA2iWG
         v0aEXI7SsZAT6ermdIfqMI643sFY7uLQO6N66Ja2kVIVO56AuNGWs79XLKLUcpX1yEJB
         +pKQ==
X-Gm-Message-State: AHQUAuZ4IHCfjPQUznn0IvSXEENKRd804LE73kmCnU2wPXwF5YfSN1cB
	uDtcyQnX/cyTaScKjLxfggA=
X-Received: by 2002:aca:f105:: with SMTP id p5mr5394023oih.172.1551494516042;
        Fri, 01 Mar 2019 18:41:56 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id o124sm3273909oif.14.2019.03.01.18.41.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 18:41:55 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 3/8] Staging: vt6655: Fix comment style of SPDX License Identifier
Date: Fri,  1 Mar 2019 20:41:37 -0600
Message-Id: <4c582ea8c864b5e14bb1fd1e35ad46d79846e952.1551494031.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>

Fix comment style of SPDX License Identifier based on License Identifier
syntax for header type file.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/device_cfg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_cfg.h b/drivers/staging/vt6655/device_cfg.h
index 6b41c74f7c2a..04db6a8d3db3 100644
--- a/drivers/staging/vt6655/device_cfg.h
+++ b/drivers/staging/vt6655/device_cfg.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


