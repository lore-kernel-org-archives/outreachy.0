X-GM-THRID: 6394971507349520384
X-Received: by 10.107.140.131 with SMTP id o125mr1500511iod.60.1488945332667;
        Tue, 07 Mar 2017 19:55:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.218 with SMTP id i26ls2154004ote.48.gmail; Tue, 07 Mar
 2017 19:55:32 -0800 (PST)
X-Received: by 10.157.49.15 with SMTP id e15mr1724183otc.123.1488945332312;
        Tue, 07 Mar 2017 19:55:32 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id g82si387743pfb.5.2017.03.07.19.55.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 19:55:32 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 77so2039170pgc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 19:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=plAf8OUjsAOxHgrqy8juQrfuTEdkUPn2UxURss3tdtw=;
        b=cjiJKeaFehgRt26+mY8gwueL6S7F0g++ZlrRqVTc5Cvnv912yHqaKZFryc4fMdkHRv
         eemQC4MFSvA6EPZS7I9zF5kwrL4ZYr/1g2n5EUL2IdJMxg3VpHnZyP8lXTvivX99AlM5
         JILtPFrscsD0TEnjYTY2EIma3o3buqUDTfn4JNKam4xkf/1wlAmt3qn4E1quBofk77Ml
         5KMy8/kpIeMtzOvoi8layc9pF0k+nPQZGQrli3o+FAX7m6Raspfz3fD/6Wo77ikVY09b
         8CJfDKROs8BmyQJYb8bGwj7AffdPsgnFE8lyYKdhTrUYe3O4fR3vJXXjubpdt5NFqFjJ
         C8Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=plAf8OUjsAOxHgrqy8juQrfuTEdkUPn2UxURss3tdtw=;
        b=BTTYY3RQmdcjZEU/z4VvPmdlE4jFHUWFKUGkGbIiASV9Cbo1Wwj1ugdYQDrCQcsB/h
         gnf4dJOa+gggySBGkCT8V5oAvbLNKXUt2bJqW983ebWYzrxdk0dmwfwNCCkJn5xyiVhd
         3LsUC0RNsboShLV7D13zsfXknSFeWWfIk1SLt6HZZ10aVJW9rNqukTg2uXuzrGY/tUC1
         Pw3WCvjx5iIOsRNx5DTNbpPd02pHXnNyYz5mpyPRR6iC3Yh4RbXR3vPpObogOkePze9w
         qakQ11H6je5wfKCRr5bbCaG7T4m3TWgj53CMAUaY70EfUck0DjOxL6jUJkRDDL364pS7
         MXVg==
X-Gm-Message-State: AMke39mc6kBc8kKyHVZBCFmArvbE+lf1hlGWtU263OuFQHaIQ7B6fFjVFo5uKes7SMcLWg==
X-Received: by 10.84.197.131 with SMTP id n3mr5431130pld.43.1488945332094;
        Tue, 07 Mar 2017 19:55:32 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.151])
        by smtp.gmail.com with ESMTPSA id d189sm2482581pga.17.2017.03.07.19.55.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 19:55:31 -0800 (PST)
Message-ID: <58bf80b3.c636630a.5c109.839a@mx.google.com>
X-Google-Original-Message-ID: <20170308035524.GA6147@<rvarsha016@gmail.com>>
Date: Wed, 8 Mar 2017 09:25:24 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: media: atomisp: Remove unnecessary identifier.
References: <cover.1488944614.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488944614.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch removes indentifier data, which is not required.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
index 0bb6fa0..b575365 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
@@ -1335,7 +1335,6 @@ static int pc_monitoring(void *data)
 {
 	int i = 0;
 
-	data;
 	while (true) {
 		if (sh_binary_running) {
 			sh_css_metrics_sample_pcs();
-- 
2.9.3


