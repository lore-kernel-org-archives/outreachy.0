X-GM-THRID: 7583885688832
X-Received: by 10.112.167.131 with SMTP id zo3mr463367lbb.7.1426041319966;
        Tue, 10 Mar 2015 19:35:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.19.36 with SMTP id b4ls96616lae.46.gmail; Tue, 10 Mar 2015
 19:35:19 -0700 (PDT)
X-Received: by 10.112.40.81 with SMTP id v17mr1212835lbk.5.1426041319350;
        Tue, 10 Mar 2015 19:35:19 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id cl5si195995wib.3.2015.03.10.19.35.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 19:35:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id l15so33231955wiw.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 19:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Rb7529luIxbotAGDC6zzPShptaizdha0hebVw61zW9w=;
        b=1CV7xdKYb/ojamebcOVT25dvMlGomEzoqPC1Xposb3Ar/LI49b8NiOy5hAMBNeq3Er
         Fggzl0NAGTwU3mNVlobXZ2HysTnLKu/RQgbVMCSeH/VvN43FkuIWMZr5CAE6Z5+6m2SA
         4v6NK0F05ot1RbgQggB2gUK5k9E4+gc6pi3oj9IsYwYANnB3aLZe9rMDLN8PUieM5Wfr
         VaJ22J16a47xr2yuVrov33N2hBpHPddtjepGaUjCW0PM7Co/m/VzuaY7kjVhiQyXwlXA
         4GbHtrXhdf0cg6YtE7QPFuEM93CHWBP9GOi3hXd+PB/ZSLvowDhnikv43RSPg21fIZgC
         Fr9g==
X-Received: by 10.194.216.34 with SMTP id on2mr75780735wjc.24.1426041319276;
        Tue, 10 Mar 2015 19:35:19 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ge8sm3334305wjc.32.2015.03.10.19.35.17
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Mar 2015 19:35:17 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 0/7] staging: sm750: Fix style errors
Date: Wed, 11 Mar 2015 04:35:03 +0200
Message-Id: <cover.1426039205.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset cleans up multiple style errors in order to follow the Linux 
coding style.

Ioana Ciornei (7):
  staging: sm750: Fix switch-case indentation
  staging: sm750: Place blank line after declarations
  staging: sm750: Remove braces surrounding single statement blocks
  staging: sm750: Remove trailing whitespaces
  staging: sm750: Indent code using tabs
  staging: sm750: Indent conditional statement
  staging: sm750: Add space after comma

 drivers/staging/sm750fb/sm750.c | 1172 +++++++++++++++++++--------------------
 1 file changed, 584 insertions(+), 588 deletions(-)

-- 
1.9.1


