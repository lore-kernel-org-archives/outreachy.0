X-GM-THRID: 4799843008512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,37879575871abf20
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.13.195 with SMTP id j3mr727819wic.2.1425066742075;
        Fri, 27 Feb 2015 11:52:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.135 with SMTP id t7ls210882lag.45.gmail; Fri, 27 Feb
 2015 11:52:21 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr2353205lbb.9.1425066741475;
        Fri, 27 Feb 2015 11:52:21 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id cl5si180209wib.3.2015.02.27.11.52.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 11:52:21 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id ex7so2674081wid.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 11:52:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=JtpXcNxOD/TqEdUu5Fp00+JPXUQlAU4yVCbQjTJJYdY=;
        b=P/KFY5LW8fhmrXNNJ56GKFDvFYrOyzKzUnAAE3DFAOTzwiFMO5URY824m6Vv8JIwds
         rswY80Plu1iqDB+wxJXvdSenrLt9WNRDocYt9S/0TJH07822Ep+oMsg/U+FcmAq6595z
         KDY2/9jBXkPGv8D7qDC12fS0yDDgPJ/7pw04n9q4KZtGeG/iXluMltBOjXxStxLxEYga
         nTC7vM9ieRES2fcDMlzuC/mnyAPaLBhco3MD0bPv6iS67cG63yVXTRScxPbcAPQz5v+I
         pErUSQzCalMIpULXY+oHd9kbCENU44ytoYAF0Msj/3VwheHvlOKbCipC3nm9dne8yyr5
         M7nQ==
X-Received: by 10.180.91.79 with SMTP id cc15mr2328326wib.37.1425066741380;
        Fri, 27 Feb 2015 11:52:21 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id vq9sm7356804wjc.6.2015.02.27.11.52.19
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 11:52:20 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 3/3] Staging: lustre: Deleted space prohibited between function name and open parenthesis
Date: Fri, 27 Feb 2015 21:51:04 +0200
Message-Id: <1425066664-25535-4-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1425066664-25535-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1425066664-25535-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: space prohibited between function name and open parenthesis '('
Remove unnecessary space between function name and opening parenthesis.
That was found by running checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/client.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/staging/lustre/lustre/ptlrpc/client.c
index 2ccb72a..0fe6a64 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/client.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
@@ -2190,7 +2190,7 @@ int ptlrpc_set_wait(struct ptlrpc_request_set *set)
 	if (set->set_interpret != NULL) {
 		int (*interpreter)(struct ptlrpc_request_set *set, void *, int) =
 			set->set_interpret;
-		rc = interpreter (set, set->set_arg, rc);
+		rc = interpreter(set, set->set_arg, rc);
 	} else {
 		struct ptlrpc_set_cbdata *cbdata, *n;
 		int err;
-- 
1.8.3.2


