X-GM-THRID: 6663863789016842240
X-Received: by 2002:a5d:819a:: with SMTP id u26mr6880824ion.20.1551551704053;
        Sat, 02 Mar 2019 10:35:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:8303:: with SMTP id x3ls4940623iom.3.gmail; Sat, 02 Mar
 2019 10:35:03 -0800 (PST)
X-Google-Smtp-Source: APXvYqwpzCQRsAM4nKmIfTOwJCb2Im/qGc4iYxR4JmfdukR7yRCpJRmYIEGTxYIHHikc/8evBEdU
X-Received: by 2002:a5d:914f:: with SMTP id y15mr6753601ioq.18.1551551703552;
        Sat, 02 Mar 2019 10:35:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551551703; cv=none;
        d=google.com; s=arc-20160816;
        b=YX5CRpMjNl1PRlsQ6GdnxcrHNhj/5CmEaiR6NYqS4pzkQZeqfERu4chpYcD+oy3xZJ
         8Eb2xyBBXfLZU29Wr4b0/Xyri89TtDtc38EzMCrt/2EPseX+4jrHHO84GwZsCaiRw449
         OWHVEUtZ7xXOYFCGsNQcLBZKrL6M1ZxfK5DMEagHT/Bpbty2djlavZgGdiMTIwBIWIp2
         6OqdlA8+0IO0JgYT8axyYAQKgigGmMTE+yCnbEE0YEhUxj/jDuo9qVG1W7YAErkx3Xwn
         y4Xj2GolXCKmdzwifM6jHnFT42fFkfDJg5W7NFQRp5wsYxJK/bp98Q3nLUV/u21ZO/Oy
         DTMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Ixm3OSkHzLpzA1t635kIN18bz9297Yg049h9Vu/f9oo=;
        b=srJU2kGhW0q3o1doKdra739B9siG8Uwrz9wrLQfR8gfhnqP2aEJyNoD6a2wVIb3KYr
         /7R2z335mNnht4GCrksR1VTo1TVPpCOeKgBdKtR5RVsV7NXRTj7DGKmNJxneEYRGVlVD
         59B1Vnvd14O9VMfZvlq4RZBOLEx5mjtHgB5Whq8kO1VHfligNtVunN5AJEal/z89DCHu
         Ev4e1OMpoaaJkHEsEfHxsj2wG5wPq5dgM7NC4VS8dhoTDKW4QqFRAr529gBeElrlFJGT
         5Wq+OtKu6K/FSRZGKPn+Z0ECrvBW03gYLsNR+tu4u7J3iltdVFM3pFBG3/CHeTdQx+VB
         dFKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="S6Or/uSD";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com. [2607:f8b0:4864:20::335])
        by gmr-mx.google.com with ESMTPS id 184si80477iou.3.2019.03.02.10.35.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 10:35:03 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) client-ip=2607:f8b0:4864:20::335;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="S6Or/uSD";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x335.google.com with SMTP id 98so970417oty.1
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 10:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Ixm3OSkHzLpzA1t635kIN18bz9297Yg049h9Vu/f9oo=;
        b=S6Or/uSDDOPuJbGKODAxqQnrEnaDIS9Xgbrl67TB5rMjBMfU0IZUVQysP+KYqrksb2
         cc0s++5YKGCMmaKkr2WIRVq3nk9rT56JIR3naNJyHVN9w0vfkEWW9MSuWSlTVhZBbkqD
         PXSxqkG/lIAoDFtpw5NtsIKbzhs7e3moowbk9lQgloOU3a1Ka6QTSw6jlJfCX25METp8
         NH/gNERShtjhtc67q55OMWRw1m9OxCQQc2OaH2praTSGKa4Q0PIBeiS2nuwy7PLmsPPy
         sTWLj2CD8sjAdF81Qcr0oOJMa9P+TGHbWSseQ3BhceLl3+XPlcRJVpmj/+LqIQOUmOwS
         UTyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Ixm3OSkHzLpzA1t635kIN18bz9297Yg049h9Vu/f9oo=;
        b=b+xqcbhsjEkZpnMlZzlsZdztI68T9a7idzH3xaUdxg4g3/XH1mhhW4BHeihTcQXuTE
         6BWj66kdZflla3PoQXSlBLM72vVyg86XqWuLKXnLBwtDYySBSs/8W4dziwPvCLpfsDE+
         A0qr800uvrzhJWCS/7b5OPt9Q/H0OHgmPF49cmz36JLUS7+F7J0zBa9PJUK1q0Hu44V/
         gL5Eg7rsiMPWmfDQC1JvO3mfsYiwrzewaiK30aXNc2nwmwB8Og0krSENhDF26TwdqnBC
         dAv0rwvCNKwnNTI4+23eZZAmSJ/InMNFS8QSSpcGu2Nqi3BoCLUO9Fv96Xa1mRxpzntu
         QyYA==
X-Gm-Message-State: APjAAAXemZusvgtrpMeL8j/cbpwMZNm1P69zKcIGBmR3NONV3TWf/Wme
	BW8wmsbek7XgDzn7Xh0Cde/OOlN07JE=
X-Received: by 2002:a9d:66d0:: with SMTP id t16mr7426064otm.35.1551551702947;
        Sat, 02 Mar 2019 10:35:02 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id q8sm489153oih.6.2019.03.02.10.35.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 10:35:02 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: madhumithabiw@gmail.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/8] Staging: vt6655: Fix comment style of SPDX License Identifier
Date: Sat,  2 Mar 2019 12:34:45 -0600
Message-Id: <4c582ea8c864b5e14bb1fd1e35ad46d79846e952.1551550323.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>

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


