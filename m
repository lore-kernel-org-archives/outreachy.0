X-GM-THRID: 6949513279876104192
X-Received: by 2002:a92:2c08:: with SMTP id t8mr15477751ile.72.1618066610933;
        Sat, 10 Apr 2021 07:56:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:184e:: with SMTP id b14ls2712058ilv.5.gmail; Sat,
 10 Apr 2021 07:56:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx2iP3WY3qk9zywcrWhpn4GQ6QLm4rHmiRJhKWXdQab8dEjf3CZ9BMjHn8loG7y7ePqZgEK
X-Received: by 2002:a92:c265:: with SMTP id h5mr14559641ild.43.1618066609966;
        Sat, 10 Apr 2021 07:56:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618066609; cv=none;
        d=google.com; s=arc-20160816;
        b=wHkx9tZ0pi14/DCg2p+a96QenMOWFfL687k4OUPO09qGMzPK3+xf4j4VR9I+s7M7al
         SA76SI84OdErLoGvULewrbhhJEOs0y7Z1h3hiJIa0VfxH2jlj4zlK7po0fz9U+A92PYC
         J2okTiOBzO8J9aGLFDdGxQ6lvgi5Yy3yamRA4LvJdXN7QvulS065eo99c8Vhu4oGuli9
         sD7HLJsJ6BV0CkLMQJ2LAuImiJsYuJy7x07i/TXExoqXM7VDi1Mbzq6FiP4+86NDEnm/
         w6c74jN8S3whSbWEnqJQF7HaxhCRQ0NVKzEl1QkObVTM/1/jM0ByIdVRBEA4ge11oobc
         a2mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=0TGpMHgPIfxwquihKnJpBKaC4RMUZ2v7oFEWg7Mcab0=;
        b=WhZxyIV2N/f7L4T+UFUsqfIR1Wjhg9Jy6bksIedu8/ra6lJ8VqjCqw1+ECidmAcXCs
         PD93EtzSAr7qKjACwqn5LmZdtLGS2vflS1LM/3t0RUtlo18DaVOeUBkxx/gtjLl769XD
         a5cDDufX3A4r6kPWS8Dt/fvnV8aOb53hziT5XmQkIBIXVCiNfu+F+D1loyLIQaTlysH3
         lKEKrCRl2RQAlR/83R6jS1iK60Ty+9V/i/QtobAdjoRvPlhju+owM8EW9sCRa0nK5ZEg
         MWxXM7lH+KgaJniyXUO0NDvTzRPhZ3dNooHppsvi3YYqHtxvltgjJu8DbtRLRSzbJKnb
         Gv5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zrx0F0kn;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id w1si358355ilh.2.2021.04.10.07.56.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 07:56:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zrx0F0kn;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1036.google.com with SMTP id mj7-20020a17090b3687b029014d162a65b6so6432932pjb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 07:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=0TGpMHgPIfxwquihKnJpBKaC4RMUZ2v7oFEWg7Mcab0=;
        b=Zrx0F0knYCjj6b2nKA8VbMAMpWQta5nUHIvTUZf1ttbj8OeIOQBqtIPvk/xrQdNxsj
         6+Hx8V+YpEI1dehE5kVzX+GJKcmG/haur9hHHCK2Rf/ZKcfKKlNjyUZSyLz8QWkzpBcL
         W8dzf6fq5X3Itg4DqhDnvixq9jNfIsCHsa4/Icgfrb791LtzjGJ4TSYk5WXVJIOuBP5P
         pSViikg0pLSmIf1TeofAgvE+kdqfFa/cdxpFTwnPqjsvshi2613/5ruardWdzuMYRat3
         hReNHAAG63aXMr74unwEZv1pBenROlXLFDPOv/Bu6tWCog5JKW4Em/hvCv/rrdU4o/Sc
         sYoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=0TGpMHgPIfxwquihKnJpBKaC4RMUZ2v7oFEWg7Mcab0=;
        b=tX+Qlm5XOND0svVLdA9OQ9BrxDu9kk5VeiDtohWCftxldCetVWA36kCrQi/+8s839e
         IIAuVh/8IfXDxyzCg6jPqjGduAu8NjFAsb423S/S7n1jWd66o/oHJ4Phv/pDvu2Xdvkm
         eQKhEmpqdy0FfOt++TT29ImSnXVpn/LBJ3M3stWIYIUzMMXm90BCpo+aLSmnpc1YbMFB
         Xyt8ChdikTB9v+xOnxpVyOrTxYIwzkbFDws8OrYZJ4saUtQrUkHA9iwwc6I1lVqgH7Gf
         ZVxKhWfxBEzOEI5OrYOOJweShaOZFcXGvY2tOsh4tQSmrcRHgWBgOgqxiA669kIA65vh
         TtAw==
X-Gm-Message-State: AOAM5334S95rjrbABiBdsSDi1NFVN4aD7GB2clPCq6CGfaOCaHLaUm9d
	7tUOCCUFDp1IvLqjvRXST00=
X-Received: by 2002:a17:90a:1b4b:: with SMTP id q69mr6854213pjq.188.1618066609328;
        Sat, 10 Apr 2021 07:56:49 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id e9sm5827703pgk.69.2021.04.10.07.56.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 07:56:48 -0700 (PDT)
Date: Sat, 10 Apr 2021 20:26:40 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v4] staging: rtl8192e: fixed pointer error by adding '*'
Message-ID: <YHG8qARLUX2KPWwI@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Fixed pointer error by adding '*' to the function.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
Reported-by: Julia Lawall <julia.lawall@inria.fr>
---

Changes from v3:- added reported by tag in proper manner.
Changes from v2:- changed the patch nody to describe changes.
Changes from v1:- added pointer to the function.

 drivers/staging/rtl8192e/rtl819x_TSProc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index 4457c1acfbf6..78b5b4eaec5f 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -327,7 +327,7 @@ bool GetTs(struct rtllib_device *ieee, struct ts_common_info **ppTS,
 	}
 
 	*ppTS = SearchAdmitTRStream(ieee, Addr, UP, TxRxSelect);
-	if (ppTS)
+	if (*ppTS)
 		return true;
 
 	if (!bAddNewTs) {
-- 
2.30.2


