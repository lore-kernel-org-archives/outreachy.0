X-GM-THRID: 6204471677993091072
X-Received: by 10.107.156.129 with SMTP id f123mr3879893ioe.4.1444591160202;
        Sun, 11 Oct 2015 12:19:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.20 with SMTP id n20ls935982igi.7.canary; Sun, 11 Oct
 2015 12:19:19 -0700 (PDT)
X-Received: by 10.66.221.7 with SMTP id qa7mr20845308pac.33.1444591159845;
        Sun, 11 Oct 2015 12:19:19 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pe1si1267720pac.2.2015.10.11.12.19.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 12:19:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhy16 with SMTP id hy16so133674073pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Oct 2015 12:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=h5H+UQyorynVpuNUFGgVZDXdLTgCA4lqmPqTl8KmUeo=;
        b=JiNnqspec2B7mjESVk5aoSa2nlvLChF0JCHo79+OpbnQVruFY7NpoYJ4OWA10NkwEB
         Hg4+2fCoXr1lNnh8hW5XVmpA4Eg3A4T4NUIlfzwE0xLNXYbYYXWYqP73hi/ZOz5KzQH8
         s+3C/U+soY7Ci27LmItxTPnOIjm+rwsHaGOItKZx3qSfXro+Um7iYKUOM+EAXeheVCoN
         wTMc4HlPqgFtxNo2fQtp8tGs1rKUGqo/A4gANflIhF1Sdd67sSJdheD0oFAouHE6huRd
         0aZR2RyNRZIEkk2nC122D0j8qPM4ZD/moaVAdspZifGDiGZ3bhfphf+bJVr+xpUKvfuT
         YjMA==
X-Received: by 10.67.5.42 with SMTP id cj10mr21282995pad.128.1444591159763;
        Sun, 11 Oct 2015 12:19:19 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id wi10sm14003339pbc.31.2015.10.11.12.19.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 12:19:18 -0700 (PDT)
Date: Mon, 12 Oct 2015 00:49:08 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] Staging: vt6655: rxtx: Remove extra space character
Message-ID: <43aba6a5182d22a3856fe326dfa8e69ff796f12d.1444590771.git.shivanib134@gmail.com>
References: <cover.1444590771.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444590771.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unnecessary space character after the variable RATE_16M
preserving the alignment of all other variables and comments.
Fixes the warning by checkpatch:  space prohibited before
that ',' (ctx:WxW)

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v3:
	-Make alignment of variables better.

 drivers/staging/vt6655/rxtx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 5875d65..0c1f6a1 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -78,7 +78,7 @@ static const unsigned short wFB_Opt0[2][5] = {
 };
 static const unsigned short wFB_Opt1[2][5] = {
 	{RATE_12M, RATE_18M, RATE_24M, RATE_24M, RATE_36M}, /* fallback_rate0 */
-	{RATE_6M , RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */
+	{RATE_6M,  RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */
 };
 
 #define RTSDUR_BB       0
-- 
2.1.0


