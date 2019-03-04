X-GM-THRID: 6663863789016842240
X-Received: by 2002:a5b:14c:: with SMTP id c12mr3863444ybp.40.1551728772673;
        Mon, 04 Mar 2019 11:46:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cd0a:: with SMTP id d10ls1273938ybf.8.gmail; Mon, 04 Mar
 2019 11:46:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqzzs0aq//CBoiJ8rEhmj4MdxYIEMZ1ZrnnCKHIG9vrWWog9gFLOr8+OW3ueCgCBWaBYRPCC
X-Received: by 2002:a25:41c2:: with SMTP id o185mr9862272yba.96.1551728771960;
        Mon, 04 Mar 2019 11:46:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551728771; cv=none;
        d=google.com; s=arc-20160816;
        b=nRVch2vN1zUCABRLdAk5Pz8IX4LLg3a9isQ6t3Ggy6TrSHy7hmY4kQlGHlpIUbaRZc
         JJ9d/6PG+IB2UKy8uLDWm6cXlM8Jbotss4aH1I6Zvnt/la6bz9PwEVwCYOJhyA7vKklQ
         TLONueA5jqDOJRb+CL8CWUc2SoL37xdc1TLrZA3Y+JO5YhhHGibKstLFQfb/VPyA03wi
         IZor2xi/5tKViSjR38Q+DGPBxq6glB1l4GDFw18tcJjz0rG1CtJHbIUKF6AmbETqb/Yc
         xtPxAFk0HvUqpnTd5lgb7gaqixIekRQ8vpFpMwT2jVkNHNCOXUgSg3GMeKpGhq4Q0zI0
         dmHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=JsDfEjzD4hwZBNAL7Qe4oT14gdmIwvpVPI8//gOkrcQ=;
        b=cq4o9rAZib3jabru2EttKlFXLo/CdkFCsTpRcG9qbF6aPQqvYdNFGH5AP/PXvE5ORC
         nivq2Sc8iOJNrXbSc0dGsKHV+vUHQRLAGJDOjBKs3FrAa2KDeSkDiPOl6sfj3i+mxZm2
         OnZQH3VUbLgQFv/d8c14KzpcSP5WkuGfZA32XrdqbKwwILd34iymcz9h5gy2jxi3Eolm
         Ygzbp1BvMyxdx7hp+6IrcAhI5iubkDctt5wJzGf9j4nqoYmKLuItganil3REBazWRjwk
         DI952nR3EF+bzC3vE2mD7mC8apuBHwpUAcB9R7xmrhhnveepVBuF9mLhLqPOiCEw6Heb
         p14w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CC2Eze4r;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com. [2607:f8b0:4864:20::232])
        by gmr-mx.google.com with ESMTPS id j16si343444ywa.2.2019.03.04.11.46.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 11:46:11 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) client-ip=2607:f8b0:4864:20::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CC2Eze4r;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x232.google.com with SMTP id i8so4835231oib.10
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 11:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=JsDfEjzD4hwZBNAL7Qe4oT14gdmIwvpVPI8//gOkrcQ=;
        b=CC2Eze4rN3zV8pHhFEDdWxUqx0DKmRPI+nh8pa+MRkXeSmFxBPhFpgws1MlTUmv6Cc
         1qCumy+wxhrhwPhqd6K4hpsOVqK445EH+hcb6aFhSEs7RuA/yywnUI6NjeGEzX5IfRRj
         3XcUnsTza97/9D+X+o01CHGN/zzs4bVOq4J/S3SdEBRDC7bKdc3gW3cDkhUkpkeiwxL4
         8IXMRdoc1WVfH4aXPSW1mdEHOWx3h26ukD33Lvu1NaAIiRVibrE+3VaYoj7gxjIAhg8A
         8crDKm2i2gWYg4974GVl9KB4Necsw2nAWG4sNAtGc/rInC46A5n0x8ewWF8lK+AUTVCl
         /2cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=JsDfEjzD4hwZBNAL7Qe4oT14gdmIwvpVPI8//gOkrcQ=;
        b=nX5HzlOLs3ZqrnlgNfYMH+EsiC5mac6vnRiUJuwIZICtFvK0ByrwCvX5IJJGhfcDWM
         aWwh98LF94vvWauY7/K2aWBFL0MLx/XOSxbujjTP3+Nxu71MBhLVg3OKjTAfWGaN4klR
         rzwZm7fXnjj+UAFPoOXRDfzTsgv0uvDXj/n1FKYutF4C0+voE0PYQnHDJYGxbZveCBaE
         qy06HdK18nBc/cUrH2LrWizocajw6gkJafrKhlkcLELqdyHHxLGCyKTYStmKzrfpLwXj
         A4nRV8L43lTMcOMuem5u8oMc0DNEQpaLyfgCObD+jdxgo3bNC/2NeQ7ckIW4JkyvgbSE
         mfZg==
X-Gm-Message-State: AHQUAuY0SYd5oA2+thwi+2z7N38sSd0ifEtBPDwKJyH2QHc+Ow7gPdWC
	GarIHrOHLTIgYGxTGOU5YuM=
X-Received: by 2002:aca:3306:: with SMTP id z6mr13481919oiz.45.1551728771605;
        Mon, 04 Mar 2019 11:46:11 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id d129sm2808811oia.38.2019.03.04.11.46.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 11:46:11 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v6 1/2] Staging: vt6655: channel.h: Fix comment style of SPDX License Identifier
Date: Mon,  4 Mar 2019 13:45:55 -0600
Message-Id: <5e02f78e138edb3997d9af04ecf6cba3174e2c3e.1551727866.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551727866.git.madhumithabiw@gmail.com>
References: <cover.1551718323.git.madhumithabiw@gmail.com>
 <cover.1551727866.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551727866.git.madhumithabiw@gmail.com>
References: <cover.1551727866.git.madhumithabiw@gmail.com>

Fix the comment style of SPDX License Identifier for header file based
on License Identifier syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Changes in v6:
- Edited changelog from above Signed-off-by to below Signed-off-by

Changes in v5:
- Edited subject line
---
 drivers/staging/vt6655/channel.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/channel.h b/drivers/staging/vt6655/channel.h
index 53f623a4af65..0d2709607456 100644
--- a/drivers/staging/vt6655/channel.h
+++ b/drivers/staging/vt6655/channel.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


