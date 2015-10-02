X-GM-THRID: 6201108859850850304
X-Received: by 10.140.194.75 with SMTP id p72mr13865396qha.12.1443808167861;
        Fri, 02 Oct 2015 10:49:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.65.3 with SMTP id t3ls770142obs.57.gmail; Fri, 02 Oct 2015
 10:49:27 -0700 (PDT)
X-Received: by 10.182.128.69 with SMTP id nm5mr13341437obb.46.1443808167470;
        Fri, 02 Oct 2015 10:49:27 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id w5si1772240pbt.1.2015.10.02.10.49.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 10:49:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id fv12so114493525pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 10:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=ebmzoOlZ42W+x5g3nxF+B9YH3+goD2msYUeSWMRslVc=;
        b=tLUFSRzH5BVSnLhoynQ6/sLUabfzF+g/qRnhmNQA4a3W82xA6ZazyzOrvCNmwq3S6/
         NO5WCNcmv5c1STtFj/bQZ7FqAfrww7bQTi18S69tdxT2fruqrQGYaokJgL88ks5ubx3M
         iww158TGZmAaX+a0lrlcv9FynXF1+6OZg84B8tts+3LIdUzoQItzCtr8DPd6X1OmaFL+
         nOX3wtQbJu9gR4yEsRIyzPZPVsVoXod43Ze+d0b+3UHzTBPJdrC7sbQEB3dPDJmZhFbL
         culwohD0jC0o3x8oqHsDSBYU+HVrn3CATceUJJPu9glWsnoCZmCPNw9yqAkI+X63mkQ2
         Suhw==
X-Received: by 10.66.147.104 with SMTP id tj8mr21286333pab.125.1443808167313;
        Fri, 02 Oct 2015 10:49:27 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id pq1sm13027912pbb.91.2015.10.02.10.49.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 10:49:26 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/5] Declare functions as static
Date: Fri,  2 Oct 2015 23:19:09 +0530
Message-Id: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.560EC3A6.001B,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches declare the functions and structures which are not
used anywhere else as static.


Shraddha Barke (5):
  Staging: lustre: obdclass: cl_io: Declare as static
  Staging: lustre: obdclass: cl_lock: Declare as static
  Staging: lustre: obdclass: obd_config: Declare as static
  Staging: lustre: obdclass: genops: Declare as static
  Staging: lustre: obdclass: class_obd: Declare as static

 drivers/staging/lustre/lustre/include/cl_object.h  |  5 ----
 .../staging/lustre/lustre/include/lustre_param.h   |  1 -
 drivers/staging/lustre/lustre/include/obd_class.h  |  7 ------
 drivers/staging/lustre/lustre/obdclass/cl_io.c     | 28 ++++++++++------------
 drivers/staging/lustre/lustre/obdclass/cl_lock.c   | 10 ++++----
 drivers/staging/lustre/lustre/obdclass/class_obd.c |  2 +-
 drivers/staging/lustre/lustre/obdclass/genops.c    |  6 ++---
 .../staging/lustre/lustre/obdclass/llog_internal.h |  1 -
 .../staging/lustre/lustre/obdclass/obd_config.c    | 27 +++++++++------------
 9 files changed, 30 insertions(+), 57 deletions(-)

-- 
2.1.4


