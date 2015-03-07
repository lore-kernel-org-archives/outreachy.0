X-GM-THRID: 6950918029312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4f1aeb5db514fe54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.208.12 with SMTP id ma12mr810374wic.6.1425762237984;
        Sat, 07 Mar 2015 13:03:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.120.199 with SMTP id le7ls211002lab.89.gmail; Sat, 07 Mar
 2015 13:03:57 -0800 (PST)
X-Received: by 10.112.224.12 with SMTP id qy12mr3037779lbc.10.1425762237501;
        Sat, 07 Mar 2015 13:03:57 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id l8si483227wia.0.2015.03.07.13.03.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 13:03:57 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx13 with SMTP id x13so19707121wgg.12
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2015 13:03:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=YRzMAid4yCEK9IIlTio1fW6hFA3SuOUuKlkmksGpLD8=;
        b=F7gUs1y1whK/bsIB3WuGbG+KpGU8l16AIHK7JXcVRChGFbS3v4Unqj32u7Ks4pyhv0
         Wee+HUYpkf8k5LwE8r3eUM8txWckutVg8nm+CvUPREbBiGirNDwlOLm1NTj7+8vZbi7+
         6zPop2Q9/eiNN9aaZjAPuY4E2DDc/7nk+mv4eQaMa/jMVMOtukkzTwCHXWeY/fKsimfw
         6Ys4GGxG13BhP+wuRBr008+SWefCvJcgyOIUmaKRxLgTwCDwswOuHzax57MCPMYAnjM/
         MmCuMxAA+swnj4/Q4AucnGaKtm2X2alJhDDn0LUdcXh5jHsz2nLgBlQziGFvxmAWj6db
         cXsQ==
X-Received: by 10.180.77.196 with SMTP id u4mr90744233wiw.6.1425762237388;
        Sat, 07 Mar 2015 13:03:57 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.240])
        by mx.google.com with ESMTPSA id a13sm20851147wjx.30.2015.03.07.13.03.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 13:03:55 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 544C962A1F; Sun,  8 Mar 2015 00:03:52 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 2/2] Staging: speakup: Remove unused variable
Date: Sun,  8 Mar 2015 00:03:51 +0300
Message-Id: <1425762231-1981-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes variable that was used to store only the return value of a function call.

The issue was detected and resolved using the following coccinelle script:

@@
expression ret;
identifier f;
@@

 -ret =
 +return
    f(...);
 -return ret;

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 3708bc1..0211df6 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -840,12 +840,10 @@ static ssize_t message_show(struct kobject *kobj,
 static ssize_t message_store(struct kobject *kobj, struct kobj_attribute *attr,
 	const char *buf, size_t count)
 {
-	ssize_t retval = 0;
 	struct msg_group_t *group = spk_find_msg_group(attr->attr.name);
 
 	BUG_ON(!group);
-	retval = message_store_helper(buf, count, group);
-	return retval;
+	return message_store_helper(buf, count, group);
 }
 
 /*
-- 
1.9.1


