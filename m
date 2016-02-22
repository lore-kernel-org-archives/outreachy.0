X-GM-THRID: 6254199733277949952
X-Received: by 10.66.142.230 with SMTP id rz6mr9787522pab.31.1456169349688;
        Mon, 22 Feb 2016 11:29:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.23 with SMTP id y23ls1714882qgd.35.gmail; Mon, 22 Feb
 2016 11:29:09 -0800 (PST)
X-Received: by 10.129.58.16 with SMTP id h16mr27933911ywa.56.1456169349203;
        Mon, 22 Feb 2016 11:29:09 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id yd9si3287888pab.1.2016.02.22.11.29.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 11:29:09 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id ho8so98395644pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 11:29:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=kJ7gAyCsZDX1lwvNkYT4C/qMeuDVFbThg4RuvoTsRZg=;
        b=TQcSAL8zGmwA63mXfpfWxenPPa/IqN+y+nPS9WlZL2WFNMJxqft2zIOInBmYVkFTf4
         G0CVoFnExCcutr/Q3GxAIJVjuLuH1TNblrGWkqf0X1nPYZWGVlfXl8cLuzyUZJwYoGqq
         NDRrzkTfuFv9n2+a8WDOR6BJZr2jIXi92qWrWd2BwrFthMGTHwUoqy5mHiJoyqSV8uRX
         dpuXYv0vjEtexW9n20GUZF8n0dG9nEQC96r05lpE7iuYMcjPFyxR36PqJS1YqkDE7Phw
         u7GzcnYI/icXgYhMq1m7ainIsV0NROmJGwf5BqKRcp50horOmMgQkleMNL2XH72oaBqV
         CzIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=kJ7gAyCsZDX1lwvNkYT4C/qMeuDVFbThg4RuvoTsRZg=;
        b=T4RkvHFi5t1XoCeCCC6lbf89vMYFCk6PiqrcyOIOpnmvcCIf8Hsbx1tLYEMkPgJ+3G
         /39CUv7a7I4M0lexX/WzlYtDDJOTJOdQCFMwSOHXrMynH3QBRYaE0+r/wP0iEkDDdEPD
         6uMoeZ+glDmmZcKdqyZexHxiKcQUbt5+vBzNmC1Ty5WE2T94Qm54O//IjOOpzZIEMi+5
         DAZbVw+HcNWDfIVXG34nv4ElQ9bkcLEy+nQrTd156DEDvdX7EoYDHCQ7eqJMqQ6K/SWr
         PDCdhmRP0B1Ml6p7MDtXl/wE3KVVNY7UG1J2PPD7hNIiNB7YXi1v7fR7XLgY+4OrLppT
         rFvg==
X-Gm-Message-State: AG10YOTMQQbyblphzkZalFKnrLDP+JT45yyrdxGG0yDoU91FLcISqnKUvkbfAm4BJdM8iA==
X-Received: by 10.66.228.231 with SMTP id sl7mr6462831pac.30.1456169349027;
        Mon, 22 Feb 2016 11:29:09 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.75])
        by smtp.gmail.com with ESMTPSA id ud10sm38888739pab.27.2016.02.22.11.29.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 11:29:08 -0800 (PST)
Date: Mon, 22 Feb 2016 16:59:06 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging:rtl8712: Avoid multiple assignments.
Message-ID: <20160222112906.GA5412@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Avoid multiple assignments.This isssue is found by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 2f5460d..28a6360 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -44,7 +44,8 @@
 int r8712_os_recv_resource_alloc(struct _adapter *padapter,
 				 union recv_frame *precvframe)
 {
-	precvframe->u.hdr.pkt_newalloc = precvframe->u.hdr.pkt = NULL;
+	precvframe->u.hdr.pkt_newalloc = NULL;
+	precvframe->u.hdr.pkt = NULL;
 	return _SUCCESS;
 }
 
-- 
1.8.3.4


