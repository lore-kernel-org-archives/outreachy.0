X-GM-THRID: 7714883239936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,31430fd6994c5b1e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.147.35 with SMTP id th3mr6512858lbb.15.1426190343586;
        Thu, 12 Mar 2015 12:59:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.4 with SMTP id dc4ls333253lac.73.gmail; Thu, 12 Mar
 2015 12:59:03 -0700 (PDT)
X-Received: by 10.112.13.228 with SMTP id k4mr6523543lbc.8.1426190343051;
        Thu, 12 Mar 2015 12:59:03 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id cl5si614756wib.3.2015.03.12.12.59.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 12:59:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevk48 with SMTP id k48so18763516wev.7
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 12:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=bZHMAocq4uYzaITS75JbKdI/GsBc1iQXki9BY15MsaI=;
        b=RZhTTZdKoxnPWj9r3+E8nO9ToQogUL+huobKCZ0rOzPbOp7JDAAi7CszJd0pXd9ETd
         OF9rY16Xq5GDvfKEDoe31709Pk/xyCynkVN9YAgM5qyA74ONmyZP8JLP1FaHhaZeBHbX
         9rMkCxLZjCB98v+BbowE+aJWMszY2aQBR9Xd3ij7p272BsufQuUXq1Ekw0SzefwGSat9
         8cgCQeZhLMuugXQ6Fs12Xz/iCZh54lVVuyYYS+oXrp/dgCQyFbHNiUwL1ZLPMJ3Uw5Cn
         zu3mG4sEIeZ+M3LuH14A1lOvlMDC6Red1/AlxeRDbiL6muMwovFqtyWEWGALNAbBPGIx
         yx7Q==
X-Received: by 10.194.60.19 with SMTP id d19mr91692930wjr.133.1426190342941;
        Thu, 12 Mar 2015 12:59:02 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id y14sm11461303wjr.39.2015.03.12.12.59.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Mar 2015 12:59:01 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 0/9] staging: sm750: Fix most style errors
Date: Thu, 12 Mar 2015 21:58:44 +0200
Message-Id: <cover.1426188525.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset cleans up multiple style errors found using checkpatch.pl
in order to improve readability and code quality.

Changes in v2:
	- Make message commits include all the relevant information
	- Fix typos
	- Change commit subjects
	- Change patch 9/9 to add space around '?' and ':' too

Ioana Ciornei (9):
  staging: sm750: Place space before after control flow instructions
  staging: sm750: Add space before open bracket '{'
  staging: sm750: Place space before and after curly brackets
  staging: sm750: Remove space before semicolon
  staging: sm750: Place open bracket '{' on the next line
  staging: sm750: Move open curly bracket on previous line
  staging: sm750: Remove unnecessary spaces around ')'
  staging: sm750: Place * next to identifier
  staging: sm750: Add space before and after '=', ':' etc

 drivers/staging/sm750fb/sm750.c | 260 +++++++++++++++++++---------------------
 1 file changed, 124 insertions(+), 136 deletions(-)

-- 
1.9.1


