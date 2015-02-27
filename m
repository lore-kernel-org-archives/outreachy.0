X-GM-THRID: 4898430124032
X-Received: by 10.112.214.234 with SMTP id od10mr2328952lbc.3.1425071671689;
        Fri, 27 Feb 2015 13:14:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.134 with SMTP id dc6ls186729lad.87.gmail; Fri, 27 Feb
 2015 13:14:31 -0800 (PST)
X-Received: by 10.112.126.194 with SMTP id na2mr2400660lbb.18.1425071671225;
        Fri, 27 Feb 2015 13:14:31 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id i7si198771wif.0.2015.02.27.13.14.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 13:14:31 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl18 with SMTP id l18so22780579wgh.7
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 13:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jSK1hDoOCH1f7oHTenKIa+jc29gr4KMCqXxJFje2tE4=;
        b=sHJeQ8isap7WjAVEL0/x1tXJWbMZJO4GaAO3QNKgxninvYyj9aqjX3c9UhUCGnGJ+9
         5/Mo/zgs6JF9KdOuBDY158Fe8q/GZYCIHDZhBc4GeUok/8zJlAD7E4S+uysat4Q9VrHo
         N4LSDS/H0UBXrrpaqyrtDa2nK8DxuWjg5k/1sEsgEzeLU++fWCFVxF9mD3jsNNZGSB14
         9EocstdDD45CJm328wD+EK08hHixruEZTDSREVPfaPP6AJGpgBrUCYwJDzwUqOg+Lm04
         nRAjAYq80oDRWAeDbxyx1HDNPy1CMTjHvOWZqWDi7lgLTZmjuj+sil1qkF5YA2nNcP+z
         avJw==
X-Received: by 10.180.198.37 with SMTP id iz5mr9991759wic.95.1425071671122;
        Fri, 27 Feb 2015 13:14:31 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id hd5sm4420508wib.21.2015.02.27.13.14.29
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 13:14:30 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: lustre: default used instead of break
Date: Fri, 27 Feb 2015 23:13:25 +0200
Message-Id: <1425071605-31990-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: switch default: should use break.
That was found by running checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c b/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c
index 5268887..44f4e27 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c
@@ -143,7 +143,7 @@ cleanup:
 		ptlrpc_hr_fini();
 		req_layout_fini();
 		/* Fall through */
-	default: ;
+	break;
 	}
 
 	return rc;
-- 
1.8.3.2


