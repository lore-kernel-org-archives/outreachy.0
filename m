X-GM-THRID: 6663210271515869184
X-Received: by 2002:a17:906:938b:: with SMTP id l11mr171998ejx.8.1551399538086;
        Thu, 28 Feb 2019 16:18:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:8b8a:: with SMTP id m10ls1960926edm.7.gmail; Thu, 28 Feb
 2019 16:18:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqz2ZSPbTuRfLt4PyqoUf2LH7kDJqrDlrfr1gWmGVq/7EXVt6R3nuq1ihsblYmEFM2JaVniW
X-Received: by 2002:a50:addd:: with SMTP id b29mr294671edd.11.1551399537353;
        Thu, 28 Feb 2019 16:18:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551399537; cv=none;
        d=google.com; s=arc-20160816;
        b=Cj7RpdhLHyIMqSwHM73bkriI0vE601SFuu1+7xQnr8yJMdmLcmQrf8KsraSrnbWtG1
         zzZNiCrrDYiQweaN1bQ1hirdFpWU0GHltPdIms0z6PF7ZZnvm2ws1UhvmcKChV8WcYEd
         OVLzeH1KjCtfQxuDLZ58LGlXXCg9dEPnVx2TikemEm+iaQMallEjbSJuanMCTgbbCLt2
         qqHLS0SZ+nPV+CgEf8WQN3kSbDwvQGhA2VPQfHFmTVN1ZZKyy/lvMcjhfEbtkUuzmucr
         bWOTJ8Gd7phptL+LLb/vYBx4r5+4KM0kQWSerdP6JHLn9UhxpSX78SiZGZuRWrB+fwA3
         J1aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Mzfi/rq+zt2yYdmtRWWK9lidQaU7W8rQ7NytSpWup5k=;
        b=PpzohnJtU3jH7M4HrB9sMpcfFzfHvTWFbw8fQ7JR/qfQ80pYh17oX3XzPYwVY+zt6u
         gjxYrahc0xs/f2qj/1NebPK6eWt3ZTAWwE39oBom7L+FCay3OnAJXA2DKv16m8E05TgV
         r3oLw1MR+aabTkqnghn/waSMNHQLJfRYr3zZPqVtzDFLESIZ01r2t3R/rCQaPkP+24ke
         0wDZ9NDOs8f7dAxxi25EgBp8c7amzCYvKWI02SSk9Wj6UB6z4s+5J0kv698LGSLm4sTD
         H2KW59vcGHHFlpbv3EwE/fVmIcf26h3wsw5N7fm574VQFd/+805foxl7Un2rwSw5C+GK
         7L0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s1+9qhM2;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id c7si512808ejx.1.2019.02.28.16.18.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 16:18:57 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s1+9qhM2;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42e.google.com with SMTP id i12so24013927wrw.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 16:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Mzfi/rq+zt2yYdmtRWWK9lidQaU7W8rQ7NytSpWup5k=;
        b=s1+9qhM2iELmOt3yH5dBF7Rg5PCdzKWQ2pk6aXH9qZ4FFJccqxLCpg0iY//qDSGKxB
         VzhK9Uwsmm2nGkT3wrG/XfnXnV3pjxtahxSfC5tPCuYRNozIdmehAdsYN63DzzLxVi+y
         70Y/8AKtudx8lgSrJBpssCLDaPEbE2xez6v0GriI0UIaSRB3XK6f9O58sGwO3p4vxf0f
         3XSTWJdJaFkoSsP5EopYLg0u5meoRUk+qYWViPLfrWnS0gzQljQPHyjY5wOIx090LNG/
         WIePWnpV6kP+KEN4xdMP/fwtAYI/SaFpel+siEWOpN1eZZzsmp0AUATU73erO7NYvSWG
         8fKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Mzfi/rq+zt2yYdmtRWWK9lidQaU7W8rQ7NytSpWup5k=;
        b=G3lbr5kqyufbZSGQNv849D5veKJHnFnCq0kaqUOBjCjJaObD83fdwq5PDNBOjNVyJr
         T/oqVK021jhmr61vRPQWz7/FkSyNeJaHKHeX8VhgkOTert5m2s5f8jlxouYewdX9N7cJ
         a9axNwDZFU8ndi1ZieoJV356tPCP/c/V/7ZRBLXvDObgfHLBYnpnk6HpK8QXUrdjX+OT
         45/D4L+LD2EBVit7ousi0mYbaGI/CIy1KSadm3bGdg3sGSxxHjWRwEQqs3O3izZGb6C7
         fvJxtwYK1ZrdRaIhLsLiXuPWUYaA1R//9oNzO9nXW4spqbUXCrJaf8dvpeLjCDICyQ9Q
         bAXA==
X-Gm-Message-State: APjAAAWW+hap8TiohEbc9IZMhq9ZrYjGHm+mFo2GnquN1bD2PPchOu4Y
	7Cm7C54NRUAdmdfQiWO0hw==
X-Received: by 2002:adf:9dc4:: with SMTP id q4mr1399160wre.330.1551399536865;
        Thu, 28 Feb 2019 16:18:56 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id g24sm8064618wmh.45.2019.02.28.16.18.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Feb 2019 16:18:56 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [v3 2/2] staging: mt7621-eth: Remove license boilerplate text
Date: Fri,  1 Mar 2019 00:14:17 +0000
Message-Id: <20190301001417.16556-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190301001417.16556-1-jbi.octave@gmail.com>
References: <20190301001417.16556-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removes license boilerplate text

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-eth/ethtool.h | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/staging/mt7621-eth/ethtool.h b/drivers/staging/mt7621-eth/ethtool.h
index d0e97ae0d82e..0071469aea6c 100644
--- a/drivers/staging/mt7621-eth/ethtool.h
+++ b/drivers/staging/mt7621-eth/ethtool.h
@@ -1,13 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/*   This program is free software; you can redistribute it and/or modify
- *   it under the terms of the GNU General Public License as published by
- *   the Free Software Foundation; version 2 of the License
- *
- *   This program is distributed in the hope that it will be useful,
- *   but WITHOUT ANY WARRANTY; without even the implied warranty of
- *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *   GNU General Public License for more details.
- *
+/*
  *   Copyright (C) 2009-2016 John Crispin <blogic@openwrt.org>
  *   Copyright (C) 2009-2016 Felix Fietkau <nbd@openwrt.org>
  *   Copyright (C) 2013-2016 Michael Lee <igvtee@gmail.com>
-- 
2.20.1


