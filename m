X-GM-THRID: 6663618170330284032
X-Received: by 2002:ac8:3077:: with SMTP id g52mr2644212qte.4.1551826115092;
        Tue, 05 Mar 2019 14:48:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:24ef:: with SMTP id t44ls4622603qtt.4.gmail; Tue, 05 Mar
 2019 14:48:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqxnn6nRwbcYisluqWdqeinW17ZgmN8zDolndKga3CYLkz2qsaxSsHrIspQ4DDSP9XJ6Sug4
X-Received: by 2002:ac8:36d3:: with SMTP id b19mr2520556qtc.22.1551826114627;
        Tue, 05 Mar 2019 14:48:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551826114; cv=none;
        d=google.com; s=arc-20160816;
        b=jGjQA29+M2dO1vt074s2pPE+L8KMjKouyIJH8nQl2NMU1pFNpSwk19Ui/CrOfXyU6z
         nVkOm7FNu+/OK/T+Xbu1I7Rn2mcOPXa2s5SXwrCKvwNdcsyx6QXhiebSlI9uYcHbPG7/
         q+LqktmpGdkGHO+PxaRmR9z3ngV6MMvnyEdcGFXfLuOd4GamxH4JCAj9VC1x7g0DefOt
         9t3/XlUioftRejyban6UVW5IcuCs6PJByiIjCViYRIzwuolnknrCJYFImGv/s/Mj+OPS
         e5O1jiA7KGONkWWEpvsNxpIUgLcxd5E7/2m3axXHl+OLboYYj8xIl/vpL2K+qYnkqsup
         PUdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=VJX9UGqRUtTWq80SYgywntlOax/L5vCsmiPlwA/pjrM=;
        b=bJDXupgHBWc1VlzZOZeinYduZNQy/H0hgLqnXG+tIPzGF0y7qg+X+laKGwbBZeHoz/
         8DhMw93JogWrKpT60Unv3BqxTFVv1Sy4asLcHAehf4GzmPsVtlPKyGFs/WNMKjmE4VR/
         YwPgN5XVCyrc8BxMl66W/kfbrweB7gOB/3Q1ruxhWjBfsYWpHMs76KibhMPZSSsRNVEX
         FDyXmCOlMdIkDOXeGRMODJZnmFzWPuPyPcqsuNxaIuw45ZZ2X482y1mwYG/OvKfIG3wW
         h28/TIBTIFqFusgd1eb7tiK1jqsEadNHZehfSu3o5u0JEl+iOaGZZ3VrUfAKOeKr1HT8
         wSWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tzl6c6gr;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com. [2607:f8b0:4864:20::332])
        by gmr-mx.google.com with ESMTPS id o22si535067qtm.1.2019.03.05.14.48.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:48:34 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) client-ip=2607:f8b0:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tzl6c6gr;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x332.google.com with SMTP id v20so8959672otk.7
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=VJX9UGqRUtTWq80SYgywntlOax/L5vCsmiPlwA/pjrM=;
        b=Tzl6c6grlygGkA1koSk+MQk9k4j20bM21fDLWyOSLoCpSjM0g6gbUjuCbqppzeFZlk
         sQcwQVg7N+Vtl7uNgfG9xf3Kkg/NSMOymcX0Ps8FC1Kk79IrhkFUS7flOC0GvYYJKqE4
         hh2Cb5cVPYTlDN9dJ7qxVA/1bL2+iqAVtujJnO/0lzuqdGRBTOGUr533AodbKXRxyt8t
         D0DnlSHW4eTk0UNLytS/GVeuPAUUasD5OPt6ARS3GJPuSdsDSY4IwWgpKhl22p08IPhg
         mP+I3Oi6ZCUoEAmpIe35HLDWd+vMUTGQnxeJLDM7JHTVPfoX4J7v7huHJO6ITrCPWZl7
         +L4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=VJX9UGqRUtTWq80SYgywntlOax/L5vCsmiPlwA/pjrM=;
        b=om2bhjCZ5+hS7oydP7bjwB+n09KgBtnmM02d1Wlhg2a+UeP1/f0VUUOiQDEn1WFKTY
         fxj/gwkIHNhzBlfvO66rmW6S7yDnniSyykYzHdMqxzO/fgBstOXZPpKG02Cu6U4cIBiX
         xvwm9QPkWeZ/yi9gHwMqZF3ucBCiXNuBn3HOmgqehhZphuzBLB/BSEKRJ64cDv05folB
         +eTzu1gWC6QDzQ8kFbe20xRUFv/PflEvAVj1Z2VC7hwoN6AR2saJ/AsTNt9n2VkFytnn
         jcMDCpdonvY+SksdFZtd4HYZtzp+f0tN0qmOdhRo5aOPvocdRxh23Jhx2WvBpBgMUu4z
         GLbA==
X-Gm-Message-State: APjAAAVO2t8zroIVv3nZfQSFfqmwOvkqfP2I2hlMxarQTnWEbOefS+qh
	eidOqRVQx5LtYS26cccpVE8=
X-Received: by 2002:a9d:67d2:: with SMTP id c18mr2522676otn.339.1551826114292;
        Tue, 05 Mar 2019 14:48:34 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id n25sm4398583otj.76.2019.03.05.14.48.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 14:48:33 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 1/6] Staging: vt6655: dpc.h: Fix comment style of SPDX License Identifier
Date: Tue,  5 Mar 2019 16:48:23 -0600
Message-Id: <96a9e754ede3189f2db2136acbe70a7e17c7d8e9.1551825578.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551825578.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>
 <cover.1551825578.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551825578.git.madhumithabiw@gmail.com>
References: <cover.1551825578.git.madhumithabiw@gmail.com>

Modify comment style of SPDX License Identifier for header file type, as
per the license identifier syntax.

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


