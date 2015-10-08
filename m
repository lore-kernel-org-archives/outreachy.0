X-GM-THRID: 6203360253861429248
X-Received: by 10.107.136.229 with SMTP id s98mr8242036ioi.34.1444332597051;
        Thu, 08 Oct 2015 12:29:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.244 with SMTP id 107ls1318301qgp.24.gmail; Thu, 08 Oct
 2015 12:29:56 -0700 (PDT)
X-Received: by 10.31.182.10 with SMTP id g10mr7437069vkf.7.1444332596699;
        Thu, 08 Oct 2015 12:29:56 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id el2si5801756pbb.0.2015.10.08.12.29.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 12:29:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hy16so62825686pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 12:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=PL8HDApi33UPt9MV2atislCpULjemwbPTRsTtqNYTSI=;
        b=gD9hOvEM0778NYCMvc+nciUqk50OO3oJz3oTvGO9Eon97k6RMQ0CVXObMlw21VS4Pz
         2SYVZhmV25qFUYN53g7YxG9BRgEi//UxVnBhh8AoCbE+8OLauRr46IhfQ+o/Kdwf7c54
         rTlZ6cAQpX3AbnzNxohMFR/Pei8Z85iPu7iVd+cBBYk7M1qBnsG2urWZIMeW6o/VP1A1
         QS1oPYeenDXBcoLCAgiH/J4PKGWoTyR6wM/YJZa6BQvWdpnMyk8H01dJs9kKg/lL1C02
         NLbRX0+CWJ2I29W5JXkBJe6HfNtTh13U0MBPpXNFJIenuFgbf5+wxY+Hp7TSNIORGg7u
         uuuA==
X-Received: by 10.66.219.8 with SMTP id pk8mr10211960pac.138.1444332596544;
        Thu, 08 Oct 2015 12:29:56 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.203.20])
        by smtp.gmail.com with ESMTPSA id gw3sm47002656pbc.46.2015.10.08.12.29.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 12:29:56 -0700 (PDT)
Date: Fri, 9 Oct 2015 00:59:52 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: sm750fb: Remove space before closing brace
Message-ID: <7fe81947276c2345787e7908cf412ec9ea65c3c7.1444332001.git.amitoj1606@gmail.com>
References: <cover.1444332001.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444332001.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove space before closing brace '}'. Problem found using
checkpatch.pl
CHECK: Blank lines aren't necessary before a close brace '}'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index e797b5b..ebc3242 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -234,7 +234,6 @@ unsigned int ddk750_getVMSize(void)
 		break;
 	}
 	return data;
-
 }
 
 int ddk750_initHw(initchip_param_t *pInitParam)
-- 
1.9.1


