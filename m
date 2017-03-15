X-GM-THRID: 6397571026588270592
X-Received: by 10.99.241.69 with SMTP id o5mr617359pgk.167.1489550587589;
        Tue, 14 Mar 2017 21:03:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls1198400otg.18.gmail; Tue, 14 Mar
 2017 21:03:07 -0700 (PDT)
X-Received: by 10.129.82.133 with SMTP id g127mr586597ywb.161.1489550587205;
        Tue, 14 Mar 2017 21:03:07 -0700 (PDT)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by gmr-mx.google.com with SMTPS id p67sor8848ioo.5.1969.12.31.16.00.00
        for <outreachy-kernel@googlegroups.com>
        (Google Transport Security);
        Tue, 14 Mar 2017 21:03:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=BkgKPMJjFdUhVhrUNhvJLH+97uVQ8C9vGA7WvupS2UE=;
        b=RyoAkKcH1nALeEcIM1eOiY8SWD+r5WnN1XQ9QO+khU7lofK74WNfly961i8Od1Yq3e
         2AvGrhkP4A8ROLc8k+oeERsEBRVrbxG5wpyf4NGEyoXgW9CWqYvPZxyTlBIy7n7DdKEJ
         dqjtvyAutMvERLcxK73lG2Fx9teR9wKqE181ltOlFIRsULZsbF/MkNq9l/weSXiAON9n
         7hZ276seXXgHc+2JguvAyoRXvAXwZwwjk90LoswHNhRnbqwurbOgbfd1dESaBadBhOw4
         zF4lHA2wGwPqI7o/sRPVhNHvtxRxEyw2RBYqtOJNwPsf6ln6xAtdQnaQfEStt+CFnBgP
         5K3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BkgKPMJjFdUhVhrUNhvJLH+97uVQ8C9vGA7WvupS2UE=;
        b=eTWTWrV3igkZeoGQrwIyObjitWIRu7hUAgVO13PeN8sgDppisit10sYlq/S05lhZZK
         rSoszQp70W6GRG4jaU0neMf0sbRQ6Nat2F2KBymPZOxk/wFncoK8ftiaX10HmYmTvIG3
         5Us0eK0kastqrWK2fZlihSEsomgWGbhX265dDDTC2QAOD1BiO0dUPiWVKOvd6Bq43eUZ
         Kqmm8qQaA14mBGMQ7sLnObG5n9WGkleobkf2jwFA3ABgyrXpAiEt9aahEJeH/lepTKgM
         C6zWF3oY0YD8wKDNMiC/Xk6avq9OKCSEgjn10ywrxulvvyYHPe+jfyHSksFSRRK83CMP
         Bpnw==
X-Gm-Message-State: AFeK/H0/hY7C9aAjmCSyEBh7mgb9t2dvk8hR2TsC/EJKmruC3WsqLpyIHpmyNBRmdt3DbQ==
X-Received: by 10.107.205.197 with SMTP id d188mr3051375iog.206.1489550586973;
        Tue, 14 Mar 2017 21:03:06 -0700 (PDT)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id p191sm6198908itc.4.2017.03.14.21.03.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 21:03:06 -0700 (PDT)
Date: Wed, 15 Mar 2017 00:03:05 -0400
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: atomisp: Removes pointer comparison to 0 in
 ia_css_queue_enqueue
Message-ID: <558afe9e88cceb4e834e9fc6ad950fb637706908.1489549991.git.tahia.khan@gmail.com>
References: <cover.1489549991.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489549991.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Repaces pointer comparison to 0 with NULL in ia_css_queue_enqueue
to improve code readability. Identified with coccinelle script
'badzero.cocci'.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
 .../media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
index 06667bd..e4f589f 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
@@ -88,7 +88,7 @@ int ia_css_queue_enqueue(
 			uint32_t item)
 {
 	int error = 0;
-	if (0 == qhandle)
+	if (NULL == qhandle)
 		return EINVAL;
 
 	/* 1. Load the required queue object */
-- 
2.7.4


