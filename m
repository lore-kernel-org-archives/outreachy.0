X-GM-THRID: 9403654733824
X-Received: by 10.112.73.33 with SMTP id i1mr5495060lbv.0.1426954341626;
        Sat, 21 Mar 2015 09:12:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.243.37 with SMTP id wv5ls558248lac.60.gmail; Sat, 21 Mar
 2015 09:12:21 -0700 (PDT)
X-Received: by 10.112.130.70 with SMTP id oc6mr14471080lbb.13.1426954341076;
        Sat, 21 Mar 2015 09:12:21 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id o3si131733wib.2.2015.03.21.09.12.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 09:12:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x234.google.com with SMTP id 2so5864333wgs.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 09:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=a58cKMO1nKLJ9BGXVx3UhRAvp/uCwNAMAmJlFXdJyWE=;
        b=eB9TJ9Y2AEg6AwPhk3C2a2jXCdnAy2rf/V5/GH8I5pE29jrgZ6cG2EGvKeLBf3P7+w
         S89D0PJFvd/2lPO2hjMgpYyPHOBzUdaGIT69DgO6MQ7UgDL7yDy5SM20mATEx0pnlAWW
         FopMFV4O7jEikWEE+d22jzATbut0WNxuWPl/WeTX4YTeDCMnfOKjk3c8IDeR2CaTqbju
         9QMwL8MA3x+IJNiE/TOokCTpPQNWbl7OUB+O7umKGIBcHOgh9F16vLPHAQlmBycbU4pJ
         qHB1zAzHIYfLL5ZY76YWjYQhHq7ugFfMW7M53pQaOxluhM42Ispa6NA9s5VSqxi66jRy
         SoeQ==
X-Received: by 10.180.105.2 with SMTP id gi2mr5304897wib.62.1426954340959;
        Sat, 21 Mar 2015 09:12:20 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.54.138])
        by mx.google.com with ESMTPSA id a6sm2902025wiy.17.2015.03.21.09.12.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 09:12:20 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 7ED11C1FE4; Sat, 21 Mar 2015 10:45:43 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 0/3] Move externs from .c and fix Sparse warning
Date: Sat, 21 Mar 2015 10:45:42 +0300
Message-Id: <1426923942-24228-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes the following issues:
- Fix externs should be avoided in .c
- Fix Sparse warnings for static declarations.

Haneen Mohammed (3):
  Staging: lustre: Fix externs should be avoided in .c
  Stagin: lustre: Fix externs should be avoided in .c
  Staging: lustre: Fix Sparse warnings for static declarations

 drivers/staging/lustre/lustre/include/obd_class.h  |  3 +++
 drivers/staging/lustre/lustre/obdclass/class_obd.c |  3 ---
 drivers/staging/lustre/lustre/obdclass/genops.c    | 13 ++++++-------
 3 files changed, 9 insertions(+), 10 deletions(-)

-- 
1.9.1


