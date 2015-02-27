X-GM-THRID: 4475579269120
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9816ab370498a2c8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.13.195 with SMTP id j3mr463338wic.2.1425042461764;
        Fri, 27 Feb 2015 05:07:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.137 with SMTP id s9ls148148las.15.gmail; Fri, 27 Feb
 2015 05:07:40 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr2027401lbo.8.1425042460121;
        Fri, 27 Feb 2015 05:07:40 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id ew5si118312wid.1.2015.02.27.05.07.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 05:07:40 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so20304019wes.7
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 05:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=mlISxn4NXcPEbhuc1DxmzQACRZrC9u4T+SJDt0qT9vU=;
        b=owM0rr3pR0/PCny5owlWHl5sajCfYj80IevbAywCbUoyzhc/ZPxwfzqpHOVvYD7aJz
         CpzCM7ILmhtntSBG6t6ay+WqWuFc9uXBEWIxMojPn5CU8+raW0EK+zEEGhjVn+5iPX3I
         gR3do5N3cMFFMB+LFe++PQ60KoQDxTUyzRwbYG0jiT0jtMu1KRy7NR1gWkknSaQYegks
         QMHG+doKIxk9GcuhVnGcy0ZnqsIYpjUQjzOjHGEPCEMuqtrMFidvAKN5+FU2h+Cu78NK
         3HBXcAhPL1lwqdNDo4yGakPSTdaoeE45MidPavPpHG1AG7NY/Lj0gWqMA+kBgd0q9WB8
         Cr6g==
X-Received: by 10.194.61.51 with SMTP id m19mr27762089wjr.39.1425042460031;
        Fri, 27 Feb 2015 05:07:40 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id j9sm5908984wjy.18.2015.02.27.05.07.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 05:07:39 -0800 (PST)
Date: Fri, 27 Feb 2015 15:07:34 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 18/24] staging: lustre: llite: remove unused variable
Message-ID: <0ae8fe1e6a7e12be20f2d16ad8d0a966564d8654.1425035012.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/lustre/lustre/llite/file.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index 0fd113d..3ae4d85 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -888,7 +888,6 @@ static int ll_lease_close(struct obd_client_handle *och, struct inode *inode,
 {
 	struct ldlm_lock *lock;
 	bool cancelled = true;
-	int rc;
 
 	lock = ldlm_handle2lock(&och->och_lease_handle);
 	if (lock != NULL) {
@@ -906,9 +905,8 @@ static int ll_lease_close(struct obd_client_handle *och, struct inode *inode,
 	if (lease_broken != NULL)
 		*lease_broken = cancelled;
 
-	rc = ll_close_inode_openhandle(ll_i2sbi(inode)->ll_md_exp, inode, och,
+	return ll_close_inode_openhandle(ll_i2sbi(inode)->ll_md_exp, inode, och,
 				       NULL);
-	return rc;
 }
 
 /* Fills the obdo with the attributes for the lsm */
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

