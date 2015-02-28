X-GM-THRID: 5221884362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b3fa01965e3a4916,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.199.69 with SMTP id ji5mr2864707lbc.0.1425158868788;
        Sat, 28 Feb 2015 13:27:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.74.203 with SMTP id w11ls174472wiv.50.canary; Sat, 28 Feb
 2015 13:27:48 -0800 (PST)
X-Received: by 10.180.83.168 with SMTP id r8mr1271247wiy.6.1425158868271;
        Sat, 28 Feb 2015 13:27:48 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id l8si398357wia.0.2015.02.28.13.27.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 13:27:48 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22e.google.com with SMTP id p10so24307933wes.12
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 13:27:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xCTqqO/U+zW44Vv8P/L+ZXz9mbFOF1deG1T5X1bTwGM=;
        b=TEMAhY7HZ3Hu7kGxBDfybLR3+3XfDNtwdCBhQVPMBOXZQlMIRM9K/Xu4ohpfGKclnL
         zBXPxDj3ZbnpCQSB4N9agzEA28a4jsTkhPPrlu8UKfX8XF41wnhl5r+T7B6vrhdlOySD
         RPW0SnJn9oFtl1YxE4OxyG93GN7lCu2yzq48+Eob8CZA+5ApTJBzk9fRxdK7rrRUiNA3
         aPLbu7gjeYyAC1MdCffSfRGnWj8HG04EXBbrKdrryoVbno2tx04xpjR9lJjGqcUz3xc6
         inQsOly642zZTDhpuuaRL4JnAO/cGH57OUI7I7GIH4Nmk89TF4v7afXgtHkyFHoUlGQc
         9cDA==
X-Received: by 10.180.75.243 with SMTP id f19mr12632228wiw.94.1425158868184;
        Sat, 28 Feb 2015 13:27:48 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id k6sm8619950wia.6.2015.02.28.13.27.46
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 13:27:47 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id AB7EE63382; Sun,  1 Mar 2015 00:27:37 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v2 0/5] Staging: lustre: Fix coding style issues
Date: Sun,  1 Mar 2015 00:27:31 +0300
Message-Id: <1425158851-8053-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes the following coding style issues found by checkpatch.pl:
- Line over 80 charachters.
- Trailing statement should be on next line.
- Extern should be avoided in .c files.
- Else is not useful after return.
- Strings are generally beter as one

Changes in v2:
- Edit subject line.

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


