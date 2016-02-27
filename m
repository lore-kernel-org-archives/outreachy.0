X-GM-THRID: 6256045581066567680
X-Received: by 10.107.157.10 with SMTP id g10mr12277728ioe.28.1456599119224;
        Sat, 27 Feb 2016 10:51:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.155.75 with SMTP id d72ls1062520ioe.43.gmail; Sat, 27 Feb
 2016 10:51:58 -0800 (PST)
X-Received: by 10.66.119.197 with SMTP id kw5mr6334305pab.15.1456599118909;
        Sat, 27 Feb 2016 10:51:58 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id yd9si2646183pab.1.2016.02.27.10.51.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 10:51:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id yy13so6214952pab.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 10:51:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uyq5NRblqfIBCA+XnI62cQDz8MPhL7AhDXP+tLopZ9I=;
        b=PaipmXIDoBh2Cz58w2kjCYMAeofnc7T9VRy1b+Acj/wlg4PMbDBO3AadrjIQPGmMGh
         lW+9mLlB7ZswgYvfUK5/Bg7fR6/dyH3hrrpw6ag9AJoXc178/whsdZN74/Gasu1SmRuI
         GmaZJqZqFf8IEMcAgCWHMWCSsHbLif50aD3WrnA0rMradMX5Yjz1D4dcIhGRQHExwYjA
         irX9jvVdUhgFsyJuVdZ9u0kueo5R4wemtZ4WYXFJAoqUcy11oLO6cwjILO9MmWPVsEO1
         WMLNRNTSWwoPq4/VY9NwRIG7jjDN3ffH9ABEi6Cv+s89leC9PfIyxir0tBqD1OezZM2c
         Js8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uyq5NRblqfIBCA+XnI62cQDz8MPhL7AhDXP+tLopZ9I=;
        b=frcDOh3Wa5HLP7M+z9FsWWdli3Nd8Z7xeqrOej0CSlg/TSmckN68W15GiLfCnzRVat
         tENiR9rxh8RWtscHOElAQTsPlDmrPfANEqveOlH5gZmAOpKIURKd1VB1dNMI/7Xz7DrZ
         YipBAQXD8qLvzSwuHXi+9XG7tY3lN1UOIcTQgPN0oAtv1XVQGVHSJbxJ5QJunIczeamh
         HSbSwyKlj/hJfwx3soeHhze+FAmtFqjZGkMxgwlWcYWz+SqBXWY3hubAt+xuLy3pSRWE
         drOX/M5Nqr9bRsPMG5PrgIoMUoRGXU5Q/BLdW5ky4WItC6pSC/fbGjq/i4GLilR/BEU7
         McAg==
X-Gm-Message-State: AD7BkJKODeXF5yURZJCKbhwcP7chH5Vfv9zJWbHWmggcUlRbtxWpRcstyPWNvGDzY8vRVA==
X-Received: by 10.66.253.193 with SMTP id ac1mr10985688pad.121.1456599118767;
        Sat, 27 Feb 2016 10:51:58 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id xa9sm27654823pab.44.2016.02.27.10.51.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 10:51:58 -0800 (PST)
Date: Sun, 28 Feb 2016 00:19:09 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: mgc: Bool tests do not need comparison
Message-ID: <20160227184909.GA2991@Karyakshetra>
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
 Changes in v2:
	-Fixed typo "lusture" to "lustre" in the subject

 drivers/staging/lustre/lustre/mgc/mgc_request.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
index 6fc8225..aea5fc3 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
@@ -1394,7 +1394,7 @@ again:
 	eof = res->mcr_offset == res->mcr_size;

 	CDEBUG(D_INFO, "Latest version %lld, more %d.\n",
-	       res->mcr_offset, eof == false);
+	       res->mcr_offset, !eof);

 	ealen = sptlrpc_cli_unwrap_bulk_read(req, req->rq_bulk, 0);
 	if (ealen < 0) {
--
2.1.4


