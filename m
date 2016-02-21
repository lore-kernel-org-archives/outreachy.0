X-GM-THRID: 6253750869458681856
X-Received: by 10.50.183.39 with SMTP id ej7mr6877192igc.3.1456064840644;
        Sun, 21 Feb 2016 06:27:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.24.225 with SMTP id x1ls524770obf.81.gmail; Sun, 21 Feb
 2016 06:27:20 -0800 (PST)
X-Received: by 10.182.33.42 with SMTP id o10mr21964444obi.12.1456064840348;
        Sun, 21 Feb 2016 06:27:20 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id 12si2627228pfb.1.2016.02.21.06.27.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 06:27:20 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id q63so77950838pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 06:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=VrqSXO2d02I+KPsoviVva/zz5GsQmfbmEIP0kYUP118=;
        b=js3/CsKrBwYuyOR8VFA9Ylaw2yIf4WvwFaKGuNsPbuFFtLPgkBbeIHghpnEEdDgt9W
         MDmHBnhlURMaJAtdTYcc562fjULaJWV+w2kw3cIZYoMnnnqHcgqc3CqnZWw/8Pt3nZjV
         vROqFwg5GLXvqNf9B7k4fYA50oyo6zwHGYAzqM6E6biEmAXXQxRCY1pdk8192xpmvDk5
         e/JAl/lFD4pTSSDskkRrCtmvI57cHoMG+Y2XhQpgke+MPbgdFcsRwjxLV010uXh14lLb
         aW2LorlU5YH7lJa1Oo8Y8EQuWdwKYUQyHT8WOGB/1kUsrLsY0rs9a98K0hkpAnK3HIlt
         oFcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=VrqSXO2d02I+KPsoviVva/zz5GsQmfbmEIP0kYUP118=;
        b=epWlcHQZw4S+3xkgiSCW6ckMCK2E2AnzphKItExrmrdt2tD/rjqhTIP/iRYofJWgt8
         CGN/3XeyY1el6c6+TxXQZE/24BS8wy1XiLqqC+S5LYEMaP5r6+Rbio2X+6/v8rcCd2zY
         y5KfctMwMGV+AjFWyTwa2GoSZ4DAv1UCqQSknXGQ9tz5YxuSao9trIGDQu2B49HgGfMV
         c9UeF8Onk6ZOluxRsn95yg1WcgG5+dKfUryBGNN4o63lLeI3qf2JgsnJcU0VMEoO9Z+/
         CiyxpnZTyGrDs5lj3G2TEojCPkhsHtFxGhEfD6eY7QwFFzJYpICv5EDwkGh4xQxq1f8j
         NSvg==
X-Gm-Message-State: AG10YOQvNsf6oo1BeEQEGMYVltXySBIvi2fdD3iMsOYpySgXd+qJ0KUzzI2IinkgXwH+Hg==
X-Received: by 10.98.0.148 with SMTP id 142mr31498763pfa.84.1456064840206;
        Sun, 21 Feb 2016 06:27:20 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.31])
        by smtp.gmail.com with ESMTPSA id yh5sm30572352pab.13.2016.02.21.06.27.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 06:27:19 -0800 (PST)
Date: Sun, 21 Feb 2016 11:57:04 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: Replace comparision  "page != NULL" to
 "page"
Message-ID: <20160221062704.GA3416@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Replace comparision  "page != NULL" to "page"

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/cl_page.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_page.c b/drivers/staging/lustre/lustre/obdclass/cl_page.c
index 61f28eb..88ee72b 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_page.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_page.c
@@ -284,7 +284,7 @@ static struct cl_page *cl_page_alloc(const struct lu_env *env,
 	struct lu_object_header *head;
 
 	page = kzalloc(cl_object_header(o)->coh_page_bufsize, GFP_NOFS);
-	if (page != NULL) {
+	if (page) {
 		int result = 0;
 
 		atomic_set(&page->cp_ref, 1);
-- 
1.8.3.4


