X-GM-THRID: 6203951800553308160
X-Received: by 10.31.182.10 with SMTP id g10mr14758494vkf.7.1444470148695;
        Sat, 10 Oct 2015 02:42:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.246 with SMTP id u109ls2313914qge.65.gmail; Sat, 10
 Oct 2015 02:42:28 -0700 (PDT)
X-Received: by 10.140.150.206 with SMTP id 197mr14863336qhw.0.1444470148083;
        Sat, 10 Oct 2015 02:42:28 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id w5si622657pbt.1.2015.10.10.02.42.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 02:42:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id lk4so109217963pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 02:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ipeQbbLM61vHqRIrlRBDrKXEtOKzx0G+t1ZdhIxG5lI=;
        b=u2JWun1jdJFjYTPxoohfxVrjS4dxtqshroqH9Jfs/6Y+FDvoEH5uRsUWnalwcvoScH
         4oKA/DbHiyEq7LkRt3+xOJQ3eKRapWjV1qJJcjSslnEdln22s2Mht2Suy9JECPpO/fxB
         3CLIBUFW+ANwopU9PqNp+ivFaR+JjZUhrmd8yt54IXHW90Nmmglltsp5ofgb5g/0Ef71
         9qkXIA1+KliTXcSxKRfKUkqifWY6FWATvs8YNjRTdlb9NLRBspieqmVSoUhcTHC9N26O
         OIa2ERo9WTEgftbh3B4lMiUXlJYMVnBJrrJwKSy6k+GkJIRh5bA7aRotMMun6tDrwZS6
         spJg==
X-Received: by 10.66.235.194 with SMTP id uo2mr14514978pac.41.1444470147953;
        Sat, 10 Oct 2015 02:42:27 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id zk9sm7212927pac.7.2015.10.10.02.42.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 02:42:27 -0700 (PDT)
Date: Sat, 10 Oct 2015 15:12:16 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] Staging: vt6655: rxtx: Remove unnecessary space
 character
Message-ID: <0e904876eb0c4ce2c937f9b1c54afb1039ac83c6.1444469447.git.shivanib134@gmail.com>
References: <cover.1444469447.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444469447.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unnecessary space character after the variable RATE_16M.
Fixes the warning by checkpatch : space prohibited before
that ',' (ctx:WxW)

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
	-Make the commit message better and clearer.

 drivers/staging/vt6655/rxtx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 5875d65..a909128 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -78,7 +78,7 @@ static const unsigned short wFB_Opt0[2][5] = {
 };
 static const unsigned short wFB_Opt1[2][5] = {
 	{RATE_12M, RATE_18M, RATE_24M, RATE_24M, RATE_36M}, /* fallback_rate0 */
-	{RATE_6M , RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */
+	{RATE_6M, RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */
 };
 
 #define RTSDUR_BB       0
-- 
2.1.0


