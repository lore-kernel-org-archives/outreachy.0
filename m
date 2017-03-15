X-GM-THRID: 6397571026588270592
X-Received: by 10.129.125.134 with SMTP id y128mr637223ywc.98.1489550596459;
        Tue, 14 Mar 2017 21:03:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.39.17 with SMTP id g17ls2707767ita.21.canary-gmail; Tue, 14
 Mar 2017 21:03:15 -0700 (PDT)
X-Received: by 10.99.124.25 with SMTP id x25mr697946pgc.50.1489550595946;
        Tue, 14 Mar 2017 21:03:15 -0700 (PDT)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by gmr-mx.google.com with SMTPS id 8sor5040itl.0.1969.12.31.16.00.00
        for <outreachy-kernel@googlegroups.com>
        (Google Transport Security);
        Tue, 14 Mar 2017 21:03:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=I1974omYRLsprgwvo9PfKziX+yltxgzjGRbjzHmSCQY=;
        b=vQ818K2FI9p+LLe9ZsyK3GgfZhTAF/kZI80rIAHhCqUjpCNES4RIhfZCd3XWdaOVgY
         CgewK4xRrCH4tqreAkCsXnChMBy8TlFB4BpDbMAcEzM35u4Ljp7a8skOESLU6f7XdmXr
         u1sWxSotH2784ym/faTplZOy4k4Wn7/mynGzT+Fy4PB1ANgbD0aNR4wvutxCb1ZsbM8O
         auTYURyui3oHOyOZ1N+a00wd1JqSMErPmsgAGiKXCom0lrBWyRoZX7vCvOEawqIcOq6k
         BdvhUOwjpQTi4cg68RvWO7P3fst7eVpZDt41zsVMLpYRFuVrfjKG3apEqzpXwwcXAB0k
         cTbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=I1974omYRLsprgwvo9PfKziX+yltxgzjGRbjzHmSCQY=;
        b=iN0iBj/ZSR1wjdHiIlYAxQY8Rgv4HUFSHNXnBp3UmnDlyznKVKvIyDyqCABrabXItI
         FGcXlD9wwco3yv9siOTYgUtGCLgylQrdiEWWXEAPMKua68+3ruEK1/k9FfSjpNML1DwK
         NM9C9aw17djaakQHcf3fxAW5cpq0KTkyDSjd3p43bvrT4CvpGYLaaljmrozeb33kJAHv
         R7lhMuNGo3AWvWwBtKop4aaFgVSqQzimULqfc591XTAWimJKjT5Y8+b8Yo1Q87BBSD4w
         W0jts+S8MxG+2l+NUN88+a+xre2l+mLj6e3b159SjuoqYK9j0PSCg54nH6dPwqh6PqR6
         qcYg==
X-Gm-Message-State: AFeK/H0psZ6Fxu5C/hsGcu444iANXpTg2SsbD5LUeb/aLBthxEL/v1tZTgGVGcyeybKj3w==
X-Received: by 10.36.108.208 with SMTP id w199mr3371962itb.54.1489550595622;
        Tue, 14 Mar 2017 21:03:15 -0700 (PDT)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id t7sm984854ioe.22.2017.03.14.21.03.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 21:03:15 -0700 (PDT)
Date: Wed, 15 Mar 2017 00:03:14 -0400
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: atomisp: Removes pointer comparison to 0 in
 ia_css_queue_get_size
Message-ID: <38ff6ffefe7507757226c50c00e6d328d7e3d6f2.1489549991.git.tahia.khan@gmail.com>
References: <cover.1489549991.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489549991.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Repaces pointer comparison to 0 with NULL in ia_css_queue_get_size
to improve code readability. Identified with coccinelle script
'badzero.cocci'.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
 .../media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
index f397a8c..606376f 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
@@ -383,7 +383,7 @@ int ia_css_queue_get_size(
 			uint32_t *size)
 {
 	int error = 0;
-	if ((qhandle == 0) || (size == NULL))
+	if ((qhandle == NULL) || (size == NULL))
 		return EINVAL;
 
 	/* 1. Load the required queue object */
-- 
2.7.4


