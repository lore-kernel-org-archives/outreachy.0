X-GM-THRID: 6397571026588270592
X-Received: by 10.13.223.20 with SMTP id i20mr682520ywe.164.1489550591669;
        Tue, 14 Mar 2017 21:03:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.50.212 with SMTP id y203ls449227ioy.7.gmail; Tue, 14 Mar
 2017 21:03:11 -0700 (PDT)
X-Received: by 10.107.50.198 with SMTP id y189mr1037829ioy.81.1489550591096;
        Tue, 14 Mar 2017 21:03:11 -0700 (PDT)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by gmr-mx.google.com with SMTPS id v64sor8984ioi.1.1969.12.31.16.00.00
        for <outreachy-kernel@googlegroups.com>
        (Google Transport Security);
        Tue, 14 Mar 2017 21:03:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=b1GTXuv5Ngjine64S+93OiSN1o2YMSCO346bRhVavek=;
        b=ithcvL9tXV7/S65lviG25tozkC4xZmeTIgUAmcl6LAe5H+zYQqE5woRjjsshy7IBgy
         4m8KULOuiAHXevchcy7/5HEyhpI0WQ3w8x+6dXxzgRSH4mSVs1xYRtPI8sWape95xf7g
         EVSAa/zC6l68AHTtKpbCYFy1c2LCespw2mLLRFIXx9OPosZINev4rcnb6mW4TO3wReS1
         pfXv8M0GIiFTbvf8ARiJCYV4J5nmjyMfu2FZOr+ye64yJ+8lu++8onU0rBYRt/PRKHlj
         0ZtBlA5+8yw52CMPpGQNI1HOz5/HlwrXt3pBglulQ54PrdSpw12clbH6uKJ1g7PoQPsR
         fOGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=b1GTXuv5Ngjine64S+93OiSN1o2YMSCO346bRhVavek=;
        b=Ns29sTiG8u1GDwUSBnsB+KzDQJPMs7LMHd6qSeafVlKNi5Z8axcqc1QnN0QsOCohBu
         z0sytl9eA0BRtpA8TqTDLaWUTw/U1dSub75eVy6N6Z8Jp0B7mNXBSDGEXpPAcrRyrmi8
         mDpLRKls9uDowiBdqaMz9LSl5szd+ouCCaAmQJ54KiVHeg/G2MiLKd0VKB3PFg8gAaW5
         6TRSZ5H/UZd5YTKiVqj2WXLeb9nCRbo9iIkBOUvQAyGl7hOkNBxAkquOYNe/rhjHhxhy
         XbO0E6eXoh0CtHqTOaptDMH8ai6KO7tzd2b2I+jBdFXyzF0PvMj3EzyHJAlmzrS11U+X
         ObWQ==
X-Gm-Message-State: AFeK/H3CgdLbzQ83opROpj0wJHUHYklfIFiIo7NptTcaPXmTFTiAE4vAKFpcifck8qt/wg==
X-Received: by 10.107.12.40 with SMTP id w40mr3240430ioi.209.1489550590929;
        Tue, 14 Mar 2017 21:03:10 -0700 (PDT)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id b126sm970381ioa.55.2017.03.14.21.03.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 21:03:10 -0700 (PDT)
Date: Wed, 15 Mar 2017 00:03:09 -0400
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: atomisp: Removes pointer comparison to 0 in
 ia_css_queue_dequeue
Message-ID: <33059ec75122adc56de6a4eb27d35b88a7bdb459.1489549991.git.tahia.khan@gmail.com>
References: <cover.1489549991.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489549991.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Repaces pointer comparison to 0 with NULL in ia_css_queue_dequeue
to improve code readability. Identified with coccinelle script
'badzero.cocci'.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
 .../media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
index e4f589f..f397a8c 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
@@ -146,7 +146,7 @@ int ia_css_queue_dequeue(
 			uint32_t *item)
 {
 	int error = 0;
-	if (qhandle == 0 || NULL == item)
+	if (qhandle == NULL || NULL == item)
 		return EINVAL;
 
 	/* 1. Load the required queue object */
-- 
2.7.4


