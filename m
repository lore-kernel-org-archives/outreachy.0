X-GM-THRID: 6663863789016842240
X-Received: by 2002:a67:7b10:: with SMTP id w16mr7197522vsc.6.1551551706709;
        Sat, 02 Mar 2019 10:35:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:6805:: with SMTP id d5ls2709161vsc.4.gmail; Sat, 02 Mar
 2019 10:35:06 -0800 (PST)
X-Google-Smtp-Source: APXvYqwKSISvwq39vlMJTkAf4gOF1IsryJGCCK+UndHWsqTYKgfsOUO7tdlJEZp6GcoXyTXxxS2B
X-Received: by 2002:a67:7e57:: with SMTP id z84mr7486159vsc.9.1551551706101;
        Sat, 02 Mar 2019 10:35:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551551706; cv=none;
        d=google.com; s=arc-20160816;
        b=xpmswvdqiIh7h9BdBsLcuS7ws+PhAMFLyZEVXB0yetUyy5C9lE5e9g/jUbjcqBwRc+
         cobw0vQks1ClpSR9RojMk755GbjFY5z3vdeFIC5vck6P8x0RKlYc2FMpJzJ870jD2N81
         G6X/T4SvRarGtw2xg30ovhtbrEaoBOgd4eMDC+0xpfj+1iQUvH0BRCM8UDmt1pFJub3b
         8ZYUqpANxGVkM2EJmjTVcbbYr7+F07KWzYuK736ExOlxUlfBr0w/U2s34QJ+Gbny8oiS
         jZPAPWYuNA3Or4s6UpoGPsV0AMWqVsNp0h+fs9yFZ++Rima1KEKpiYuJ+fHRHjLpYtyr
         G2vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=iCcLOjAfTd6qBZGc+BMJVc4hWH4jhwFXq7lGQk/XHTQ=;
        b=kf/SzDnt2t9/ZnCnzlizxXb15y3+XhHPuHXR0NvL+aV35zXOWSPn+onJdeajmcNddm
         rEBels1f2EiprpnV6gElr4KLiURG26vxzRbKIWBO6UO6utwuqmYu5kpZtl1WE+x9Ddkg
         Uu2UWKQF2bq1Slunjc2haZaR64sJy3+y/4votH3lMF6UOwC7UWralU9iJQ5pynAfmnz5
         xwy+pT72OauS/UG+YLfWRJcAloNq5Ch/BHmAzAwHwpr/wiwDVKKk+6MP8NvkF4b1iJB3
         rY93pg1IiER9LUiYuLJg91mTBBMihaIGiuuazXbmrIrG+2lG8QYyappPcvGuFWDe+qE6
         DsDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TyNfknpl;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com. [2607:f8b0:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id b19si80788vkf.3.2019.03.02.10.35.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 10:35:06 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) client-ip=2607:f8b0:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TyNfknpl;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32f.google.com with SMTP id q24so971135otk.0
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 10:35:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=iCcLOjAfTd6qBZGc+BMJVc4hWH4jhwFXq7lGQk/XHTQ=;
        b=TyNfknpl3vfj2IB3Oqn6xAr5+gapspX4ng5vwUbbh4sQRgW2dNel2PdUEGsR97PIz8
         929Ua0BJNeGIe2r90QiySFn2c0oWJhNDzQ6sOV40lWJRIaBnuKzdtg9XBCRCGqy6SfK4
         F+xImhwJiUos+qozNwt0egTZW55TilY4m31hK9CWo61/x+msTFjJHzlTyHxJeWW140XK
         dSkfAOO89kp83wig+ph3lQ1ELVaRZl2kGPBENAvn7LZWvRIAd43QO5F2INA5l6rQlJvC
         P/svJik2xauIhiq5RV+Z2cfZOMPf0c5uuSqNpu6XccBpoB0JlOt0aapGLsAbBWAHj+Xm
         QeDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=iCcLOjAfTd6qBZGc+BMJVc4hWH4jhwFXq7lGQk/XHTQ=;
        b=dRAayz21DhCZK03EqVCVMVDAhO5BCMMf+7YnTc4t4LIo0W4E73aHjX0KKZYLUrijZ/
         Q5lMrplFquFEO77BAZ++o6xWkDArEun2+G8lOdQ01DxObh4sjbWy13dc1oce9XhuUpaA
         GTp12Y4pN5mEzJbRO8QW3Zp4l+tx5O5LycnBhL4BWSiQSHIt5P9FHSeQVlpWk+aZ18z5
         W87I/YuJcygYCWyy9SIl/Ft/Amrjqq4iD5Jq64QfkSO2SXhyoY60gmcOVjqFBUa+R7Kc
         Pk6IDIuDWcxOU9ytM0QdU4OpjDoTXWvqu+WUv31f/BVxBnw+YWD0SoOaqj1TVaUNw/lE
         +0BA==
X-Gm-Message-State: APjAAAW3cYgYyTs9B7CCGpGVjemH14JtyxSvK8JSx7MwyPyb+BRWH0NB
	Ivm+An8QI0tBiL0J4wZvEaldJXbUj2E=
X-Received: by 2002:a9d:6496:: with SMTP id g22mr7181926otl.47.1551551705522;
        Sat, 02 Mar 2019 10:35:05 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id p7sm528424otl.64.2019.03.02.10.35.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 10:35:04 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: madhumithabiw@gmail.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/8] Staging: vt6655: Fix comment style of SPDX License Identifer
Date: Sat,  2 Mar 2019 12:34:46 -0600
Message-Id: <95d9158721cd94190453aba2fcea12b3dcc3b38c.1551550323.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>

Fix comment style of SPDX License Identifer for header type file based
on License Identifier syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/device.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
index 2f9e9219e8c8..29f354ced563 100644
--- a/drivers/staging/vt6655/device.h
+++ b/drivers/staging/vt6655/device.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


