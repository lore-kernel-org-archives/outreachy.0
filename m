X-GM-THRID: 6663618170330284032
X-Received: by 2002:a9d:6f0a:: with SMTP id n10mr2197262otq.47.1551825253574;
        Tue, 05 Mar 2019 14:34:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5d11:: with SMTP id b17ls1150809oti.8.gmail; Tue, 05 Mar
 2019 14:34:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqx36fMwvxrpPTDyK13O9amRdMxiAcukyVeyxGaBoGW29iw29DRcEsdPk4aql+xwCVfPqJNZ
X-Received: by 2002:a05:6830:13d4:: with SMTP id e20mr2369952otq.0.1551825252750;
        Tue, 05 Mar 2019 14:34:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551825252; cv=none;
        d=google.com; s=arc-20160816;
        b=EZ6wd6FArPLUFtjdKm5h6KCPNNkQh79ms2ZrEUuUiaP32CZ77gM7oaWYQcMLWjtnvC
         JS2ne0sLozL8HYLPor1fN5RbZ9qgaKqPdX+tdHsC162R+gzQSdQucBPzqd91+F6eR9Pj
         7wQd3YHLpjBDoGhlZsIi2A89zU5e967ZAAnFPRnMiB3EHY23YqXIjnxPqnZBYYDzw6oY
         wzeOqV3HeKg+bPk15UbjZ3LyVF11//hF0WIWORo4/J59DBp/gMydy+tAn1i+ySsswfK1
         PiatSJ0f/iwMZg7DMczE2xWw5nq521O0xJMmL9PArMyVyiUfY2mxwW66oEgkGruVld0l
         HvzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=VJX9UGqRUtTWq80SYgywntlOax/L5vCsmiPlwA/pjrM=;
        b=rPNIH5snrs+5henwvWkICXNBg88cJ6WJNXLK2HvP1Cyaiq0G5lEuJ4Wd4VT7LqjHk9
         Wna+74Jy1dOKM77iHs1nfq/7Nl54cEbxitOu0tkOqfJZ8aCdjiXDyLKrH7JXkjRWEoFb
         hba71z6sIx65iOxzrJToK6M/XkJCZsW6bJTggzorZt/B6GK60cX++mXQsO8bs15BHeDA
         n/s+/jWITB2GH7FFtJfOkcKctThyIWSImue1W5DzgKv+DftJMAJ5k9coNy8G2zLaIwy8
         NH4jWqh3g1jHVGXYpYdKyN+KDYwoYud1JK2jwNXfMtK4ptteynnnQIJlqcVnCBhGOqZ6
         ycRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d8myIivl;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com. [2607:f8b0:4864:20::335])
        by gmr-mx.google.com with ESMTPS id d128si475030oia.3.2019.03.05.14.34.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:34:12 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) client-ip=2607:f8b0:4864:20::335;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d8myIivl;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x335.google.com with SMTP id n71so8905205ota.10
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=VJX9UGqRUtTWq80SYgywntlOax/L5vCsmiPlwA/pjrM=;
        b=d8myIivlpX11si6z48T8IbSKbuRXZgtcHo21aT7NpWgLsT3eKOheK2cY25GsrvbOjv
         QUcLRl1ynrz/Leujyee9qqX4htZdGtQWZFul1lBlz3Eh1hufIXiNJQ1e9GA92XCdMRV8
         XhmimYBIoBXSQ3SRZA7GUovYBKdd7SDdDg3tDBytbqGB6UJgsRMYF40zZZLtI2EElaB7
         NlO/gdkcX2CmeiCkiwqAAv6pBfOlJiCghestGjQV3VWXRIeRj5CAnh2/Dh7ltZCQERhB
         5YyeLgLp0riklrcexhDPY/v2Zk6PUDiEGMxRqqHY5c9jTTacqDsfREMA2E0zGS/6xUZo
         pRcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=VJX9UGqRUtTWq80SYgywntlOax/L5vCsmiPlwA/pjrM=;
        b=PywEIbD1DQx43F7DAXEha6PIdKLoE8RTUEt6RDf1VX5BTM/zfi8ZaCoQTk5m0cDhGU
         uKDeC2KetrKCXIJLzTstelJx8B95cyDWpaoUntViRhx00VjcfEmKuIIyW4a+iMc7xO2P
         K32OmDFiaRM7fmlakCKcBoUkqg7Qt9F8icmyAFBoGEVZx65dMzegUNEgrJ3/3xe2yiQE
         rS+NGyWD/GeX3AY2kEfksr3ihlAv65viE7PTNdLjsAdgnkxRvVdmAdjP689PP8C2Az8P
         TqkBECkHPkvBgfYy/QdXssE8/s1dpmLCN9jqf6iV1BQcn1AzKIL0SLjr9kinaUWRLwT1
         dEcw==
X-Gm-Message-State: APjAAAXTspbfPqwmOCxr4P7I4zmG9c6yZGy8C8U7VGCG3hkLIh/W/2Ku
	c0xExSED04FnC/4f0K9ZJi4=
X-Received: by 2002:a9d:6e17:: with SMTP id e23mr2513770otr.302.1551825252432;
        Tue, 05 Mar 2019 14:34:12 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id p7sm4028070otl.64.2019.03.05.14.34.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 14:34:11 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 1/6] Staging: vt6655: dpc.h: Fix comment style of SPDX License Identifier
Date: Tue,  5 Mar 2019 16:34:00 -0600
Message-Id: <96a9e754ede3189f2db2136acbe70a7e17c7d8e9.1551824831.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551824831.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551824831.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>

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


