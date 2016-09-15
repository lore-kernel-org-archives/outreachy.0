X-GM-THRID: 6330303746353922048
X-Received: by 10.157.53.109 with SMTP id l42mr7286075ote.17.1473966526479;
        Thu, 15 Sep 2016 12:08:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.175 with SMTP id 44ls4181146otf.31.gmail; Thu, 15 Sep
 2016 12:08:46 -0700 (PDT)
X-Received: by 10.237.34.129 with SMTP id p1mr7725607qtc.9.1473966525957;
        Thu, 15 Sep 2016 12:08:45 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si3049658pfe.0.2016.09.15.12.08.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:08:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so2438869pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=YKCHjgSP0yYNgUzFv3uJZyC1ll9uLSdAQKJ0xkfY0UA=;
        b=F59md7F9GunWLuVPL4e7ApJUz5nDnsJ4v9CH3jLsp2gxNFjNQia8yZaW2kIHrN2Seg
         w3B2hFFYgZU78x5fVBWS8J2Qvipyh9seLwLwC1kDrvENReAqju8fuKiVGYX27cNqyAcg
         UgqybSlQnOUxPxPuHHrSOqT5a9YOM5MLupn6/xMEcI4oy4Xh4CbLO76SLNiJWf5kyJRh
         lQJE/je5h1WB2mfOfQvaGiMCnECKCglpqYFsMtZvp1XOiKWxkhUAQmcPyc5vWBL7Tz7N
         Zg8thhqzR1V3PctBet+8jsc7qGwJADiGTC75o/sE0fsLIVOqPefgvzoU0pq0dP2Zj5oO
         Pdlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=YKCHjgSP0yYNgUzFv3uJZyC1ll9uLSdAQKJ0xkfY0UA=;
        b=NV5Qy/Vg8OFfKq+lHzSOwUQUxkwVlo6EOo86NTgec6TfxwTONgaZYPjKde6LvtYHIl
         O/9lrpcRW6HYe3SDhx8EMZ8CEPlJH0EhzIM30ZQlljfLcED8/0woHPLI7OACqK8A5lJ9
         hGQQ1hJ/MZE1hqgJF65+9NRZWJ8XnleNlvQCrZDWJjvcSYeeWhe+HyZBdaSH1CHWDMek
         C+EbuHM/tUM2C8W7yaugq98HCebZbiyqAjHdUIvMEbk/qVEtahHhoV5VYN/EF2PczTy4
         zwFjMdcZwk0hyjxjGmIbJghjPzBSmST/IJbNK7lYG9pg8APgY4eQR9d756SbNal4VT8i
         lGAA==
X-Gm-Message-State: AE9vXwOk8FEGV1Y1T7khFiUuFkDyhayj6x5kTaK7Gt+BcdbJwPw1DbR/9Ghq1SJWq5Yl/A==
X-Received: by 10.66.75.164 with SMTP id d4mr17049189paw.22.1473966525698;
        Thu, 15 Sep 2016 12:08:45 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id vy9sm6795538pab.22.2016.09.15.12.08.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 12:08:45 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v5 4/6] staging: xgifb: add spaces around |
Date: Fri, 16 Sep 2016 00:37:12 +0530
Message-Id: <7025029f96a9f7f69f012718275b86d9b4346ee2.1473965827.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473965826.git.gs051095@gmail.com>
References: <cover.1473965826.git.gs051095@gmail.com>
In-Reply-To: <cover.1473965826.git.gs051095@gmail.com>
References: <cover.1473965826.git.gs051095@gmail.com>

insert spaces around '|' to fix the checkpatch issue
spaces preferred around that '|'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 41dcc6d3..b0ec981 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1914,7 +1914,7 @@ static void XGI_GetVBInfo(unsigned short ModeIdIndex,
 		}
 	}
 
-	if (pVBInfo->VBType & (VB_SIS301LV|VB_SIS302LV|VB_XGI301C)) {
+	if (pVBInfo->VBType & (VB_SIS301LV | VB_SIS302LV | VB_XGI301C)) {
 		if (temp & SetYPbPr) {
 			/* shampoo add for new scratch */
 			temp = xgifb_reg_get(pVBInfo->P3d4, 0x35);
-- 
2.9.2


