X-GM-THRID: 6746163892430307328
X-Received: by 2002:a37:353:: with SMTP id 80mr9378705qkd.439.1570713681447;
        Thu, 10 Oct 2019 06:21:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3f5a:: with SMTP id q26ls349830qtf.13.gmail; Thu, 10 Oct
 2019 06:21:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyW+nfiwi7kPAY5Oqq/ox+xF4zvcvGDqvEuzvkgh8caOJPTGp+JvbTg8phEbLy9/JxeqaFb
X-Received: by 2002:ac8:529a:: with SMTP id s26mr10219320qtn.238.1570713680245;
        Thu, 10 Oct 2019 06:21:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570713680; cv=none;
        d=google.com; s=arc-20160816;
        b=k367A1q5i/ihvfTUX08OjMlzagS3Iklxkj8gfZVz6pDYfSgAzNm76UKbdoi3mKjAjf
         usAz1lKeD1t/40I5t5vFvdGsGfDPWa5D5Gr41KHIotgA8QuNguUMwB8tFMo4g1iPWC9y
         Y8yMRhZlL3O+LGW89JRg8HyQT/ni4gWr7wEW55cNPN+XayorGCDjJZGn5yCJBhXbP0An
         c90QhuSU+bEtU08tay485ylGGx5LqCZRfeLph9xUlrTdj7Ai47phfWHuMGemB1VZ8OSB
         at0NdKgk5ux6lYUNA1kA3QUOu2mdrbHdMARQAEbjG80R6vzEeUltghSsObFK3mDyYc90
         eGiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=sNkcoz2qQQJzkBN7TPFJIs9Ujhr7nKC1loZQV/g1Ccw=;
        b=DpkBokeSWPFHXSzrr847U4GmgYLWOthlZHZ+sl09SIwbzOif/qgEUBM6lRQ4TGnLNO
         oIJONRR/3yGtRYOHG0QDP+SjWXC3qjbIFe2iJ7ncpxHqYHyXNCtRNNIYRm6rqfv1h8Z8
         6NXJzK62Qfpw6Huy4jVVzNzpdqsm8pMHI/09nEvvGLnlYwz86xikU9QwiW2vagzfgtO7
         ZEDDZbA4H+j1nq1sLAUGu6BszMcm8NQL+051ITGKGIKGOLR8xciW3AqH87Tx0m5lkpWU
         MUwKgnZErT8r+XgXiEVARBg84XNapjjtVrltHbgfqsTquBNvBnGOJuCiOGETz6J7JJZT
         8Qew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TThZtPzW;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id t53si252738qte.2.2019.10.10.06.21.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 06:21:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TThZtPzW;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id p1so3661449pgi.4
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 06:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sNkcoz2qQQJzkBN7TPFJIs9Ujhr7nKC1loZQV/g1Ccw=;
        b=TThZtPzWNwtue6y9ZvOvLq6kR6ynBi2BIcoQKTknfEa20G6yABruMP0e6OSvYmKL1R
         xy0qmWhh+Dmj0wdywBiBYLDq5/efZroBtm0ys74wBJ363qjZH0aw/8QmT/GqT2lFbcKV
         xJl81Bb/6SqayixA/EZLwSqDCWirabUa8la2y3XTHjMI2l5KxKQ5FD9eNfwc/srsgnEA
         eOe8yAUdtzhVwqk+kSss+GeHaoy3FEx/gNw3paIOBUl4GsBPvxuWyEA4DwIMfOS4lbad
         y0APRmiuziMLmxPC/2afgJiUOqMLawyGSptp0hQerIjkLpff9qUJf9dsj+WDBxzOq23G
         YN9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sNkcoz2qQQJzkBN7TPFJIs9Ujhr7nKC1loZQV/g1Ccw=;
        b=Mmon7Hz5b2zekrHl9GZm0OOlmnNY4rGojfz3F95cTPULOU6XiOsXtZ45MRohIoufrQ
         PZTECWV9TKc/Tj4qqb/Z4ROI9KDdZ8CHy6TY4RNrWRo0jeU5wBbiVMzC1qoe7Myhgifl
         Wywy4RCKFKa1X4I11JklWIpa9r3D0OjkzQdJt0YFVGGANVNnxw6/F5gEUlSiSaUFQrUI
         3W5Dx4F2gQOiq/laAp3Iwp6rLKLA5clI4WbU/SDtyMlb7gMOoH2lteHg/5uI5T+PMYAP
         OeCwulpAK4asm4/45Tl81xFwmmvWZybuBPS7poQ7ymsZNEw61UIKX2OTxjQQHbVgSKlV
         nN2A==
X-Gm-Message-State: APjAAAXqP2ro5twejfVs6I8aRzA2pR25GNSDDdgBPEuj2R8RZ0t1SzpO
	VaMTQJXbnWMWU7bqnABkLK3FVo4Ff/YJ6Q==
X-Received: by 2002:a63:215c:: with SMTP id s28mr9934229pgm.302.1570713678298;
        Thu, 10 Oct 2019 06:21:18 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.brck.local ([197.254.95.158])
        by smtp.googlemail.com with ESMTPSA id w189sm6619667pfw.101.2019.10.10.06.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 06:21:17 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH] rtl8723bs: Remove comparison to NULL
Date: Thu, 10 Oct 2019 16:20:58 +0300
Message-Id: <20191010132058.20887-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove comparison to NULL in drivers/staging/rtl8723bs/core/rtw_ap.c:1449.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 80027ac765d0..7117d16a30f9 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1447,7 +1447,7 @@ u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
 	u8 res = _SUCCESS;
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
-- 
2.23.0


