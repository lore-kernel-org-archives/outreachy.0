X-GM-THRID: 3635562938368
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b905441b98bf8956
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.9.65 with SMTP id x1mr1164304lba.16.1424943886516;
        Thu, 26 Feb 2015 01:44:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.95.133 with SMTP id dk5ls76566wib.47.gmail; Thu, 26 Feb
 2015 01:44:46 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr1140150wjc.2.1424943886173;
        Thu, 26 Feb 2015 01:44:46 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id by11si1553814wib.1.2015.02.26.01.44.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:44:46 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevk48 with SMTP id k48so8903338wev.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=zuLZJYvGrjxgM0Pcx8v45FJTB9iesYOgA42ab/YLZDo=;
        b=a4VbpSRYy88RJdl1VQIYPvn2HE1OAvzyDer42oosanMSHoX3Cd3LFygqlSTFhw32t/
         5KhXA3siQE2dl8euYon3K39MvyF2N3Vk6/NA4gGH4UiFtdb5ar2ZzcRqEdW7VUE3fIU7
         JxQ9iJrmtaffo6DE5vV6/B9yWf0Q5Q0S/5Hwp1EnLf/5OBtXYRZvK+jztgGjn6Up+TDj
         2Rsfs38O97X8Y+KCVJ2tq1pU38FDz8DTy/eAG1ReB/Fmc1vYnthfszkdxrRefOvv1iyg
         aKMI/jooC/UOX5zkMiZ1gIwfYEYKFsUXtdHMqIfjpkXV8UMyUB9wpBsS8o5aDmdRPkbL
         4YGQ==
X-Received: by 10.194.48.12 with SMTP id h12mr15408996wjn.74.1424943886081;
        Thu, 26 Feb 2015 01:44:46 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id bf8sm522501wjb.37.2015.02.26.01.44.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:44:45 -0800 (PST)
Date: Thu, 26 Feb 2015 11:44:40 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 20/24] staging: lustre: lmv: rewrite the right hand side of
 an assignment
Message-ID: <c7589124379f734fc2d23acb47f5791d48f8c8cf.1424942340.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch rewrites the right hand side of an assignment for
expressions of the form:
a = (a <op> b);
to be:
a <op>= b;
where <op> = << | >>.

This issue was detected and resolved using the following
coccinelle script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/lustre/lustre/lmv/lmv_obd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
index b779f47..6e446ac 100644
--- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
+++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
@@ -487,7 +487,7 @@ static int lmv_add_target(struct obd_device *obd, struct obd_uuid *uuidp,
 		__u32 oldsize = 0;
 
 		while (newsize < index + 1)
-			newsize = newsize << 1;
+			newsize <<= 1;
 		OBD_ALLOC(newtgts, sizeof(*newtgts) * newsize);
 		if (newtgts == NULL) {
 			lmv_init_unlock(lmv);
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

