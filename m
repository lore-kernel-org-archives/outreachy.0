X-GM-THRID: 6252997552007806976
X-Received: by 10.66.147.106 with SMTP id tj10mr12868037pab.30.1455889444845;
        Fri, 19 Feb 2016 05:44:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.73.199 with SMTP id n7ls68618obv.83.gmail; Fri, 19 Feb
 2016 05:44:04 -0800 (PST)
X-Received: by 10.182.119.199 with SMTP id kw7mr12295702obb.15.1455889444454;
        Fri, 19 Feb 2016 05:44:04 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id 12si1624026pfb.1.2016.02.19.05.44.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 05:44:04 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ho8so51946264pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 05:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=U9ZqBd2AgU8MxQQMKYUOn8NZ4/u6wUN3vWwR4m6cpr0=;
        b=kdpKm99H1URGUL6d1SiJhGOTgGNMe7GJN3OLmeytAiZSktGjbIL04QrB0+3vtjHo/B
         beW3FW95JqdFTSEYohlDdYiOKvSoclbJsHcQ2sCklEnO3JErSG8r3h3CIyqAEZGXXfdZ
         1hXj1jPMnaGV2e6Rpr860pxCHbwb9+DTv5q1RiX5Zz3IwwSY8LCN2LyLynHfnakjmoui
         3Da6fgwIS97cN6G/ES+0PwM79tGXg3cG4ynITNYcKNOCvENATmevqA+Eppjf8PY6rOr6
         2fB8LWyGSrhjmNOLRSovL8R63FTHdTImnonQYZTYvIC4IWM1zgO3SUgHQTH+WFi399hL
         lsDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=U9ZqBd2AgU8MxQQMKYUOn8NZ4/u6wUN3vWwR4m6cpr0=;
        b=UY/n+W+tvjynTcNcD8bqs5isvshqX5aIMenmn6jGK/x3y0RbxSBiE0AuIJa+v7b1/m
         BCzY6jlUT9CC6FGwBEu+Bcvcgja259YUCjvlrw2nM5kAGivHawbsjTTx7B2KHZPElK9b
         4Cm0Y6DcKEsF+W8yjJKUFyboC8JFMNroVEvoHONe/5VX+xPO2u95IZlWHEIBjIWFJVSp
         KHzLCQV/h0ypcJjKxInK3mqJrVdlaI9n51bVFHzgoOXDp9BJqYQbm8w9gLNPODGFks5D
         vMdRELI8uPoiEYh6xsJHS2UO95rY3RxzyMmHl6Vw1cnEuNctOV2xNGY2sfpAcDs706jy
         9RMg==
X-Gm-Message-State: AG10YORim41i/LgZRdp59ut+ILe9PpqPG4qZbp+W6R+FTOQBPj7ieaWOI8u+2CTaoa7srw==
X-Received: by 10.66.228.97 with SMTP id sh1mr11363508pac.77.1455889444291;
        Fri, 19 Feb 2016 05:44:04 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.156.250])
        by smtp.gmail.com with ESMTPSA id e20sm18105949pfd.4.2016.02.19.05.44.00
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 05:44:03 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 19 Feb 2016 19:13:54 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: lnet: Remove and rename struct typedef lstcon_session_t
Date: Fri, 19 Feb 2016 19:13:52 +0530
Message-Id: <1455889432-10570-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch gets rid of struct typedef lstcon_session_t as it is not 
suggested to use typdefs for structure types. Also drop '_t' from the name.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/console.c | 4 ++--
 drivers/staging/lustre/lnet/selftest/console.h | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
index 54fb1ab..1385dc0 100644
--- a/drivers/staging/lustre/lnet/selftest/console.c
+++ b/drivers/staging/lustre/lnet/selftest/console.c
@@ -58,7 +58,7 @@ do {							\
 	(p)->nle_nnode++;				\
 } while (0)
 
-lstcon_session_t console_session;
+struct lstcon_session console_session;
 
 static void
 lstcon_node_get(lstcon_node_t *nd)
@@ -1994,7 +1994,7 @@ lstcon_console_init(void)
 	int i;
 	int rc;
 
-	memset(&console_session, 0, sizeof(lstcon_session_t));
+	memset(&console_session, 0, sizeof(struct lstcon_session));
 
 	console_session.ses_id		  = LST_INVALID_SID;
 	console_session.ses_state	  = LST_SESSION_NONE;
diff --git a/drivers/staging/lustre/lnet/selftest/console.h b/drivers/staging/lustre/lnet/selftest/console.h
index 5651b08..b7e14e4 100644
--- a/drivers/staging/lustre/lnet/selftest/console.h
+++ b/drivers/staging/lustre/lnet/selftest/console.h
@@ -135,7 +135,7 @@ typedef struct lstcon_test {
 
 #define LST_CONSOLE_TIMEOUT 300	     /* default console timeout */
 
-typedef struct {
+struct lstcon_session {
 	struct mutex        ses_mutex;        /* only 1 thread in session */
 	lst_sid_t           ses_id;           /* global session id */
 	int                 ses_key;          /* local session key */
@@ -165,9 +165,9 @@ typedef struct {
 	spinlock_t          ses_rpc_lock;     /* serialize */
 	atomic_t            ses_rpc_counter;  /* # of initialized RPCs */
 	struct list_head    ses_rpc_freelist; /* idle console rpc */
-} lstcon_session_t; /* session descriptor */
+}; /* session descriptor */
 
-extern lstcon_session_t	 console_session;
+extern struct lstcon_session	 console_session;
 
 static inline lstcon_trans_stat_t *
 lstcon_trans_stat(void)
-- 
1.9.1


