X-GM-THRID: 6805954026607214592
X-Received: by 2002:a05:600c:2c2:: with SMTP id 2mr4609412wmn.95.1584634656060;
        Thu, 19 Mar 2020 09:17:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls1204283wrd.5.gmail; Thu, 19 Mar
 2020 09:17:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vthiOuIqVpamptIF5n+CHHtwW3MVWr9NiMzIJTBTgLMuAixbH1OzPAk7Kv+u0EI0X3BUGcO
X-Received: by 2002:a05:6000:128a:: with SMTP id f10mr5080046wrx.242.1584634654968;
        Thu, 19 Mar 2020 09:17:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584634654; cv=none;
        d=google.com; s=arc-20160816;
        b=nTykEc46rHR59AMx6PoFforNKweSBPJBxciLVH5KfJN82ulYfezXzeZBNoUFSwlgfi
         loQn4ikxLrbDcVvaiJN2SqA4/J5/yPdxC9VUxR+BSEk0gRktWGHIq9qdDOp/U4CIbvDc
         a/1cjCrfSf6a8lEslq2ocSjpkxiRLj07e0cbOLZUHSUFBDvOULAu/yoBVvMzSn4DD2if
         ZcNNfg+wsvhsJApBCDy1KDFXToAcPT2dpvx33tGZh1BFmqSAiFweHamXgi33IRKyulGP
         8Y946/FiqQ9r6IsL00OtWwX/CtqVc/wkzGzauoDh4EZ5AG+Ejdoy6sClnSpSyK2//Zes
         GtWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=hKcmv2Tfg6P9dDss71pK8b+k25zxxiwfINZaNAFHSCo=;
        b=s9AT2GFk/XTssnxRv4GUrGmxQfroCWlZ5iHoU4jabkSnE9NIjwpo4Pn4rBW/dwcG5a
         BBGkVx4f2O4/5CaaXdSFikSCcQtg/qb4xifugN7sGuXjTCmAT4sBfcU9l1fG3HbpNkMC
         W+V34Pwc5G+yvw6AVJnGmGOl7JJBKgFSwsg7DVIPwLIgk6SLPokgJhnkPtORXi8EDdTE
         y71Om8OB5eaAWagAa1OCVq7ZitNvPA6aUgJUojFdquVvGMlAzQ46lqw9sccUsW/nxPdx
         ihSJ9GeOhVbJ8FfAYOr+RavbCwRyrlFmdFcqaFeQJ3fN+RrEawReejnLTy2SPCwDv1Dm
         Afog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id v12si72032wrp.5.2020.03.19.09.17.34
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 09:17:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 30415 invoked from network); 19 Mar 2020 16:17:32 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 16:17:32 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/2] staging: rtl8723bs: os_dep: Correct typos and long line in comments
Date: Thu, 19 Mar 2020 21:47:11 +0530
Message-Id: <cover.1584633953.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct typos in comments found using checkpatch.pl.

Correct long line comments to match coding style of
respecting 80 character per line limit.

Changes since V1
 - Missed staging: rtl8723bs: os_dep: in cover letter
 - Patch 2/2 corrects a extra blank line addition
---
R Veera Kumar (2):
  staging: rtl8723bs: os_dep: Correct typo in comments
  staging: rtl8723bs: os_dep: Correct long line comments

 .../staging/rtl8723bs/os_dep/osdep_service.c  |  2 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 28 ++++++++++++++-----
 2 files changed, 22 insertions(+), 8 deletions(-)

-- 
2.20.1


