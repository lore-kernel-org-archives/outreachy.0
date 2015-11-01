X-GM-THRID: 6212138738119606272
X-Received: by 10.66.235.1 with SMTP id ui1mr13920063pac.36.1446377805352;
        Sun, 01 Nov 2015 03:36:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.171.73 with SMTP id as9ls753034obc.99.gmail; Sun, 01 Nov
 2015 03:36:44 -0800 (PST)
X-Received: by 10.182.104.137 with SMTP id ge9mr14865535obb.49.1446377804924;
        Sun, 01 Nov 2015 03:36:44 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id el2si1512134pbb.0.2015.11.01.03.36.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 03:36:44 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id hy1so112566075pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 03:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=/lsAyqdTOQLOwkCUDDNJyzneqKTd+Xx0uTpIUp7k39M=;
        b=uUBn1x7OtaFbZXOI7ivfsFy6FatDucMFr/TNr7gRioSpbB4HxAZyvUDIJDn9oAy1ZB
         taqqd4l3sElOV2ARcdqcB8mc32SvppA2dpLPjuI1rou19sbslBCzqrcdC/JGyEPsTxEC
         gemybJNqnAoqZdKhnyHsvEpVpSG/lshczjOxUGhyqOzMl4zzcLU77iSMTzfYfo7wLyDm
         Lnzd4ELS43EMbVU3adzK0XP6752UZZsrhMdnFursMItPJvvwQi6yJipEDRsb1c6OCl69
         eOQaWQZ8+ibaoX34I78w3oeLIenQ7Oshhlc+SSl7WiGWy/iIU6/eolWeJd7Y7ieaOpPt
         tbCw==
X-Received: by 10.66.182.131 with SMTP id ee3mr19810703pac.81.1446377804794;
        Sun, 01 Nov 2015 03:36:44 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id qn5sm18230904pac.41.2015.11.01.03.36.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 03:36:44 -0800 (PST)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/3] Staging: lustre: Declare as static and remove unused code
Date: Sun,  1 Nov 2015 17:06:31 +0530
Message-Id: <1446377794-7761-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.5635F94B.00F3,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches declare local functions as static and remove
unused code. 

Shraddha Barke (3):
  Staging: lustre: ptlrpc: Remove unused function declarations
  Staging: lustre: obdclass: Declare local function cl_lock_mutex_try as
    static
  Staging: lustre: libcfs: Declare local structures as static

 drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h | 7 -------
 drivers/staging/lustre/lustre/libcfs/hash.c               | 21 ---------------------
 drivers/staging/lustre/lustre/obdclass/cl_lock.c          | 3 +--
 drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h    | 3 ---
 4 files changed, 1 insertions(+), 33 deletions(-)

-- 
2.1.4


