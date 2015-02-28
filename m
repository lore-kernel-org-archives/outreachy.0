X-GM-THRID: 5152931053568
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,711868de202b757d,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.40.81 with SMTP id v17mr2820489lbk.5.1425150724174;
        Sat, 28 Feb 2015 11:12:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.129 with SMTP id r1ls317476wia.43.canary; Sat, 28 Feb
 2015 11:12:03 -0800 (PST)
X-Received: by 10.180.87.166 with SMTP id az6mr1303817wib.1.1425150723844;
        Sat, 28 Feb 2015 11:12:03 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id cl5si348611wib.3.2015.02.28.11.12.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 11:12:03 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id l2so26246868wgh.9
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 11:12:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Em7Ce+4jYmJkg/DPIZmKxDlQwwU1XAR0aesAZwzChZo=;
        b=hoJ2n1unqkKkTSNJ57vNo67FZL8E4a4OaDhcVWRC4zmNclhENX23O8T38yEeUGQMZS
         9i8HXRZYvVPUaVuCyOz9EpZPHd65zC/2f1VrjaCNvgMC4+Qhg/RHWLhbKOoHMgLXk1wn
         D6roV/u9WHWm7nwWd1829gcWHDoPLDy9xguAasqkNP6fG5Fq4Ug4UKzqby1Wpl8/+orD
         V7oHU1Yg77Rqu5tlnrTBEkzTCx/xa+1OaT4Ao/rRVK2C6nk6u1BVpgVVsk/Rs9e3IHMJ
         KSgk3y/aZoaNuS8xqOOUN/xSnwKKWUJy8vi6oQA65ojjPTtdzSWz+MYIukniPwUPTaET
         LVNA==
X-Received: by 10.180.37.110 with SMTP id x14mr19217205wij.45.1425150723750;
        Sat, 28 Feb 2015 11:12:03 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id fu1sm8202663wic.2.2015.02.28.11.12.02
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 11:12:03 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 5FA6363456; Sat, 28 Feb 2015 22:11:58 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 0/5] Staging: lustre: lustre: ldlm: Fix coding style issues
Date: Sat, 28 Feb 2015 22:11:57 +0300
Message-Id: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes the following coding style issues found by checkpatch.pl:
- Line over 80 charachters.
- Trailing statement should be on next line.
- Extern should be avoided in .c files.
- Else is not useful after return.
- Strings are generally beter as one

Haneen Mohammed (5):
  Staging: lustre: lustre: ldlm: Fix line over 80
  Staging: lustre: lustre: idlm: Move trailing statement to next line
  Staging: lustre: lustre: ldlm: Fix externs should be avoided in .c
  Staging: lustre: lustre: ldlm: Remove unnecessary else after return
  Staging: lustre: lustre: ldlm: Concatenate strings into single string

 drivers/staging/lustre/lustre/ldlm/interval_tree.c |  9 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  3 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  2 +
 drivers/staging/lustre/lustre/ldlm/ldlm_lib.c      |  4 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 56 ++++++++++++++--------
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    | 29 ++++++-----
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     | 20 ++++----
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c | 12 +++--
 9 files changed, 84 insertions(+), 54 deletions(-)

-- 
1.9.1


