X-GM-THRID: 6209942832976756736
X-Received: by 10.107.9.36 with SMTP id j36mr30357575ioi.2.1445864986948;
        Mon, 26 Oct 2015 06:09:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.195 with SMTP id e64ls1835756ioi.99.gmail; Mon, 26 Oct
 2015 06:09:46 -0700 (PDT)
X-Received: by 10.66.148.233 with SMTP id tv9mr15604185pab.7.1445864986238;
        Mon, 26 Oct 2015 06:09:46 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id zg1si3552981pbb.2.2015.10.26.06.09.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 06:09:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id z6so188389080pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 06:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=E8uzW6HLJbqcu83E47aOI7gK7jCX+HVqOJUTKkHtbkM=;
        b=l7Rdle+mPB4+Uzoy6Yc/snh05JYqc+XNSQHNYMfrbn/2JswrQW3GOEZigklLxcIDhG
         2Hz5Mc0mznWV/lOSfEBgnQfNrWpFhTmNZ5YobdtLTR6eQCtKBMmSxhXC5Nl9x0nL8UyT
         vrvo88tX71cP380j0cIC2RGo84gHVP6n6wtnf9lRqIO/N2Q+tituDP7JgYgWrGvkGgoT
         X4zpbsPz2wSTAq8ntggqa7nq4YcFsA9jLzpSIYwy3l4cLsbxbdrxJKPwhR2bcC64J6Vt
         SiQ8ncNyF/OfOa5n2h7Afkie0DDVK1R1Y8w2U1Rkz1xKSQXGq1SaStkSZEP89OQyaSgb
         ud3A==
X-Received: by 10.68.130.1 with SMTP id oa1mr4701588pbb.134.1445864986143;
        Mon, 26 Oct 2015 06:09:46 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id qn5sm34181086pac.41.2015.10.26.06.09.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 06:09:45 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] staging: media: omap4iss: Fixes multiple checkpatch issues
Date: Mon, 26 Oct 2015 06:09:26 -0700
Message-Id: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5

This patchset fixes multiple checkpatch checks and warnings.

Amarjargal Gundjalam (6):
  staging: media: omap4iss: Fixes NULL comparison
  staging: media: omap4iss: Fixes misspelling
  staging: media: omap4iss: Replaces bit shift on 1 with BIT Macro
  staging: media: omap4iss: Removes unnecessary blank lines
  staging: media: omap4iss: Matches alignment with open parenthesis
  staging: media: omap4iss: Fixes line break

 drivers/staging/media/omap4iss/iss.c         |   40 ++--
 drivers/staging/media/omap4iss/iss_csi2.c    |    6 +-
 drivers/staging/media/omap4iss/iss_csi2.h    |    4 +-
 drivers/staging/media/omap4iss/iss_ipipe.c   |   26 +--
 drivers/staging/media/omap4iss/iss_ipipe.h   |    4 +-
 drivers/staging/media/omap4iss/iss_ipipeif.c |   24 +-
 drivers/staging/media/omap4iss/iss_ipipeif.h |    8 +-
 drivers/staging/media/omap4iss/iss_regs.h    |  316 +++++++++++++-------------
 drivers/staging/media/omap4iss/iss_resizer.c |   28 ++-
 drivers/staging/media/omap4iss/iss_resizer.h |    6 +-
 drivers/staging/media/omap4iss/iss_video.c   |   19 +-
 11 files changed, 239 insertions(+), 242 deletions(-)

-- 
1.7.9.5


