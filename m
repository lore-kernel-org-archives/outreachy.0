X-GM-THRID: 8920338792448
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a23361e97352255d,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.162.135 with SMTP id ya7mr10765287lbb.14.1426673228225;
        Wed, 18 Mar 2015 03:07:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.36 with SMTP id dd4ls134209lac.43.gmail; Wed, 18 Mar
 2015 03:07:07 -0700 (PDT)
X-Received: by 10.112.97.37 with SMTP id dx5mr2198259lbb.15.1426673227511;
        Wed, 18 Mar 2015 03:07:07 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id el6si113247wib.0.2015.03.18.03.07.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 03:07:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x231.google.com with SMTP id cc7so30573474wgb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 03:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=wDIBKXsssNoyl7DAdDJVOIqk51cPuSuZyXXQgTUK1/w=;
        b=EqGFf0TaTSf2vGiIfcGYE+E+MawoS635L5rEBB0AJGxPA67AhGDB6yHL+8H9qDtF34
         zaBYEL7n1Gzx4PmBI/wDrXghbXB8GZdvlfkFEeyqoq7LWt/QNg6PAMkwOZD/cA7mNX0J
         kyGt3U0NCEmwgmpeL2IeH1AaH9eLoWzHzX+BccL4eJCNEED3bftlJUdHB1TK9XNAtyvY
         74RyceSAQte6Qmu3RuMNd6vAyWMBmzjHFvVuD55f9XvSIDcEaaMWCR5jwC1cnxOEJzgE
         D5MScC6Gsg4jn2MFJlE5EByt08dalgYaYa2A5Vw0YoIANoTuoZ5mVV3HwcW25vaigrDK
         dmzQ==
X-Received: by 10.194.94.164 with SMTP id dd4mr143434980wjb.56.1426673227373;
        Wed, 18 Mar 2015 03:07:07 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([5.41.223.113])
        by mx.google.com with ESMTPSA id lj13sm2479251wic.9.2015.03.18.03.07.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 03:07:06 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 2EB78C1F4A; Wed, 18 Mar 2015 11:40:22 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 0/3] Staging: replace pr_* with dev_*
Date: Wed, 18 Mar 2015 11:40:21 +0300
Message-Id: <1426668021-13846-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

dev_* is prefered over pr_* when appropriate device stucture is present.
This patch replace pr_err and pr_warn with its dev_ counterpart.
Issues found with the help of the following Coccinelle script:

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
identifier r.s, s2, fld;
@@

struct s {
	...
	struct s2 *fld;
	...
};

@rrr@
identifier rr.s2, fld2;
@@

struct s2 {
	...
	struct device fld2;
	...
};
@@ 
identifier r.i, r.s, rr.fld, rrr.fld2;
position r.p;
@@

-pr_err@p
+dev_err
   (
+ &i->fld->fld2,
...)


Haneen Mohammed (3):
  Staging: gdm724x: replace pr_* with dev_*
  Staging: media: replace pr_* with dev_*
  Staging: iio: replace pr_* with dev_*

 drivers/staging/gdm724x/gdm_mux.c                  | 4 ++--
 drivers/staging/gdm724x/gdm_usb.c                  | 7 ++++---
 drivers/staging/iio/resolver/ad2s1210.c            | 6 +++---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 2 +-
 drivers/staging/media/lirc/lirc_sasem.c            | 9 ++++++---
 5 files changed, 16 insertions(+), 12 deletions(-)

-- 
1.9.1


