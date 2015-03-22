X-GM-THRID: 9631255494656
X-Received: by 10.152.4.229 with SMTP id n5mr14853086lan.1.1427050078621;
        Sun, 22 Mar 2015 11:47:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.121.70 with SMTP id li6ls566114lab.44.gmail; Sun, 22 Mar
 2015 11:47:58 -0700 (PDT)
X-Received: by 10.112.77.101 with SMTP id r5mr15277075lbw.4.1427050078132;
        Sun, 22 Mar 2015 11:47:58 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id cl5si308392wib.3.2015.03.22.11.47.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 11:47:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgbcc7 with SMTP id cc7so129552596wgb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 11:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ht9Gl1S2D7e89neP9e22povWjB3DbHrqEOeB6ABBIgI=;
        b=qnmcsOKTLcdCU1q1h7TNWWcxlT/9ur4a3AhLnSndPMRQJtb36v/IL9H0tPoVUYVzDl
         eaku0z3FXxLspxab006y7BguZhkXfTaGjXOiYhMD6PpYJ/uazOXK4XEma4XZ3kZRczuA
         7DkTYYgi5pCCiOc4nYZ506uTGHF1jvGsUZpI1o3eQUOz+aZI54GI+/4fwiGKja5GlFZd
         R41Q0Dxl6dkZ/oK2+YS2L0YkYV/v8m2HOzwUwUlNoSu5zH64Rir1GWuW3hvIIL9IduvO
         jLynQEtkpVPMW67JjmwqzYFqKinyi6M83IsiGIYNG8hnQF6CpAjNbdJ7dJI1yNgJZMYM
         iiyA==
X-Received: by 10.181.9.98 with SMTP id dr2mr13100062wid.62.1427050078055;
        Sun, 22 Mar 2015 11:47:58 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id fm10sm7657008wib.7.2015.03.22.11.47.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 11:47:57 -0700 (PDT)
Date: Sun, 22 Mar 2015 20:47:10 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Add static qualifier to local functions
Message-ID: <cover.1427048210.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset makes some functions static as they are not needed
externally.

Cristina Opriceana (2):
  Staging: rtl8192u: Make function prototypes static
  Staging: rtl8192u: Remove function prototype from .c file

 drivers/staging/rtl8192u/r8192U_core.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

-- 
1.9.1


