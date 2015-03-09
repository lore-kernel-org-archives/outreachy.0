X-GM-THRID: 7184305881088
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ca8c52ff4cb76c8,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.110.200 with SMTP id ic8mr26278566obb.34.1425882898899;
        Sun, 08 Mar 2015 23:34:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.9 with SMTP id a9ls849206ioe.74.gmail; Sun, 08 Mar
 2015 23:34:58 -0700 (PDT)
X-Received: by 10.42.95.135 with SMTP id f7mr19058139icn.30.1425882898678;
        Sun, 08 Mar 2015 23:34:58 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id gb13si2409104pac.2.2015.03.08.23.34.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 23:34:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabli10 with SMTP id li10so70288354pab.13
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 23:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Yw+cP0byxmGY3XpgY8hwTjXLM/NYuu0ok4+EXQDA9Uo=;
        b=Ln2XGChVeq+d+4UYQVZ2VyYNHqHjIDVGamQ/gXJFtZasXwgH4YMaiNWibhEH41/+f8
         7xQYCNDCgW6eJdmtOBR/YirrPOJHXp78T9uQX6fbX5RL8FcLkHQ0eH+OM6AUaEi/YM82
         pmiJi+SiUz5QrbFWFFmz2htQcAeKpp4zl1bXakZfQ0wHi4WXh4GIh4brkJsHNDX+cvvL
         vDAJUXeTw69EynpetxBZd1ZgJ9kK+OC1ORWefrMijBZ7D6iaARR3jWI/DiwSyxfsZFyj
         5VAM/ZYuHPcTNIJ039Rtyq4WnnGys+zjTslVOiyhaDyeeLuH8yR04V+CMxE25S5EeHQx
         lNuw==
X-Received: by 10.70.108.195 with SMTP id hm3mr50090059pdb.105.1425882898516;
        Sun, 08 Mar 2015 23:34:58 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.16.175])
        by mx.google.com with ESMTPSA id n10sm17287759pdp.18.2015.03.08.23.34.55
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 23:34:57 -0700 (PDT)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH 0/4] Removed unnecessary parentheses from assignment statements 
Date: Mon,  9 Mar 2015 12:02:46 +0530
Message-Id: <1425882770-6239-1-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4

The patchset removes unnecessary parentheses around the right side of
assignment statements.

Tina Johnson (4):
  drivers: staging: rtl8188eu: core: Removed unnecessary parentheses
  drivers: staging: rtl8712: Removed unnecessary parentheses
  drivers: staging: rtl8723au: core: Removed unnecessary parentheses
  drivers: staging: rtl8723au: hal: Removed unnecessary parentheses

 drivers/staging/rtl8188eu/core/rtw_security.c       |    4 ++--
 drivers/staging/rtl8712/rtl871x_security.c          |    4 ++--
 drivers/staging/rtl8723au/core/rtw_security.c       |    4 ++--
 drivers/staging/rtl8723au/hal/HalDMOutSrc8723A_CE.c |    2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

-- 
1.7.10.4


