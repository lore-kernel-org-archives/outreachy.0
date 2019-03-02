X-GM-THRID: 6663599523023028224
X-Received: by 2002:a81:a10b:: with SMTP id y11mr3846535ywg.15.1551490180040;
        Fri, 01 Mar 2019 17:29:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:bb8a:: with SMTP id y10ls3375436ybg.15.gmail; Fri, 01
 Mar 2019 17:29:39 -0800 (PST)
X-Google-Smtp-Source: APXvYqxfykRuQCzl3NeKHuajY35z9VaNZ2QhfKZoouH81enYq/ERelXKr1AiAMd73ca7RJorSu4m
X-Received: by 2002:a25:d88e:: with SMTP id p136mr4346641ybg.87.1551490179580;
        Fri, 01 Mar 2019 17:29:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551490179; cv=none;
        d=google.com; s=arc-20160816;
        b=O8l4kMvzP8fUNnywIeEF1S89Wg/uIjRgcoxBWR44aFQIoT4LIr64KGsDDJY0iChPRh
         k1EbUxPKArBjP/hI1FSr7Y6IQQcIEQooH68sh1jI5mfURX7PdAN25vGEQa3yDP8ZQq7a
         Iv19Ge+VwYxIH6aHYz1pJ4uix22KyjsLy4h6xit67HLNTxUQWoLdcxVTcLG6G6bpjB0l
         kNmqbL6IxUuBiJFvYd5fBAVm2f0SvP0usnD96Pg4elFFFZgmylXoaJ6z+5xuIs2rchMb
         nF2G+7FeFmxA3GyEMr1DCNZ1EVB3DY1NZOMUzP6AWbOuhXe69IegRsZ087DgsGuXxqC3
         YORg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=EFV89KryPvAp86krWsYs1aVBIrMyAxLCih1NZxzougY=;
        b=eS+M1nBaE7L0xxyXBFyHcVUknUc1NK6Vb4JzaY3vJZjMo5Z4CaCzk9dBgHkPrRkXye
         Yf3sgBarEpauhz2reqMOKqGTMkuilbYsMd3bEfnsnQqt9z/XvO0gXud4jVA0EBC61ytp
         usXQWkCxo2MmO4eBtQld0D/Vr1YJ+NENj18nEYmm7W6zVm0m50ip6y6K+dEU5apguXRz
         m0EdjnmgcVD/RQ34IQNnDEXFXtIh0FgEZ+4VKpsNIwLSS1gwscBu+QbEvH2IkOkY2xYB
         5T98XW2yOPtcRoJs2J/T4OBDksZkkdX30VuAwygepGVBF6rKR89TeK1XCssotvpvNqv7
         4djg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GdkOT/15";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id z185si1143462ywa.3.2019.03.01.17.29.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 17:29:39 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GdkOT/15";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id t7so22636960otk.8
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 17:29:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=EFV89KryPvAp86krWsYs1aVBIrMyAxLCih1NZxzougY=;
        b=GdkOT/15uTWWyE2mxFJz/4bYs2gko4CcLG0dZbuSSzE7oWHDd6lUsRoLvwWTbHLHro
         co+hXh4IjMcvh4ZosauGdkjnER4CW6ACxcLveulzuL3aZesBneRdd4JjguJUYB3ZIKuG
         Tw+YkcsJ33BlAA+mOXkRm0L1ZwCF3j7FyatyHUPP3fmGIz02sBd8Ekj4J1VC7VNLzK2E
         Ka6kA3x22M+g7nn37aZlgjCaio7Z3Y1Gn/njNs2VaPWueo/93Mrcsdu39fHWf1EMY3Fv
         GvjFdWJdxpz/6WE8EiZGC9J8INDl4pWXOc8uFarKl7yYvoD0xYZ8JaeT27dg7Y+9JSYI
         fb3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=EFV89KryPvAp86krWsYs1aVBIrMyAxLCih1NZxzougY=;
        b=HSBQM3RttZrDhi1jQnyPKTBnjO3VKryee7Ljej/KmCgoDS7gbPWAj0jXWbHsMqVG5b
         WcYxTN7F/6TOYe1nQnyHd+kLIGt2gLU47g5LSRCuEzYus4W8OsIGItCehuZhG/g983EE
         aMuJ8llmbJsDdJEAshddD9nsXg+DF8us08jhW6m+rgeB6e/+h5M+8npEA5xA1dN7K7Q3
         W+j+HXBMrec2Q2V4wXhJ0PuRvS36eFKZB1FybopIgICX5fBbjUvOnK18CwYtvMZkGDOR
         PPqAz8mkc50X0ridw9I+RladE1SZoDQGqnazqsl2Sg6s4SYKwATnN9cC5wsGD+mZAHJj
         sbng==
X-Gm-Message-State: APjAAAX2AuO7Tn0YSLqxLEypgZi1n4odTBIT0IC2oiBTlKQHX9LJ+PgR
	3zUoRhJYXk6DXONtOZfutQXSuBLs1NA=
X-Received: by 2002:a9d:73d7:: with SMTP id m23mr5488117otk.142.1551490179191;
        Fri, 01 Mar 2019 17:29:39 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id p7sm9256784otl.64.2019.03.01.17.29.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 17:29:38 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3 2/2] Staging: vt6655: Fix comment style of SPDX License Identifier
Date: Fri,  1 Mar 2019 19:29:11 -0600
Message-Id: <bcf367421208a4c9777f41226f232e6612c82308.1551489576.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551489576.git.madhumithabiw@gmail.com>
References: <cover.1551489576.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551489576.git.madhumithabiw@gmail.com>
References: <cover.1551489576.git.madhumithabiw@gmail.com>

Modify comment style of SPDX License Identifer based on header file type
as per License identifer syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/desc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/desc.h b/drivers/staging/vt6655/desc.h
index b4a0037b40c1..d4572847b08a 100644
--- a/drivers/staging/vt6655/desc.h
+++ b/drivers/staging/vt6655/desc.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


