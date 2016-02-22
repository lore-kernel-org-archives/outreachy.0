X-GM-THRID: 6254033434194214912
X-Received: by 10.107.128.102 with SMTP id b99mr27274322iod.1.1456130660560;
        Mon, 22 Feb 2016 00:44:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.199 with SMTP id d190ls822738iod.24.gmail; Mon, 22 Feb
 2016 00:44:20 -0800 (PST)
X-Received: by 10.66.119.197 with SMTP id kw5mr25634257pab.15.1456130660301;
        Mon, 22 Feb 2016 00:44:20 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id ff2si3272500pad.2.2016.02.22.00.44.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 00:44:20 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id yy13so87675729pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 00:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=6RTjIdPB1If0B3AHqAwj3VnSDTW94USQytNBhKwHNjI=;
        b=q2LjwzxK72Jqr675Q9kZEGhOH63uofzi9W/1ySO22oAONl6qgOx4Ny4FAElehwuxRv
         70QztLO8yq9Faa906PAIhx0IwxZ22TZSekTPSi4qixdFl0TS7NnZrbfaTk7aqhPzsUZ7
         zL0COUF7dGePjao+qF2lZe1Ki54g/OFpvY5nzvfMeq3Hxy5PnWD1zgblXNK1NpkW1G4w
         FPHp7mm4EC0qr4VtzerVGFId4wFda2RAm3/ga/1p3mIHyYYMxKmFZvOfg/WqpFZ7IK7e
         3Q1cFAhnJS/l3sbCKkxWdoBIYjbn3y4XGLx2fRB9DZmfzma2umVG9mJKFJssOxCV64ZF
         9uVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=6RTjIdPB1If0B3AHqAwj3VnSDTW94USQytNBhKwHNjI=;
        b=RV7Eq11X30K73Z+lIDC5WHWEnd1pRPAVLXjJnkLuxaRhcRWKTOPfOSird/4rIMVkwn
         a6wcXPk7anVV39IPx2Sa2eGLIUH0ORHLxLBhqruxxXVIKYShlFXUQFI6HCbQMfvz2T+P
         cTU9q9PVZsjBC8oie/S3yLgZcfPrXr6aksyrrXAFJh/o4WGscxfr6gngfg3tr4SzH1WW
         5ddMOzIRHBDKMblhCHcTiszpICZbpxYg9jNYAdUoHEpS9yluzGK4gh5gYm6Eo5pMmSVC
         JvU0/HdMkEmLXeh9LPS3a0WJ0IFZHkHnP+fMkPEawIz6ChgxzkBziR1mhz/tw1bZ6Bkn
         o9RA==
X-Gm-Message-State: AG10YOTx+MfNBy4mL8Ue0d65J/xreNEibpEc9jIA5s6p4Jq/y6T+esH3jSMr/rdrIqMzSg==
X-Received: by 10.66.254.168 with SMTP id aj8mr36777321pad.18.1456130660172;
        Mon, 22 Feb 2016 00:44:20 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id z67sm34833976pfa.71.2016.02.22.00.44.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 00:44:19 -0800 (PST)
Date: Mon, 22 Feb 2016 14:13:58 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/7] staging: rdma: hfi1: Remove header file
Message-ID: <f6f39b0d44afba3e0405a5919ea5510c245fb5f9.1456129759.git.amitoj1606@gmail.com>
References: <cover.1456129759.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456129759.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove duplicate include file. Found using includecheck.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/user_sdma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rdma/hfi1/user_sdma.c b/drivers/staging/rdma/hfi1/user_sdma.c
index feb2069..2f48419 100644
--- a/drivers/staging/rdma/hfi1/user_sdma.c
+++ b/drivers/staging/rdma/hfi1/user_sdma.c
@@ -67,7 +67,6 @@
 #include "hfi.h"
 #include "sdma.h"
 #include "user_sdma.h"
-#include "sdma.h"
 #include "verbs.h"  /* for the headers */
 #include "common.h" /* for struct hfi1_tid_info */
 #include "trace.h"
-- 
1.9.1


