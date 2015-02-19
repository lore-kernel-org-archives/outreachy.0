X-GM-THRID: 641520893952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b3222443d3ba6a4d,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.119.141 with SMTP id ku13mr422364lbb.7.1424337031013;
        Thu, 19 Feb 2015 01:10:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.161 with SMTP id dd1ls776757wib.49.canary; Thu, 19 Feb
 2015 01:10:30 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr423347wjb.6.1424337030607;
        Thu, 19 Feb 2015 01:10:30 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id ev8si6357767wib.3.2015.02.19.01.10.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 01:10:30 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id em10so1467213wid.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 01:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=BjegR4SKuat8tbyll3SsvIKh/Natb7H8EwgFUgRs5eE=;
        b=YCycApn51U9vbkUoJ8eDiH4eoW4ElQg9xTPh+DHnV8eYulAUmsbf0og0CMM2LQHDR5
         KBnPDEfGKx3Ew1oXuFMIMkcc/yD5QpjBhqksqmTFJM1ux93480hKIGaYcNgMKo0sXxBv
         AgQXKNy5fHn16OfX/3J8wTZd5Y03+qlIHcvROoh1yGBfsCVjAdmvjfrw1jm+c1a1N72+
         FKKRVIXZxoAmZq4GYAknA0UKOBnCk8gfSLb1SGQY+um2kLzertYJrMhVyvTBww9jj+QB
         TCD9/M+k9hmE+BRYya/wBB0D52n024FJO8s7CuBIKXePMC+mS9BHATbkaXjmdJc4hw1Y
         fP3A==
X-Received: by 10.194.58.209 with SMTP id t17mr7115043wjq.156.1424337030524;
        Thu, 19 Feb 2015 01:10:30 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id ka1sm36465182wjc.2.2015.02.19.01.10.28
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 01:10:29 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: dgnc: Removed necessary braces {}
Date: Thu, 19 Feb 2015 11:09:43 +0200
Message-Id: <1424336983-10853-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

The following patch fixes the checkpatch.pl warning:
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index f81a375..9ae1656 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -887,9 +887,7 @@ void dgnc_check_queue_flow_control(struct channel_t *ch)
 			}
 		}
 		/* No FLOW */
-		else {
 			/* Empty... Can't do anything about the impending overflow... */
-		}
 	}
 
 	/*
@@ -921,9 +919,7 @@ void dgnc_check_queue_flow_control(struct channel_t *ch)
 			ch->ch_bd->bd_ops->send_start_character(ch);
 		}
 		/* No FLOW */
-		else {
 			/* Nothing needed. */
-		}
 	}
 }
 
-- 
1.8.3.2


