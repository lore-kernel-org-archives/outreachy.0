X-GM-THRID: 6205781635135176704
X-Received: by 10.50.62.68 with SMTP id w4mr6901337igr.13.1444896778139;
        Thu, 15 Oct 2015 01:12:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.170 with SMTP id j39ls697858qgd.92.gmail; Thu, 15 Oct
 2015 01:12:57 -0700 (PDT)
X-Received: by 10.140.195.2 with SMTP id q2mr6418064qha.5.1444896777675;
        Thu, 15 Oct 2015 01:12:57 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id el2si1337674pbb.0.2015.10.15.01.12.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:12:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ao1so15946924pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=xAgHmxCMdUTnp47JDdja82H/eDBjnKhl8/Z1eM9HyNM=;
        b=f18G6abGeNZu0jN3ccvvYJAIj1uPS5FlOJYK/t73REqhJ/Ehga1Xe8iCUCN7WOefma
         r+FuaPgW6XKbYBXV6wWWQG/JIIDiD82foYNLCU5qfuN2ZKVSRo9qQS6RWtZKcFdg/8HG
         MffahWcb7IgVIN98Hq9fQVjWA5+sZtGMZH6Dnw0Z+XtgtRqEJPiqtTAk7+VLZvAgpNTu
         a9FWEdCZ/lNIiYwqrJWEZ8KP2St1zeizJpmIAIHlTfQ8ihqfpv/e35bT8wZf428BtKzy
         Roov1tP3Z0zR5yGJQjRN+YTkxfTNwj6GROfFGw0HqlTRAgfaNAw16dzwyFi7uv0sBDdL
         OTgQ==
X-Received: by 10.68.68.233 with SMTP id z9mr8726403pbt.132.1444896777399;
        Thu, 15 Oct 2015 01:12:57 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id ch3sm13788737pbb.18.2015.10.15.01.12.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:12:56 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:42:53 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 07/18] staging: lustre: ptlrpc: Remove useless initialisation
Message-ID: <179004810715ffbb151af028cb5ffce775c12072.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/client.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/staging/lustre/lustre/ptlrpc/client.c
index 6aaa5dd..0c4df7e 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/client.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
@@ -696,7 +696,7 @@ static inline
 struct ptlrpc_request *__ptlrpc_request_alloc(struct obd_import *imp,
 					      struct ptlrpc_request_pool *pool)
 {
-	struct ptlrpc_request *request = NULL;
+	struct ptlrpc_request *request;
 
 	request = ptlrpc_request_cache_alloc(GFP_NOFS);
 
-- 
1.9.1


