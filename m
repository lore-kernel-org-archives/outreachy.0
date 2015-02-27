X-GM-THRID: 4475579269120
X-Received: by 10.194.95.67 with SMTP id di3mr566421wjb.0.1425041798858;
        Fri, 27 Feb 2015 04:56:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.225 with SMTP id n1ls162510lah.52.gmail; Fri, 27 Feb
 2015 04:56:38 -0800 (PST)
X-Received: by 10.112.126.194 with SMTP id na2mr2077700lbb.18.1425041798477;
        Fri, 27 Feb 2015 04:56:38 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id el6si112166wib.2.2015.02.27.04.56.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:56:38 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id ex7so1091wid.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=72zfeU33Q9qIlpJ79qGXQeDKNhEMDQdWGReKlYagXDM=;
        b=rThX0rxph4g8TcqUGRB6WCP3EaOZOGVrKVEEJQix0bkXkBE1HS/DCIezfE/YyMBX7M
         14tJFgVBq49ja4nibVcBWJbx3g4rWhe05anH/wqRlcpg1oNjzmdnCho3pX22FheoX0Wv
         JSZwPJSL4CT5RpkAXZuQt0M2KNQ4HCT6HbPJCTHeuHBtFg+jNRLyjAGvoRs/QN+7r2h1
         NeTZJV2we+gNgJN9wCzW9qXdJ3fV2eJBLspwn2lspc7nek5SFhk3JKPIMtCxMaHU2k+L
         zgkXEXoMJbP2ybc0mrdiBCy1JpQpWNkdOBifeAWPbr6x2N7zPXdJqb6eLxZRfUo4ae64
         N7SA==
X-Received: by 10.180.74.206 with SMTP id w14mr6147245wiv.71.1425041798369;
        Fri, 27 Feb 2015 04:56:38 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id ka1sm5895250wjc.2.2015.02.27.04.56.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 04:56:37 -0800 (PST)
Date: Fri, 27 Feb 2015 14:56:28 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 08/24] staging: lustre: obdecho: remove unused variable
Message-ID: <46540f7a75b2ff99577195fbf76ce01ca6317f30.1425035006.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes a variable that was simply used to
store the return value of a function call before
returning it.

The issue was detected and resolved using the following
coccinelle script:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/lustre/lustre/obdecho/echo_client.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
index 5f6d944..7f578b4 100644
--- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
+++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
@@ -2158,7 +2158,6 @@ void echo_client_exit(void)
 static int __init obdecho_init(void)
 {
 	struct lprocfs_static_vars lvars;
-	int rc;
 
 	LCONSOLE_INFO("Echo OBD driver; http://www.lustre.org/\n");
 
@@ -2167,9 +2166,7 @@ static int __init obdecho_init(void)
 	lprocfs_echo_init_vars(&lvars);
 
 
-	rc = echo_client_init();
-
-	return rc;
+	return echo_client_init();
 }
 
 static void /*__exit*/ obdecho_exit(void)
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

