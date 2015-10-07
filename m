X-GM-THRID: 6201947249365221376
X-Received: by 10.112.40.17 with SMTP id t17mr614538lbk.10.1444248381486;
        Wed, 07 Oct 2015 13:06:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.157.136 with SMTP id g130ls112379lfe.73.gmail; Wed, 07 Oct
 2015 13:06:20 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr608390lbp.24.1444248380780;
        Wed, 07 Oct 2015 13:06:20 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id bn1si191435wib.0.2015.10.07.13.06.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 13:06:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id fx3so228500711wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 13:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=BH3Bg1vwOTF5mV9vlSjaAwqihYYg8J4alU6NnHpZcFs=;
        b=byFd1pRcsN4eX4wfB8kau+RrXlntp1DXVBnLb+tNlXSpGeyaOPiFY4WKs/KbsDWRJO
         P26qvDn5XsIxOW71zS1OcTn3lsnwXTLbt1GeguIHlXfj7uTOC1+1wpDGSuO9yh7LUq/2
         BKKQLcs4ONIMBNDFr2uMSW6q3XX9nq75Gf3QAjM3+859n+spvxy0sG46EBRYQnHMKSr5
         nWbn1sNMUKbaSNxrIRaGRyEojgxKHmWzJnuXz9xvrFGRh1YkMPFvos97Gvmk9JPQ9tSD
         pzbsOiJc+fFLXhr7jRwHnZsZ3dc8vRUMk8zNwMvfTWyglWZ5gY1xPJqZaT3OsNlnBAZU
         3pDw==
X-Received: by 10.181.8.72 with SMTP id di8mr3950305wid.62.1444248380610;
        Wed, 07 Oct 2015 13:06:20 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fv13sm4016186wic.7.2015.10.07.13.06.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 13:06:20 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/5] Declare local functions as static
Date: Thu,  8 Oct 2015 01:36:03 +0530
Message-Id: <1444248368-29504-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.56157B3B.0021,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare functions as static since they are used only in a particular file. 

Shraddha Barke (5):
  Staging: lustre: obdclass: llog_cat: Declare local functions as static
  Staging: lustre: ptlrpc: pack_generic: Declare local functions as
    static
  Staging: lustre: ptlrpc: import: Declare deuuidify as static
  Staging: lustre: ptlrpc: service: Declare local functions as static
  Staging: lustre: obdclass: obdo: Declare iattr_from_obdo as static

 drivers/staging/lustre/lustre/include/lustre/lustre_idl.h |  8 --------
 drivers/staging/lustre/lustre/include/lustre_log.h        |  3 ---
 drivers/staging/lustre/lustre/include/lustre_net.h        |  4 ----
 drivers/staging/lustre/lustre/include/obd_class.h         |  1 -
 drivers/staging/lustre/lustre/obdclass/llog_cat.c         | 15 ++++++++-------
 drivers/staging/lustre/lustre/obdclass/llog_internal.h    |  2 --
 drivers/staging/lustre/lustre/obdclass/obdo.c             |  3 +--
 drivers/staging/lustre/lustre/ptlrpc/import.c             |  3 ++-
 drivers/staging/lustre/lustre/ptlrpc/pack_generic.c       | 12 ++++--------
 drivers/staging/lustre/lustre/ptlrpc/service.c            |  5 ++---
 10 files changed, 17 insertions(+), 39 deletions(-)

-- 
2.1.4


