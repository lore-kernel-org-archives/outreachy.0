X-GM-THRID: 6662426031270395904
X-Received: by 2002:a0d:e288:: with SMTP id l130mr10019611ywe.18.1551216941283;
        Tue, 26 Feb 2019 13:35:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4688:: with SMTP id t130ls6213510yba.5.gmail; Tue, 26
 Feb 2019 13:35:40 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ib7PwClRUYb5ex8+Zfpi9IcfPsRhjqhcn9/GqiZkQxMDHWUyvXs9Re8SJ4zWyFd1fAr1xmn
X-Received: by 2002:a25:2b01:: with SMTP id r1mr8740114ybr.23.1551216940558;
        Tue, 26 Feb 2019 13:35:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551216940; cv=none;
        d=google.com; s=arc-20160816;
        b=w9yxIsfXWBfOdKdU8V5iwkGcXMLRqn2r3jZ6HqS0lqnqAql2UjmiOoZV50HZn53JPu
         cWyK0l+AZI5z21y2nXzs7GGxehhy/jhf/UVKG9CtKVNkMk0nZXHyLLbIqEX3fxsu8WFR
         kyuGiGbGMuutQIFFA6FG5WQJSSuVC+W0ZtTXIJ1LMMttD0cFX3HKk/PUEuCU9ggsBCKO
         u3lqZ8SEuF3dBaI7b+rvz16ugdYjcy8O2RWF25pjcY9x1GI4LyBWNG3O1376QYIVDVwB
         XuEoE2Ixd0Trwy2ueFsUR+S83PTTfE72ULy/X2DfH7wIviNGY48c2NXAcGnL97Y43l+P
         KQTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=lzvnLk/AO6ltaC6u/2fY5j5QJyeHvKpr80k+Edl8uhA=;
        b=QDKKuehFIP7og8vHVW/A6Pagoqrq8zZ+M9dSoxwL+QS50s4s3YGmyw62wCiNMcC5et
         EAWDnyF0NPevfm0ScWoi04QCbE3xN+1Vm2S0A4HMepAJy9zpXYNqzjMk5exZ3Mk2WAQd
         VfDAMOctv+RjqkoUryiVg8B3RbRED+qhFO06duMxx88GMKkzMOZCzcB38i378Sf65yTd
         Hotoo7KF/T0ci8liok9MsMUATa3eSYEHeClKAIfR5ifpHctWa9CDYa7tlTmvVpExihxh
         Jwid1J9KAbgdHoadT8a4VxI33HfJshX/V0uPiqmIc7fHZtE/6wvmYxxRiGcMXax8NYvt
         /DZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="UGDu0z/6";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id t14si439625ybg.3.2019.02.26.13.35.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 13:35:40 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="UGDu0z/6";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id s16so11652402oih.9
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Feb 2019 13:35:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=lzvnLk/AO6ltaC6u/2fY5j5QJyeHvKpr80k+Edl8uhA=;
        b=UGDu0z/6ZonvbONIjRkEmTSpapWRVy2wswvtWGFijexNWoU/7MPDs0RzN/MiqZdbnW
         EBmK0snIxS4xhOrQhvsG/HPc6DlggmI21A7D20ooxTeov71fHN2nCAAv02poY1H0SjSd
         YN0kDrutIq93KuvmZoJuyTGo+aDrg2uwM+WZm76PoQ6s2W0ye4O4anYiP+QcRTD+FUeb
         yKWusyDxgSBz0poH8VAx5zNbCqOh44z3SWEby8OaQ28wKOhZAdiD7lfaIQqCTiO8h5ME
         LFGSRjhYXEFVPk0EWiir3Z+JWWEOU6No6OlNtCdMk2SvR5WhUPar9xglgrm/px4+YF26
         efyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lzvnLk/AO6ltaC6u/2fY5j5QJyeHvKpr80k+Edl8uhA=;
        b=lhjDg8E0zuhlVoJ5f8ziJ7gq84V40hKJqovvhR6kXk1STf5hSKEibRe3m9amEXiurR
         vWpOsbQ+8EML5ahCaRHcMHln6OcJv4e/pihD4O+0ewUuo7iHkjgujJUYRq4+zPUp3WYk
         QGWB/X20PvmSK/Lh33jcsDZG9AWTgJd5tY+n9RoXhSoXX1JvqPlG3cS9H9BJQPer/VaS
         LHN1RlDatv8W02kQi4gChRAf02kqf09JZ8srOYvk+mpdWcqaekANaJSJavR8devRKJHE
         5h5LBS8WcmHok5m3XN+NS8UK7QMGxgfisk/aJI9U5eVsYd91IvumjGcSwZjIdiVkUc9M
         3swA==
X-Gm-Message-State: AHQUAubfpye36CmaQyFXMoV1n0CcwDGXH45BZbMCjQa38CyMVB0ppGXL
	aHHBrYhRa3DukK5Gx0qfKnU=
X-Received: by 2002:aca:db43:: with SMTP id s64mr3583073oig.165.1551216940039;
        Tue, 26 Feb 2019 13:35:40 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id g80sm5602257otg.38.2019.02.26.13.35.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Feb 2019 13:35:39 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Modified comment style of SPDX license identifier
Date: Tue, 26 Feb 2019 15:35:35 -0600
Message-Id: <20190226213535.4766-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the comment style of SPDX license identifier based on header file
type.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/baseband.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index 30d9e9d20a39..0cc2e07829c5 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


