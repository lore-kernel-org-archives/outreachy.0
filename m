X-GM-THRID: 6395629856318554112
X-Received: by 10.25.223.67 with SMTP id q3mr3092477lfj.1.1489224130287;
        Sat, 11 Mar 2017 01:22:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.83 with SMTP id 80ls1193420ljb.20.gmail; Sat, 11 Mar 2017
 01:22:09 -0800 (PST)
X-Received: by 10.46.83.7 with SMTP id h7mr4229121ljb.24.1489224129820;
        Sat, 11 Mar 2017 01:22:09 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id b186si168003wme.1.2017.03.11.01.22.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 01:22:09 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id u48so14176163wrc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 01:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=XzXCy+bdkDOWLPZwC3CmkwOcsHsJmZ3rm1oS3irxmM0=;
        b=E1w/7gqkj8XpGN3WgvH32vMX9YUI3MMzrpbchAqkaRRXCbDclKbyotxiAmPdJB1XX+
         SXK76CWFDj1Wn6OFD6x6bHtAraj4V2qdvKVLZEAk1jooM8nKa+yGo+WWayhdbVJUOpbq
         XNBTH1VfhumPTiU6bVg4nHndT7DSO5q1wqGvs7E2fibbJL1uDDj/NOBTafHDlKH607R7
         kGDhbqqdgteGZvCWOci8UeXgLdALknHLmYEqSY37xIxnZ3X66XmH5Pkw9ZKGqiq097fW
         G84XqkUUVCR6xzGkY00TwzvXHdSkeOm38fQ+LG8iTTC5jA2CgH+9Knng2TrWlUEEbOu5
         17WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=XzXCy+bdkDOWLPZwC3CmkwOcsHsJmZ3rm1oS3irxmM0=;
        b=Jb35SdP9I74BUNUPkA/RcaEIaiI2UBeCBJPKlU7tFpAtwovCNgST5m7J1rsJDRMuKN
         Dt10WVFY4W9p4shSAURe4l39ZZIPQuvGXm+yQAwi62ScVZ6lAKRtKactM5a9bqDc3XgK
         xjCuyqg9aHPSyeiZT4YhpRq3ltRQ/JUl+nv2IFhmKg/cbjUGR0WB+6z2oMG5GuCxe11u
         QQCdVFcn3U46SXAo9yJ5GMxwdzaMXCWYXRNk7wEB6WervexQHgmRXW3Csjfd4dJXPkC1
         8TaFCcMuFyxOTb698RA1q4LMUAEVdmf0UW/NKz2B1WNlaGLQUs4H9Z/WE6XB4M81zhAu
         Rx5w==
X-Gm-Message-State: AMke39nUf8zj8/aMi+pKzlt9sQcAjhg9kYMtUloP5LvbE1+m3k54qO0NmRkPQN6Ek252ig==
X-Received: by 10.223.135.47 with SMTP id a44mr21153103wra.197.1489224129657;
        Sat, 11 Mar 2017 01:22:09 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id u145sm2969846wmu.1.2017.03.11.01.22.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 01:22:07 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v3 0/3] staging: wilc1000: Improve code readability
Date: Sat, 11 Mar 2017 11:22:01 +0200
Message-Id: <20170311092204.3465-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix multiple issues found with checkpatch.pl to improve
code readability.

Tamara Diaconita (4):
  staging: wilc1000: wilc_wlan_cfg: Rearrange lines
  staging: wilc1000: linux_mon: Rearrange the code
  staging: wilc1000: Align the code
  staging: wilc1000: wilc_wlan_cfg: Delete blank line

 drivers/staging/wilc1000/linux_mon.c     | 27 ++++++++++++++++++---------
 drivers/staging/wilc1000/linux_wlan.c    |  8 ++++----
 drivers/staging/wilc1000/wilc_wlan_cfg.c | 24 ++++++++++++++++--------
 3 files changed, 38 insertions(+), 21 deletions(-)

-- 
Changes since v2:
*Change the subject of the patch set by adding the 'staging' and
the name of the driver 'wilc1000'.
*Correct misspelled word in the description of the cover-letter:
from checkpath.pl to checkpatch.pl.
*Remove a patch from the set.

Organize the patches that clean up the same driver in a set.

2.9.3


