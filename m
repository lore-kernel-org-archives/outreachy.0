X-GM-THRID: 6665132923205713920
X-Received: by 2002:a17:902:6a3:: with SMTP id 32mr1530829plh.80.1551847188152;
        Tue, 05 Mar 2019 20:39:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8216:: with SMTP id x22ls387127pln.3.gmail; Tue, 05
 Mar 2019 20:39:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqyavVuX1nCNWflTIublEbjvQzH8B2AdxvC2hRiL4ZdD3qIU9ixXL+zcTK5uOT+xSZVRSuEn
X-Received: by 2002:a17:902:280b:: with SMTP id e11mr1505481plb.55.1551847187232;
        Tue, 05 Mar 2019 20:39:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551847187; cv=none;
        d=google.com; s=arc-20160816;
        b=UQmK3swj5X8ZecHqMUmZX9FCdzLUXUDiqbT5bu8C2umDYbcgM0F8Pnt+EFdd34A5u/
         v9xoOmuOih6LYmngCvs4uWeGfeWrMf8k1dOsxMhK8A0Sq3aN6m7q4ANjqZeHQ6kMuMHX
         tSCtRT/AJ4TFSSY8I0VLJ3q9HogcS8XIhaM9h0Hm7OldlZVXdOtyqarNMdWvWgF6vzSf
         AeRuJqXKLGi1kggSFQT79zbADJ0WFCGcwuySednvdVHywVQQxddQxP2GE4CnCUV5UrOi
         CyHrIGL6zyoooPnON465dxFNUcGhx0j/kCsSveSjlKIpon3Y53k/3HRlBDXUVCZ0quWe
         27Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=eqBCzlFdjAao8chlO8R2iGHBwLECsv+k2U7lqxpruPk=;
        b=sMd/21kAjYcDuSz/0vXH2lpIo85T8KKGdeJnxah+UtdwKRjyfPdE1hau22iRVwbk8u
         YuCGUpIsTIw7Ug69V2SSBgCi3vyCkEDu4WVE0f22R+5W/Gdh2hx8Esl3AwgBfxqMlFyv
         oEBw5pO76qV+tBaaGDSLaCkKeG9UcfMzEIqjo+Kk0bYtU95FXZfyTGY+yVVHXZmYX5kk
         oYZxkUD2wmy9VSSdDNNSIqxLxjDJU4dgkHIFpzNyf77DaAskpRvOHnqCvPF4AQ+MIySQ
         RjKuPcPiaeMstKqF+mrNNBF2JAHee+vzlPx58fOyn7DyP/xPfyH1a8OpkbgxYtbXB/8V
         6bxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xee+vMnC;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 197si41902pgc.1.2019.03.05.20.39.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 20:39:47 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xee+vMnC;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id v21so7480248pfm.12
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 20:39:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eqBCzlFdjAao8chlO8R2iGHBwLECsv+k2U7lqxpruPk=;
        b=Xee+vMnCclMf+1beM69Ol5Y3T2kd6N0edifYWxiQv9djskiLwX4etXclEv5GxlAG/2
         JpIqFhUO6KQxLbCfNn4aclQ0CNR7uB4Bm24D7EtGXGndqSex6Ez6bhW1Y/SzXWlfFOia
         eHiGXvg/DYvqqeeGmPdzyUmlt1Il6BMMzYG5xOFJ/sHyQjTHxD+jZhRRnoM8L/SAsjhB
         GFb76g3JBRjcl+BxLkOSjm3GJOhXl0QBV+eTNhZ2ta1eY2TsTsOjdJ8Hldegpx8f3XWQ
         J9aKtbYqlyoa7Yg4djeph6BWI8IdoHIxqeta1smqoc5ycJ1iO4Nm/+v/3xY+i8f2AKYB
         OAuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eqBCzlFdjAao8chlO8R2iGHBwLECsv+k2U7lqxpruPk=;
        b=NVy60PXCNRkMKu9XQqjyzgfyAI8D+g6hRQY1swuWaUZGwZ53Qu+coT/6ViTzfhAFih
         NQGrt/4iZFXnTu1PlLjr+p9eqBRAPuApdNVijQvHEAD0KWGfrLKv5roP61Wro5pJwcdU
         5sPgYm8OUgBcMVXbuJdg4KCNyDc2WLBkMN/VtcX0Zul4AJyw3dC7YQtjD8/fwbbvbysy
         jPGGzh9Hh0gBTLAUucfBIxRNT1vYBZpCCc47GvEvOoD4+NVp9nge/7nia85tCigpNT7R
         nKvfW2edsLNfre/l4D+j9e5KMYX5psPUg4nd2UWabsIjzdDQg1wwI9tRCup18LSCNfZJ
         mFxQ==
X-Gm-Message-State: APjAAAVPDGLsu6lH0TLH33JwwRoY75gMbbo4ZKz4HOTjZ2vN6tUWNwa6
	PA5agTDKdCArXj/16faxOUI=
X-Received: by 2002:a65:4608:: with SMTP id v8mr4681578pgq.9.1551847186928;
        Tue, 05 Mar 2019 20:39:46 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([2001:da8:d800:199:7e1:7347:f861:5837])
        by smtp.gmail.com with ESMTPSA id g3sm803120pfo.125.2019.03.05.20.39.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 20:39:46 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 1/4] Staging: most: dim2: Fix malformed SPDX-License-Identifier
Date: Tue,  5 Mar 2019 20:39:38 -0800
Message-Id: <20190306043941.6141-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

This patch fixes the checkpatch.pl warning:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/dim2/errors.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/errors.h b/drivers/staging/most/dim2/errors.h
index 3487510fbd2f..cbbdaaf5c52d 100644
--- a/drivers/staging/most/dim2/errors.h
+++ b/drivers/staging/most/dim2/errors.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * errors.h - Definitions of errors for DIM2 HAL API
  * (MediaLB, Device Interface Macro IP, OS62420)
-- 
2.11.0


