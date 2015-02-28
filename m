X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.40.81 with SMTP id v17mr2654593lbk.5.1425122728956;
        Sat, 28 Feb 2015 03:25:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.134 with SMTP id r6ls31831laa.59.gmail; Sat, 28 Feb 2015
 03:25:28 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr2655294laa.2.1425122728551;
        Sat, 28 Feb 2015 03:25:28 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id ew5si290372wid.1.2015.02.28.03.25.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 03:25:28 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id w55so24848747wes.4
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 03:25:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=b25tnru94cOFmc8b/r9qudJCStuZvzEPXJ52YGhdYUg=;
        b=bddfnpUMuoBVBIPFt8IwUQIrvxLjUwV9RlzxhnRMnpQh1DPp0OguTwVsiFDCtTZwKd
         +UmofZLQUq8SQWkVThbUvqbnNbIFNTNk0qCd9OIUbo3Nl5NJb4d2UajqgVkn4cXyMplc
         Uv2gnaw8aeIY2+nl2nXqQzMhuw6CKztmY1a0X863bpMsE0xURwZT4z7etl6EV7ouH/lt
         f77TV6Rt/+oJlfC9pfBbUowpQOhNB5k+IHCiPadvGAdwXGUsmY7qNkv08yPBrhY4X/Ep
         Q+YZ4O++uyp2Yh1xpZ97b9h6BazsPvyQkYMUbSOYaq76dfXutRyXcD5btayP5eOCAo0V
         BMJQ==
X-Received: by 10.194.48.12 with SMTP id h12mr38656863wjn.74.1425122728468;
        Sat, 28 Feb 2015 03:25:28 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id uc18sm6701269wib.0.2015.02.28.03.25.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 03:25:27 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH 03/10] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 13:25:08 +0200
Message-Id: <1425122715-2938-3-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>
References: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/ptlrpc/llog_client.c WARNING: Missing a blank
line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/llog_client.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/llog_client.c b/drivers/staging/lustre/lustre/ptlrpc/llog_client.c
index e9baf5b..3b7618f 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/llog_client.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/llog_client.c
@@ -118,6 +118,7 @@ static int llog_client_open(const struct lu_env *env,
 
 	if (name) {
 		char *tmp;
+
 		tmp = req_capsule_client_sized_get(&req->rq_pill, &RMF_NAME,
 						   strlen(name) + 1);
 		LASSERT(tmp);
-- 
1.9.1


