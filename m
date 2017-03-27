X-GM-THRID: 6402003753150447616
X-Received: by 10.107.34.212 with SMTP id i203mr6905007ioi.13.1490582654342;
        Sun, 26 Mar 2017 19:44:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.41 with SMTP id n41ls3564310ioe.33.gmail; Sun, 26 Mar
 2017 19:44:13 -0700 (PDT)
X-Received: by 10.99.157.142 with SMTP id i136mr7124635pgd.78.1490582653493;
        Sun, 26 Mar 2017 19:44:13 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y203si1732171pfb.0.2017.03.26.19.44.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 19:44:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 81so8826459pgh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 19:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RvKTd0wX5w+Y1ctpJ2d/FaFPBE54i19dAOWKFrv2GdE=;
        b=FQpJcZd416jbfDB21u120AMee+S2zfF3QnuFnc0+C779ybssastKtPZPGo2TSBZPoU
         e8zxOwB7hkeeV4wwJjLSJ4rwzuQweWI1l4QOTcnioIKrXk530mKyGQNj4/I7vSk3E9xs
         RQEgtTq0YG8E9fklGpnEhNiD4bzoaYrCPy+dZFpRB9psWlAj/LeiRu2LDbw9AG5ZMmCU
         XJ6tk1tppOIkVavudZ6OP0libZN81RIRqVPTMFGxcJQJW3MjBZ/m7XlyBWPpA2/6TKxI
         olAHJLRL1Ng98CQKGpj1UCOaH6IQSTPuXuyvkoejVK+79IjmClQk0LEZZu6hwnJaLf1n
         hApg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RvKTd0wX5w+Y1ctpJ2d/FaFPBE54i19dAOWKFrv2GdE=;
        b=dMfPT57zi0NfPia93JX+g/fXlRBv61T4dAWWd9LhlGlVnBylwFyfasAoueBr1L9w7M
         nEGaMylGArubkQ1aYuMzOnpJwwUnarZGTYVeP69lNeV9EHk3L7mabb1Rv5KYKAqy3GZM
         biBNno3JpkIbBkMyo39E16OXGLXAkG6A8TvWiKI9I/g9ZzcrYeXaGc4zFZD1PSEiBdWW
         XI+fWmaqKfPXic6dRiqdeDoA+bKd+APtYjpW+iAoCREEEEGU9NALTt3U1VOiRZCu3+Wf
         aqq+g4GcfQK36TSA3lWvLYwriUKoCtI5gWdj8px8yZPNGuMmMJwIDTR6cIyZ0HR/4KXi
         rSew==
X-Gm-Message-State: AFeK/H2J4sp7EzioWHDup6q5E3T1ogtCgcZZlEgVReXyUjtsQiObcEUkZsoybtGRgidFwg==
X-Received: by 10.99.150.1 with SMTP id c1mr21949529pge.160.1490582653139;
        Sun, 26 Mar 2017 19:44:13 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5181:ce92:a4e3:114c:b305:cb39])
        by smtp.gmail.com with ESMTPSA id n185sm17034838pga.9.2017.03.26.19.44.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 19:44:12 -0700 (PDT)
Message-ID: <58d87c7c.c240630a.d8622.c768@mx.google.com>
X-Google-Original-Message-ID: <20170327024408.GA2777@<rvarsha016@gmail.com>>
Date: Mon, 27 Mar 2017 08:14:08 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/3] kernel: pid: Change function return value to bool.
References: <cover.1490581288.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490581288.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Remove unsign cast and add bool as return type for pid_before()
function. As the function is called only once in condition for do
while loop. This patch fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- Modified commit message.
- Changed return type of pid_before() function.

 kernel/pid.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kernel/pid.c b/kernel/pid.c
index 0b0aad4..c6f7b89 100644
--- a/kernel/pid.c
+++ b/kernel/pid.c
@@ -117,7 +117,7 @@ static void free_pidmap(struct upid *upid)
 /*
  * If we started walking pids at 'base', is 'a' seen before 'b'?
  */
-static int pid_before(int base, int a, int b)
+static bool pid_before(int base, int a, int b)
 {
 	/*
 	 * This is the same as saying
@@ -125,7 +125,7 @@ static int pid_before(int base, int a, int b)
 	 * (a - base + MAXUINT) % MAXUINT < (b - base + MAXUINT) % MAXUINT
 	 * and that mapping orders 'a' and 'b' with respect to 'base'.
 	 */
-	return (unsigned)(a - base) < (unsigned)(b - base);
+	return (a - base) < (b - base);
 }
 
 /*
-- 
2.9.3


