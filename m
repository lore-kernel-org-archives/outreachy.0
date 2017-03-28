X-GM-THRID: 6402003753150447616
X-Received: by 10.99.175.15 with SMTP id w15mr2562642pge.67.1490677118665;
        Mon, 27 Mar 2017 21:58:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.38 with SMTP id 35ls2207165ott.19.gmail; Mon, 27 Mar
 2017 21:58:38 -0700 (PDT)
X-Received: by 10.129.45.86 with SMTP id t83mr9560835ywt.68.1490677118304;
        Mon, 27 Mar 2017 21:58:38 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id r66si461873pfb.7.2017.03.27.21.58.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 21:58:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so18313254pgh.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 21:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OjvkV3cVcy7aMWCp+3LIFLLczXlDr6/24tj/LCEvC5o=;
        b=IC8VbP5frNwuGHK05bxAGbP1lnFinQuE+2UWrZZqry+0N9fDZEPx+IxMIAS0vRXiKN
         yAiUP9LwI1tuQxqsMPPNeQ/apLMUm2ZhD7sKt6KYhDhb3w/s035BbWsrGv0DxqMC1Pnf
         Z2K2DysS3U90UpAGKOMqyqkFA7H7RNqZt1qU3etRfmaz+YX+8Ns8FY7YpsG5RkoyaEBc
         M7ik2n7TtzozhFmH6mvB15Kk3/+G23oTlr/Cd9bC0pQz4Aaziqtl80o3dRWqcL0Hxx6z
         1HHcObKAdwaDSg/XGAJU3c+3EdCJZkdGF3tFJOZfTJBBvJ1wkvJJ/9UkzcgFBcdRZwoP
         QufQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OjvkV3cVcy7aMWCp+3LIFLLczXlDr6/24tj/LCEvC5o=;
        b=IBgFPQS8b8So/FEyPpZnUpagdK5dPeeScYXu/YEkGIJWfYZb0lsPDPEB13MLplCHbB
         yWOFA2dSaspS+bxfZBYTGajocutio7ynL7w2mzngfD/shSd27RMFdbq2Udj+kkUO3X4r
         W+CUQaB4ueKVQIJoftf/cKSmGvHvfFKbkOAhaZg0fL9fmL2/vHp18frWwQhEHYBc6bvk
         9MzVlkBBKdg/mupJP+n1l18r88HhyjNm2r32peXLBDiPtbyPtSSwxhfzEN+HXD9gBDTL
         Wi2131VXdZ3O21nZq8+rQ1hh2vWV9Xv1ONwTz9l3mI+bN8dp1k8U+uNTYUkYEZ1lEVhI
         HNCQ==
X-Gm-Message-State: AFeK/H2u22XVpryvEK8a20tidHsb3bujtkkRo7yPLoeyvWssnoDT5LFYOxDCALnW3vdZuw==
X-Received: by 10.98.97.7 with SMTP id v7mr21845430pfb.161.1490677117903;
        Mon, 27 Mar 2017 21:58:37 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5181:ce92:a4e3:114c:b305:cb39])
        by smtp.gmail.com with ESMTPSA id i3sm4101194pfg.117.2017.03.27.21.58.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 21:58:37 -0700 (PDT)
Message-ID: <58d9ed7d.03c1620a.37b95.cdfd@mx.google.com>
X-Google-Original-Message-ID: <20170328045714.GA15712@<rvarsha016@gmail.com>>
Date: Tue, 28 Mar 2017 10:28:32 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 2/3] kernel: pid: Change function return value to bool.
References: <cover.1490676249.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490676249.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Replace unsigned with unsigned int and add bool as return type for
pid_before() function. As the function is called only once in condition
for do while loop. This patch fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v3:
- Modified commit message.
- Replaced unsigned with unsigned int. 

Changes in v2:
- Modified commit message.
- Changed return type of pid_before() function.

 kernel/pid.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kernel/pid.c b/kernel/pid.c
index 01fb660..bb0a1c0 100644
--- a/kernel/pid.c
+++ b/kernel/pid.c
@@ -118,7 +118,7 @@ static void free_pidmap(struct upid *upid)
 /*
  * If we started walking pids at 'base', is 'a' seen before 'b'?
  */
-static int pid_before(int base, int a, int b)
+static bool pid_before(int base, int a, int b)
 {
 	/*
 	 * This is the same as saying
@@ -126,7 +126,7 @@ static int pid_before(int base, int a, int b)
 	 * (a - base + MAXUINT) % MAXUINT < (b - base + MAXUINT) % MAXUINT
 	 * and that mapping orders 'a' and 'b' with respect to 'base'.
 	 */
-	return (unsigned)(a - base) < (unsigned)(b - base);
+	return (unsigned int)(a - base) < (unsigned int)(b - base);
 }
 
 /*
-- 
2.9.3


