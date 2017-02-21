X-GM-THRID: 6389607750950715392
X-Received: by 10.98.198.20 with SMTP id m20mr2825892pfg.1.1487696485662;
        Tue, 21 Feb 2017 09:01:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.180 with SMTP id b49ls5681563otc.36.gmail; Tue, 21 Feb
 2017 09:01:25 -0800 (PST)
X-Received: by 10.200.38.37 with SMTP id u34mr4828966qtu.43.1487696485198;
        Tue, 21 Feb 2017 09:01:25 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 23si3309507pfw.4.2017.02.21.09.01.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 09:01:25 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so8569596pgb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 09:01:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eIW5Md0+NMYtdj+cyWxL0etB9Hk6YQ1KKFx6xj7eArg=;
        b=HzCiRT4QUY1K3Y85ElUMWJpGdGPxaZHpKiVpq2lnmNqtmdjI3RCUVXRDkE4QjYrp3n
         aljjkfptodGzep/KE3CgV4xBwrvlOI8I2mejw0EfBjX2qCllHbp05GU4bMxADZl8m0Em
         qist+q+lEMOoTeXUtCtYZ2CsEs7VWQ8di+9IpvNoJVv3sSKmzQCanO0JI08iQXuXLQBi
         jraLiDmShDqWrn7eIhoL2Zi1sN7AtnU7Bmh1iIIEPRaOSYe5UPHl9p4CcvJ6/HlyYfab
         iXDqJEPFNKXths4KTXblN7kmA0gzrg8QPccNXOS6XlT/vRx0L8r0+xFEXFb8+gje3bp+
         zmmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eIW5Md0+NMYtdj+cyWxL0etB9Hk6YQ1KKFx6xj7eArg=;
        b=rZUb/hEeDWP6BKAYwjeQP1XZVLJOfUsNcw/OEvsVdE3Ir+QjPe8RdIbZTIQXBHq/De
         3kLMCKwjTPw3lEzHBtDYcOg5b8k8CH8u38u+v8Zedm4mJlrf1ofMNBhjJA5AxDX0UGp5
         Qi6Z07alsHtr/SFxdRd7ZhnK8+zVX2G04l9d+iDiRlMZB6Udv4Kim0cK66+SDlnM7rnN
         p35Rz7VEPvbJMC3DL24zxEPD8Lh1eYqY9ZsEWSMzYbXsoNPb68nU9Dc75yL114zepy7p
         STZDJHuirQX9up9Rm1bZRymshyWLvN3klFT96PZqqVRhVI5qjAi+m5EfuPfuHA5csh4o
         rPHw==
X-Gm-Message-State: AMke39n9m1V5tnP/kP2jsxX0ElhMZxQKtkBZoc5pOv5M10G2nz1DkzS9gTu8GWDYYGcLzQ==
X-Received: by 10.98.153.25 with SMTP id d25mr34625112pfe.15.1487696484933;
        Tue, 21 Feb 2017 09:01:24 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id l71sm15212229pga.32.2017.02.21.09.01.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 09:01:24 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	johan@kernel.org,
	elder@kernel.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: greybus: loop variable to loop index
Date: Tue, 21 Feb 2017 22:29:13 +0530
Message-Id: <1487696353-11316-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Change array index from the loop bound variable to loop index.
Once all the loopback devices have been found, free the pointer
array containing the dirent structures. The pointer to dirent
structures must be individually freed before freeing the pointer
array.

Coccinelle Script:
@@
expression arr,ex1,ex2;
@@

for(ex1 = 0; ex1 < ex2; ex1++) { <...
  arr[
- ex2
+ ex1
  ]
  ...> }

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/greybus/tools/loopback_test.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index 18d7a3d..1c01833 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -636,7 +636,7 @@ int find_loopback_devices(struct loopback_test *t)
 	ret = 0;
 done:
 	for (i = 0; i < n; i++)
-		free(namelist[n]);
+		free(namelist[i]);
 	free(namelist);
 baddir:
 	return ret;
-- 
2.7.4


