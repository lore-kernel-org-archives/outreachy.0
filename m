X-GM-THRID: 6465879632669310976
X-Received: by 10.84.133.132 with SMTP id f4mr15024617plf.40.1505454939767;
        Thu, 14 Sep 2017 22:55:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.41.196 with SMTP id p187ls561216itp.9.gmail; Thu, 14 Sep
 2017 22:55:39 -0700 (PDT)
X-Received: by 10.101.66.67 with SMTP id d3mr11760698pgq.144.1505454939261;
        Thu, 14 Sep 2017 22:55:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505454939; cv=none;
        d=google.com; s=arc-20160816;
        b=fvAXFBP8TiPaayjpVBEkopZtG8+kNq9uiZjBb/lOx895MSV8W9VpbwLqKpVAfM/QnN
         xbfZkKiZ9BdoMLe2MfVhGkAHVuNBsAXsjfPZ7kz9n4bZw5oPSyGgC8YlY+BBwlrDYskx
         8mWuWMEOK8wCwFjm6HjJBXvYDo+DyOIhgElFkJv8Ovxg++8+rzJNhffsvsICJ5pRKeEM
         n4gpVhoCx7wgarVy9xXNukoc4UMEjYRUFabFhKYHDDVSdj4uxphSBG3MOFn7UwNZ/N+1
         80eCZ3LPagRoCOI+m9/OTVIl0FpaZunOTgtHidiMkrhT4F/ImoY7zrwDPAtOiDmeNxmq
         G6Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=Zfv633TPxT1mkHth7FMuIrPwsHcMqUmBixbysdVaju0=;
        b=SJi0wW+qv7FfNwZOg3FI9fAJMLgBw+lzl9O78SbG3xaXNxCldmFk+ZYnXg1dAGiOx8
         PX/ET2UD3vHDRiuzsWGSjeRpqpk8yMit9JSrqWxTCTCbXYNxnvWmwq6pe8Z+5XCsAUWl
         Jx/Wo2oVL2ii+sRu4QhqHZXa51U80ehtPjfuZoU3ixpF86wnlUVdFKTvZiTWlxbilp/2
         MKUIfr+pasw5u6FN6ao/x8+hHXEaxY5lL4h5QoPXWscXMQJJmTaTe/OIIZ0xRdxlvMKw
         99SkfmaAPAw8vplhSrS6NoF0LUF5OAuAT8ig9vwpi9h6X0SnWqnP8YWT8t+cjq2Jnhow
         oMPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BGGrbR5I;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 82si15967pfz.6.2017.09.14.22.55.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 22:55:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BGGrbR5I;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id d8so837048pgt.3
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 22:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Zfv633TPxT1mkHth7FMuIrPwsHcMqUmBixbysdVaju0=;
        b=BGGrbR5IZbqqFGizd5ScnNS4VaQRFOqX2JhgjJWH0YGwX3n5n0czDjJGD+nOCA2b5h
         wM0CAT0h9GE8R9uroTKFJdiW1EJbXgCjGUVOzsQ+WJOsfUMy1u3m1imhVZnCZibQ5Wqh
         wL3TbLomE4ss/O/j7x58HXZL3xbW8ERjW9vD/o69QiQEWT9Jso6pCGvHHGyTuhckBxjb
         5hXNL3gbm1+Yn2lXeWQBd3DxLJ2ShAmJWgjxU+uR0fOl8XBJCWvQbUiB2r5EuRzzy3Bs
         DXy21mZBdkQQuRItc3ZaqSLu3M4OpEYTNx0cpnK/R7lB3SYz6c70rboFViU2Jg1XO9l+
         S7Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Zfv633TPxT1mkHth7FMuIrPwsHcMqUmBixbysdVaju0=;
        b=S+9LusxYk7+xxe6EiwEj/mNoYfu4uTSUQmbZ0vXCsd5N0ABmG04e5BNUjhon7E90aq
         AIaZKTzT52eiGwUzJhM1SNuv0ECydwll1XDGNWsj1In1KISSi08QBN0ev8sw7wAWmVJX
         DUsM0L1lqE5w8h8Ib9/KZl4W+6mdg2PSdiZOp7Y8sxxUj214lWzCQWby/ImAMIURb7xY
         j2gSIMRap+9rUx36cluTFHDms2oPKN5SM+RegEktLbFi5KDeKZzplUR5rHxtsPxalC96
         lCZYL47Q5LxJfuk99jVFPv3TjlIr9OnEDuvXCLyCgMgdnCXBtHqXuE921dLPIhceY0Rh
         l2QA==
X-Gm-Message-State: AHPjjUgbnu0bPJ/BqXFQ5A/UD6yPGXM6Pk/VkgVqrai8oRarJRkQqItC
	Z3jIRofavaY2LA==
X-Google-Smtp-Source: AOwi7QDr4ONwvKKPMsbXsJE5DCDosIA1HVOYN6A45r529fDJLS/FGus1aU+DshYdqcOvWUD8mgmOGQ==
X-Received: by 10.159.218.75 with SMTP id x11mr2760361plv.92.1505454939053;
        Thu, 14 Sep 2017 22:55:39 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id a25sm550927pfc.143.2017.09.14.22.55.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 22:55:38 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 5/8] staging: lustre: ldlm: fix lines over 80 characters
Date: Fri, 15 Sep 2017 11:25:05 +0530
Message-Id: <ffb073f406c99965eec1c6c5e5c1163c9e69eaf5.1505454643.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
index e270733..1b2dbb9 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
@@ -184,7 +184,8 @@ static void ldlm_handle_cp_callback(struct ptlrpc_request *req,
 			LASSERT(lock->l_lvb_data);
 
 			if (unlikely(lock->l_lvb_len < lvb_len)) {
-				LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
+				LDLM_ERROR(lock,
+					   "Replied LVB is larger than expectation, expected = %d, replied = %d",
 					   lock->l_lvb_len, lvb_len);
 				rc = -EINVAL;
 				goto out;
@@ -598,7 +599,8 @@ static int ldlm_callback_handler(struct ptlrpc_request *req)
 
 	lock = ldlm_handle2lock_long(&dlm_req->lock_handle[0], 0);
 	if (!lock) {
-		CDEBUG(D_DLMTRACE, "callback on lock %#llx - lock disappeared\n",
+		CDEBUG(D_DLMTRACE,
+		       "callback on lock %#llx - lock disappeared\n",
 		       dlm_req->lock_handle[0].cookie);
 		rc = ldlm_callback_reply(req, -EINVAL);
 		ldlm_callback_errmsg(req, "Operate with invalid parameter", rc,
-- 
2.7.4


