X-GM-THRID: 6672221168538222592
X-Received: by 2002:a24:6bcd:: with SMTP id v196mr7860372itc.96.1553498749848;
        Mon, 25 Mar 2019 00:25:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4c81:: with SMTP id q1ls5340717jad.0.gmail; Mon, 25 Mar
 2019 00:25:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyjp/+aSeFNvZ8qG9L9EHYtdtemERUoNxCYBZfCJe46alc6cqEAxeS00owa2EQ7H5849Jle
X-Received: by 2002:a02:a892:: with SMTP id l18mr776700jam.28.1553498749150;
        Mon, 25 Mar 2019 00:25:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553498749; cv=none;
        d=google.com; s=arc-20160816;
        b=yeZVMA1RhmWofU/lr6DN1syUaCqLchuKhE9OPIDAEoIKGIWaLOymCbIhtOpBTuaPak
         cN0qNxptuxrf7TlojZwz4QbXDEhbjicayX4uyy/tmPm7zOhn9y9vtYuGYleUFnAVDvQs
         lMf+yOIINtmq7W1ot5+Nmhu8NaQpr2enaIdyUsWcaaP7wKmLqtFSR2V0Z5OnUJ8ETzK+
         Nd0FscPi7E/lo88nS3MroHxnlMasxSbcfcbt4mdoctyFUh3sIJCgg4pR25JTBisPxWZt
         XKW0uu3rbjBDnMR7OPyo99dhdc75TRcFJkkMvw4kRDuHpmyhLtN2zBJErLSnb3/VsPdx
         xnIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=xot8HxWmsMdVq60AU9v78ThdgLGKPaugKguD0pQ9RXo=;
        b=HrxIBDtZDwE7vFI9EvpH8eeRBhg6qK/Wrbm63SHab9yEJwPm7TjLuEl+lGkwWVEEGk
         PQRTBmW9INDRzRjotRtuNClTdjOepSABjaQPnGD+TnJQCLSZKnkRPq7AESn0kNdOPgow
         imiBiEEjEhXLX5kxz6Bs7gbWKunid5AEReU5erp4rV+jPYmsAHbt6YwrDqJkXPevNZ5q
         XaLTA+gFVe76wlk14o41vj/euZG51c+9bz066My2TOThcXQ052fBnTUcYNGTyy0pDWQj
         XSNCj4p+URsORIqwxl298qfbT5xRJLxQJRFnSIzr3bUD+6G7W1osX9HIhqNthmXs6uhO
         sXaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fHOETew5;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id k26si588708ioh.5.2019.03.25.00.25.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 00:25:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fHOETew5;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52a.google.com with SMTP id a22so5844561pgg.13
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 00:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xot8HxWmsMdVq60AU9v78ThdgLGKPaugKguD0pQ9RXo=;
        b=fHOETew5PlknfUmLiMQXyw+KYwLaaP5G8Glcl93iOpEkHf7GSW/3x3RVU9g0I73mG2
         H/C4yJEFhLCp5n9Wp5oaVe363g87BMT6B3TR9aSOrRBXolzNVWQpCAQGsagcNGOiVJzJ
         AN+OswTArEdMnKUjn9jwe+NTglgUs/ZvlpZ35qLQl/cQq1mqVTzceso+P7nfVEZ2x9fv
         +eQpQcmWauBlegbZ0NNYva/zM8GFER7f6K1kNx9dbaOn9cykv8fTrDPTh1LOjRw1K0B/
         wc0aMLuME0Ye5BJcvqI5sIoSnZL5M5qE3XqobuY0J2JT8+rt85C7Z2jG1niYvqCMKsyQ
         22DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xot8HxWmsMdVq60AU9v78ThdgLGKPaugKguD0pQ9RXo=;
        b=jxQdzoBb+x0Ig5UqF6jFpO2WrIhakocuGuqYsBEfvms0o9qWppgk6XmLmle9bKh4f1
         fVbUlWhvCXsPTODIAc+vWSzf45Ql2ONgqLl3ou/E/tOnf304z/Wrs3ZGBcIUyuPV784R
         q9hWEsFZGaXWy/iHgfKzQBp6A22MktbYGpHKKJMhvyN3vwUTA+bAb6IM6GLXElhCBkO/
         vcbxECzRgnuT3omVQffPtMjbtrZvtMjxkWHfWT6T2hVLs2rgxX9vTid6McO3gDmqdQ7W
         evYM+V1kD0Y6CvBw0mVrIEUf3Pl/kmtkLGGQ6ayUTtx/jGSi2wV9qT2JrglaJz9S6wIP
         /xtw==
X-Gm-Message-State: APjAAAX06G4fFCuAzFNpD+d3tnob+V6PySPmCNtD2TNwWBwPB4H9ULnE
	UluXWPoN01gz6Xjpy7yv+Ctgo3jjkdY=
X-Received: by 2002:a65:6091:: with SMTP id t17mr21770568pgu.328.1553498748910;
        Mon, 25 Mar 2019 00:25:48 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.41])
        by smtp.googlemail.com with ESMTPSA id d69sm8268878pfg.26.2019.03.25.00.25.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 00:25:48 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: sm750fb: ddk750_chip.c: Prefer using the BIT macro
Date: Mon, 25 Mar 2019 12:55:38 +0530
Message-Id: <20190325072538.6809-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.

Replace bit shifting on 1 with the BIT(x) macro.
Coccinelle script:

@@
constant c;
@@

-(1 << c)
+BIT(c)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
Modify script to remove parentheses around BIT.
 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 4c1f00f551da..eea4c08b8a26 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -45,7 +45,7 @@ static unsigned int get_mxclk_freq(void)
 	OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT;
 	POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT;
 
-	return DEFAULT_INPUT_CLOCK * M / N / (1 << OD) / (1 << POD);
+	return DEFAULT_INPUT_CLOCK * M / N / BIT(OD) / BIT(POD);
 }
 
 /*
-- 
2.17.1


