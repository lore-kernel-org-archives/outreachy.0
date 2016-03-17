X-GM-THRID: 6263088426063495168
X-Received: by 10.140.230.19 with SMTP id a19mr8251578qhc.25.1458239578990;
        Thu, 17 Mar 2016 11:32:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.34 with SMTP id f31ls1834087qge.76.gmail; Thu, 17 Mar
 2016 11:32:58 -0700 (PDT)
X-Received: by 10.129.55.16 with SMTP id e16mr8396676ywa.44.1458239578269;
        Thu, 17 Mar 2016 11:32:58 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y20si1509540pfa.2.2016.03.17.11.32.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 11:32:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q129so12705209pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 11:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FRHkxTg0+8KOOXs4pLqWkg5TUJdWrwiw0frYkob/+Dw=;
        b=SWi0X47KFT+J9z5UwMOvzs/nMB1w1nzB1Y0EJmAfughM9Sy7F3XQwNSWP2a8TaB0uQ
         XTAWi745w2zHiwrNmhOEPU/dg3i2EoHOEA1nuYsAyH56DD4zgf+kPTCH+wr1gjzdkhwO
         zGdJRvMxw2nRwgNkaCBhnp28LyWnTV6gQeTbnKrR0mLuWOlcw1GbuWSvX58Fh+Bq3MAm
         9+mqZC6W64fqJfzwE98IAUpX3zGf51mKoe6hcY0XoZLBXafihg4Lh4c0hx4p3UgM6C/j
         pRO0EfkvmWypnomk73fIvFTLDU3Rxv3hdAjx30Q6f1XXCLrvxPczDMijGf8UzkhVs62o
         RFeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FRHkxTg0+8KOOXs4pLqWkg5TUJdWrwiw0frYkob/+Dw=;
        b=cViXDpTbF+5c+GgioOO7raxtkKQkMHiM3izE9AGuU3goARagNLaMjJ6LEeM4wR1Lfr
         NAfGgSe5kVqUWhEGKhSgJNXA14iH51nvJOWKb4d1Pkuv8O99NHXutK9Sk45BgCpdJ9S3
         elL9se8+QpJ8iVEUsG9bJ6YhqwgtCxL89hxX68VWRoWUlbMBO4lRRxxL6xPKWtE3+qON
         NPptT+nch13yLWykmeM4D+xVpBo5k59N+aHXo1BXITdDBW5GMlBKImqFKdyW8q2kN3yO
         TRQVIi8aPAtXE/JACqjRK/zTEnwXbxn7ghPcR4rXrEb11T+2LJ1i3fEkL19WV7PkUaOH
         zPJw==
X-Gm-Message-State: AD7BkJIF0ZM/FtizqEjRlqFAWionZozNBRROH8Z/1HNQIdoyXLaLEjB7afW9grV/3BdwPw==
X-Received: by 10.98.17.132 with SMTP id 4mr17209085pfr.16.1458239578055;
        Thu, 17 Mar 2016 11:32:58 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.0])
        by smtp.gmail.com with ESMTPSA id lq10sm15026384pab.36.2016.03.17.11.32.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 17 Mar 2016 11:32:57 -0700 (PDT)
Date: Thu, 17 Mar 2016 17:04:00 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] Staging: i4l: capi: Add paranthesis to complex macro.
Message-ID: <599699a2106b6a55e9ef292fd019427a259e5ac6.1458213062.git.bankarsandhya512@gmail.com>
References: <cover.1458213061.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458213061.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Add paranthesis to complex macro.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/i4l/pcbit/capi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/i4l/pcbit/capi.h b/drivers/staging/i4l/pcbit/capi.h
index 635f634..6f6f4dd 100644
--- a/drivers/staging/i4l/pcbit/capi.h
+++ b/drivers/staging/i4l/pcbit/capi.h
@@ -17,7 +17,7 @@
 #define REQ_DISPLAY       0x04
 #define REQ_USER_TO_USER  0x08
 
-#define AppInfoMask  REQ_CAUSE | REQ_DISPLAY | REQ_USER_TO_USER
+#define AppInfoMask  (REQ_CAUSE | REQ_DISPLAY | REQ_USER_TO_USER)
 
 /* Connection Setup */
 extern int capi_conn_req(const char *calledPN, struct sk_buff **buf,
-- 
1.8.3.4


