X-GM-THRID: 6808597928719941632
X-Received: by 2002:a5d:4648:: with SMTP id j8mr10936331wrs.202.1585250238634;
        Thu, 26 Mar 2020 12:17:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls3167181wrc.7.gmail; Thu, 26 Mar
 2020 12:17:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsPTEJgviVz5qtR6izKlk7sZaTRl+LPZc5CRBUHYzxTNpcM+ImqPC9t4eSQ5JQKb70PP+Qu
X-Received: by 2002:a5d:50d1:: with SMTP id f17mr11512181wrt.150.1585250235947;
        Thu, 26 Mar 2020 12:17:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585250235; cv=none;
        d=google.com; s=arc-20160816;
        b=yrJOXLXCinicqDNFWpq0VeE/y65khrORYaItRyPJ8sST9kAq7s460jbsvS9Sv7576V
         UfPvav748RUGE2vkxDiJIcncVO+QHn6LtZFrZ2q5vfWU8S5LjFwOTVs/C5jplIdH/8ck
         9lhltz6meaF0hUHTUGC12G4fe2OTA1mEcznVX70U6LdmZnXZJIadaxr3C4bMZPRNeUGy
         aXNv8rhVAYguRJwkEMLglLBNTYYuPEZ4nX87KPy23QsslC2FdMKK5rR6Vnl3Jmz6QzDR
         oVUEX+nmoBMiHs4/uCVi8ugZnjk/GeWfKJrACGvXoV8uDeAxKx4sZAlW+qcHyBkmEmoU
         jTyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=m4HKgY17v5bALZX2x3etNI8wxlbfBjx37d+dWaKNka0=;
        b=imMr+ek7X8nqSJdYiMw+dI5Wjrwj6pM2LS3+ACzGOF6KHlTWIYgix3Cjmsn1egL37P
         44Oy01B5aiZaiH5EpeLst11X6A5zMeOOImr/rraIsPN4HZnuxu8/nx/PieoEBxEdICkJ
         U/MOt0KToF7fe+aeOBoDQABOV4lcb1kMuGpfWYzmAOg8kKLexP3WJTolh1BMZkkBZ81q
         TicWFKW2JM21TG2IPCe0wHYNIzQBcvXnaUpnBVr88wLKwv1TXPkJzvQreSqHyopswGfV
         Vpk6m4V8/ckXvoHmURiNhtJX3iou2ik0Kip4sQUC+gg9U1bXLgTZcvgjCqKzannvCG8v
         yUFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IdZKtK7O;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id b81si114406wmc.2.2020.03.26.12.17.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 12:17:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IdZKtK7O;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id k21so7688682ljh.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 12:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=m4HKgY17v5bALZX2x3etNI8wxlbfBjx37d+dWaKNka0=;
        b=IdZKtK7O4ftiSk+ww9WUWHR7Pf37rAW8MhOYABN45HaIVdpFGENbHlzTCHyeJwZi1P
         /u8XQjDaq/+Y+JDXimBb26Ve5RSddByWLmBzKaXQ0Vfe+KpmreLZt+vHyuot26G8sQEv
         yIG0fMpiQ3BdtTdlg308uEBICNuprv/mWX7lzYcNsKw7AofcDIqNoQXJ8VRGk6Pc6P4/
         kSqLc0YBD8tDFF/hQc5M0zBRMkJWPkFA1WB9kUHHrlrG9GL+weRGX2lhEQB8G7jRsY42
         S5mFE44xMegOJ/3FrkPn4fv8h2DMMi+qsQJ9j1+JiVERw4g6ghhhcT3g9N8fJp9nIW0H
         KoOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=m4HKgY17v5bALZX2x3etNI8wxlbfBjx37d+dWaKNka0=;
        b=YfR5xlsHIbPz1HZtATRZHO+W+JDW0vNs/82eH1duTcXpq/cgoTBhkgnte+y+KsD43S
         2K+iSHP3Fp/uQoSrAQvF8G0TA4lf2oLTnhnl35Lb6S40eS6Br+HRvMU1wFd9bhKKBm3u
         KJI6m5AJS6Ne77qUYfm9EgUOKTeOBH+YA1vP4oXs8lTtPqXBYVZU+BjZB7xox8ftJWW9
         GQpKJZbsX+iBRNJPMPolKASsFF0WFo2CnmCUGMin8PP56s1nEiJillZc/XQNLkirO3nw
         AbS7V2TXW6iLJOYa0TPtakMW4gYez8B1+eph3gk0l6WzcuYB6cPAUXhPAA3YtUsGN/gT
         vOhA==
X-Gm-Message-State: AGi0PuYJYOs8TcXbWnVI+HrZ4AW7qC1NkAzz9c74ONkXeg5zabJk6kzB
	t/SCp65Ptz613BLTEwi1/+QAQRBA
X-Received: by 2002:a2e:8595:: with SMTP id b21mr6042154lji.184.1585250235351;
        Thu, 26 Mar 2020 12:17:15 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.199])
        by smtp.gmail.com with ESMTPSA id s14sm2028388ljs.63.2020.03.26.12.17.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Mar 2020 12:17:14 -0700 (PDT)
Date: Thu, 26 Mar 2020 22:17:12 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: qlge: Adjust end of block comment
Message-ID: <20200326191712.GA9938@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Drop an unnecessary * on the last line of
a block comment to follow the Linux kernel coding conventions.
Problem found by checkpatch.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/qlge/qlge_mpi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 60c08d9..31322ec 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -1178,7 +1178,7 @@ void ql_mpi_idc_work(struct work_struct *work)
 		/* Signal the resulting link up AEN
 		 * that the frame routing and mac addr
 		 * needs to be set.
-		 * */
+		 */
 		set_bit(QL_CAM_RT_SET, &qdev->flags);
 		/* Do ACK if required */
 		if (timeout) {
-- 
2.7.4


