X-GM-THRID: 4475579269120
X-Received: by 10.180.87.166 with SMTP id az6mr540706wib.1.1425042779192;
        Fri, 27 Feb 2015 05:12:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.211.114 with SMTP id nb18ls117145wic.26.canary; Fri, 27
 Feb 2015 05:12:58 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr2049601wjb.1.1425042778883;
        Fri, 27 Feb 2015 05:12:58 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id i7si117551wif.0.2015.02.27.05.12.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 05:12:58 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id a1so20335643wgh.12
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 05:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Q5iLZlxxDzgeHflGEI/GDr3iysjEKJPbGr9PReXZhKo=;
        b=ZwTPwPfJJ6dds7kzg9ciBGo7rBmMUiFDyGBX1GsqcQLCD2MsxE3gG5Wme1ch0dQtpt
         8mXx9w0OvgFwZl1AfrnjGtF/QRA6ayAKsG20eyJ7S9QKyUV+mgRtoBHli2+HAcYAN1vb
         K7Ew6QVXEFNpPT0kB4477dZ4FP+of8fAPLRM3pkBqKGWe2SNBx1QTN4nx7oesj6QpeE3
         CpvPhFqlJFFshSNI18E0LRYIrLpA7Q4K13mcpbEAw/k2SYApVga8HP+EGipm5InUCqQ1
         pgs3aUr+hcueoS+fn3zkQz3CdxtiQTpe39dgdKALKT2L7b2aiQKERZkSgaGxQ1LL4fHe
         eZ7A==
X-Received: by 10.194.174.164 with SMTP id bt4mr21946638wjc.7.1425042778818;
        Fri, 27 Feb 2015 05:12:58 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id t9sm2756183wia.15.2015.02.27.05.12.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 05:12:58 -0800 (PST)
Date: Fri, 27 Feb 2015 15:11:02 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 24/24] staging: dgap: remove unused variable
Message-ID: <b1d0700deb6a61955e7367606d190f3ac39b46ae.1425035012.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/dgap/dgap.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
index 7184747..914e332 100644
--- a/drivers/staging/dgap/dgap.c
+++ b/drivers/staging/dgap/dgap.c
@@ -3979,7 +3979,6 @@ static int dgap_get_modem_info(struct channel_t *ch, unsigned int __user *value)
 	int result;
 	u8 mstat;
 	ulong lock_flags;
-	int rc;
 
 	spin_lock_irqsave(&ch->ch_lock, lock_flags);
 
@@ -4004,9 +4003,7 @@ static int dgap_get_modem_info(struct channel_t *ch, unsigned int __user *value)
 	if (mstat & D_CD(ch))
 		result |= TIOCM_CD;
 
-	rc = put_user(result, value);
-
-	return rc;
+	return put_user(result, value);
 }
 
 /*
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

