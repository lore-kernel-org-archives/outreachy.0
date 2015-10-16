X-GM-THRID: 6206282778545225728
X-Received: by 10.66.240.138 with SMTP id wa10mr13583298pac.43.1445021200035;
        Fri, 16 Oct 2015 11:46:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.138 with SMTP id z10ls1554952qgd.17.gmail; Fri, 16 Oct
 2015 11:46:37 -0700 (PDT)
X-Received: by 10.140.195.2 with SMTP id q2mr14057935qha.5.1445021197000;
        Fri, 16 Oct 2015 11:46:37 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ce6si1622224pad.0.2015.10.16.11.46.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 11:46:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fv9so29930983pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 11:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=zpEkdioIJ//mI+lbpb5GffOmq+AB6a1BlPPWSXCa5dY=;
        b=qFLHwXRIXEty+L50hFcP4p2NOH2aDTQtGIVmlhn+mbA8+WoemvncRexSIUHs6E3iJB
         8UPUKHgWXFoSCaY6S9phBCcmqIuj/KAbvTRAj6gs0XJ74/+fJi7C5P71s8IKseBlpWJx
         UhpKGFOwZJ6QNoJIQsbyEX6VFlBSRKZnqe1wikLinSw5Yd6Mkbr2pCvzxz9t0MH9fQ0P
         sZdsquLw5HBwFoc4t679brDax6ExGvBDWHTxwabcTLEmncJzOO/P+FlbIDz0kPLtcDIM
         Vy70VWvu4Nakh1oVOXA+BVtx+dcqPiIdsjQ5z7xRZAEbJtwiEY0HEkXmZpREdzdm+qZe
         fPdA==
X-Received: by 10.67.12.166 with SMTP id er6mr18003357pad.40.1445021196845;
        Fri, 16 Oct 2015 11:46:36 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id mk5sm22696265pab.44.2015.10.16.11.46.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 11:46:36 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: r8723au: replace NULL and zero comparison tests with ! operator
Date: Fri, 16 Oct 2015 11:46:29 -0700
Message-Id: <1445021189-17800-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20151016162645.GA17124@Ubuntu-D830>
References: <20151016162645.GA17124@Ubuntu-D830>

Replace explicit NULL comparison and zero comparison test with ! operator
to simplify code.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---

Change in v2: commit & description message update to include zero case.

 drivers/staging/rtl8723au/core/rtw_ap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index 65b209a..59bb3da 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -919,8 +919,8 @@ int rtw_check_beacon_data23a(struct rtw_adapter *padapter,
 			break;
 		}
 
-		if ((p == NULL) || (ie_len == 0))
-				break;
+		if (!p || !ie_len)
+			break;
 	}
 
 	/* wmm */
-- 
2.1.4


