X-GM-THRID: 6254157113165086720
X-Received: by 10.140.18.239 with SMTP id 102mr327259qgf.28.1456159426928;
        Mon, 22 Feb 2016 08:43:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.90.71 with SMTP id w65ls1575342qgd.6.gmail; Mon, 22 Feb
 2016 08:43:46 -0800 (PST)
X-Received: by 10.129.58.16 with SMTP id h16mr27201877ywa.56.1456159426267;
        Mon, 22 Feb 2016 08:43:46 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id yd9si3201667pab.1.2016.02.22.08.43.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 08:43:46 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id x65so95316549pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 08:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8hQZ46mtmKqx6Iu61Ub6dPgTRhehVetlBYK1vYHnA1Q=;
        b=Uy8iiZn0gFM37jY3BKOWyotowAkrTnf7b/ohi4amGa2Zpk83JuZB3TAbqa2LaGfar1
         M9Lm2Vvng68aDeakDz0xFr/gamZuOx2l6raUPJ0M8nteqohyEvGOu/xzt4pbP7uvQR0t
         3kNEMUuClk8i1mEf1Ae63DzX2jG6iWbQYGZx+GPw7aNYuScuRL8gWeh48XB9xsPKahnh
         ynhISTuLD8GgCpu5Lj2aaCgQQGoww/zwLOW20qCRMLIjFomwN0/rriOX2EcUSXymzHWR
         GAiLAKphCjW+YvWdoeUdDGEF912Up+M55hhgVg88+2uBtmDD+AmDDnmEuhAR3D76zMEu
         +ASw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=8hQZ46mtmKqx6Iu61Ub6dPgTRhehVetlBYK1vYHnA1Q=;
        b=joc5+b5XalnK0WtqbNEefmhRmLOcySr6brGXEjM9aeBdzhLai/wZBw7Khb1CALzaTc
         AA1MzrmSMuuHz8SxkfBH6Fu/S54rEBXXsGXrBDsXKQqZyT3lcOO7js745VK5r+Ph8zV1
         X+QONu/OghRVlILNd1J4C0qhe2HVPHY3J+d4+BFb7Km+fXxL9aR8D6sdEwBboxu0/+bq
         hQcuiJ8VWNwzCwNEZ1MkPeFIVele8nxA2ERugmqUguUa/bcfjK62f3Byjq7H2/TcGNJs
         tkcoRlR1bwcEV9g4Y62LQCgiiNCiOb7kPbsnkd4y3u6+3RUo+DBcGap0CU7kTH8jODxJ
         1pTg==
X-Gm-Message-State: AG10YOR3zXAz0iuqLPKD1XC/Ge8dtlFbZ+dG4ZBfj+txqZu3SrLdgo5crxbAKSgUfcm/YQ==
X-Received: by 10.98.12.221 with SMTP id 90mr39325442pfm.95.1456159426069;
        Mon, 22 Feb 2016 08:43:46 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id c9sm37992443pfd.90.2016.02.22.08.43.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 08:43:45 -0800 (PST)
Date: Mon, 22 Feb 2016 22:13:39 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: Remove unnecessary kfree
Message-ID: <20160222164338.GA13593@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove an unnecessary kfree since rcd->opstats's value must be NULL
for the code to execute `bail` label.

This fixes the following smatch warning:
drivers/staging/rdma/hfi1/init.c:335 hfi1_create_ctxtdata() warn:
calling kfree() when 'rcd->opstats' is always NULL.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/init.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rdma/hfi1/init.c b/drivers/staging/rdma/hfi1/init.c
index 4dd8051..3107103 100644
--- a/drivers/staging/rdma/hfi1/init.c
+++ b/drivers/staging/rdma/hfi1/init.c
@@ -332,7 +332,6 @@ struct hfi1_ctxtdata *hfi1_create_ctxtdata(struct hfi1_pportdata *ppd, u32 ctxt)
 	}
 	return rcd;
 bail:
-	kfree(rcd->opstats);
 	kfree(rcd->egrbufs.rcvtids);
 	kfree(rcd->egrbufs.buffers);
 	kfree(rcd);
-- 
1.9.1


