X-GM-THRID: 7714883239936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,31430fd6994c5b1e,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.181.166 with SMTP id dx6mr3563201lbc.17.1426123405057;
        Wed, 11 Mar 2015 18:23:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.233 with SMTP id bb9ls414690wib.29.gmail; Wed, 11 Mar
 2015 18:23:24 -0700 (PDT)
X-Received: by 10.180.81.134 with SMTP id a6mr37735wiy.1.1426123404684;
        Wed, 11 Mar 2015 18:23:24 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id sf8si421648wic.2.2015.03.11.18.23.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 18:23:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id p10so13010737wes.11
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 18:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=I3nU0Le0tkEgqwd5aqWChSpehOgdisJ3VACu4nwB0iA=;
        b=BdSPh5sSQiDGpemfLqWI08yUxmpS3ND6OMiN7tkTSqTos+A22QIJJX59YzRFhZKUsc
         EsuHtbsm9wM2QMaSRB8FCEtCIq3H6RSyQgbTShd4kc6pLPyaqeiMSJcqDSp41LF6fIMX
         Ks6l+oq88Rlw1GfF7QNdsHxfBgkMJZ1nwKT4Al/7yJ5t3NUr+ZEV5OLRHiCCMRhAqS2c
         3CqKzmZgEOQHyX0yBuhCxWuRuIBvk+wmZ38fa4+wXih69RQozHNAFB6pi+MnxD9lFSVZ
         YX+yMD3JQctdYb8t63SgDwAup05p/GVZxmLxUGmkltd3aVtaS4n/4PWKji+CsgtbMf72
         QKTg==
X-Received: by 10.180.102.73 with SMTP id fm9mr85382032wib.12.1426123404588;
        Wed, 11 Mar 2015 18:23:24 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id a13sm7732911wjx.30.2015.03.11.18.23.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 18:23:23 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 0/9] staging: sm750: Fix most style errors 
Date: Thu, 12 Mar 2015 03:23:05 +0200
Message-Id: <cover.1426121972.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset cleans up multiple style errors found using checkpatch.pl
in order to improve readability and code quality.

Ioana Ciornei (9):
  staging: sm750: Place space before after control flow instructions
  staging: sm750: Add space before open bracket '{'
  staging: sm750: Place space before and after curly brackets
  staging: sm750: Remove space before semicolon
  staging: sm750: Place open bracket '{' on the next line
  staging: sm750: Move open curly bracket on previous line
  staging: sm750: Remove space before ')'
  staging: sm750: Place * next to identifier
  staging: sm750: Add space before and after '=', ':' etc

 drivers/staging/sm750fb/sm750.c | 256 +++++++++++++++++++---------------------
 1 file changed, 122 insertions(+), 134 deletions(-)

-- 
1.9.1


