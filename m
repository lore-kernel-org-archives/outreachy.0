X-GM-THRID: 6250664265920806912
X-Received: by 10.66.193.225 with SMTP id hr1mr5254828pac.34.1455346267098;
        Fri, 12 Feb 2016 22:51:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.101.196 with SMTP id fi4ls931241obb.32.gmail; Fri, 12 Feb
 2016 22:51:06 -0800 (PST)
X-Received: by 10.182.246.130 with SMTP id xw2mr5419939obc.29.1455346266659;
        Fri, 12 Feb 2016 22:51:06 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ui7si2207392pab.0.2016.02.12.22.51.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 22:51:06 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e127so4919606pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 22:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=TXbb1gTMOY4+YVFYPigwOeDZRHz07OnR+VPQ8DEVZmk=;
        b=qnQLBmnl7SF80uBwXLOP8u4sEoLJSug6TPk6QYXzxUlt8D1JmJWkEHWb4lBg1Fk5vM
         1V4kHgIaWGddXFGWYi9f+Fh1O9WYGiUpRknq4eolKYJM1FGxxoJVptWjFKcpsAnFtNCX
         y4sV3Krw0MZCmugzo6+tQ/+AwByacuE1P2PnLTsKrt6xnV3VA5nU12CjHorSyCnc1jZv
         pNw6Xw2X0sXchpHyislIgpWrkVjAX3IXHw+S6p6PLqHlaikHXDNFUciKyWikKz2CBlBr
         u04WoXsT8KHRun/pdAcyAW5VOoW2WBaESU/QLGqmzZtefCGw6xboVJ1ct5y1QVnGnZgY
         gujA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=TXbb1gTMOY4+YVFYPigwOeDZRHz07OnR+VPQ8DEVZmk=;
        b=JR/x1Xe0yp+PyHsW9yShcL49Xhq2B/x4MgDaBQyHJkUVRVwXfNlC6ebKi97Qp3No+j
         Ifb4K2Q4ctzktyY79se0sk2mXuSczE77zNk2mwS5F6bgPyXohlhqepFAdvy+g+UtnL0U
         T7nf9mwn7cVGWmm2iZaTaYxtMiDrcol6gCuToRuGpSKLhYHKkGbMQ1HRAdLI8svXQ5Zo
         289Kk0fH8aq0OcfHhD4E5nUBO4s/uicseusRsn5XY3GE0S2TeIbQfAs1eJuxmO1lh30H
         Qnx5DdDs7Mc4gr8jresGI9fPrrC+1vTdseU5GZjJpfaOGnFn+mMHw4ayur2wyJOUigg9
         fS/Q==
X-Gm-Message-State: AG10YOROKCTYXQGrVyhfejaP0DTNv0/dGcyA/mFEJcLADZvxEpqh4LvWG++Y8Z6Wkw9G/g==
X-Received: by 10.98.80.91 with SMTP id e88mr7907181pfb.62.1455346266512;
        Fri, 12 Feb 2016 22:51:06 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id d8sm23771099pas.14.2016.02.12.22.51.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 22:51:06 -0800 (PST)
Date: Fri, 12 Feb 2016 22:51:04 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: wilc1000: host_interface: remove cast on void
 pointers
Message-ID: <8f2c3a8a0c81a75767ee836ec98cf98b4f2ec7b9.1455344328.git.amsfield22@gmail.com>
References: <cover.1455344328.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455344328.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove cast on void pointers. C programming language guarantees
the conversion from void pointer to any other pointer type.

Coccinelle patch:
@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 5570707..94135f1 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -957,7 +957,7 @@ static s32 Handle_Connect(struct wilc_vif *vif,
 		return result;
 	}
 
-	ptstrJoinBssParam = (struct join_bss_param *)pstrHostIFconnectAttr->params;
+	ptstrJoinBssParam = pstrHostIFconnectAttr->params;
 	if (!ptstrJoinBssParam) {
 		PRINT_ER("Required BSSID not found\n");
 		result = -ENOENT;
@@ -2679,7 +2679,7 @@ static int hostIFthread(void *pvArg)
 {
 	u32 u32Ret;
 	struct host_if_msg msg;
-	struct wilc *wilc = (struct wilc*)pvArg;
+	struct wilc *wilc = pvArg;
 	struct wilc_vif *vif;
 
 	memset(&msg, 0, sizeof(struct host_if_msg));
-- 
2.1.4


