X-GM-THRID: 4409240059904
X-Received: by 10.152.1.5 with SMTP id 5mr1973524lai.4.1425035061123;
        Fri, 27 Feb 2015 03:04:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.76.238 with SMTP id n14ls90521wiw.47.canary; Fri, 27 Feb
 2015 03:04:20 -0800 (PST)
X-Received: by 10.180.11.34 with SMTP id n2mr377363wib.2.1425035060823;
        Fri, 27 Feb 2015 03:04:20 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id ta1si91461wic.1.2015.02.27.03.04.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 03:04:20 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22c.google.com with SMTP id l18so19394584wgh.7
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 03:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=gX6BnInuo6vO4nBPZhC4jNE9gJkPS+NyZjGTPLjbFZQ=;
        b=fEL9ncYLxux5ezaIDvqlW2TKvLnxsNkWBEkqhGoJAUan9LTPD0f4HPQowJUZWcEb2n
         grdUzwtlnn2u0QRZGsnMx58byXSC1fM5K+8RgaJHg2LbGFVnZFSYq7f2XWwINWPd2PH/
         TrgY25hJlsCDUpjkisHlxudIriramnEnrZItsStQd0AP07Xiiz/owlE85ndn6rVBe5dl
         zkTv47QUfmwK219Y0wNtKawsLZOgMMFAwBeTxc/Dd4bUAZJU0rgoxhbZUfhJ/pYypKTU
         2+08yoxzB19/RZmHRbPwLHjpgGjmMe4wn+jgDkoxg1byRqswnggIxEuqelZEK3rq+Tu5
         XtXA==
X-Received: by 10.194.86.135 with SMTP id p7mr26793930wjz.89.1425035060600;
        Fri, 27 Feb 2015 03:04:20 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.157.65])
        by mx.google.com with ESMTPSA id ax10sm5436924wjc.26.2015.02.27.03.04.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 03:04:19 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: media: Add blank line after declarations
Date: Fri, 27 Feb 2015 13:04:13 +0200
Message-Id: <1425035053-11159-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/media/tlg2300/pd-dvb.c WARNING: Missing a blank
line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/media/tlg2300/pd-dvb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/tlg2300/pd-dvb.c b/drivers/staging/media/tlg2300/pd-dvb.c
index ca4994a..f6a28f2 100644
--- a/drivers/staging/media/tlg2300/pd-dvb.c
+++ b/drivers/staging/media/tlg2300/pd-dvb.c
@@ -199,6 +199,7 @@ front_out:
 static int pm_dvb_suspend(struct poseidon *pd)
 {
 	struct pd_dvb_adapter *pd_dvb = &pd->dvb_data;
+
 	dvb_stop_streaming(pd_dvb);
 	dvb_urb_cleanup(pd_dvb);
 	msleep(500);
-- 
1.9.1


