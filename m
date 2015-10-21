X-GM-THRID: 6207871882034675712
X-Received: by 10.112.63.165 with SMTP id h5mr2691188lbs.18.1445458697438;
        Wed, 21 Oct 2015 13:18:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.40 with SMTP id f40ls262208lfi.59.gmail; Wed, 21 Oct
 2015 13:18:16 -0700 (PDT)
X-Received: by 10.112.159.4 with SMTP id wy4mr2629396lbb.15.1445458696736;
        Wed, 21 Oct 2015 13:18:16 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x242.google.com (mail-wi0-x242.google.com. [2a00:1450:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id cm6si3846wib.1.2015.10.21.13.18.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 13:18:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) client-ip=2a00:1450:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wibvt6 with SMTP id vt6so14949033wib.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 13:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=dzWUub3R4nAYNF5hJMOXrZGXR6BEsCwvcLaCOwY4FXs=;
        b=yhADJZzjJXUGfJEszkb+3Ru3hAvt8PR0ezKOnyMbeQoxFfA/ViKDwSp1YkI08VU5SL
         uubrzeN8HzaYmAKZJt+3lqBQPKPxxhGT+YSa0G9i65IweOjQFXOqSA6wc5gkdbgRf91N
         DwjYoNYHwelGYKKAaspCWvm3YSoVtXSyE2NuXquJbGeHJroWka2mflSqBFsS6CCukTCr
         kCgUNiw/NgXU9qAmeHoeuILo25qbFvWMRYjaJ+zJYGu+AszR1MG681wOcNxhIhx80Ik9
         XHWqEpXeHhc08EZXypi3z3dlQuY+ojSZWfXksMi/tkiPwqlbjKzafzi1uuC7ejt9VV4t
         mQyQ==
X-Received: by 10.194.111.198 with SMTP id ik6mr14104788wjb.96.1445458696617;
        Wed, 21 Oct 2015 13:18:16 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id m6sm8703173wif.11.2015.10.21.13.18.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 13:18:16 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 0/5] staging: dgap: fix multiple checkpatch issues
Date: Wed, 21 Oct 2015 23:17:51 +0300
Message-Id: <cover.1445458023.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

This patchset fixes multpiple checkpatch issues.

Changes in v2:
    - reworked patch 2/5 in order to improve readability

Ioana Ciornei (5):
  staging: dgap: remove unnecessary blank lines
  staging: dgap: properly indent to match open paranthesis
  staging: dgap: remove unnecessary space after cast
  staging: dgap: remove unnecessary brackets
  staging: dgap: add spaces around binary operator '|'

 drivers/staging/dgap/dgap.c | 435 ++++++++++++++++++++------------------------
 1 file changed, 195 insertions(+), 240 deletions(-)

-- 
2.1.4


