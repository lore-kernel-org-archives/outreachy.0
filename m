X-GM-THRID: 6465879632669310976
X-Received: by 10.129.154.17 with SMTP id r17mr15870225ywg.102.1505454926659;
        Thu, 14 Sep 2017 22:55:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.135 with SMTP id y129ls3041540iod.32.gmail; Thu, 14
 Sep 2017 22:55:26 -0700 (PDT)
X-Received: by 10.202.10.84 with SMTP id 81mr13140535oik.74.1505454926146;
        Thu, 14 Sep 2017 22:55:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505454926; cv=none;
        d=google.com; s=arc-20160816;
        b=N3qUaclq+s+gDILELZmZXhw67nMNdI23Zk+KrcOisroGi6uBc6MXZiJ0/rnfjKWrxF
         5TQPFgpXO/twbadD2lxC5yfvAMMuQrwvrU8kNzDRtvjzVq3Q4rnqHovhHI7ZpQi/RdeA
         /3phUtnyKGa0je2CbLMWSsA9nz0M7Ns47ufntos/DmBvPwjIbNdiSNE+qRuTzwUFOMMG
         0rVSum2lgkiJSj1dael0BcHrCSuRnFblFpozDXPiwL4Bp+zeSuvHke2ggllQ6U+ElCos
         +47Iv46H1gwqODJovHsuf05Hqg6F5wlJYKkB/JsP6uUP0ivhsYs1rzQqV8YldhjioMqD
         cbUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=QxkUlRpXbEj9vAoQi8+mPV1YlzFSX0WzgCX9lM89LKI=;
        b=NoPt6TwBsXFm1QvutW4T8DxCTUUg9Xdhi3LoHNaYzdh9dhA2bs8jnTwifeTujxKGKB
         P8PB6IK8HXS+c53EgR7Tp1CVyLlDEsh+wggs47uPPODu/skoP5ZcIzMpyJRdjoCtXZLz
         E+4H3lIPf93ZlvFuOS3wbDhiUkLd3B1qaFRKRrcAP2QYlKGmDoU/7kUywamXmoHNuvKd
         qT/kLwngnY24GUf6wbx6My87P66n5rmZ5Fh+Olv9JfwMd9+UkTeMVifkV6J2mQ8MuZ2v
         +rsLsrHJ5mQ5FLv0lu7AeJeDTnX96UGnz2dXE9MoQh22Et9WqQspULSo1If5bJYBpzJY
         mgDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X/JJX/S5;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id t77si12211pfi.13.2017.09.14.22.55.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 22:55:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X/JJX/S5;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id h4so783917pfk.0
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 22:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=QxkUlRpXbEj9vAoQi8+mPV1YlzFSX0WzgCX9lM89LKI=;
        b=X/JJX/S5aZvge9awQcF5FzmdvvGlerUxrCu2W4IpdsNNYeY8Jy2rI4/MRGrTiYfX76
         3+9B3eqw8kcGs+m5gznRt2W2Tam5N9mIE+mIC8jQGsh9Bl36dxZyItOVA8/NiNZ8OFi1
         ZhEqVJAY9sQz2NQY905YDRhRSkuO4jwvSudawZwfCtb/ZSnf/vVjNwYPzDwxgTdLTjAf
         y3iyQ9uSqU4aI4vjszmHQTSyq7uQLoLDOCcJx6TWMml1JiTXG/eGOytRWPR38FToTyO8
         Byj4pj8ynhsH2ZVySqsygqUsBFAE2sLlvj+fqUgo9480sF4yjb8mA6Y0PLX953CuO298
         A9LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=QxkUlRpXbEj9vAoQi8+mPV1YlzFSX0WzgCX9lM89LKI=;
        b=B04wetL1m3/F8/04EIN0hYpUKdZtOZBKZ8x6KqZpmO278ztmiNc+JcfWtElNKdMLi+
         vaE6rliEk6J9L4DO2RdV/LVHOO2R/8N4tIMyAmsN/m1slLZLLtcWorPT5Dp20q8N/uex
         48PAGkPLIrQ6FwL6iPSnWSDTTAceekYBzs07pxbDm7juAO7d7dzCnoYjjbjNJqiKTPbA
         j8SNNc4siWwmUSSpYUyH68C9ZDvxjJ9RaTmH9v1PtQ+aIAoZVtTY4gv7IfoKQ6/J6BS9
         PoRrUnnSuRHryeYmN9SJ+sjkecVuK3iRbW1MUwuqPTZrLpvxSGIE4sg3Pk+f/fyX0BMP
         NDZQ==
X-Gm-Message-State: AHPjjUgo9fIXp8/d4jTfoFoBpNTyXuCe75vkzrTlSGI/Zv94RCrGF1hu
	Ih6Ta0u2sg2T4g==
X-Google-Smtp-Source: ADKCNb5vkb832g26EXx1o9qDp4GI9lffitjsaL+l02sjupwhB+4I/idX9761/cPsNyfieUcaeoh69w==
X-Received: by 10.84.211.6 with SMTP id b6mr13501811pli.292.1505454925893;
        Thu, 14 Sep 2017 22:55:25 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id q13sm566260pfi.110.2017.09.14.22.55.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 22:55:25 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 2/8] staging: lustre: ldlm: fix line over 80 characters
Date: Fri, 15 Sep 2017 11:25:02 +0530
Message-Id: <8ccf66c9414e29efac245c5a8fa5ab61b02de79c.1505454643.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_flock.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
index cb826e9..04e1d4c 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
@@ -479,7 +479,8 @@ ldlm_flock_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
 		return 0;
 	}
 
-	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
+	LDLM_DEBUG(lock,
+		   "client-side enqueue returned a blocked lock, sleeping");
 	fwd.fwd_lock = lock;
 	obd = class_exp2obd(lock->l_conn_export);
 
@@ -561,7 +562,8 @@ ldlm_flock_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
 			mode = lock->l_granted_mode;
 
 		if (ldlm_is_flock_deadlock(lock)) {
-			LDLM_DEBUG(lock, "client-side enqueue deadlock received");
+			LDLM_DEBUG(lock,
+				   "client-side enqueue deadlock received");
 			rc = -EDEADLK;
 		}
 		ldlm_flock_destroy(lock, mode, LDLM_FL_WAIT_NOREPROC);
-- 
2.7.4


