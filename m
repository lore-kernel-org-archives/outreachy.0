X-GM-THRID: 6253831974637535232
X-Received: by 10.66.55.4 with SMTP id n4mr23495633pap.22.1456083723893;
        Sun, 21 Feb 2016 11:42:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.150.74 with SMTP id ug10ls435822igb.42.gmail; Sun, 21 Feb
 2016 11:42:03 -0800 (PST)
X-Received: by 10.107.9.213 with SMTP id 82mr6038686ioj.10.1456083723519;
        Sun, 21 Feb 2016 11:42:03 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id 79si2719035pft.0.2016.02.21.11.42.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 11:42:03 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id c10so82880868pfc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 11:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=F58/7CaLNX1lRN2njxlWUyqEORZx/wyfcOnpc9m/Zq8=;
        b=AH+UINkWlqwGqZD/m51pBHtYrFDlA/4H1hAxBvud0T3t2PJxq5GB1x2qk8XAQ1gz4i
         j7aXm7jSkwtgOKLXBBp/HbK/R/1lT2WVVB0cLt5YRxwrhVgIrlYJlUOJEEseeBZXoYrw
         cOroEQMIgJoAMCQxIAztIswFmstz4+cap47bpr2vHCEj9K5GmgI6t3sjtNjxphf76Op8
         Z0VY0IAsDYNaOUgmEAmW9o5GDGUhVTWeV7qiC65e3z+82Siy6IEVGZjj5m8PD/bOVWHs
         lWv9wKmqQ02HOIGCWhiwoC+lOFAly87cZgfsDBkvhu5gHC3FsJH//S/U+v8ZnxuDA5cv
         8pPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=F58/7CaLNX1lRN2njxlWUyqEORZx/wyfcOnpc9m/Zq8=;
        b=UCooknH6C1GY3hHCildIfVq/4rQHn0bIXjSU8rSvFEi1j7hS9kUkzJrAOMtm3Oyy7v
         PncW/cyRETcqXpq5iaOAXxS/rYKU859tZLZ5nKtVT+cCbc3D8tlkiv4BXzGXcig0mP8m
         wPRPW2XXvgp7G2L/mrVZfW5RGTd+QUrUxhfX5mUSkRpDzg8EOBEwHSweGZi3uhTyyGjo
         FSVyEx/N/3nknU8asaCIBZJEJdtwza16BS5mqGRTpVackZHkjwZ/oZB/3p6Xe7Ed/Gzb
         lwFXQJZ9rDocUTlbisojaQw0qy92kNAa6WkBTdUG1wMnUWTxnEmOyVFI4emsKsJmW66C
         3ihQ==
X-Gm-Message-State: AG10YORrg/31I9oSfErG18cx16XvLzQAt4RMi7oSIwsmfBqhze9QV/A6A6znKf10ZAVvgQ==
X-Received: by 10.98.67.8 with SMTP id q8mr33132915pfa.133.1456083723376;
        Sun, 21 Feb 2016 11:42:03 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 1sm31549508pfm.10.2016.02.21.11.42.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 11:42:02 -0800 (PST)
Date: Mon, 22 Feb 2016 01:12:35 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lusture: mgc: Bool tests do not need comparison
Message-ID: <20160221194235.GA4683@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Bool initializations should use true and false thus bool tests don't
need an explicit comparison.

This issue was found using the following Coccinelle script:
@@
bool x;
symbol true;
symbol false;
@@

(
- x == true
+ x
|
- true == x
+ x
|
- x != true
+ !x
|
- true != x
+ !x
|
- x == false
+ !x
|
- false == x
+ !x
|
- x != false
+ x
|
- false != x
+ x
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lustre/mgc/mgc_request.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
index 9764e57..e12ad39 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
@@ -1378,7 +1378,7 @@ again:
 	eof = res->mcr_offset == res->mcr_size;

 	CDEBUG(D_INFO, "Latest version %lld, more %d.\n",
-	       res->mcr_offset, eof == false);
+	       res->mcr_offset, !eof);

 	ealen = sptlrpc_cli_unwrap_bulk_read(req, req->rq_bulk, 0);
 	if (ealen < 0) {
--
2.1.4


