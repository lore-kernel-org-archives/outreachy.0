X-GM-THRID: 6473410411176656896
X-Received: by 10.159.44.153 with SMTP id w25mr5038236uaj.86.1508352620048;
        Wed, 18 Oct 2017 11:50:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.72.41 with SMTP id b38ls1423494uad.2.gmail; Wed, 18 Oct
 2017 11:50:19 -0700 (PDT)
X-Received: by 10.31.16.83 with SMTP id g80mr8757322vki.91.1508352619642;
        Wed, 18 Oct 2017 11:50:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508352619; cv=none;
        d=google.com; s=arc-20160816;
        b=g+tjurXZieQ0I7fN54X1Rn6D8Pne6FAEyAhJ+whBv/YcMPcgvFLw28IXsZFC+Cjjhb
         zrzKhIeiM1Q6eMuf74qeUQ/k05yH7Vwze7GHTKLatC+CKowNz21tY06IvxP2JcLYzdY9
         eNM88egSdtoS5sawPxF5m1gEpaK8AhUTMdtQkSeD12nOxTuAU/aMJ+0Fl2Sm4C7Z7qiK
         Mg/Mxn2xJ4XeO/Ejarib1s7CH3OABp1B+APoRgF9Ut9G12PMFtO3gPJtrF3gLCl8BcYW
         jSiPvAadW8sZj4+DtWFkHkt66HNmBU1lIMz/V5p4WjDLbAs1/lgb9Q15bAw72cpz+3N+
         m7tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=dt+mYIjBqPxp03m6tJqs/O2aepzQAvG0B5IzjVyVVt8=;
        b=xqYJJiQXXEJFeLtQMB1F9Bu2PWnTE7SS1L9WPmfYijnKHS/7IOIObxK+E/HNGdjLgo
         xoxto6ZpCZQ/sg/oG6usatpEaa1qFNTEe2CoDYUkp8iP+LpGRrP00yzvzx6YhbyvQ3Ao
         0Pj3qt9HC7WwL/esZ+B/cB7XckpxYgmA++6OTeGwCPSYT7jNSVFFHX+7eYT0KzkqDmno
         HaipsakEYYj+GIM9ZnU6oYl5RnWR+NFbLCFF50lIsNrK1G6rdCf48FTwSaJ+twhtiHNl
         6tgjQgk+4sBTIg4lzxqSjQfFziHnloYEmgdbqi0h5Zlg1HcRz/LQLR4M7qno+VbYnPua
         Ipgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WIIpR83G;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 72si39762vko.3.2017.10.18.11.50.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 11:50:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WIIpR83G;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v78so4993483pgb.5
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 11:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=dt+mYIjBqPxp03m6tJqs/O2aepzQAvG0B5IzjVyVVt8=;
        b=WIIpR83GFgLCLa/uSxM265Vnn5kdsnHR9yzAATloK+PHxhQ0gUqNxsoxaLjH/I7yxU
         w04xToYeVVnQzI8WaoNjmyHxhqhrvHv3pfkwm74HNp4ExtyI3cRhR/lJ1JsJ+OI485nJ
         a9u++RClxpHhdPCMcAPKXaz37mQmxTBDKU7KA79xrE6WkWMlUenSSHwii+in8pXRJb09
         zxl9emzNSMk+Dnx5EK8b95jvy/6LgBA6EhEMxzWBYzO1eQTv0yWkuAI9HqdnFv4yqikA
         xI3zEkXjgNZpq3rqRJj5qBUu61HRQzG0wh6UUoHejfh3Q5Eny74GG3ZK1YfCP1buSRKX
         EHAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=dt+mYIjBqPxp03m6tJqs/O2aepzQAvG0B5IzjVyVVt8=;
        b=GEOByLDZDhOkA+1T0J0d5wAXqJzOSFUOSAJ/EmS8qV+psNsC3Kl9LHEi8gIV5GBor9
         ome95WBJtsRyBvnLW06CVahs928JCNAfs7N/fQ1Cq/KzazJQsqathgJnpvNNG6pM6voj
         QSZfIZCjFVHbRgK4uJT7AWLqg77fLeAObE/at7dzVhiEg4qr40vq+ZCx4MYgIGr/+/Ok
         xOr1Sx+Nn+eOlAPACfLjhjZabJ3J1eban2uHxV+ErF7O5CGLUp6nLrQbO5MnLmL/nT/f
         oX8igQbNE4on5PErMsEYsPmbuAqx3lpwLeIaFZ1A/8KkGJO3lT/iVDG2OITfbFx/+lYG
         bebg==
X-Gm-Message-State: AMCzsaVn8500UCbW9pScqhk0tzDjBKSHbjSfckW3IKLZV0WOA0A504bh
	d+2Dgi7WBI1ub8zFmlAg8CA=
X-Google-Smtp-Source: AOwi7QD7g7wKGEaRBdxrCDPbJeZr1o8AV4yVoENqRuiBJ5CQkLmYyhGG87Zd61XNjkyd4DXKv0v4jg==
X-Received: by 10.99.129.199 with SMTP id t190mr14553123pgd.227.1508352618728;
        Wed, 18 Oct 2017 11:50:18 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id m9sm22950983pff.26.2017.10.18.11.50.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 11:50:18 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v4 6/7] staging: lustre: llite: fix coding style for error messages
Date: Thu, 19 Oct 2017 00:19:45 +0530
Message-Id: <1508352586-25475-7-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>

The "DFID" part should be added to the same line as the rest of
the message, to match current coding style.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/llite/dir.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
index 58d832d..ec9b1ba 100644
--- a/drivers/staging/lustre/lustre/llite/dir.c
+++ b/drivers/staging/lustre/lustre/llite/dir.c
@@ -734,10 +734,10 @@ static int ll_ioc_copy_start(struct super_block *sb, struct hsm_copy *copy)
 		rc = ll_data_version(inode, &data_version, LL_DV_RD_FLUSH);
 		iput(inode);
 		if (rc != 0) {
-			CDEBUG(D_HSM, "Could not read file data version of "
-				      DFID " (rc = %d). Archive request (%#llx) could not be done.\n",
-				      PFID(&copy->hc_hai.hai_fid), rc,
-				      copy->hc_hai.hai_cookie);
+			CDEBUG(D_HSM,
+			       "Could not read file data version of " DFID " (rc = %d). Archive request (%#llx) could not be done.\n",
+			       PFID(&copy->hc_hai.hai_fid), rc,
+			       copy->hc_hai.hai_cookie);
 			hpk.hpk_flags |= HP_FLAG_RETRY;
 			/* hpk_errval must be >= 0 */
 			hpk.hpk_errval = -rc;
@@ -835,8 +835,7 @@ static int ll_ioc_copy_end(struct super_block *sb, struct hsm_copy *copy)
 		 */
 		if ((copy->hc_hai.hai_action == HSMA_ARCHIVE) &&
 		    (copy->hc_data_version != data_version)) {
-			CDEBUG(D_HSM, "File data version mismatched. File content was changed during archiving. "
-			       DFID ", start:%#llx current:%#llx\n",
+			CDEBUG(D_HSM, "File data version mismatched. File content was changed during archiving. " DFID ", start:%#llx current:%#llx\n",
 			       PFID(&copy->hc_hai.hai_fid),
 			       copy->hc_data_version, data_version);
 			/* File was changed, send error to cdt. Do not ask for
-- 
2.7.4


