X-GM-THRID: 6812465234894127104
X-Received: by 2002:a5d:630e:: with SMTP id i14mr22166245wru.260.1586150665271;
        Sun, 05 Apr 2020 22:24:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6302:: with SMTP id i2ls5622990wru.4.gmail; Sun, 05 Apr
 2020 22:24:24 -0700 (PDT)
X-Google-Smtp-Source: APiQypKd8oIwj6gDPtHSRReNVeYwGaRAFZ50DRjF85fYi41iDJksYkNHaL6rrIxA543a06Oaz/gz
X-Received: by 2002:a5d:6645:: with SMTP id f5mr22796577wrw.280.1586150664117;
        Sun, 05 Apr 2020 22:24:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586150664; cv=none;
        d=google.com; s=arc-20160816;
        b=sEdY2yZsQpP2NsTTma3gmFlJaThUjk30SW62IKq1qID5R3KQVrnXCQyumttpDAW3MN
         bQWfF/9ELXbr9S2S8yGRwPTmBCVEmD//entEyHnnoaxZrQkaGaZ9pFtJqFHdL38YZiSJ
         ojbi6A4KKLVU99T6MPOtdmSwQ/qPq4tobE7nJvIwwD3AqU8gPsNtGnVBDZJudAPWt5Gc
         o/IDR1MLdaQvKKvGmJ92EWs24hf/uvZzINrUA94Q8fmVD84mtiOJyapDpNzdsG9ag1zR
         8oM6Xu3fmpGHaa2VALuPWiziiIdDpj6JTKEIvh7G2N2xkZ0NfMeZ7Ozpf98bHhpSVS3x
         1eZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=6tcFt0+o8CjhOng8GL/h2qSERRYaSCvOxt6nQVxgY6w=;
        b=lDEXcz9BgOMIPww0acfjHHxOiPLidpdS1qo8rvxzndSzG6KjMhKceKvqm9KFGw7af4
         J8EmTPChCRB0oEw7eYZQs1nr2aug79gBVHFY4Eh7EBJ23SVh1d+QVSZG/9QevEDEJyXb
         AiQLWXc8e/smmxFQem1gtk60XvhZQXvk50jEbnh+JXfW3aQIaGXmme/zd8Vk0Ztn+0Z8
         BpOoGIDYG+4XZmVwLDwKqVPAwPTOOQI4kxD5eb7c8xn60kMlTR+0tvM1sEXupyA1OUx4
         FJMCgR4BCsWci0CIxvM/BhJzsIa441gyZi9H2rAAHYqXYNrf9fsWtjtRZLdcC1Xrn/DA
         wBPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id x11si49006wmi.1.2020.04.05.22.24.23
        for <outreachy-kernel@googlegroups.com>;
        Sun, 05 Apr 2020 22:24:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26316 invoked from network); 6 Apr 2020 05:24:21 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.219.218.209)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 6 Apr 2020 05:24:21 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/4] staging: rtl8723bs: Spelling corrections in driver code
Date: Mon,  6 Apr 2020 10:54:10 +0530
Message-Id: <cover.1586150254.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Spelling corrections in driver code.

Patch 1 & 2 are dependent.


R Veera Kumar (4):
  staging: rtl8723bs: include: Correct misspelt symbolic name
  staging: rtl8723bs: hal: Correct misspelt symbolic name
  staging: rtl8723bs: hal: Correct misspelt enum name
  staging: rtl8723bs: hal: Correct misspelled symbolic name

 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c   | 8 ++++----
 drivers/staging/rtl8723bs/hal/odm.h              | 2 +-
 drivers/staging/rtl8723bs/hal/odm_RegDefine11N.h | 4 ++--
 drivers/staging/rtl8723bs/include/hal_data.h     | 8 ++++----
 4 files changed, 11 insertions(+), 11 deletions(-)

-- 
2.20.1


