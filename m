X-GM-THRID: 6211756809938534400
X-Received: by 10.50.50.201 with SMTP id e9mr2338943igo.3.1446287336371;
        Sat, 31 Oct 2015 03:28:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.154.7 with SMTP id vk7ls405259igb.11.gmail; Sat, 31 Oct
 2015 03:28:56 -0700 (PDT)
X-Received: by 10.67.7.35 with SMTP id cz3mr9797076pad.40.1446287336081;
        Sat, 31 Oct 2015 03:28:56 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si1146522pbb.0.2015.10.31.03.28.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 03:28:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id z6so98156710pas.2
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 03:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ivejQ351cQ2qJ3XVk9PvfM28y9LhqY9VuhW5cAUZp+M=;
        b=gIrurYukiQLcA9DbJd5kudmoPjPad3vk1uJLfI403IIPFNczO/qNCRD7UknVYEBvbm
         6WT9yxK3MSuF5P9kK4i3e53odWL7xE6T7fCkMcgqX6D9IeHhYWemK/K/r5Y5zLdslyBi
         KDuWxph05IU5B1hvni8dgLREZg6QQ+cA+eZR/dzudCTvre1JKe183RE9dpbGXzdOXJrT
         FO0mZ7inq3DuzmXMkNWhZFhCAofX2khQc6gbXkD+9nkoRn1jFkL6YgpYXMnmFN3WprzS
         Ajahp1aRYFFwLJHQm3TiKGJ9qQe/fTCvglEO9YFZCdeNF3cSdxASJXmP+6ni5TmPzD62
         cUew==
X-Received: by 10.66.63.34 with SMTP id d2mr14198193pas.80.1446287335991;
        Sat, 31 Oct 2015 03:28:55 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id wh10sm13145706pab.2.2015.10.31.03.28.52
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 03:28:55 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: <devel@driverdev.osuosl.org>
Subject: [PATCH 0/6] Staging: lustre: Code cleanup
Date: Sat, 31 Oct 2015 15:58:40 +0530
Message-Id: <1446287326-9404-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.563497E6.0253,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove wrapper functions, unused declarations
and declare local functions as static in lustre.

Shraddha Barke (6):
  Staging: lustre: lclient: Remove wrapper functions
  Staging: lustre: lmv: Remove unused function declaration
  Staging: lustre: lmv: Declare local functions as static
  Staging: lustre: lov: Remove unused function declarations
  Staging: lustre: lov: Declare local functions as static
  Staging: lustre: mdc: Remove unused declarations

 drivers/staging/lustre/lustre/lclient/lcommon_cl.c  |  4 ++--
 .../staging/lustre/lustre/llite/llite_internal.h    | 10 ----------
 drivers/staging/lustre/lustre/lmv/lmv_intent.c      | 21 +++++++++++----------
 drivers/staging/lustre/lustre/lmv/lmv_internal.h    | 14 --------------
 drivers/staging/lustre/lustre/lov/lov_internal.h    | 15 ---------------
 drivers/staging/lustre/lustre/lov/lov_request.c     | 16 +++++++++-------
 drivers/staging/lustre/lustre/mdc/mdc_internal.h    |  2 --
 7 files changed, 22 insertions(+), 60 deletions(-)

-- 
2.1.4


