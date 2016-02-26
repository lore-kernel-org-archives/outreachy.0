X-GM-THRID: 6255520477727424512
X-Received: by 10.182.65.135 with SMTP id x7mr262658obs.13.1456476892315;
        Fri, 26 Feb 2016 00:54:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.30.66 with SMTP id q2ls483488igh.13.gmail; Fri, 26 Feb 2016
 00:54:52 -0800 (PST)
X-Received: by 10.66.139.138 with SMTP id qy10mr246682pab.46.1456476891988;
        Fri, 26 Feb 2016 00:54:51 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id yd9si1757459pab.1.2016.02.26.00.54.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 00:54:51 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q63so1041156pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 00:54:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gmgypnelQJ0gBYS17SfzAuIXvv7vSdUX4sK/oGEOCrg=;
        b=kiouB8XleFh/WTHhj06ytRt5eaDjVWiiNxTY8ZooDwkZJTX97ELqETHxI1FUpJQ+LZ
         cbb+ac2FFEW6cozAPfFXQiowoscHeQAFsjMsBAK3iTNuu7uop68LBtyEJLVnMBMfZJct
         eQK4AitfZ6YFlfw39b6gkG/30aCRgVGslGHJ2OvZmjNxD3zvFVQeS25tfsoQaTkiozVe
         CA52xr3YZXLIWY914vBzWG/yQpjvtlkQGLl/az3aetj0RB6b/6WSZOi9309YV7u4PJkp
         uObkgCtfkEAJ67Hi8dQEm6SdwzRpJZb7jH3TPhDoDrscm7sCp2T3kiCWxY8R1JXzu3z3
         Wktg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gmgypnelQJ0gBYS17SfzAuIXvv7vSdUX4sK/oGEOCrg=;
        b=TLyC5DScABkb8gTEgC3IT1Z/zpsr4TA6AU581N5sI861BBtgwKQt9SbjrRYRT0L7Fl
         JibNeOTnr6VtquhQL0n/IXgj/BPpRXkfpWJc0bqSM3zFBld5Dvfa4Vv+EZ7/uSylmBNC
         g3toeyhUZH2Ben0zZPPMO9dJj8vc+Ldlim3SuLjwgej/nrkOwPZnvfCw+qNEYA9seP1G
         BRX7YYhMm/eZggY34pi2nGI+EeAkHNMin7/uy3vKCBAVBrlaIa7tZ2r4COWfvmmBGhHb
         ThxHN6F8TIStQDVBF98uQeV+50k91zA13y61xl1b8P1Z93YBE4X/MQk1xc1F7Hztv/Ga
         X8Gw==
X-Gm-Message-State: AD7BkJKAcOZe7icBue7W2va8O3eWOiNhxN9OFzgF+s6pSSc8v/Xv034/bT1g+mZLCs4mjA==
X-Received: by 10.98.14.146 with SMTP id 18mr470836pfo.35.1456476891821;
        Fri, 26 Feb 2016 00:54:51 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id ah10sm17619412pad.23.2016.02.26.00.54.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 00:54:51 -0800 (PST)
Date: Fri, 26 Feb 2016 14:24:48 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/8] staging: lustre: ptlrpc: Replace kmem_cache_alloc with
 kmem_cache_zalloc
Message-ID: <7da84d3ac315a0f0604c00953cc577c8273319ac.1456475758.git.amitoj1606@gmail.com>
References: <cover.1456475758.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456475758.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Use kmem_cache_zalloc instead of manually setting kmem_cache_alloc
with flag GFP_ZERO since kmem_alloc_zalloc sets allocated memory
to zero.

The Coccinelle semantic patch used to make this change is as
follows:
// <smpl>
@@ 
expression e,f;
@@
- kmem_cache_alloc(e, f |__GFP_ZERO)
+ kmem_cache_zalloc(e, f)
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/client.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/staging/lustre/lustre/ptlrpc/client.c
index 9b89068..87d62e1 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/client.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
@@ -423,7 +423,7 @@ struct ptlrpc_request *ptlrpc_request_cache_alloc(gfp_t flags)
 {
 	struct ptlrpc_request *req;
 
-	req = kmem_cache_alloc(request_cache, flags | __GFP_ZERO);
+	req = kmem_cache_zalloc(request_cache, flags);
 	return req;
 }
 
-- 
1.9.1


