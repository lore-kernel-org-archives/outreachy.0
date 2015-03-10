X-GM-THRID: 7382846406656
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ae38b1b49eac9065
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.5.104 with SMTP id r8mr32411324obr.19.1425989251099;
        Tue, 10 Mar 2015 05:07:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.221 with SMTP id 90ls67497iot.55.gmail; Tue, 10 Mar
 2015 05:07:30 -0700 (PDT)
X-Received: by 10.42.254.202 with SMTP id nf10mr25271807icb.23.1425989250940;
        Tue, 10 Mar 2015 05:07:30 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id ri9si70584pdb.1.2015.03.10.05.07.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 05:07:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x234.google.com with SMTP id fp1so1262475pdb.7
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 05:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=RoakDa/tQteb4cmfDnCuG4n11m0vah4XjuBBIp0F68s=;
        b=m928RQpNRnAQNVesGxF9AyuhzFgBTPHTeOMLXk0PzZkV21MdfyErc91nVejMqnfobb
         Ls4C7BEQNoJP8uFQdIFxsymhXD44NszxAR1CF+tgPEQA8NV+Fhb7JVtCaGSQC/tMypC0
         +xiL353zuadhF38clzsysV5Pib4fYqVE4/F5xxcNoH1rFI6hKjh83HM54yOAyPpeORR6
         CmgqXA5L4BqKx4/LS4Q6uB8WvmBWVYRO0LgAf+VIEvB4C+2wnZjUpCon4FkjNcdYvzXU
         9cA7Y7S+6/ZyhxXEPpLk7OOX6R+RRzuAbXu2kkkdQFofmNhlQWU6ubFZszhpt/MdPi7e
         dNEw==
X-Received: by 10.66.66.105 with SMTP id e9mr65523321pat.17.1425989250796;
        Tue, 10 Mar 2015 05:07:30 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id c9sm827722pdo.13.2015.03.10.05.07.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 05:07:30 -0700 (PDT)
Date: Tue, 10 Mar 2015 17:38:52 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 8/8] staging: unisys: Use kcalloc instead of kzalloc.
Message-ID: <66200c85794c17b2a3113075f5d699b4803f4fbd.1425987911.git.navyasri.tech@gmail.com>
References: <cover.1425987909.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425987909.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses kcalloc instead of kzalloc function.
A coccinelle script was used to make this change.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     - Make commit message shorter by removing the
       coccinelle script.

 drivers/staging/unisys/visorutil/procobjecttree.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/unisys/visorutil/procobjecttree.c b/drivers/staging/unisys/visorutil/procobjecttree.c
index 0672e8c..dfd9e50 100644
--- a/drivers/staging/unisys/visorutil/procobjecttree.c
+++ b/drivers/staging/unisys/visorutil/procobjecttree.c
@@ -159,7 +159,7 @@ MYPROCTYPE *visor_proc_CreateType(struct proc_dir_entry *procDirRoot,
 			type->nProperties++;
 	while (type->name[type->nNames] != NULL)
 		type->nNames++;
-	type->procDirs = kzalloc((type->nNames + 1) *
+	type->procDirs = kcalloc((type->nNames + 1),
 				 sizeof(struct proc_dir_entry *),
 				 GFP_KERNEL | __GFP_NORETRY);
 	if (type->procDirs == NULL)
@@ -247,12 +247,12 @@ MYPROCOBJECT *visor_proc_CreateObject(MYPROCTYPE *type,
 			goto Away;
 	}
 	obj->procDirPropertyContexts =
-		kzalloc((type->nProperties + 1) *
+		kcalloc((type->nProperties + 1),
 			sizeof(struct proc_dir_entry_context),
 			GFP_KERNEL | __GFP_NORETRY);
 	if (obj->procDirPropertyContexts == NULL)
 		goto Away;
-	obj->procDirProperties = kzalloc((type->nProperties + 1) *
+	obj->procDirProperties = kcalloc((type->nProperties + 1),
 					 sizeof(struct proc_dir_entry *),
 					 GFP_KERNEL | __GFP_NORETRY);
 	if (obj->procDirProperties == NULL)
-- 
1.9.1


