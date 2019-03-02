X-GM-THRID: 6663863789016842240
X-Received: by 2002:a17:902:bc49:: with SMTP id t9mr3634073plz.70.1551551716812;
        Sat, 02 Mar 2019 10:35:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1548:: with SMTP id 69ls4809343pfv.7.gmail; Sat, 02 Mar
 2019 10:35:16 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbLfcKjU2gsoRFaPX5GORIuc9FeUpk0iMBvyGHWRnHE/7FHpjnftpd3GTMi9Qd4HDtZelcy
X-Received: by 2002:aa7:8259:: with SMTP id e25mr4531597pfn.99.1551551716052;
        Sat, 02 Mar 2019 10:35:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551551716; cv=none;
        d=google.com; s=arc-20160816;
        b=enQ3gy1kffLVdwpBQKS0LtOojOI2vOlleH5EijyYrvcF7YoQ7ygXJChe78DfutziDM
         0/bMh0rW/8a8bShK1XsPW9Jx35Pn1XKkFZIuEbVRrv3jjYcF25LcE2OqwmQwE4cDovdO
         xpygsiY25sp4JtrPaio6EWqjq0ZvRtDCKnWUGdsTwjxQW/kFgxnCZygbwzkpmTarp1ad
         0zve9kUfJ4lKAljd257kv/a8Oa27lTqrHhr1PT2/z5MTqpp1v09g68dpTIrFhCEdvJUG
         LSeJ5pvS+MFwGpIF+UK1NoMSCyb5XxFqTN/GIuVA9HuMhN/4z2qMQbJiZ53hX5dmDQed
         jqPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=1ETV1XW/TT7/MEw9l/zhMUoEJP5T9RU0peaZTR+DNhE=;
        b=bJRCIfJopaTTRnHMeLDdd+tFHPOqIxhCvoQMR9o4/DKiz7MGPyXuDmTaBFbXT+rSX1
         7NZg3S6n1xeEHP5SqXKpipd3w4xlv1t2LNfNZWZwwHhIh5Hrnymse5T9b5paYygNARmz
         8f4Yi7bBOqG8wvUVjkYTX1FDlwjiZlSVKFrDMFdHELelayeWbIzDc1gbjw0gGlh4cgBq
         +8luYWmoL+qrdzdPdiQGSILhxC3SjP6d+SNlBKpVonzN6MaXF5HgfJ+BBp4BD/x/HHtk
         L6neMRu/Mu9SW6GEh3Ak23AiLU9ZlhRhtvZc9LQHGupXbahEiyguSqN3lj5l9/3Hg2U2
         GmiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ir616Bo+;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id m189si66428pfb.0.2019.03.02.10.35.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 10:35:16 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ir616Bo+;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x333.google.com with SMTP id c18so941308otl.13
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 10:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=1ETV1XW/TT7/MEw9l/zhMUoEJP5T9RU0peaZTR+DNhE=;
        b=Ir616Bo+RO/naFlkDLEnWaFdS72NEaU4vLpANLHZ3XS97Kr8D0A5KHY21nJU3ICY9x
         W3f6xDbp1zK5Q6y9Cr9kw0ElqHmEo6Axe5Vt9gUlrFUhd3JE3MB5bMwB224joDTC4Du9
         vcuXzRL5bZPp3Sn5rwUibeANK0d8sASpNM7O9skVsUmaxwgf/UOWr2lQRHOiWAhG9FNP
         trlBmYMWCc71HTca3aFqfKfMzyhBu1Yr8EI35q7OeprePciprkk2rbRJqFCOyjuZ+c8/
         GdY02WUxZMrbNeWHlFFU0eNwlUuFjhF/Y/XJplsRUqraON5bnULQr65W1PLbf2YCLvTK
         fQmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=1ETV1XW/TT7/MEw9l/zhMUoEJP5T9RU0peaZTR+DNhE=;
        b=m8Z2xFrwchKDSHpItH8OOkj0KrWRBsrLcjvMtZvcqGyayKD6t8py3afWeW3CmbMeEO
         vwAzbWgVO8WolGdM2+3c2T/jIfttTj8RkGqYetzrNaS9mn+yCSI5aSgwEax0a8yzjOEc
         w0Cd9RA3NPYhsUPss0T3NTB0y0K6kOOhW/qFLsir59ido1rRghSBTNFS/vid9H/xFISh
         T9tVwtvWs5yjZ8uiM9SOx58RvAicuupytrltAKwncpVlcqf9MmtdjdZ0bX9u1Zz8bQpV
         zYh+sJCsBVkMViBMwo0OZ13kwk9XjgYF4Wklxd6xWXtDteMPRQuZBrDZe3GF7UfvNtXw
         nk2w==
X-Gm-Message-State: APjAAAWTHrNxWgpzRLwDeMtMCLq3fCiiNXFvbxCPlaWfvgHkZbKwFRhk
	VfR+xl5UlsPsgrfWBipeQ+hHDuUWryI=
X-Received: by 2002:a9d:64c1:: with SMTP id n1mr7245021otl.187.1551551715397;
        Sat, 02 Mar 2019 10:35:15 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id o37sm577814ota.37.2019.03.02.10.35.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 10:35:14 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: madhumithabiw@gmail.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 8/8] Staging: vt6655: Fix comment style of SPDX License Identifier
Date: Sat,  2 Mar 2019 12:34:50 -0600
Message-Id: <31305c53d72147ef9936b19d31027d486c293f11.1551550323.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>

Fix comment style of SPDX License Identifer for header type file based
on License Identifer syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/mac.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index b8ab09434773..8c8c26792343 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


