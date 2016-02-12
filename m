X-GM-THRID: 6250306033025024000
X-Received: by 10.98.89.132 with SMTP id k4mr90887pfj.4.1455262776939;
        Thu, 11 Feb 2016 23:39:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.38.133 with SMTP id g5ls724984obk.43.gmail; Thu, 11 Feb
 2016 23:39:36 -0800 (PST)
X-Received: by 10.182.28.41 with SMTP id y9mr89286obg.14.1455262776221;
        Thu, 11 Feb 2016 23:39:36 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 79si1600655pft.0.2016.02.11.23.39.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 23:39:36 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id y7so299062paa.0
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 23:39:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=bNlnrbjU9UEHvtKrtSwAGHbughLBOK9IJ2+7N/I8WI4=;
        b=KzBWR8WFvFpu5AIUAMRuzumfTRX49xeGz97V5Oa6XuhfCVqYIUxdig4ldawwhrI6jj
         nvQWGC3glAeRmDQu8LQxliqRqHm5JkAEOCF40IWkJhDUbK05SwmMVhcOZMv35NPDwQwT
         6CMx5fgKMj/YW90DrQivhiBYdPCJvw7VjphRQzsOSazi8Fts1qI2eQ+1y8KAkyjYL8t1
         CLXCUNza59rzVpSzP0LrCkOPSV0dgGEWsAE6dqZpJoH3qJVol7KqrfDw6YMs36CKdCA/
         BCyPXdDE0yFfu+6XHuKYYcZ0n/+eY2XdrpQgLtCrNeOsgUa7pHNNxsB7Y6QsJqZgI73M
         pWag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bNlnrbjU9UEHvtKrtSwAGHbughLBOK9IJ2+7N/I8WI4=;
        b=MW0zEFy6FV5UKADdIO0nv43TbyUb0Rv69t0UHkJghJzvOPv/7pv8y1dlh0uXjQ8Ew6
         R27yvYoWD5zdNQZzxnBUeq6ZcxYtxISESkfdom3JAtEThGEZP+GyIN6088PwPYndhPF3
         /iu0AeeuO5d1NTzhmvC7p2TjJ1hKYDhGMvMnx1MMlyaapeXSJbhLCXGxhpMRXVNdGqav
         aE/vBtFM/G2A2Y4TM0XPUa3u90nHgtYYIu2ETQUM7QiAGzYUanOB1ZNvq9dbvH63cD31
         c3Z8U89J3ffEbjy0ay/eTvBkFRXOYUKAZNbUKakOR/YzC6CBIIXntnhsEjUvdY2NOiF9
         LAgQ==
X-Gm-Message-State: AG10YORwBa8kApX+es7JAi4wJSMdn5REuugwMmGP904lbBU17gRmwKgT4s6P3voaEsI4uw==
X-Received: by 10.66.142.132 with SMTP id rw4mr163788pab.26.1455262776079;
        Thu, 11 Feb 2016 23:39:36 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.60])
        by smtp.gmail.com with ESMTPSA id z7sm17042660pfi.19.2016.02.11.23.39.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 23:39:35 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 0/5] staging: fbtft: fb_ili9xxx.c: fix multiple coding style issues
Date: Fri, 12 Feb 2016 15:39:25 +0800
Message-Id: <cover.1455260992.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Address checkpatch WARNING and CHECK issues on the fb_ili9xxx series of files.

Change in v2:
* Modify subject lines to avoid duplicates from a different patchset.

Eva Rachel Retuya (5):
  staging: fbtft: Modify block comments based on kernel coding style
  staging: fbtft: Fix alignment to match open parenthesis
  staging: fbtft: Insert blank line after function declaration
  staging: fbtft: Delete blank line after '{' brace
  staging: fbtft: Remove the use of CamelCase

 drivers/staging/fbtft/fb_ili9163.c | 103 +++++++++++++++++++------------------
 drivers/staging/fbtft/fb_ili9320.c |  13 ++---
 drivers/staging/fbtft/fb_ili9325.c |  81 +++++++++++++++--------------
 drivers/staging/fbtft/fb_ili9340.c |   8 +--
 drivers/staging/fbtft/fb_ili9341.c |  19 +++----
 drivers/staging/fbtft/fb_ili9481.c |   7 ++-
 6 files changed, 117 insertions(+), 114 deletions(-)

-- 
1.9.1


