X-GM-THRID: 4855682826240
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,aa6cd80adf0a2826,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.222.131 with SMTP id qm3mr2299289lbc.1.1425069398946;
        Fri, 27 Feb 2015 12:36:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.205.72 with SMTP id le8ls221906lac.41.gmail; Fri, 27 Feb
 2015 12:36:38 -0800 (PST)
X-Received: by 10.112.126.194 with SMTP id na2mr2380369lbb.18.1425069398422;
        Fri, 27 Feb 2015 12:36:38 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id r6si196368wix.0.2015.02.27.12.36.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:36:38 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x230.google.com with SMTP id l2so22663728wgh.9
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:36:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=7nmP3Jcj04QyqXLTJTVpbCPwQctTHTQYss8v89dURus=;
        b=NGOtLx1j1O07MZ4YKFsFH2jORcNNw8fp3Q40TN1Yof12EA0pps1qdi85PROYeSesSB
         +JxRJPmN8UD7YctckSMvnnQtENPnFjKvb9eF15X7xDritPMyUs2SnKhrxAbeMYgmNLdv
         1zrGhO3QdZfhYHC0cO+dKV3J5EHDVa6FFJsgGgy/KtvGE+WrtKtYf/y4leoSENImjy+T
         +BDOpcgwEOHQxamn11yzKUKchvSZ3ZHz5rrqQJ/MtPxAV5CmI9BYqvtEIFt3iUM2wwCd
         X+6mJdK54/oQs5KwYRD7rxCFlAXTysNecZr0VFrOAsYzwxerr2tohZfG8WuAandOYRzX
         Hbjg==
X-Received: by 10.180.77.40 with SMTP id p8mr10232801wiw.53.1425069398262;
        Fri, 27 Feb 2015 12:36:38 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id l4sm4325047wiw.9.2015.02.27.12.36.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 12:36:37 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/2] Staging: rtl8192u: Remove typedefs
Date: Fri, 27 Feb 2015 21:36:29 +0100
Message-Id: <cover.1425069061.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset removes typedefs and renames identifiers as to 
fit kernel coding style. Issue found by checkpatch.pl

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Ksenija Stanojevic (2):
  Staging rtl8192u: Remove typedefs.
  Staging: rtl8192u: Rename identifiers

 drivers/staging/rtl8192u/r819xU_cmdpkt.c | 30 +++++++++---------
 drivers/staging/rtl8192u/r819xU_cmdpkt.h | 53 +++++++++++++++-----------------
 2 files changed, 41 insertions(+), 42 deletions(-)

-- 
1.9.1


