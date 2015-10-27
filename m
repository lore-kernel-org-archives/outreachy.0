X-GM-THRID: 6208399403783290880
X-Received: by 10.129.57.197 with SMTP id g188mr33336025ywa.18.1445927720861;
        Mon, 26 Oct 2015 23:35:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.175 with SMTP id l44ls3151089qgl.13.gmail; Mon, 26 Oct
 2015 23:35:20 -0700 (PDT)
X-Received: by 10.129.82.193 with SMTP id g184mr2028624ywb.44.1445927720270;
        Mon, 26 Oct 2015 23:35:20 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id sm2si2586325pab.0.2015.10.26.23.35.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 23:35:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv9so222120393pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 23:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=eHzHlgQD0MH7qOG5L+rOsHc5iMl6UWNceQqLpzH//f4=;
        b=yXCrCXy/d3I4NS7RYp26TC1Ps2aP8IHdS3VZ6QlI+TxTFCBb9CvpG7YvWSg/mIwP3b
         r4wdf9l1LesDcg+6cZo15Gky915DNTYJhwJSxUne/IukiKdZk279h4cUodOZR2s/HHEC
         r/ZwouYO91ujakZtZra4C11XNpbl45cHhZMcBURPLHK8FhxlrxcZrd36P1o1qd997fEu
         f/2MlBccNO9LaDfHS0wS/gVweNh2suLRZtP7Pnw2BVMof4IMpJcqACptpDR3QvOB6vn6
         TSfb4btFyqacjWegqVKHqYEGQNDv4jpCRWeCYmE/OXQc0ph65lIsI4wutereG3SFeUWM
         NMJw==
X-Received: by 10.66.255.66 with SMTP id ao2mr25966359pad.97.1445927720143;
        Mon, 26 Oct 2015 23:35:20 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id rw8sm17083594pbc.70.2015.10.26.23.35.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 23:35:19 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] Staging: lustre: Remove unused functions
Date: Tue, 27 Oct 2015 12:05:08 +0530
Message-Id: <1445927710-3559-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.562F1B26.0317,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove unused function definitions and declarations

Shraddha Barke (2):
  Staging: lustre: lustre_log: Remove unused functions
  Staging: lustre: lprocfs_status: Remove unused declaration

 .../staging/lustre/lustre/include/lprocfs_status.h |  2 -
 drivers/staging/lustre/lustre/include/lustre_log.h | 90 ----------------------
 2 files changed, 92 deletions(-)

-- 
2.1.4


