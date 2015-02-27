X-GM-THRID: 4475579269120
X-Received: by 10.112.145.133 with SMTP id su5mr2013988lbb.17.1425041761853;
        Fri, 27 Feb 2015 04:56:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.39 with SMTP id cr7ls134970lad.56.gmail; Fri, 27 Feb
 2015 04:56:01 -0800 (PST)
X-Received: by 10.112.145.133 with SMTP id su5mr2013879lbb.17.1425041761208;
        Fri, 27 Feb 2015 04:56:01 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id l8si148235wia.0.2015.02.27.04.56.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:56:01 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22c.google.com with SMTP id w55so20239603wes.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=d12UJbeG8SaKBIUbJpD0BtONERR/Bu533ElfUgNLc2k=;
        b=d2BT1V4hRp6R5P4+VOCB0x/S/RtpTg0OLi781XxoWT9EeGISFbOCdK8mGKFJptgZa1
         3b5HLvwJNJllgiS6aF5tMf85VP8lxgY7rRKkJrr3xeMrrGwDvbmX1cNAkvLUsHmaJqBp
         r3L1kA85lLQcPpcFwDKhsOkQtF2RW4QAveNQqkW1ygnvCo/0Zu70x8EFXEUoDf8xbT9P
         v0dqYn7ozsZII4yHqL0uO8ZXYffgyfLZ/PULAEOv3fyiuV6ckdHfNaNAJUlPu9dob3uP
         hD+V8VN1GEz4MqC3ayKcaqyNCfxAcM0ibsJ3P4u55QSl7d8dwnye3RsgOzNSzR1kDGax
         xy9Q==
X-Received: by 10.194.240.164 with SMTP id wb4mr27022342wjc.66.1425041761132;
        Fri, 27 Feb 2015 04:56:01 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id fa3sm2693241wib.17.2015.02.27.04.55.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 04:56:00 -0800 (PST)
Date: Fri, 27 Feb 2015 14:55:54 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 07/24] staging: lustre: osc: remove unused variable
Message-ID: <7bbc526c18324f38c959f55f832516cd4313ff10.1425035006.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes a variable that was simply used to
store the return value of a function call before
returning it.

The issue was detected and resolved using the following
coccinelle script:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/lustre/lustre/osc/lproc_osc.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
index 1795d3a..3ef2b55 100644
--- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
+++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
@@ -164,16 +164,13 @@ static int osc_cached_mb_seq_show(struct seq_file *m, void *v)
 	struct obd_device *dev = m->private;
 	struct client_obd *cli = &dev->u.cli;
 	int shift = 20 - PAGE_CACHE_SHIFT;
-	int rc;
 
-	rc = seq_printf(m,
+	return seq_printf(m,
 		      "used_mb: %d\n"
 		      "busy_cnt: %d\n",
 		      (atomic_read(&cli->cl_lru_in_list) +
 			atomic_read(&cli->cl_lru_busy)) >> shift,
 		      atomic_read(&cli->cl_lru_busy));
-
-	return rc;
 }
 
 /* shrink the number of caching pages to a specific number */
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

