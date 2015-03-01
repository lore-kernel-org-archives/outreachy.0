X-GM-THRID: 5091141615616
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1c317eb362a4a9b0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.4.229 with SMTP id n5mr2904690lan.1.1425168541381;
        Sat, 28 Feb 2015 16:09:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.246.38 with SMTP id xt6ls278179lac.102.gmail; Sat, 28 Feb
 2015 16:09:00 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr2876379lbo.8.1425168540763;
        Sat, 28 Feb 2015 16:09:00 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id ew5si391193wid.1.2015.02.28.16.09.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:09:00 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id x12so26873680wgg.11
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 16:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=TssMM+Ty1EYf0VuhdAGOyIgUskSy4z9OF260cgxTKag=;
        b=WA+9slWUxhzmZ4LjEv+77SzaR0KXtbV3qFL4xn7i7TTVx8oLJtmpgmPhCtI9LrZ9oq
         vHQxeF+zMZWjETZjsuzgAkwnfS+boDPcAjz3mpW4cUnSXyYYLj3F4xN5fu7rW6HngaIm
         9x3QAPYRnFHLNs1U/xA9aBlHDrKEqiX3aPuRia2zQXKGxmdcn9EysSPMdNQ7fbeEK/T5
         dzWpcAN4XLIj3GecKt9QwVI+BxQLT2I6R418nfmjVa1dXSlwxoiYvLPEu9lvqhBuXEv1
         fKowq1oe+VK0BFFh55y5AG5B0ZEH2iZAaO+I5sOwZT2vQXzy6tKKG4ebkS/pESPfsOS1
         Em4Q==
X-Received: by 10.194.61.100 with SMTP id o4mr43692660wjr.28.1425168540661;
        Sat, 28 Feb 2015 16:09:00 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id n1sm9064704wib.11.2015.02.28.16.08.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:08:59 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 8F81B63424; Sun,  1 Mar 2015 03:08:57 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: 
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/5] Fix coding style issues
Date: Sun,  1 Mar 2015 03:08:49 +0300
Message-Id: <cover.1425168388.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

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


