X-GM-THRID: 6391116518625640448
X-Received: by 10.157.60.52 with SMTP id q49mr2469890otc.108.1488124898738;
        Sun, 26 Feb 2017 08:01:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.80.146 with SMTP id b18ls10064620oth.10.gmail; Sun, 26 Feb
 2017 08:01:38 -0800 (PST)
X-Received: by 10.13.250.197 with SMTP id k188mr4313870ywf.167.1488124898412;
        Sun, 26 Feb 2017 08:01:38 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u12si2818376pfd.3.2017.02.26.08.01.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 08:01:38 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id p185so2963594pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 08:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=D7gorr65GqEWLqIpQP4zfsd0zc2MAw5T7uZrKnY7+uo=;
        b=eIUDGb+Et7XWlYxQJVAdSAAhmG7NqbB19czwkckU0qFyO/XIYbK37f4SPbYJfUPV/x
         ZCuVhiJFNiXIoCkhZMKlSN8iT8hOSFydjOLQmFv7mvgG2u05szIWKaGupyq44qFIY1kr
         3GRw+bvraKsb8/QYQU7mAzw2Ae+1fERJTSLC6JCtpVsqXi0HoBzY8LMSZ3KDbPbvGWfS
         u6DioXORLBBhCod4L7NS1h45bSS7tMakNf0cWVuVSro7Y0zdk0a9dmwJnJCKErI1j/e3
         3m30JdxfPtujRs3lupOLGfLC4i66iH5+lXeFcdzMEJYXC7/YNejxByBmfk1IFt7c+nEp
         Fn+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=D7gorr65GqEWLqIpQP4zfsd0zc2MAw5T7uZrKnY7+uo=;
        b=RDnnK0WYQXBz5unS5Djw4/QEr4LbQBPh3fhQPYADEgnIOtq42mPxq6Mqgewv8yEUM4
         ND8RSS4mqUxxPUzjUqawGZklKBLF0eAvng9BqaoBv6+2lCcwtD0HclpUxGuIL6r2E0rK
         v03Yv926fe+ykgS/5DeKv1+6Tyfu9TsBMaTmIW+JooIcGYYxXAfls3XUAC3UvO4BQAFQ
         VLK8pr2QwICB0vyONQi6hny7cgAySgS7MObHBqyOLcTuuq9NqW11Oj4fLq0bJWqspAF+
         YsJjF23lNl6cO5AuxOtVPs4t/QCRBghFyXsfjX3JHnr4MQOK/Zj6JurTTUYAzMQtCINi
         KSCg==
X-Gm-Message-State: AMke39mxkrcfdIKhlHS5y3iAWhzWQojuEHN15tY16Csp/sDsggbhq1rChR+dSNiZVGLmTw==
X-Received: by 10.84.172.1 with SMTP id m1mr18104614plb.5.1488124898089;
        Sun, 26 Feb 2017 08:01:38 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id s64sm25493715pfe.27.2017.02.26.08.01.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 08:01:37 -0800 (PST)
Message-ID: <58b2fbe1.43a3620a.b7aff.5a80@mx.google.com>
X-Google-Original-Message-ID: <20170226160134.GA29085@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 21:31:34 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 7/7] staging: sm750fb: Remove blank lines after { and
 before } braces.
References: <cover.1488122987.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488122987.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Removed unnecessary blank lines after open brace and before closed
braces, to fix the check patch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v4
-Added proper version number to patch.

 drivers/staging/sm750fb/sm750.c        | 1 -
 drivers/staging/sm750fb/sm750_accel.c  | 4 ----
 drivers/staging/sm750fb/sm750_cursor.c | 4 ----
 3 files changed, 9 deletions(-)

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
index 57ae743..9548863 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -259,8 +259,6 @@ unsigned int rop2)   /* ROP value */
 	if (accel->de_wait() != 0)
 		return -1;
 
-	{
-
 	write_dpr(accel, DE_SOURCE,
 		  ((sx << DE_SOURCE_X_K1_SHIFT) & DE_SOURCE_X_K1_MASK) |
 		  (sy & DE_SOURCE_Y_K2_MASK)); /* dpr0 */
@@ -276,8 +274,6 @@ unsigned int rop2)   /* ROP value */
 		DE_CONTROL_COMMAND_BITBLT | DE_CONTROL_STATUS;
 	write_dpr(accel, DE_CONTROL, de_ctrl); /* dpr0c */
 
-	}
-
 	return 0;
 }
 
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


