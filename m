X-GM-THRID: 6200732724667351040
X-Received: by 10.129.146.87 with SMTP id j84mr9176827ywg.18.1443720591894;
        Thu, 01 Oct 2015 10:29:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.133 with SMTP id c127ls656036ioe.43.gmail; Thu, 01 Oct
 2015 10:29:51 -0700 (PDT)
X-Received: by 10.107.7.87 with SMTP id 84mr10214347ioh.9.1443720591230;
        Thu, 01 Oct 2015 10:29:51 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id el2si1083385pbb.0.2015.10.01.10.29.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 10:29:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id fv12so82038422pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 10:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=NsOQeg05fqWeYrj8/ts26U2E7e2qZatMFSyqMoGqY/w=;
        b=ufr7bgo8q7ov5JhFcL3r0CbKq1rW7tDn6A1rPKZg891OV5wX/fU7gW476M1L97nJhD
         RNNQAG43KJOtzXWH8BQRvKnOX+o/eC2Jjx11EeBsb3QePZF9kVkO73Yks3d8NzV5pfCl
         eu5l6eRN+ttYkzwvwGM5yLnAhbJkNi9TN542fwJPz7Uh9GHDyGvZ1A2lh5rbkS7Uzxgl
         FnGA4HhVzUQd+2Bdh9CRXvyKyheB3DaHEufEsruf1A4nEf1rMfSAI4Y9j9PaCeaJitOZ
         iYWM6InapJHFtvewyZKDn4FbPGegZAYIFv/ETZ0y3gXsqfmD1OB61ozmyDo/bRFBew8Q
         TG6g==
X-Received: by 10.66.193.230 with SMTP id hr6mr13667117pac.39.1443720591031;
        Thu, 01 Oct 2015 10:29:51 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id xm4sm7822424pab.27.2015.10.01.10.29.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 10:29:50 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/6] Declare functions and structures as static
Date: Thu,  1 Oct 2015 22:59:35 +0530
Message-Id: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

These patches declare the functions and structures which are not
used anywhere else as static.


Shraddha Barke (6):
  Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_merge as static
  Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_free as static
  Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_expand as static
  Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_choose as static
  Staging: lustre: ptlrpc: Declare sptlrpc_req_replace_dead_ctx as
    static
  Staging: lustre: ptlrpc: Declare sptlrpc_parse_rule as static

 drivers/staging/lustre/lustre/include/lustre_sec.h | 11 ----------
 drivers/staging/lustre/lustre/ptlrpc/sec.c         |  3 +--
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 25 +++++++++-------------
 3 files changed, 11 insertions(+), 28 deletions(-)

-- 
2.1.4


