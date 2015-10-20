X-GM-THRID: 6207871882034675712
X-Received: by 10.180.210.212 with SMTP id mw20mr5944707wic.3.1445382806762;
        Tue, 20 Oct 2015 16:13:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.231 with SMTP id p7ls965893wif.5.canary; Tue, 20 Oct
 2015 16:13:26 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr1263486wjb.5.1445382806355;
        Tue, 20 Oct 2015 16:13:26 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id cm6si890750wib.1.2015.10.20.16.13.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 16:13:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x241.google.com with SMTP id uk10so8221265wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 16:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=BL2Ztwb6VuiR+pLzHQ1aFo9PiYzOGjimYw1mUf2fw9Q=;
        b=IuPNTsuPjCdqvzi51T1fH30/MeBu5pm8dAxRPkfgNGOs0VvwkdH/is4MTF5NpM0CXT
         mCIDYCUPW5g6D3aX3Sn2HBRiH/CU5L0dI9uRQP33Yvh8OYnGv9EEgqEy4pqVp4skJ2Wf
         hy0Dfu9MmJDs347HFey3ZyDyZD83dYKRXNcF1Hu4pGa7pikJo4D7hX7VupePpoc1SKMT
         Z7Ls1CBkgB+CUUZxQ/gB9dg7HPeorlWNl+b1b5vBK/j4eAeOWANgRxJFY+oOjq41rzFT
         4s9sogfD6bLQXK2+HsNcYSvKBigyWgHpkg8Pz+Akx6+WS/4QthdHuG7EI0BbVJX9Ac9b
         EXrw==
X-Received: by 10.180.102.195 with SMTP id fq3mr7364791wib.7.1445382806277;
        Tue, 20 Oct 2015 16:13:26 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id jt3sm6563486wjc.12.2015.10.20.16.13.25
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 16:13:25 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 0/5] staging: dgap: fix multiple checkpatch issues
Date: Wed, 21 Oct 2015 02:13:14 +0300
Message-Id: <cover.1445382697.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

This patchset fixes multpiple checkpatch issues.

Ioana Ciornei (5):
  staging: dgap: remove unnecessary blank lines
  staging: dgap: properly indent to match open paranthesis
  staging: dgap: remove unnecessary space after cast
  staging: dgap: remove unnecessary brackets
  staging: dgap: add spaces around binary operator '|'

 drivers/staging/dgap/dgap.c | 436 ++++++++++++++++++++------------------------
 1 file changed, 196 insertions(+), 240 deletions(-)

-- 
2.1.4


