X-GM-THRID: 6258949498826915840
X-Received: by 10.66.102.106 with SMTP id fn10mr12859862pab.36.1457275240207;
        Sun, 06 Mar 2016 06:40:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.43.81 with SMTP id r78ls667420ior.40.gmail; Sun, 06 Mar
 2016 06:40:39 -0800 (PST)
X-Received: by 10.107.128.217 with SMTP id k86mr1311230ioi.12.1457275239920;
        Sun, 06 Mar 2016 06:40:39 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id r75si2454106pfr.0.2016.03.06.06.40.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 06:40:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fy10so62901787pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 06:40:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1LuR8JPEGO/S3jbhSVb/jBNiTgfftH+Gy3nfDEd5U7g=;
        b=uocVxN/9r3hJgWNV41mxto/utB6KjCzZNCQdf562qS+NShVfxnNwLI7UPfAPXyl05s
         8m68qHP+MfpHXAf07osd7TnDG75rEXtQV3bGWo7hPOkgHZ0ASYXF3vYSj3q6QlJKMHTP
         7gSf9+kVfOjegxNutqFJ9GMaAoAfnsVJ2KYIoacTp26BDinA0iszkfCqP9ZO3bS96LyG
         l+95rqOtwxmDeY29nYWEhgTxQag3AjwFRbJHfhWV7cnCFEf+SSTOKkA/93gfzCEWYxzm
         kCnIRugXFFGPrpYOLn3MSw/0KwfYgzp+7aSHYFGU4MNYPlAU7B9quTQTI1LisXNybE5E
         3QnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1LuR8JPEGO/S3jbhSVb/jBNiTgfftH+Gy3nfDEd5U7g=;
        b=g1WzUEU0VHzT+MOCciWjlHKijFDMb+zuYhsvsDRkGgRCHliLnH5KPuuFeHqPMd/hcF
         ebDHT6eT+jCc5nXEogh1F/OpBLZVBHAG7DvU4SwSRs7slBGopxZT8gRh68mfj62yNYGF
         5S2EDIRzH1UnYP+Ei+BtfTzaqSWhGD99iBUsVdv3hT/ST3HIozQmTavWPwxELeuNS/vI
         0CYg/VjtmF1KlfFxl7yhZKYyxy3CQU992rZDQY31+CrbXwzBgJbOmETJHld9RaQxpC0F
         VWfXNR4FCLXGPk3a+chRbpwKNB4g3QbmfbxWgq93tyiNiRT/u4OGIOq5hEzFIQUmwPez
         KFkg==
X-Gm-Message-State: AD7BkJL8W+aBvHOBmfK0hDyboBaBVLlEXSxWuF4VLbkMxmCtfO3oMxJxOEsMvxGaPWUHGw==
X-Received: by 10.66.90.136 with SMTP id bw8mr26785794pab.52.1457275239764;
        Sun, 06 Mar 2016 06:40:39 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.181.247])
        by smtp.gmail.com with ESMTPSA id g70sm6314797pfj.13.2016.03.06.06.40.35
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 06:40:39 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 06 Mar 2016 20:10:29 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: obdclass: Use list_first_entry_or_null
Date: Sun,  6 Mar 2016 20:09:38 +0530
Message-Id: <1457275178-9647-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch replaces list_empty and list_entry with
list_first_entry_or_null as it makes the code cleare to read. Also removed the 
{} around if-statement.
Done using coccinelle:

@@
expression e1,e2;
statement S;
@@
- if(!list_empty(...)){
  e2=
- list_entry(e1.next,
+ list_first_entry_or_null(&e1,
  ...);
+ if(e2){
...
}

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/genops.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
index cf97b8f0..08b17d1 100644
--- a/drivers/staging/lustre/lustre/obdclass/genops.c
+++ b/drivers/staging/lustre/lustre/obdclass/genops.c
@@ -1123,18 +1123,18 @@ static void obd_zombie_impexp_cull(void)
 		spin_lock(&obd_zombie_impexp_lock);
 
 		import = NULL;
-		if (!list_empty(&obd_zombie_imports)) {
-			import = list_entry(obd_zombie_imports.next,
-					    struct obd_import,
-					    imp_zombie_chain);
+		import = list_first_entry_or_null(&obd_zombie_imports,
+						  struct obd_import,
+						  imp_zombie_chain);
+		if (import)
 			list_del_init(&import->imp_zombie_chain);
 		
 
 		export = NULL;
-		if (!list_empty(&obd_zombie_exports)) {
-			export = list_entry(obd_zombie_exports.next,
-					    struct obd_export,
-					    exp_obd_chain);
+		export = list_first_entry_or_null(&obd_zombie_exports,
+						  struct obd_export,
+						  exp_obd_chain);
+		if (export)
 			list_del_init(&export->exp_obd_chain);
 		
 
-- 
1.9.1


