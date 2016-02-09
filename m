X-GM-THRID: 6249278718968070144
X-Received: by 10.107.130.28 with SMTP id e28mr34904955iod.34.1455023586674;
        Tue, 09 Feb 2016 05:13:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.4.100 with SMTP id j4ls813912igj.38.gmail; Tue, 09 Feb 2016
 05:13:06 -0800 (PST)
X-Received: by 10.66.189.102 with SMTP id gh6mr33628571pac.14.1455023586363;
        Tue, 09 Feb 2016 05:13:06 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id u66si5257911pfa.2.2016.02.09.05.13.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 05:13:06 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id yy13so91205804pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 05:13:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZVNbP0jFR0pt37EMHoADqxAA3Dd6TlBw07N3uvhSrOg=;
        b=ux8HLGwB0VW00f8BYTBAEmXlj53xFFIfe/TFcoxd8uVPuC6TpUliRMcHjJLyiFXlc/
         pNHm7L0nT9S57//4S/C6sT/08iJE/gyoNSi+mdceOLB7yUZEw9OyNTl/THrPVFI/mjwX
         NGLO3KJ2ixGlvmfEo3lD2aAUzGcP7TuB8hoMdbfzcRYJ264w12EcyGkhu7LTX63UMTi2
         ZxOipjQEItamfXGJpQGV4e/N1z7hNAwn1GUmX4jCN4U58b7EJJomapAjr8OWdZqCncYH
         hE6gdbSKXtMh0L84ldY178YkElo5fM/kau4bCfThCfmSpj+7U9xyLBEDHsF+y/A7/I8M
         qe6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ZVNbP0jFR0pt37EMHoADqxAA3Dd6TlBw07N3uvhSrOg=;
        b=cbuqTKmUp4ds1Tk/8KzEpON9W6cZll5FZk6q7eOsL3QVUDFB00Qsm06woMRwUIDOBz
         cBlC2ucIV4SlJ//3FbIilgVkIwMkByntTj0Pg43UEqjN83qnksBMfetY9+uilDQgDfGu
         iIFdW6CHhjpIKN1QT1gevGwvgCbBAHJtN/hjsn8PDRVG8N3u/w4HTAbX4C6MnqfPiXxp
         IFcGrRJ6Z3j1UQRcrUASD0ADlOQm+KiCY7tqzJTBeTmEchUaXD89Sfwbt6pmzo8OYpQ5
         XgwesXfmN7WJ3cx4A4IT8nru6mu39BBrJBg2heW4rASBvJJp/FFth15cuhp+YxI/lktm
         0m3A==
X-Gm-Message-State: AG10YOQ/ZNuuqhzyZjbMxFK2Fdlc+hgpq1x6vzpFXS8z3QowNGLo7XDmUcwD9RdpShzj+g==
X-Received: by 10.67.7.129 with SMTP id dc1mr35098023pad.87.1455023586237;
        Tue, 09 Feb 2016 05:13:06 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.176.229])
        by smtp.gmail.com with ESMTPSA id v66sm45764704pfi.56.2016.02.09.05.13.01
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 05:13:05 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 09 Feb 2016 18:42:54 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: lnet: Remove explicit NULL comparision
Date: Tue,  9 Feb 2016 18:42:53 +0530
Message-Id: <1455023573-32172-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Replaced explicit NULL comparision with its simplier form.
Found using coccinelle:

@replace_rule@
expression e;
@@

-e == NULL
+ !e

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/lib-md.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/lib-md.c b/drivers/staging/lustre/lnet/lnet/lib-md.c
index 758f5be..b3d8364 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-md.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-md.c
@@ -184,7 +184,7 @@ lnet_md_link(lnet_libmd_t *md, lnet_handle_eq_t eq_handle, int cpt)
 	if (!LNetHandleIsInvalid(eq_handle)) {
 		md->md_eq = lnet_handle2eq(&eq_handle);
 
-		if (md->md_eq == NULL)
+		if (!md->md_eq)
 			return -ENOENT;
 
 		(*md->md_eq->eq_refs[cpt])++;
@@ -221,7 +221,7 @@ lnet_md_deconstruct(lnet_libmd_t *lmd, lnet_md_t *umd)
 static int
 lnet_md_validate(lnet_md_t *umd)
 {
-	if (umd->start == NULL && umd->length != 0) {
+	if (!umd->start && umd->length != 0) {
 		CERROR("MD start pointer can not be NULL with length %u\n",
 		       umd->length);
 		return -EINVAL;
@@ -285,7 +285,7 @@ LNetMDAttach(lnet_handle_me_t meh, lnet_md_t umd,
 	}
 
 	md = lnet_md_alloc(&umd);
-	if (md == NULL)
+	if (!md)
 		return -ENOMEM;
 
 	rc = lnet_md_build(md, &umd, unlink);
@@ -296,7 +296,7 @@ LNetMDAttach(lnet_handle_me_t meh, lnet_md_t umd,
 		goto failed;
 
 	me = lnet_handle2me(&meh);
-	if (me == NULL)
+	if (!me)
 		rc = -ENOENT;
 	else if (me->me_md != NULL)
 		rc = -EBUSY;
@@ -362,7 +362,7 @@ LNetMDBind(lnet_md_t umd, lnet_unlink_t unlink, lnet_handle_md_t *handle)
 	}
 
 	md = lnet_md_alloc(&umd);
-	if (md == NULL)
+	if (!md)
 		return -ENOMEM;
 
 	rc = lnet_md_build(md, &umd, unlink);
@@ -432,7 +432,7 @@ LNetMDUnlink(lnet_handle_md_t mdh)
 	lnet_res_lock(cpt);
 
 	md = lnet_handle2md(&mdh);
-	if (md == NULL) {
+	if (!md) {
 		lnet_res_unlock(cpt);
 		return -ENOENT;
 	}
-- 
1.9.1


