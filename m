X-GM-THRID: 6808669983198937088
X-Received: by 2002:adf:decf:: with SMTP id i15mr12508418wrn.277.1585267014606;
        Thu, 26 Mar 2020 16:56:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:56d2:: with SMTP id m18ls3412294wrw.3.gmail; Thu, 26 Mar
 2020 16:56:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvxzW4pBkHyXbZrsFi2xUxbPENjfLjMe4sg3+BrP6jx0WTGSgD9R1h5kbjLPTOc4CT0nk7C
X-Received: by 2002:adf:ef08:: with SMTP id e8mr1014448wro.66.1585267013518;
        Thu, 26 Mar 2020 16:56:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585267013; cv=none;
        d=google.com; s=arc-20160816;
        b=f5evUiH4xhWDzEaEWN02SkU39W4dEHfZ9CZTKPpvo2D14NU+Cy1bZqqQz3D6S2ebAR
         AJvCZ7Udyhgx76RV6eoetjVZwQIQCQj4t0Dw8HU48kOEHCfXbeVWbzAmzMJ5dq/BkCEM
         MCvwYf8AsfJG4bidevB7oom9zCwvAAUq/JbqZqdQSG7u6A1rqOIaK9YfKKplwJdGR9Ey
         K3Vf9ZHc3c6ARDuj0wRFnqFZstX/bHlDdXob0fr63SQigHgUpzgzbZv+xrfBnvLlCaCg
         THAy00wP5CXnyZ2e1vr3uJJSVEpL02Ve2jBFMFRqmvraJ7yf6tYra69pvUSDkH2wmWtK
         vZ9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:user-agent:ifrom:content-disposition:mime-version:message-id
         :subject:cc:to:date:dkim-signature;
        bh=dlp83iKtW/LmKLHfU3NyMYPQuhlVIpeMS1qtRDzUMAc=;
        b=kk1RRY33eM44yeZ/9u8KicDg+EGgrDvCWpojpuLS3cQ74Pox3PfOZoJ56zUKruHhm+
         tjgIzWHTMA094OqyqcULKAEDmm+YbQK0vy1BtxlP1a5xwfsEPZ2Qxs5NMs511Knbygj4
         bxfn6zaEkvhDr/MGHpPmAA1EYrTsOK6GJmkxd12EjK0Ju0zSzJxa2uG2SJVVLPoLV2Wr
         SJDqjbuXT1Mx4Ji1LPhnuOFY9JbgxyiBzc+LForr8Tg+3i9BGOvn8BpIBme7TIUfHVI8
         dGUoyeel3AlPLKRKqRM5cZ2aBdctfJiSuL4uh2t/D6Q+hNIdtA2yz08/X/YecFxMebNZ
         WHAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Beb2+717;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id y83si80116wmb.1.2020.03.26.16.56.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 16:56:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Beb2+717;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x241.google.com with SMTP id t17so8369347ljc.12
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 16:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:to:cc:subject:message-id:mime-version:content-disposition
         :ifrom:user-agent:from;
        bh=dlp83iKtW/LmKLHfU3NyMYPQuhlVIpeMS1qtRDzUMAc=;
        b=Beb2+717tVtA7cNBVAWnYxU2by8eNKAH0Q43QIFOM1VvkasggGB0ZFwCngWL3aPlAl
         QF1wK17K0lgFv2AV7zDkuCV9FzXj5rZNNpErWWb9nR5HhkZGcjkOUuj6+Cj3NLmPjjh2
         zIYsRwGwEC+5q47AWkRgYZqB/Vj50R7xeFApSVlElABezAsL+7DvZwgHW8x6nXF1a/3Y
         AlNrGmz51E4uqkVgdfdAlvL4fFpAZYqzVPLNXRh8h18PnUCOxiGBluhsPPa/0SAy/HRl
         WQEX0ngxwvJTh6Tep1zpEr3QOkYsJIu712bDLbXm6mkWcfKOLrMEyKxgnRwJqXy/Nx78
         wMyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:cc:subject:message-id:mime-version
         :content-disposition:ifrom:user-agent:from;
        bh=dlp83iKtW/LmKLHfU3NyMYPQuhlVIpeMS1qtRDzUMAc=;
        b=cl0UWVSoUOe6z+9X+2UHmvR1LbiNgnU4lincpIBCLy2NlkRlTt39fSs2X1q9SZ9bnM
         VWnz96rtVn0XtwCYOHyI8ij3PRaOFtqEqQfnhJQ1qXtRAwXBm7zNuJ/PcL8LHgnHQVcA
         hHV4TlMVm1tam2etfqjh9FMs62OWD86KwYQbK/zKrp6h5FstenL8iFwvj1ktZsPpQQwm
         +djRchWq/KOlDqUbtcM92bFit7rZdVOFz1JywHMLju1Y7NL0q8b7rihinW8XabvLJckI
         kvWLbkYveoaxvaR5bLh9e6bkRgSTrYdbaG7twr56OwbXAE+jeKgHju0Ic0k4bnWLBvK1
         iwJg==
X-Gm-Message-State: ANhLgQ0LQ4RmCxbrtLpDJ4LSkILMUpRiGCM9XUsMu0dv1XNItVsEjIyI
	SllPW5tx94nh5QxXMUCNpYKDQyVLwD4=
X-Received: by 2002:a2e:780a:: with SMTP id t10mr7015382ljc.83.1585267013125;
        Thu, 26 Mar 2020 16:56:53 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.33])
        by smtp.gmail.com with ESMTPSA id u2sm450730lfm.59.2020.03.26.16.56.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Mar 2020 16:56:52 -0700 (PDT)
Date: Fri, 27 Mar 2020 02:56:50 +0300
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, tkjos@android.com, maco@android.com,
	arve@android.com, joel@joelfernandes.org, christian@brauner.io
Subject: [PATCH] staging: android: struct should normally be const
Message-ID: <20200326235650.GA737@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
iFrom: Gokce Kuler <gokcekuler@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
From: gokcekuler@gmail.com

Add const before static struct file_operations for tells 
the compiler to not let anybody modify it. 

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 8044510..395929d 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
 
 static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 {
-	static struct file_operations vmfile_fops;
+	const static struct file_operations vmfile_fops;
 	struct ashmem_area *asma = file->private_data;
 	int ret = 0;
 
-- 
2.7.4


