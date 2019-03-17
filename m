X-GM-THRID: 6669239463558774784
X-Received: by 2002:a24:5dc9:: with SMTP id w192mr6833254ita.33.1552803329311;
        Sat, 16 Mar 2019 23:15:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:90d:: with SMTP id 13ls2612025itm.2.canary-gmail; Sat,
 16 Mar 2019 23:15:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwgBDps94zZUijmVxP2FBF8boTA1erhPM6RQSgUzSzZjmPvX31YOBKylTun6RPAi/NQEdua
X-Received: by 2002:a05:660c:744:: with SMTP id a4mr6398928itl.19.1552803328754;
        Sat, 16 Mar 2019 23:15:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552803328; cv=none;
        d=google.com; s=arc-20160816;
        b=gcWMsplvB3cJf0urkjJycQCaWpHMZSOz4+XtHbBzTYPmURxCh67pP3I3/3Hkm7y1Ff
         Fs+SgtzOwc4WEdldCTaVlrAccxY+59bbE91X5WY0cmjOG930Ha6XH4mEwl+FJK0Yu4Z4
         FgFyWtncdFOg7qhJShD92OS2GG3da7v6uYhUuwvUoFFX8MzImzPUt4roPMHZoeHazvQf
         DMCNuHm3+iSgTh0KOr3nfR1vWs7vbTJRLcdNQ+g9jBP60lbTlHka+MT6cU+o9LPIjphC
         h0VBO4ZlpiGNQm5ugbEk1HLyM8IJiKo7KvyxVgExzbi3p6FKiolNzddg6h2yaq+xS2iL
         hNpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=rjtHLELHPgvTw0vfZQY7htuALdZyntG0Hmr7lOYPlXs=;
        b=bveSe3IvbkFy7YRsIyM3lxQ6hATHk504LJPd7qnHPO+45vu1Z+v6KZZLHVvZxnHYjU
         db6056OesW/un3CJLmIi0NsAMqS8y0zZnqtRipAGdPcsNeGreLupE1RjOLetVfEkWdWt
         0g41H6Er8WHpHBRjD0y1mO1BIbXJB5e3l4ik/hQS3G8Uzogsvdi/hTDId3fxvgQiNtTU
         TzxDlS2GcPENj+CC9t8ZV7RuT0wkXsaFl1kmI8rkworbis3T2yZdUs30Uyzi4vX/yOoQ
         pdpcIkOI/ggEMKw690ZJNjBSNrF83ZOVjTkR43oINgLR9LaVQgDiaQJERDNjiU9bCZSH
         yVOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U+wARW3D;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c2e as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc2e.google.com (mail-yw1-xc2e.google.com. [2607:f8b0:4864:20::c2e])
        by gmr-mx.google.com with ESMTPS id k26si267887ioh.5.2019.03.16.23.15.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c2e as permitted sender) client-ip=2607:f8b0:4864:20::c2e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U+wARW3D;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c2e as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc2e.google.com with SMTP id j66so10498572ywc.10
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 23:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rjtHLELHPgvTw0vfZQY7htuALdZyntG0Hmr7lOYPlXs=;
        b=U+wARW3DRJLXep8XGFsg1OJU66wQvudwml687SQfp/xX/U+4nM/2HKecQln5benq7U
         SYF9PBsoCw4jWpx0ISLUvQmlhoW5i6kOy+8Sy2BWQbHPW9MO/BZK37L83/vOQWMSdGTP
         qx/WH1olcBsYcV17s39ZloD+gyRYXFzsw2SLukjwsJNB5Nu3WKHkO6r+3I0vXvZ3Lxkp
         Or3O8/vQ1VLIqLPb0Aq6Sq6rMWxpPxF3sSoTFfC/4+HR2PYIVTtCjxGi/isSf0inbQw+
         V8pgCdtXKLS5sGsyMNXU9/vb7mhajq0362AY1n/R4+pfNikCTakXXJmrDk2DQ18aoLg9
         xKlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rjtHLELHPgvTw0vfZQY7htuALdZyntG0Hmr7lOYPlXs=;
        b=XAwm4NKe9273tVhMC34WR0bbcCyB2WM9dRkwot86yojYCwgmySV0nDwOzVdkQPYfto
         UTqqY5+8ckW1i/bIrzkMmpZ+yQ23KaIWvf9opKBjf+Pb7p4QtdKuD1AlLhaRIL9VGeie
         GAMTO0ewF4TBZ3Qsj3RJXfNtlBY/5rz1HRv3pTfqyavwCYbucqyMtW6caNnuERINfS5k
         efPfJ0bwIxuKWA1uBUTXtu08aCcaUvQvkq/KvBvqk1UXaWReNy7U/pT5qKYVzgMiFoeF
         yxHkE1DEs2S2kfvJpHq/mspimyFQaB5fggOOyXlTtSGqhvbvknR+pfqQBD5389SoHVUW
         1W2g==
X-Gm-Message-State: APjAAAUSxZSzw3Bu82MTgMxKn07CMVvOlzcHtBm0l1NmNQhTLiJjRuRv
	a4P7dvPgEYp5ya3K1FLSRzU=
X-Received: by 2002:a81:94c1:: with SMTP id l184mr9071363ywg.222.1552803326877;
        Sat, 16 Mar 2019 23:15:26 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id f131sm2772719ywa.11.2019.03.16.23.15.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:26 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 04/11] staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_dm.c
Date: Sun, 17 Mar 2019 11:44:54 +0530
Message-Id: <20190317061501.85447-5-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317061501.85447-1-himadri18.07@gmail.com>
References: <20190317061501.85447-1-himadri18.07@gmail.com>

Remove comparison to NULL in file rtl8723b_dm.c. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line

Changes in V3:
	- Break changes into changes per file
---
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index 6b6fc835c601..65781477cac9 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -254,7 +254,7 @@ void rtl8723b_HalDmWatchDog_in_LPS(struct adapter *Adapter)
 
       /* 1 Find MIN-RSSI */
 	psta = rtw_get_stainfo(pstapriv, get_bssid(pmlmepriv));
-	if (psta == NULL)
+	if (!psta)
 		goto skip_lps_dm;
 
 	pdmpriv->EntryMinUndecoratedSmoothedPWDB = psta->rssi_stat.UndecoratedSmoothedPWDB;
-- 
2.17.1


