X-GM-THRID: 6391116518625640448
X-Received: by 10.107.38.193 with SMTP id m184mr5924298iom.28.1488190781724;
        Mon, 27 Feb 2017 02:19:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.22.129 with SMTP id c1ls13354916ote.14.gmail; Mon, 27 Feb
 2017 02:19:41 -0800 (PST)
X-Received: by 10.129.162.22 with SMTP id z22mr6208378ywg.119.1488190781280;
        Mon, 27 Feb 2017 02:19:41 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id h130si3001920pfe.1.2017.02.27.02.19.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 02:19:41 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id p185so295546pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 02:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=630JVxAtjD4rnEeflbrfgvkuQiMXb2fX7KNXvikTXkI=;
        b=enIpBIgJFYV3GLyS/xGzf74noWIoZsEbTyp9NFfqrFYKnN6L8WlFZ7dmvmH6jbA7Bv
         qpd355Q2DqesLsimgl7Lqw8Ci6TenpIrkf02grbukch2xK0aWcz2BwsTNLK95ud9RCmU
         Km2+BcoGM1qAlO9me9rs9UZI5Ma9O+vF+K+39YMzBncQ6VFDLP72Fzs5/HMZvIZmrSmA
         Xg9DWl+p1TmFy0bAmVD7R/4cv5XAbHbiUwVkpRfCRIrwCakmIE+KDlSIC6+j1oFuTPkq
         qAxl24z5EVhKWDa04A0rd1OLrxaOFvZhsxwbp1h3ecY8DmQKN/rQrDkxFN8t3rpZ97wF
         BBSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=630JVxAtjD4rnEeflbrfgvkuQiMXb2fX7KNXvikTXkI=;
        b=Vc5qh1gDCA8sbEO7H1a6AAs9/L2dtSsGAVjqHq6MaINhb6xT2uMORC3nhrbjMZF4hi
         KEHpPAoZexThWI7FlYY6jwEDtlUNdqeQjNzFSi+J5b3aahKSKj27tjyKyVhHLCkn3VDr
         /MXRE/REj/NyRpWqvFZyiaM+N8y055yWqFdCbEizsF9+Exoo+La8Iy6wfgSd2LRq+lUm
         pQej/kpDAnrI+q24n2TCJpmr3f7fqpim1S6XBS/wtf8cvMVyR7TxZwh/1zmvoJuQ/g99
         ehAOgApqjuwxEmUieTg3qh5GWP8KV5ZHWIoZvU10o9ZBhhuDVXQwBlsEppBaqfwIxMLE
         p6ng==
X-Gm-Message-State: AMke39kNW/safL6yz3nxY7tMOK6jZ9wTtBc+zPUeJP4Z+xihzvi9pQUApf90jI5ceAdZKw==
X-Received: by 10.84.212.136 with SMTP id e8mr23249632pli.140.1488190780926;
        Mon, 27 Feb 2017 02:19:40 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.171])
        by smtp.gmail.com with ESMTPSA id x10sm29594921pfi.117.2017.02.27.02.19.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 02:19:40 -0800 (PST)
Message-ID: <58b3fd3c.0a0f620a.21b74.ed30@mx.google.com>
X-Google-Original-Message-ID: <20170227101931.GA2872@<rvarsha016@gmail.com>>
Date: Mon, 27 Feb 2017 15:49:31 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v5 7/7] staging: sm750fb: Remove blank lines after { and
 before } braces.
References: <cover.1488189320.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488189320.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Removed unnecessary blank lines after open brace and before closed
braces, to fix the check patch issue. Also removed braces which were not
required.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- Modified commit message.
- Removed changes in drivers/staging/sm750fb/sm750_accel.c

Changes in v3:
- Removed braces which are not required in sm750_accel.c 

Changes in v4:
- Added proper version number to patch.

Changes in v5:
- Edited commit message.

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


