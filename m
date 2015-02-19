X-GM-THRID: 1022972919808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,af8b4c5ca6ab5cb3,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.178.234 with SMTP id db10mr883820wjc.2.1424383708718;
        Thu, 19 Feb 2015 14:08:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.44.232 with SMTP id h8ls215409lam.30.gmail; Thu, 19 Feb
 2015 14:08:28 -0800 (PST)
X-Received: by 10.112.174.36 with SMTP id bp4mr857253lbc.15.1424383708318;
        Thu, 19 Feb 2015 14:08:28 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id r6si4598734wix.0.2015.02.19.14.08.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 14:08:28 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id h11so12319469wiw.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 14:08:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=O+KLn9coucWc0OgubR+OIrl4x8uRywH70x346L6zwTA=;
        b=CKCCwy/1cops9z01OB1o5wiy6AE+eDMhmbhB6g9oLEfRLlWZPj5BXCAma/LCRd+vg+
         +hEhOlnsvI+uJ4sgFScw38koxaPH2d9hmrMdnZFgvmlEEUwwNDX0MF5IQ00VdtQWO/Ut
         Qg/jCMlZmMSEFkcfjIjzKzOPVgEQmWUUVMi9CvQvBUJObl/pvkTdw+vvxc7x4uZsOYdT
         +WWJQ79sw1DrsUmXju7G6h5ABCvz25XdXMRv1CX8F0H60qDjPhJoD0nKKlsDJlo+25WJ
         m/LCjYl2vdOKfVowLMceoptbI4w3aHlCwyFuaPXnaIJLHdI9YM+9t4EW7kR95HtbLMif
         dzXw==
X-Received: by 10.180.208.35 with SMTP id mb3mr286216wic.14.1424383708243;
        Thu, 19 Feb 2015 14:08:28 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id fo9sm32025187wib.16.2015.02.19.14.08.25
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 14:08:27 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 2/2] Staging: lustre: lnet: klnds: o2iblnd: Deleted space prohibited between function name and open parenthesis
Date: Fri, 20 Feb 2015 00:07:46 +0200
Message-Id: <1424383666-27817-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: space prohibited between function name and open parenthesis '('
checkpatch.pl warning in o2iblnd_modparams.c

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c
index 8036d8b..eedf01a 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c
@@ -177,7 +177,7 @@ kib_tunables_t kiblnd_tunables = {
 };
 
 int
-kiblnd_tunables_init (void)
+kiblnd_tunables_init(void)
 {
 	if (kiblnd_translate_mtu(*kiblnd_tunables.kib_ib_mtu) < 0) {
 		CERROR("Invalid ib_mtu %d, expected 256/512/1024/2048/4096\n",
-- 
1.8.3.2


