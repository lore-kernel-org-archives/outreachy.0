X-GM-THRID: 6205609650776178688
X-Received: by 10.107.159.132 with SMTP id i126mr4966705ioe.23.1444856330901;
        Wed, 14 Oct 2015 13:58:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.129 with SMTP id xw1ls199372obc.10.gmail; Wed, 14 Oct
 2015 13:58:50 -0700 (PDT)
X-Received: by 10.182.250.233 with SMTP id zf9mr4459829obc.7.1444856330669;
        Wed, 14 Oct 2015 13:58:50 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id zg1si1131841pbb.2.2015.10.14.13.58.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 13:58:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id cn9so33231497pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 13:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=7Ci/Z+e+nx1iz2+yMNFpGWaDXXFZYL8AcyYFN659+NQ=;
        b=TWJr7rhH+H3+Ryaowi/LLiA7MOskA9WUKgvZ6Fp9imqqh0CNT9s4CSqiVnZIm2nVVZ
         27g+BycjmPAtOwApJUnpzyvjJuAHb5p2zh3yslCc8g3VY/jVFcVIWOy+S1c9aTC3/AhO
         SKgHZdUiPPG2k/l6k/2IXeH6rtzL38BQWAebcB8F6LppiP0AMjhBpFXnkdV0zE3nmy6a
         MRdZjUYCQ/aiU88qBMpY7yOpAFnUWOs9cgxO0gqHaQ8Y87hNDwNwN2AYxNg7wF5cQ0cD
         /GWB3VyBBMc6/AZRa6GLYBPqu2O0pRnqCi0ymJcW/hirWeQVUtRHwIcre15STd3EaS3c
         l2yw==
X-Received: by 10.68.211.131 with SMTP id nc3mr5772057pbc.159.1444856330511;
        Wed, 14 Oct 2015 13:58:50 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id fe8sm11365012pab.40.2015.10.14.13.58.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 13:58:50 -0700 (PDT)
Date: Thu, 15 Oct 2015 02:28:36 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] staging: speakup: varhandlers: Remove useless
 intialisation
Message-ID: <6374d8aabb68d634cb23f6ca01145a10ee4999f0.1444855933.git.amitoj1606@gmail.com>
References: <cover.1444855933.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444855933.git.amitoj1606@gmail.com>
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
 drivers/staging/speakup/varhandlers.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/varhandlers.c b/drivers/staging/speakup/varhandlers.c
index b2afec6..ab4fe8d 100644
--- a/drivers/staging/speakup/varhandlers.c
+++ b/drivers/staging/speakup/varhandlers.c
@@ -323,7 +323,7 @@ char *spk_strlwr(char *s)
 
 char *spk_s2uchar(char *start, char *dest)
 {
-	int val = 0;
+	int val;
 
 	val = simple_strtoul(skip_spaces(start), &start, 10);
 	if (*start == ',')
-- 
1.9.1


