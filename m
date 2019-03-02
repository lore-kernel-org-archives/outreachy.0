X-GM-THRID: 6663618170330284032
X-Received: by 2002:a0c:b596:: with SMTP id g22mr4565605qve.54.1551494522670;
        Fri, 01 Mar 2019 18:42:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3bf2:: with SMTP id s47ls7968qte.5.gmail; Fri, 01 Mar
 2019 18:42:01 -0800 (PST)
X-Google-Smtp-Source: APXvYqzQh3B/ixewMvmmdSnsxmnxsk9GbVwNhyJ6+QL3GMjzeDdwp0g99B1Qe1Mnka399fKURTsu
X-Received: by 2002:ac8:25a7:: with SMTP id e36mr4764616qte.9.1551494521903;
        Fri, 01 Mar 2019 18:42:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551494521; cv=none;
        d=google.com; s=arc-20160816;
        b=VRf7bFjOsV3w8dx+9vsn+UnMmfKv+Pdze02uAn7oK04Twq4OGCsAD2lLmHx88CxDz9
         JL2UQ2SkuocWjwF2rC8Dj14iZRByctXYYiu5pZ6bET8FZsL9RaAm/g6mGrhf4L3Jm+Fv
         MxCY7cxZSPOOWZqSv2v/tH9QhrfeDag81uGFpcN2LV5hJBeM7JHypGybh7QYsMeSgfHR
         C7vWYnEvkCznft7g3zZvEy8xK3t3jojwpDxEE7QMQiMuS58DCmkEaL7bddlazA1zimrA
         Qu4nJE0+f+eL/++OnQf6m3B+malT8STRllcbb4gx4yyhYljGCD9mXuIzooLkMQvHwzJD
         LO2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=a/cuk/ZlXlugRcsbi/Gxyq1MvPWW/dhtO4b6vuQ6ATY=;
        b=fRN8cLR74EIF54/H8C7ycx+dXg8mwOEzPpXZq/uPNfR4Z6RryQ8f0iRl0YbWHNpyfM
         o4Tu4xLe0thS7P2VaDTdFB9D7eJ9g9PynomVgF+vQjCTGR5hocyNdEOjRNRxo3/NY/xD
         5U26nME250Mi2hByfls+aXMLiqrfqxjMKXu9FxRKtp2Sd/G8Y9NOOeLqsdZ7uRV8T2iJ
         iyT24vyS/2VSODsVus8AGsv6h1gWHp8sr5txAJ5nvBaIZqESDr6eSrv/KBCSPJiXUl0M
         mxlZr0t6qEtRxtSDsTS3nt10Hf66lwy6AkvM49mEUQGZMLrfglow4JzhYRw9MxOh1H+R
         B/gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a7+d04Qg;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id o59si1029511qte.3.2019.03.01.18.42.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 18:42:01 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a7+d04Qg;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id m1so22779144otf.5
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 18:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=a/cuk/ZlXlugRcsbi/Gxyq1MvPWW/dhtO4b6vuQ6ATY=;
        b=a7+d04QgEuxgHY7NVdYRgBlcA7nASQvzmUx3IUVXT3HUHswitw5IGcPiQcCwgFV6v+
         zimIzX0RJzr97phziIMx123YkyVOeBCyy4tuff2AVUGj00MHNohT1IVOo7756dmN2Kun
         S8n8acavVS9Dmyw5Uo8qpTfCw5MnGwA2NZavTUrPQRHX0CftXIosf0XQHbc6Gdti79FE
         r3skIkeFdlVirFbHBFXgNS8M0tvgY9RRooqni0av6uk8nmY7F+9UHXggqbYRCH2OFeFr
         cr+qUM9XUxYpsVSXkfprTSu+TAgOpnaf8FfZNJlh4SGFDy+rOjEmRgpHvam4Swif02PN
         72ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=a/cuk/ZlXlugRcsbi/Gxyq1MvPWW/dhtO4b6vuQ6ATY=;
        b=heZV7oVrm4irOKlsxyob59bZEIFO3kPoHBjK7AN9UGCzayTLFSEQAdkChfDw70J/x8
         /c43GRLQYYIdM2zdba4Vll8LERRLoOVld/4zIY65ZffyD0GT+gKVBVbYL8j7foswT1pC
         w1QSmIxzYCbxq9lKVc35kvfdoKGtCjnrO0cdjFgrYGkF8UPR+CKCo5IxNpm1IarFsSSk
         tPTosZuxxNlXzjhk6ieUNF1hf/899Z9I81mTU3Wg1LmSqp55fGC594LakpLqnlyu3By0
         uzavnEiQKifKCYxvxKzEF24CMEtrDHr1qdrNWvVI9BhF9aFcld2PmqWM0GTzA5s3fQsq
         D1Qw==
X-Gm-Message-State: APjAAAWpbQUQlJsG4HfKA3QdGaJXSEQE8ie9TF/d1qrui6E/gvVGX6Ci
	6VUMN6SZMUOBhH8DVubrmZUG9fFe/gM=
X-Received: by 2002:a9d:7347:: with SMTP id l7mr5348472otk.321.1551494521368;
        Fri, 01 Mar 2019 18:42:01 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id s126sm8627595oia.24.2019.03.01.18.42.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 18:42:00 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 5/8] Staging: vt6655: Fix comment style of SPDX License Identifier
Date: Fri,  1 Mar 2019 20:41:39 -0600
Message-Id: <f1d5975fbf4d27012302cf660c2fdc632cf0d51f.1551494031.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>

Fix comment style of SPDX License Identifer for header file based on
License Identifier syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/dpc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/dpc.h b/drivers/staging/vt6655/dpc.h
index 93af4220605f..eac67794cc49 100644
--- a/drivers/staging/vt6655/dpc.h
+++ b/drivers/staging/vt6655/dpc.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


