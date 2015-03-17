X-GM-THRID: 8708200333312
X-Received: by 10.152.8.73 with SMTP id p9mr5358125laa.6.1426570226020;
        Mon, 16 Mar 2015 22:30:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.71 with SMTP id eo7ls772014wib.21.canary; Mon, 16 Mar
 2015 22:30:25 -0700 (PDT)
X-Received: by 10.180.77.165 with SMTP id t5mr6799679wiw.0.1426570225602;
        Mon, 16 Mar 2015 22:30:25 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id o3si39068wib.2.2015.03.16.22.30.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 22:30:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x231.google.com with SMTP id p45so27325767weo.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 22:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ydL6xl4EFOpqimOo7m9q62xY8U1dsXcI9kReDwEvJ/E=;
        b=hYboAhMO0s5dxCplkEpTn673DGPpVXQMp9dwnciDz13bI9akLsUfjAm/BLYP6nnxHN
         WAJuTEamv1o5QPNLHDPfCf02W8BegGjQIYnVM59bURzb9Q87cPT1VX7o5zXe3+5YhRgY
         EMK/9ABvNm2TgnILUuKOeVnjDj4LVWWdTiRXYA2TD3ShJT7JI5O4LLXXMR8/ujT4iS9B
         agDdMcfwFyPXc0N4MYrGBtXSvuQGZZ1DMrlWq/xLnAkmrqhVDIxU6+BcGMqcEVLy8o4C
         vbAc+898Yy7rdyWfsseCY9fvS/OPo52iAtt0xKFmI+NshVo7k6rWRuEPJlBWluRl2pOV
         uOGw==
X-Received: by 10.180.84.133 with SMTP id z5mr127419364wiy.25.1426570225499;
        Mon, 16 Mar 2015 22:30:25 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.48])
        by mx.google.com with ESMTPSA id md2sm1006849wic.19.2015.03.16.22.30.22
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 22:30:23 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 4F0A9C1F80; Tue, 17 Mar 2015 08:30:20 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 0/4] Staging: replace pr_err with dev_err
Date: Tue, 17 Mar 2015 08:30:19 +0300
Message-Id: <1426570219-22279-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset replace pr_err with dev_err, when appropriate device structure is found. 
Issues found using the following Coccinelle script:

@r exists@ 
identifier f, s, i;
position p;
@@

f(...,struct s *i,...) {
<+...
when != i == NULL
pr_err@p(...);
...+>
}

@rr@
identifier r.s, fld;
@@

struct s {
	...
	struct device *fld;
	...
};

@@ 
identifier r.i, rr.fld;
position r.p;
@@
-pr_err@p
+dev_err
   (
+ i->fld,
...)


Haneen Mohammed (4):
  Staging: comedi: replace pr_err with dev_err
  Staging: gdm724x: replace pr_err with dev_err
  Staging: iio: replace pr_err with dev_err
  Staging: ft1000: replace pr_err with dev_err

 drivers/staging/comedi/comedi_fops.c           |  6 ++++--
 drivers/staging/ft1000/ft1000-usb/ft1000_usb.c |  5 +++--
 drivers/staging/gdm724x/gdm_mux.c              |  4 ++--
 drivers/staging/gdm724x/gdm_usb.c              |  8 ++++----
 drivers/staging/iio/resolver/ad2s1210.c        | 12 +++++++-----
 5 files changed, 20 insertions(+), 15 deletions(-)

-- 
1.9.1


