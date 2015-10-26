X-GM-THRID: 6209462121071116288
X-Received: by 10.107.163.80 with SMTP id m77mr32555011ioe.0.1445884514331;
        Mon, 26 Oct 2015 11:35:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.75 with SMTP id l72ls1463574ioe.63.gmail; Mon, 26 Oct
 2015 11:35:13 -0700 (PDT)
X-Received: by 10.107.46.18 with SMTP id i18mr29650059ioo.14.1445884513766;
        Mon, 26 Oct 2015 11:35:13 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id vy6si3638931pbc.1.2015.10.26.11.35.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 11:35:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id z6so195467012pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 11:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=40P87bnkZ8OPNChaPSY/N4X44H6vojIIZ5yFE2hVNRc=;
        b=TBI8I+IqaNT1bLiAngvGEEKx05mEteAvfMehpyURwHafFxKEFCbgbUt3UI0zTJ57WJ
         HLccY/Qhfig5W9ReGpQgSRpIDq3xe38xna7YRbg/NA0JkTcGS8aga421s7UOSSmuSsLd
         S1ZmZ+1MxJYjoXGxIOzYf5LBXENAYk0nITp1LTWIHFago0Zv2AgJSAIQgLklvhIE9XJR
         NlP5zM9i5F8iSb4Dn96JRjn5JsJPQWGC6uwhl4qtqqloNwZNsIMWWAqHldkHDXRTzxtP
         Jh/o3uCbX6MGZPkD5YY1roLfhU7vlfT8T60Vva3D0HgCgZMFf+LaSyPeyxhf6eBvzQHL
         cREA==
X-Received: by 10.66.55.66 with SMTP id q2mr23209208pap.109.1445884513636;
        Mon, 26 Oct 2015 11:35:13 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id c4sm35427398pat.46.2015.10.26.11.35.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 11:35:13 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/4] staging: r8723au: clean up in file rtw_efuse.c
Date: Mon, 26 Oct 2015 11:35:07 -0700
Message-Id: <cover.1445883001.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445752141.git.amsfield22@gmail.com>
References: <cover.1445752141.git.amsfield22@gmail.com>

This patchset removes the last 29 checkpatch warnings & errors in
file rtw_efuse.c.  It tallies to more than twice as many deletions
as additions due to the reduction of large, mostly blank, per function
comment blocks.

Changes in v2:
- Cover letter: 'reduction' not 'removal' of comment blocks.
- Patch 1:       no changes
- Patch 2:       no changes
- Patch 3:       no changes
- Patch 4:       commit msg edited to say forward declaration were
                 removed, not external declarations.



Alison Schofield (4):
  staging: r8723au: use kernel preferred style for commenting
  staging: r8723au: insert correct spacing around operands
  staging: r8723au: move function type in line with function name
  staging: r8723au: remove unneeded forward function declarations

 drivers/staging/rtl8723au/core/rtw_efuse.c | 320 +++++++++--------------------
 1 file changed, 92 insertions(+), 228 deletions(-)

-- 
2.1.4


