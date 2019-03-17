X-GM-THRID: 6669239463558774784
X-Received: by 2002:a5d:9506:: with SMTP id d6mr7575250iom.22.1552803346162;
        Sat, 16 Mar 2019 23:15:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:90d:: with SMTP id 13ls2612106itm.2.canary-gmail; Sat,
 16 Mar 2019 23:15:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz2PHW/JmTUwabaSflcbY/azQ9D9XrGTC1l1U3APYavSbe8Pe3nxJWxlned+CfqU0RLS6ua
X-Received: by 2002:a24:152:: with SMTP id 79mr6587912itk.25.1552803345616;
        Sat, 16 Mar 2019 23:15:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552803345; cv=none;
        d=google.com; s=arc-20160816;
        b=Dl8n5L6e0mk5mZQmdFn4z0rS2TM2MzAgWXQF2mzy+aDkg8kvwu2/ZjiwERz4+mAkDI
         e1bSGU1KHQXEP7w907/M2Izft4hVobsJzWNx9OuJBPlNtF6ecL3mn3wAHF/PdPMnZDj0
         5P1r63CfETzoUIEqOp8F1+X3f5cFo4xPsvEiRqn1PKqeCZQZepOVEJXjPG7uLW4If2Zd
         T2NQQeAP7IxHtb33v9tqyXHaEFvwrdWidMTljoZfNRbr+j5grJc9gtDlkiggNYDeiYDG
         zgrUsZVg59cFDFvOeCSIZlJCdP/KUdALSavQdoc6rvh6HD+DkN4C9h3JKdUMlHqCVzH3
         SdPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=wqsphwlBvyY9wi4zkGG/CwM9bO44t1LNxWvk1tbsNSs=;
        b=qptNgnBkIZkW05TBIkuBgJ/Cu4m3t4ukjZd6NoxiRq+nKz61LfCdthqxfSj6OWNp/4
         DcdEfROC7AZx8/0y9I6O8N2UGXDjZ8U/2qNVecsIxEdLCH+NGLhXGgsBEvJ35YQtFR99
         Erm7WlqUFvLKtdlq9+m6VESE9IoJXRXerrMbjWz0A3ptyIYbS+EaYxy/3yCZNK0oVg2B
         RAmLozBsWtaMvAWYoSC+bKLqTunoqXG2Qweoa3bs+gqSAsY4btd78bUeHGsfjolZ2R+Y
         5bui/joRee5VlA6N3mg//hapGuN6g74vWDW5xp6ZNW8IPwHfue7fH/Jy+3j0yq8t/4Kq
         sY7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sr1d3tBB;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com. [2607:f8b0:4864:20::c41])
        by gmr-mx.google.com with ESMTPS id u1si424598itb.2.2019.03.16.23.15.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) client-ip=2607:f8b0:4864:20::c41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sr1d3tBB;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc41.google.com with SMTP id c4so10495886ywa.11
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 23:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wqsphwlBvyY9wi4zkGG/CwM9bO44t1LNxWvk1tbsNSs=;
        b=sr1d3tBB0u4y0b3VPqJREwtVMRUct26ycnv5wsVK0Ree6mRCkoNJVFNCN4EQT9kNCf
         jXSBkTAT4AV2vLolK3D7gCufJjJOzF33uzoHtCA2McMnNJvhkAMZ9/JmE2+CsidS3waQ
         oO3Q91EBlrPlR6emKw15td5baVlDGaizZVKcWugkZlnqaDu9lFHVhT81LkXR8GVe39LW
         bEJhE3Wd5RIhW4hOqD/9MRsw+tWAb78FZKhx2TKTMEH2Pfm6oB8tVCFCLNXZR9Y4VdPD
         cEgd20zFVmpOZmEz1GWYmOTCNzn7ku3xl7nq9VAXa/vuIBxzajmAx1dwRUeT/zw6gZ+n
         LVPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wqsphwlBvyY9wi4zkGG/CwM9bO44t1LNxWvk1tbsNSs=;
        b=ax2qA7vfrL32KUTqtBBrcWXUJ5przWxkwn8Kl1BM2SutDCRd19F50T5F9STzzxMcfR
         J2QuCTyhXPcGGJGOe3bqSAYQT0MWsY1KlREAcIL12zMpMdesFBsJ8zhMxhZaNZQFvWuI
         JqM+6jxx0oZQ2NBQDyW22QcgE08fRLx8EaG/4/AlLv4CeAUW8yFEgJgZ5fgb9ZNyukWf
         LFxN30uyXJXNuE9ySYVl7HaFHtv9xDIYAZt9OGZotGsYI373OHnwrMIQmIK8sme/590U
         Y9071pC1TGFUv7hW3q64+xnXHs/yY9zbP3AR/PDIVuVeNYxAmGIc2wkWJI1xQfSy7pMK
         d8aA==
X-Gm-Message-State: APjAAAXD5DFZTLz4M2RV1YLUszsXmworEB+h8w9cNUUKlY8a8qfbR35f
	ZdmuM1Puu8lludRm1lS2R4U=
X-Received: by 2002:a0d:d203:: with SMTP id u3mr9180612ywd.333.1552803345278;
        Sat, 16 Mar 2019 23:15:45 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id f131sm2772719ywa.11.2019.03.16.23.15.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:44 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 10/11] staging: rtl8723bs: hal: Modify comparison to constant in hal_btcoex.c
Date: Sun, 17 Mar 2019 11:45:00 +0530
Message-Id: <20190317061501.85447-11-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317061501.85447-1-himadri18.07@gmail.com>
References: <20190317061501.85447-1-himadri18.07@gmail.com>

Modify comparison to 0 in file hal_btcoex.c in order to follow kernel
coding style of constant should appear on right side.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index ffc345b6e0c9..6caddd7834a1 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -1584,7 +1584,7 @@ u32 hal_btcoex_GetDBG(struct adapter *padapter, u8 *pStrBuf, u32 bufSize)
 	u32 leftSize;
 
 
-	if (!pStrBuf || (0 == bufSize))
+	if (!pStrBuf || bufSize == 0)
 		return 0;
 
 	pstr = pStrBuf;
-- 
2.17.1


