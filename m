X-GM-THRID: 6391116518625640448
X-Received: by 10.159.32.79 with SMTP id 73mr2337089uam.32.1488047772705;
        Sat, 25 Feb 2017 10:36:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.43.135 with SMTP id h129ls1300967ita.4.canary-gmail; Sat,
 25 Feb 2017 10:36:12 -0800 (PST)
X-Received: by 10.36.9.9 with SMTP id 9mr2315473itm.1.1488047772137;
        Sat, 25 Feb 2017 10:36:12 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id c123si2001661pfa.4.2017.02.25.10.36.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 10:36:12 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 5so7381491pgj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 10:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tf2CachPnU/MxtyycIxaUdxNZMYQKeiXWeL6968hSaM=;
        b=hrjwQsyYqn85KKPiMo1Im2Xs0O3vpc3jwTwVM+7A5fmJLIvoe4goUm7YhVfPfpdGa0
         b7ZrzYmQVnLFiQetvvT246b7Ek3/YIF0vehDYeqZvl6eJGaG7hedkQStBS8sqwp84hgC
         i71hQOb0NoNrrt0vHzaPl2kdDQuh6Y2i05HMv03DdeLFtnjl4kJxgdqK8lSWYgJg0w6G
         hb1etqsW2XzP/1Z60G6e3zqpOq2H02czO/nTx7O0XJcfhJW5gx1f6tDnNx+06uttZQ8s
         7rl3Rf2FDVtZemmOAN22Y6CXJvRh2Du6Bv6l2dbMdUKvy2I7NUJacJRfhSFLVmOkYTJG
         XR6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tf2CachPnU/MxtyycIxaUdxNZMYQKeiXWeL6968hSaM=;
        b=f+BE/jK23YKDp1oEUa9zEw7O2kvyUqJzV+iQdLelUm8M4HRMs1YUAcTdcg5UFOYmRu
         e07/CiWoJKatlrMxSET4DlrigcZy56GKowGRpTNslS1l8+91pmYPirOg478fj8evhBK/
         V9r3mrQwMdY1C4dGKI+UlVMRi0zLcbdXTuuqgKxykQlUpoGyZ2pFvv2BlyBg7iwovw4Z
         snI3qexQebFgXCFvrQ75F01Tu5DSBuMv5Ci+yrutALGfNeV5CE6Z1c/NonhI9w/IOs6m
         f0uwGAv13oT0CE9LZtUAIv/5zXxhb5kfIHpGoZ5UPR3BNb5+Hax3ZQ41+OFEyyRu7qy5
         mQHA==
X-Gm-Message-State: AMke39nFnrdxj53R/FIqwmUF81rOdWe2HAdSORtV0t3hiZun+Y1bH/7f+v9w2TZpkaJZRQ==
X-Received: by 10.84.149.102 with SMTP id b35mr12896612plh.3.1488047771914;
        Sat, 25 Feb 2017 10:36:11 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.154.88])
        by smtp.gmail.com with ESMTPSA id l25sm21714263pfg.134.2017.02.25.10.36.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 10:36:11 -0800 (PST)
Message-ID: <58b1ce9b.19c2620a.af7bc.d941@mx.google.com>
X-Google-Original-Message-ID: <20170225183608.GA7131@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 00:06:08 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 7/7] staging: sm750fb: Remove blank lines after { and before
 } braces.
References: <cover.1488045682.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488045682.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Removed unnecessary blank lines after open braces and before closed
braces, to fix the check patch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/sm750fb/sm750.c        | 1 -
 drivers/staging/sm750fb/sm750_accel.c  | 2 --
 drivers/staging/sm750fb/sm750_cursor.c | 4 ----
 3 files changed, 7 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 332a3ef..c618c56 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -806,7 +806,6 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 	}
 
 	for (i = 0; i < 3; i++) {
-
 		ret = fb_find_mode(var, info, g_fbmode[index],
 				   pdb[i], cdb[i], NULL, 8);
 
diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index 57ae743..a842831 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -260,7 +260,6 @@ unsigned int rop2)   /* ROP value */
 		return -1;
 
 	{
-
 	write_dpr(accel, DE_SOURCE,
 		  ((sx << DE_SOURCE_X_K1_SHIFT) & DE_SOURCE_X_K1_MASK) |
 		  (sy & DE_SOURCE_Y_K2_MASK)); /* dpr0 */
@@ -275,7 +274,6 @@ unsigned int rop2)   /* ROP value */
 		((nDirection == RIGHT_TO_LEFT) ? DE_CONTROL_DIRECTION : 0) |
 		DE_CONTROL_COMMAND_BITBLT | DE_CONTROL_STATUS;
 	write_dpr(accel, DE_CONTROL, de_ctrl); /* dpr0c */
-
 	}
 
 	return 0;
diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index dbc8bb1..aa232c3 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -131,10 +131,7 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor,
 		} else {
 			pbuffer += sizeof(u16);
 		}
-
 	}
-
-
 }
 
 
@@ -178,6 +175,5 @@ void sm750_hw_cursor_setData2(struct lynx_cursor *cursor,
 		} else {
 			pbuffer += sizeof(u16);
 		}
-
 	}
 }
-- 
2.9.3


