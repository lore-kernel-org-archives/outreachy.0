X-GM-THRID: 6673442126229929984
X-Received: by 2002:a67:db15:: with SMTP id z21mr4692064vsj.41.1553965946279;
        Sat, 30 Mar 2019 10:12:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2743:: with SMTP id a61ls912578uaa.0.gmail; Sat, 30 Mar
 2019 10:12:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxTsszDjnXWtXVzEhaPzX2Wc2nqA9SR4jIm/b7ZW88nmmGOJGBapN0cnFh2e1fji3QoPAHo
X-Received: by 2002:ab0:3410:: with SMTP id z16mr4586166uap.12.1553965945710;
        Sat, 30 Mar 2019 10:12:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965945; cv=none;
        d=google.com; s=arc-20160816;
        b=AecX9wY4MKB2JNcQv6s9I0orb0v66xySineRhQsPvF3mwXiQZryv2H/QHTcM97ms8t
         UyDucjf7Zmdq8BKfSTz8QO6C2Au2Qqi8mEdiPWkczGWO1y5G6uXJXGAmuHbKnZEhnxxJ
         +tyzSzZdFnv/pyBkZUeL2fiOHLe6nA8aPF3LOPCmUt3/HZNH6ILH9t2G+ZVfCV1jnyBG
         FynB9W27TSFS9ujIewozD58udYTHyF1RemP4y0+8FRZsPwCurv+08cv2oKjW7+hvo4cg
         JWOH30ZgO1ui4Py/PzRjH4zD3Al/+Lb/EXAN4jZon54ydK4e9s+Ma23xN4dZ7qfOnv7D
         mi5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=5k9B+F0BIMmSUqvluK7m1vCW+5Y4cUPKtlYNri6/qEM=;
        b=L65zWuomiKeaJeOUEsYMasPlX++ibLerR87LDzwjN3QbELWXnCX4nE+XjLjFQAi9fO
         ei23stjXMaDlVwZ2Vzh+Su9VHgpDix7dT1QOk4cNDAPJfKExepBsQrqPnuMDhSNtwl6D
         gMDCSpl2eqkeZhqR1F+PnMSxP37l+LeH4Nopa+61RkiA7xZ/MhRHfJnFT1IECkAQaW9r
         q9z6KUFv3rLMLZNTxHYYlqeEneqgJUq7YBR9k56tzGYAdBFqzlQZyf/akp+FdazXNpjc
         VIs1BmhEJW9wuu+T2AKTwc59Tpcr0hVKVigNuuz1GnRMiBr2xpd9rBDHJ1GSGrX5F+f4
         mzZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I2vefsKT;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id g14si172140uah.1.2019.03.30.10.12.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:12:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I2vefsKT;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id m10so2456516plt.10
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=5k9B+F0BIMmSUqvluK7m1vCW+5Y4cUPKtlYNri6/qEM=;
        b=I2vefsKTDlZHqMEmkLiiE4hRz2T8iq9cWSZdbMMNkdyRFC0aASgoVXGonXGwtDwad2
         5c3SCPV0wd5Nya3XtSLT8anFtSygJkeTuTDtNgiRF/A4ZGCMh7LUfa1nvXdUVK/Q3xjH
         DEhPGORMTTsdXm7DNXGN8rvFqQBjoDgr2lfbTfhIRuNdZQiFlfRBJ3WLYROAHIhkC8z/
         GBeF0QIM9IVLlDbTJ7fpVsxvA7waOVMfjcXKSEIANVKfJ8W1q9oydMjuT6w5ydYxfQcf
         19/FP1xLR/WcEjYNr/gS9X/860eGE006OKp5sB8HEFDPircEcPzuw40NubislycHTEYA
         f9WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=5k9B+F0BIMmSUqvluK7m1vCW+5Y4cUPKtlYNri6/qEM=;
        b=Pw3Uy343yKKcuFDot505G8FqEPmNUSqRWxATH7KF+X5MEzC6rtevoqnHIuuBWqIGy0
         fbZYsRPmYZpdPuHARpFBoNXJX/S3AiOZlesohLzwhyOz0WTsY0rgw5VGHe3afOBqB6wq
         GBroqyCH65CEZstsUAXDYRj0Kuxs6ZOM2zYxKpUwR2YEVM82GV9OkWxI0kUd6lkCqqgL
         WHTBMhoxM1o/8e6TSSDTuH57yvzE87nk2o/C7vA3cwTmqULgJn1HIuDkuFnjdm5whQG/
         n+tdjyjY0lUkz6RTIr2AkSejyasgUl70D80HokBhvbUzFesWF2KuoT+ZesoAPnZC3xbi
         JLFA==
X-Gm-Message-State: APjAAAUBb3rcI95fqpNgLYu7mh5E+yZznYNLBSOSaur/aNgS0LNJ58WZ
	CLFsiZEiaf8QSOMpH7SGxlwK1WJS
X-Received: by 2002:a17:902:1003:: with SMTP id b3mr56191326pla.306.1553965944574;
        Sat, 30 Mar 2019 10:12:24 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id j4sm7539607pfn.132.2019.03.30.10.12.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 10:12:23 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 2/9] staging: rtl8723bs: hal: rtl8723b_phycfg.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 22:41:49 +0530
Message-Id: <3edc2a64cc963cd46290b9b1dd7fcd7cad07f7ef.1553964404.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around an expression.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index 78a4828..0fd7a9a 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -827,7 +827,7 @@ static u8 phy_GetSecondaryChnl_8723B(struct adapter *Adapter)
 	}
 
 	RT_TRACE(_module_hal_init_c_, _drv_info_, ("SCMapping: SC Value %x\n", ((SCSettingOf40 << 4) | SCSettingOf20)));
-	return  ((SCSettingOf40 << 4) | SCSettingOf20);
+	return  (SCSettingOf40 << 4) | SCSettingOf20;
 }
 
 static void phy_PostSetBwMode8723B(struct adapter *Adapter)
-- 
2.7.4


