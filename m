X-GM-THRID: 5221884362752
X-Received: by 10.112.50.106 with SMTP id b10mr2878378lbo.8.1425169022081;
        Sat, 28 Feb 2015 16:17:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.9 with SMTP id bc9ls334295lab.101.gmail; Sat, 28 Feb
 2015 16:17:01 -0800 (PST)
X-Received: by 10.112.224.12 with SMTP id qy12mr1852632lbc.10.1425169021483;
        Sat, 28 Feb 2015 16:17:01 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id r6si392838wix.0.2015.02.28.16.17.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:17:01 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id bs8so7562315wib.0
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 16:17:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TssMM+Ty1EYf0VuhdAGOyIgUskSy4z9OF260cgxTKag=;
        b=G+YbL+GSGxqjhdbRf//0r/SJNOW1yIL49KWsnR0FBDKcNTZ/sAXCp+orPITc26CS6u
         dFsviBg1/MOW0AOioFP0txhk/+iX5SMWBV77ybFD4Vy0AJwwQ6iU40FLYVs/9kBuFxYp
         FNGv1bF4Zj313ehhiUf+xc6n9Q5GLxO8eln88ziXsqJAwHlUdM1Qpzou+PzPJRMr5Dv5
         B6Q6+vaDe7jMfa/RnWADrHj313gpRHXmPlK3XsDqnq5ybnlJgZ3Z0kNy3RpyW4bh0r0x
         0g3NuXHrJUD02g6CTacSvcO30FccGwKHYIvi8AAt8Lf1phytSNW8Vo55z0bHuuRZUGSY
         TDww==
X-Received: by 10.194.60.173 with SMTP id i13mr42629102wjr.124.1425169021381;
        Sat, 28 Feb 2015 16:17:01 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id vh8sm12262116wjc.12.2015.02.28.16.17.00
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:17:00 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id C701F63424; Sun,  1 Mar 2015 03:16:58 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v3 0/5] Fix coding style issues
Date: Sun,  1 Mar 2015 03:16:56 +0300
Message-Id: <1425169016-19992-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425161054-19092-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425161054-19092-1-git-send-email-hamohammed.sa@gmail.com>

This patchset fixes the following coding style issues found by checkpatch.pl:
- Line over 80 charachters.
- Trailing statement should be on next line.
- Extern should be avoided in .c files.
- Else is not useful after return.
- Strings are generally beter as one

Changes in v3:
- Split [PATCH 4/5] and return one removal of else to original, for it produces compilation warning: mixed declaration and code. better resolve in separate patch.
- Edit subject line appropriately

Changes in v2:
- Edit subject line.

Haneen Mohammed (5):
  Staging: lustre: Fix line over 80 characters
  Staging: lustre: Move trailing statement to next line
  Staging: lustre: Fix externs should be avoided in .c
  Staging: lustre: Remove unnecessary else after return
  Staging: lustre: Concatenate strings into single string

 drivers/staging/lustre/lustre/ldlm/interval_tree.c |  9 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  3 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  2 +
 drivers/staging/lustre/lustre/ldlm/ldlm_lib.c      |  4 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 56 ++++++++++++++--------
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    | 12 +++--
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     | 20 ++++----
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c | 12 +++--
 9 files changed, 76 insertions(+), 45 deletions(-)

-- 
1.9.1


