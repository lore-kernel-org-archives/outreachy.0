X-GM-THRID: 8600984485888
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,42921e707e4b56d5,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.77.165 with SMTP id t5mr6393331wiw.0.1426521488629;
        Mon, 16 Mar 2015 08:58:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.211 with SMTP id jq19ls663092lab.32.gmail; Mon, 16 Mar
 2015 08:58:08 -0700 (PDT)
X-Received: by 10.112.224.12 with SMTP id qy12mr9175897lbc.10.1426521488133;
        Mon, 16 Mar 2015 08:58:08 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id cl5si709034wib.3.2015.03.16.08.58.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 08:58:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22d.google.com with SMTP id cc7so43711075wgb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 08:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=X/HjJxAqgn9pP0reiqal/tojYDi6LR9CS7B9jLF+9EY=;
        b=FTORYelJvC06eXp8T5w7zx4OOsKO40UqtgSDBLMBgdxsVXs462ss2uybfKHEi1dZUK
         hg1S5gc+nnsEyj+/hUpefUphJk2hcSTD4CFVJOg6Y9pRpwrExcqehWYu/tOMElvgYkd8
         V58plrJ56SpS74RugTNIXVNDL3piqQFCSCoMEy1Xmiv3hF9OSrAdFxj081VUkexMMZuu
         HiMIOFN855nKdgyiuX4LTlKFwA0LCpEZXoPHVHEx2TKfiUadmLMBs0HShOzh9KyIB85u
         lMTOstkl4+mWx+QfmJb/oI2mKNBB9xSOh34dJ6NrelTZcS4fYzMJT0ZxlPGtyUMMG01X
         nevA==
X-Received: by 10.194.108.137 with SMTP id hk9mr81832626wjb.112.1426521488021;
        Mon, 16 Mar 2015 08:58:08 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id m10sm15948802wij.5.2015.03.16.08.58.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 08:58:07 -0700 (PDT)
Date: Mon, 16 Mar 2015 17:57:24 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Remove typedefs and rename struct
Message-ID: <cover.1426518637.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes unnecessary type definitions for structs
detected by coccinelle and renames the structures in order to
keep the notations consistent.

Cristina Opriceana (2):
  Staging: rtl8192u: Do not add new typedefs
  Staging: rtl8192u: Rename struct in order to avoid CamelCase

 drivers/staging/rtl8192u/r8192U_dm.c |  4 ++--
 drivers/staging/rtl8192u/r8192U_dm.h | 12 ++++++------
 2 files changed, 8 insertions(+), 8 deletions(-)

-- 
1.9.1


