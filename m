X-GM-THRID: 7077030264832
X-Received: by 10.112.199.69 with SMTP id ji5mr3060580lbc.0.1425761965597;
        Sat, 07 Mar 2015 12:59:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.1.3 with SMTP id 3ls51903lai.36.gmail; Sat, 07 Mar 2015
 12:59:25 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr3150211lbc.2.1425761965059;
        Sat, 07 Mar 2015 12:59:25 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id cl5si468111wib.3.2015.03.07.12.59.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 12:59:25 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx13 with SMTP id x13so19693216wgg.12
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2015 12:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=pfDQoIQK2IqADbl4kWYGUh2WgGUNxx3cIjXM4shWF6E=;
        b=k3zxcKjUIlA4rgotmORYnWZwtwmMRfH/iqT1R8FlKYAPTF97HR55lQbKdwxUu9lbGb
         Icqf/qD0QT0FPDlutLCHOGhZqDAmZVGxmEvTviw5V+33GX7dkQNAquIu9evknoIjRiMz
         S10HdNDZ74vVBmzD6aXRFhdRkYdiknjUb8wdkow8nezd6VHgADPntd5Aq5RKVswx54iH
         VAueIMzU0/08ruWD8NjUuUqddqQFn1k/HmAZ/mReIrrVJBOHWWwHQZrGp4BKgQqsZQMr
         SoDOXybx/rsk45sbx4ysaywmj0nvasopyTK9atyA45MkepsFjlE1lReqSnaLicruj8No
         GCPg==
X-Received: by 10.180.189.37 with SMTP id gf5mr89377926wic.86.1425761964973;
        Sat, 07 Mar 2015 12:59:24 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.240])
        by mx.google.com with ESMTPSA id lb6sm20841859wjb.22.2015.03.07.12.59.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 12:59:24 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 1BE8362A1D; Sat,  7 Mar 2015 23:59:19 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 0/2] Remove unused variables
Date: Sat,  7 Mar 2015 23:59:18 +0300
Message-Id: <1425761958-1639-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset is concerned with removing variable that was used only to store the return value of a function.
These issues were detected and resolved using the following coccinelle script:
    
@@
expression ret;
identifier f;
@@
    
-ret =
+return
  f(...);
-return ret;

Haneen Mohammed (2):
  Staging: dgap: Remove unused variable
  Staging: speakup: Remove unused variable

 drivers/staging/dgap/dgap.c        | 4 +---
 drivers/staging/speakup/kobjects.c | 4 +---
 2 files changed, 2 insertions(+), 6 deletions(-)

-- 
1.9.1


