X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.126.194 with SMTP id na2mr2709970lbb.18.1425122741517;
        Sat, 28 Feb 2015 03:25:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.108.3 with SMTP id hg3ls275794wib.37.gmail; Sat, 28 Feb
 2015 03:25:40 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr2655898wjb.6.1425122740200;
        Sat, 28 Feb 2015 03:25:40 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id el6si286833wib.2.2015.02.28.03.25.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 03:25:40 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl2 with SMTP id l2so24948724wgh.9
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 03:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QH/VZKnDA1qO9zCx7i/WMiTiw/lihoNIAfQV74M9bpI=;
        b=KxmrlRunhJ4P3Y5EnEPt2m66ZYlB6CSnt3/yOKABzX4fkQUckm3M72TSylXByXvpyy
         0trbU1iO8CB+lCaw5VPyFzsQEbIqSWqCabv7dmvYYjdMiOdlZ2E9WD/aqONRk/yb7fH5
         W47Gdas+Vt0jJmcdkKIzvso4Yj3KpO02l8Gz4iPZGncOIxSkTF5Gf6pcrR8gqPDQhEEB
         swImTNAbja4y3dv8qZ2eETE79TLp9NymbfoK2kaQqo/CZBezchOPr/z27bGht1xFNToM
         BNfxziP8PlyhYJXCPKEAHGaJDI2W83lXWH4TB9n2K8H8Tx4IMhMr2YTFRbu+VQu2lJ/r
         QI/A==
X-Received: by 10.180.80.34 with SMTP id o2mr15590159wix.75.1425122740129;
        Sat, 28 Feb 2015 03:25:40 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id uc18sm6701269wib.0.2015.02.28.03.25.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 03:25:39 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH 09/10] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 13:25:14 +0200
Message-Id: <1425122715-2938-9-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>
References: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/ptlrpc/sec_null.c WARNING: Missing a
blank line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/sec_null.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_null.c b/drivers/staging/lustre/lustre/ptlrpc/sec_null.c
index 4e13243..66cb4f8 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_null.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_null.c
@@ -82,6 +82,7 @@ int null_ctx_sign(struct ptlrpc_cli_ctx *ctx, struct ptlrpc_request *req)
 
 	if (!req->rq_import->imp_dlm_fake) {
 		struct obd_device *obd = req->rq_import->imp_obd;
+
 		null_encode_sec_part(req->rq_reqbuf,
 				     obd->u.cli.cl_sp_me);
 	}
-- 
1.9.1


