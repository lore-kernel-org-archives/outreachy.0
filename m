X-GM-THRID: 6671798075929919488
X-Received: by 2002:a25:505:: with SMTP id 5mr15161744ybf.267.1553399040316;
        Sat, 23 Mar 2019 20:44:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1384:: with SMTP id 126ls3896604ybt.1.gmail; Sat, 23 Mar
 2019 20:43:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx/ALWEE6cmEFY3cAyuPWSQThP0T9I/YD8lVT1I6IIzk04OIJ3xAoke+YmnHH+1pc1LsBQ8
X-Received: by 2002:a25:2501:: with SMTP id l1mr15155644ybl.369.1553399039388;
        Sat, 23 Mar 2019 20:43:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553399039; cv=none;
        d=google.com; s=arc-20160816;
        b=GdVIBGw3YXb04rKijJ57fYAt6rdfFu8RanU8Fh0GRWC/XBMz4Yuw8DvI5n+uWXIoMm
         hJjYhs0kgQhxd/XqtQGIre6dcInI/zmDMSFi7NMWRq77SvyxuQR7srNsmsu66H4gzegj
         cOuyOz8Od3TKQ/gwJpar6l2OI1G8HpRUGSrvm+AXR0tgtbCMrzG+mqvJhh4Jct3iFTo/
         DTbUxaFRtVtqhDH42OM2bu/2VhjmV2JiMvanxOK0I6wsT9SY8OlmjztmJwyuglvwZdn9
         7OrAn3/P8h9qSgoqMcjO21H2l63VhKCiQuatDWt0cgO1y3pr2+b7IHtVftIY3XlkfE9Q
         u32g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=vlgTATWNru8FutsQy7+FjliGf9FqK5gGWUkVIvkh9VM=;
        b=ExuuXQvDwmglkazY3WlGr5QnvvuYEIAYZAaUXTsXjUN7u2iEdN+p3Ugw5n7kLnLhKm
         EV+qTEQyvZbpY7TmR//aWMloafJoi6mIY+Zm67EX5ayX0TvKvlUXpGAUpmQnRablHA8N
         gRwteWOflxqvu53HyS5P244tvCyDXePD6PflDF/eL5ecN5A4obVx5izXH4/vM4Y8Mzyq
         l9HCvV7Op8CcZTkf972g4Ql/7zkTfVAwcYvXHeyWRhOtw16fE49ZGAmJi7otk8MKS+4B
         qXbWrMVFW7ABbLifNL3Njffo2NP9akhN5DsYzATbHMbw+VDUS7R9OBNB/IPTZmRbf+kh
         pWYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CdM4Ppv6;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id z204si16516ywa.2.2019.03.23.20.43.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 20:43:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CdM4Ppv6;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id c8so4070152pfd.10
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 20:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vlgTATWNru8FutsQy7+FjliGf9FqK5gGWUkVIvkh9VM=;
        b=CdM4Ppv66FRmAXMEgI5qU4xuWCLR0HPK7PFFSJZZlMe8xZap+7EFhx3jaDi+7dQTql
         QHK9lye9nZrUKmqV9iCbefl3j1AM9zf5nCO8ONUr2r5f3bfxuCMHQ2iaixQdaIb/VbMw
         XZZdjlErUBX6rKyw022QOg6OAvb+vpe/7xXew5lt3Sno+5QpxS7W2KM4iboyJUVvppNA
         CqiWCYo9pixXmxLNn6V0fFpVw37eY860VLMegd8mcijtAXAK7JI5oEKEgpNWEuPdSZzH
         +aGcS3Ep4d4p/i0uOXtaxjA08aRulaujQmzMCM8StjC2DBrPnhzuOnl246f6s6EUjSch
         Ar1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vlgTATWNru8FutsQy7+FjliGf9FqK5gGWUkVIvkh9VM=;
        b=QK/NJoLWHoh2YdYSSHoM4DpYGouXd+jJQjcSrkqefgYaHS5pW8ikcSH63Zy6CDzCae
         iu/77iEJ98n8qFDOFKoh1gGE02gEVLnJOOzXuZ+g3IrvrkUr9BL6Leap9Jh3hL0HMASc
         4wFICvfwa/pQlYEBRFrEKBxUX4sPPqak9/qgKprfe6J6INwt+A4REfbRyu870HpBg0Gi
         icnM1X0sXMsY9uc4MkntjREAhbDJoJgVOjOX1cj8OchgqgAuH2Q1a6v12henTCNByWXR
         30D7axCw5IzNSH9TaSh7itG/9kMsXelJRxBmrUQE4iXPB7pDNZ83xbLm7FqZl6mEatMO
         IprA==
X-Gm-Message-State: APjAAAUZqmYT6Rc8mKQNhrmGz4y7pxZSBFCPkq9hJMOT+aBMSgDWjVTd
	1Iv5hZGudrCPM2oZh0LtB3428jss
X-Received: by 2002:a17:902:b60c:: with SMTP id b12mr17706626pls.261.1553399038244;
        Sat, 23 Mar 2019 20:43:58 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.202.114])
        by smtp.gmail.com with ESMTPSA id n75sm18533544pfb.39.2019.03.23.20.43.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 20:43:57 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: rts5208: correction in spelling
Date: Sun, 24 Mar 2019 09:13:42 +0530
Message-Id: <1553399022-4745-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Correct misspelled word.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rts5208/rtsx_chip.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_chip.h b/drivers/staging/rts5208/rtsx_chip.h
index 7325362..bac6578 100644
--- a/drivers/staging/rts5208/rtsx_chip.h
+++ b/drivers/staging/rts5208/rtsx_chip.h
@@ -153,7 +153,7 @@
 #define DAT_PRTCT               0x07    /* read/write is desable            */
 #define BLNC_CHK                0x08    /* find blank/DOF in read           */
 					/* write to unblank area            */
-#define CPY_ABRT                0x0a    /* Copy/Compare/Copy&Verify illgal  */
+#define CPY_ABRT                0x0a    /* Copy/Compare/Copy&Verify illegal */
 #define ABRT_CMD                0x0b    /* Target make the command in error */
 #define EQUAL                   0x0c    /* Search Data end with Equal       */
 #define VLM_OVRFLW              0x0d    /* Some data are left in buffer     */
-- 
2.7.4


