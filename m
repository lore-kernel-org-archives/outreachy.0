X-GM-THRID: 1755530133504
X-Received: by 10.112.64.171 with SMTP id p11mr270762lbs.12.1424520819786;
        Sat, 21 Feb 2015 04:13:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.74.229 with SMTP id x5ls255814wiv.8.gmail; Sat, 21 Feb
 2015 04:13:39 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr233037wib.7.1424520819500;
        Sat, 21 Feb 2015 04:13:39 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id l8si491236wia.0.2015.02.21.04.13.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 04:13:39 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f46.google.com with SMTP id a1so17640835wgh.5
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 04:13:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=PzHguzbpqnmu1chR8YJ9vP6J/o27k0uUedXXAdMh/Bk=;
        b=jmx48x1HefNYDM6G+5iqikQFBJQekfGq8eUjf8PYmR6wkmHYOdU973N8L9XK8L6FD9
         141KYQngLdR9A7BzycaQw08TEHCAwkSggNQWYZ3eCP/xxhQIA2CEatZoYyDTsQB5swAQ
         3CUcL8Cba5HKlktc3kFWmfTydFInBsMvbc06WGYQN/TqxQ4LPcDuDLclIQtyB7ua682b
         4xZe00Th4Gll1Ta0Bi4n0Awa+DcDeX0D4F6bWXqCpEvjcpvOCuk7CLUSlPtNr6YLyBPx
         s7bhRWXHfAEaMaC1ORzAud0QxPHCPRayVbfV8eV0A3e6iqbF3e4FBm4WYaSAgSG6UQcX
         AxRQ==
X-Received: by 10.194.6.70 with SMTP id y6mr4003966wjy.97.1424520819408;
        Sat, 21 Feb 2015 04:13:39 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.61.145])
        by mx.google.com with ESMTPSA id k1sm46410059wjn.9.2015.02.21.04.13.38
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 04:13:38 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: speakup: Add blank line
Date: Sat, 21 Feb 2015 14:13:42 +0200
Message-Id: <1424520822-6899-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the checkpatch.pl warning:
WARNING: "Missing a blank line after declarations"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/speakup/selection.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/speakup/selection.c b/drivers/staging/speakup/selection.c
index ca04d36..507fc9a 100644
--- a/drivers/staging/speakup/selection.c
+++ b/drivers/staging/speakup/selection.c
@@ -66,6 +66,7 @@ int speakup_set_selection(struct tty_struct *tty)
 	if (ps > pe) {
 		/* make sel_start <= sel_end */
 		int tmp = ps;
+
 		ps = pe;
 		pe = tmp;
 	}
-- 
1.8.3.2


