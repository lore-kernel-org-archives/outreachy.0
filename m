X-GM-THRID: 7460820615168
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,95d5e58ffe370867
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.87.166 with SMTP id az6mr7995720wib.1.1426006532074;
        Tue, 10 Mar 2015 09:55:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.33 with SMTP id s1ls83636lae.40.gmail; Tue, 10 Mar 2015
 09:55:31 -0700 (PDT)
X-Received: by 10.152.21.9 with SMTP id r9mr4878281lae.0.1426006531624;
        Tue, 10 Mar 2015 09:55:31 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id ew13si118501wid.0.2015.03.10.09.55.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 09:55:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id ex7so31164479wid.3
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 09:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=MZPx1IUD35nOg6xWmjn0URwjQHBwu6hbOGXZ6pDSFwc=;
        b=NJtBr1gJ2ksjRJW5pupOU149SgXopYSAyp9iwobnS90ERIlT1vnVGGoaMsNWXv4CCO
         CQrumyaZc1SZJZfWFwgnOFkju1bazExrUotI5yxh5iVMIDvn8srC4ToywNT1uh34TUCB
         Sy9A0UVWVw+CVFS4XS35aOttSt2ReBvZDuLFxjXZ+Jf+s+lq16SfjdPof76XgQ8tHi94
         x+mIS4UbyBZMsbRk6COJkE4sYMm74DP165G9vqE8nlRSgpbiuRttVgE6D6grgKAOOnof
         nUHUpqqPOmVbo+kLT32BVvjfu4/M3sipZ129560l2rbPPGW7R0MywfJt2rTMPi8/XKLt
         m5QA==
X-Received: by 10.194.110.38 with SMTP id hx6mr68780682wjb.128.1426006531507;
        Tue, 10 Mar 2015 09:55:31 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id ev7sm1628549wjb.47.2015.03.10.09.55.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 09:55:30 -0700 (PDT)
Date: Tue, 10 Mar 2015 18:55:27 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 03/20] staging: media: lirc: remove unnecessary cast on
 function argument
Message-ID: <22bc16e169dd94cbda630b5234c4b71f3651e8b9.1426004643.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes pointer to pointer cast on a function argument. Issue
detected and resolved using the following coccinelle script:

@@
expression e;
type t;
identifier f;
@@

f(...,
-(t *)
e
,...)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/media/lirc/lirc_parallel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_parallel.c b/drivers/staging/media/lirc/lirc_parallel.c
index 19c5c21..df55644 100644
--- a/drivers/staging/media/lirc/lirc_parallel.c
+++ b/drivers/staging/media/lirc/lirc_parallel.c
@@ -336,7 +336,7 @@ static ssize_t lirc_read(struct file *filep, char __user *buf, size_t n,
 	set_current_state(TASK_INTERRUPTIBLE);
 	while (count < n) {
 		if (rptr != wptr) {
-			if (copy_to_user(buf+count, (char *) &rbuf[rptr],
+			if (copy_to_user(buf+count, &rbuf[rptr],
 					 sizeof(int))) {
 				result = -EFAULT;
 				break;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

