X-GM-THRID: 6252584121027002368
X-Received: by 10.66.132.81 with SMTP id os17mr6210736pab.12.1455793185180;
        Thu, 18 Feb 2016 02:59:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.101 with SMTP id k5ls121634igv.20.gmail; Thu, 18 Feb
 2016 02:59:44 -0800 (PST)
X-Received: by 10.50.20.135 with SMTP id n7mr2212595ige.5.1455793184650;
        Thu, 18 Feb 2016 02:59:44 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id yd9si867338pab.1.2016.02.18.02.59.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 02:59:44 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id w128so1936114pfb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 02:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=SD8Pe45bqA/7M1RuwYeatoJiDQAqqHLWOp5E5RiakGs=;
        b=S5D6u5s7CwInXsnAxsAfPAPUtWslLCHyjrhgW3txxhvSZdYh/jOVnBWQlr7voU7EvT
         D8gVTAr/wkNpNjfZ6tEq/pGSrarmI7RsXd33/aAp54hDWP+QyzLb+wSeCeD0bisRVGNU
         0F2vfAQPiXvLdycGRlDNrZADULgFge5ZtL/MtigQ5TMUSdIzJVoou3G1OzN35zPDXWgl
         i+yDXSB1huGS/srGfxlKNIiQhd0AA0p48uaJf0YLN354OHxaYarPUSmg46rMuzcOF9LR
         puFJnG4vcJ6j5vJB/tOhyoXCgYLtRTgz3IFVGar1BdS4RI1oa31O9JGL0oFSP+PIadQw
         LqIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SD8Pe45bqA/7M1RuwYeatoJiDQAqqHLWOp5E5RiakGs=;
        b=hYalnx7XCZ1aEMNcVBQtZa4eSm2GCkqrj69Ssm6FGoq6GdEF7y/nD5uLtuzJRqptWd
         cOiyfhibJ0ckEd7N4TVAiHbUZ9UHTB7JXlUkoV5PHCMwAH2TW0cIcT/VVd04YQmpk51P
         kDoFWQGcp8u1K0VEwo7vN7nTjNIo8gL7H7/orsYCk56l6W23QvqUnSaufbFRro31wHr1
         ExNXww77UqeEwpmxoUFhRJodM8Cf6N683i268oQX0eht8ZyDstQeAHWAaY+RFDvzYpUl
         WhRBqBqJDXuzExDme3uYQKGKxKB++vuSyyW69rNnNyrIbxjHZBrlnMCdiM3aeG44hFel
         mUeQ==
X-Gm-Message-State: AG10YOQuCJo/UsNcJQs40pzd29s9Py9PGpTxXj0igxPRdiCVtl0souCyie56qwGbFwLpBQ==
X-Received: by 10.98.15.145 with SMTP id 17mr9030647pfp.19.1455793184445;
        Thu, 18 Feb 2016 02:59:44 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.106])
        by smtp.gmail.com with ESMTPSA id t87sm9426884pfa.14.2016.02.18.02.59.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 02:59:44 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 0/7] staging: iio: resolver: fix coding style issues
Date: Thu, 18 Feb 2016 18:59:32 +0800
Message-Id: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Address checkpatch checks on iio/resolver.

Eva Rachel Retuya (7):
  staging: iio: resolver: align to match open parenthesis
  staging: iio: resolver: add spaces around operators
  staging: iio: resolver: use blank line after array declaration
  staging: iio: resolver: add missing braces on if-else statements
  staging: iio: resolver: delete space after a cast
  staging: iio: resolver: remove unnecessary blank line
  staging: iio: resolver: fix comparison to NULL

 drivers/staging/iio/resolver/ad2s1200.c | 12 +++++-----
 drivers/staging/iio/resolver/ad2s1210.c | 39 ++++++++++++++++++---------------
 2 files changed, 27 insertions(+), 24 deletions(-)

-- 
1.9.1


