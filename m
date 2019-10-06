X-GM-THRID: 6744681878871080960
X-Received: by 2002:a62:cd08:: with SMTP id o8mr4687739pfg.115.1570368623746;
        Sun, 06 Oct 2019 06:30:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:5996:: with SMTP id p22ls3552734pli.3.gmail; Sun, 06
 Oct 2019 06:30:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz7oEyeSQTkKp7RJyajo0IQIOfHmF+RM5ZeRPKseWNz4zheg6RRDSNzvWovDal2QvMXQQMf
X-Received: by 2002:a17:902:9a49:: with SMTP id x9mr25332441plv.324.1570368622553;
        Sun, 06 Oct 2019 06:30:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570368622; cv=none;
        d=google.com; s=arc-20160816;
        b=Uc4rt935eTFx3ugIM3ztEPaEqsrlybvmQ1oVomjsSJri+Pxpr536hszjcnj4XCBXAd
         SBfflFt57zbh/En0WJC0r6x/cL2UjHAWtAuPzooMU6/8q/ldI4L1r++M+ZOxL31QhqTP
         xG8ukgNiNI1VCAYDmlMEGCCsxWW9Bhckxz7FO6PnvQ/ECEqexUbF8V1/z+dLRsxux//C
         LsdH+lSZzDWDOOOJY6yRsjw+nqtKbmNgHC/e/+kDA/UvQ/+odJnS/gzQoQhv+CQ8m4gU
         rMNFlxXd/oBYfHSVSsA5v1xuDu+qgNviuz9n67ehMJzCu0fA/HhZ8Bvn7wg4SAWzSgPy
         eq9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=UQlBhBXb39xKfAx0T2lSgHeTA8u4KHRbjF3BgdOJ/Xs=;
        b=II4kdi4ZuspcP0mE4RpU8XZAn9L0jrOrHA1Q7w6IzaOL1IlbzjmUq7x61s6P91ToiE
         /sy2H6QbyBCwLVcoaypRCLcnO3oSG8SwebhsKlz3wS+KIvUh4DaQ0hAVFBAMBpKkNIBx
         9jYVyfTdeOP4eVwtXgU/LO4tns3GsuduHvahVsdvA8RvW6k9kk9dmO6pbWCind6iLc14
         q4qXVyGpuGEyJI8ZC+W2aU2aKjCEo6cMBWq7MPwwTMqC/Q3ByQIFxSegPTCoZ+vuuQCl
         E+t/A9N/s1lVWVrcHcnuOBZcvdajqSr9ZrbgT9oHfTg6SSWyiVRMd0Zg6YXO5/HliJRd
         ku9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uyha1Zi1;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id l1si839013pjr.2.2019.10.06.06.30.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 06:30:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uyha1Zi1;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe43.google.com with SMTP id p13so7196779vso.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Oct 2019 06:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=UQlBhBXb39xKfAx0T2lSgHeTA8u4KHRbjF3BgdOJ/Xs=;
        b=uyha1Zi1axXgOHRhUrCQA0kTa/t37efG6uNUIn8dO7vG3eLhZp5GmJlg1zFCsjXCCM
         MPOOs9rY8JK1C8mLgYJTwjcLyQO+l3xpOO71g5mS2gYX3fsT5h0uQ6vctbTp2HETYDxt
         hvIKki7pTb1TB8Rz8Nwd880LuxX2t1R6DkJQeEd97a4CHq3yD85JNm6DyY7/M9Maw0dB
         1y1JHpznM0AXzcTI3fF9FtyE8HWFQAbAdwzJN6pNnMnUmI/BVUYQowux1P4LqAmkrtzW
         6a1gmMT+yVYiIOnTxeHNlJFce0xGtJGbaQ/bKo3Mr3xm9bi/JrFSGg4VwzaiQEdqeN1F
         7kiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=UQlBhBXb39xKfAx0T2lSgHeTA8u4KHRbjF3BgdOJ/Xs=;
        b=LQ6dBlrVJEtFh8JNZvivEBNhm4RM4SSrlekAefeJqdEfCtdyKWd2yj92CnZgcGQJmt
         2uxVzOvahVWmmZUn/FFCK7WfCbp+Z75sen9kYxbEjWqwWWmxQ4YppBTDNBSL7iYaYPJs
         vibQ4GDLLadKHodlvYEkIKmRQ1NbFLZMX7L0R9bR3Ir06LFxLM1nuZq4FPEYfiYtIUW0
         +FzTazpYc6I2RMed4Z0/xZu7qIOygxcOaB9ZbH7QVXuHsnxheddSU7+BT9DG47Ayezsl
         bpxfMpgK9InsTGaPHo90hF4o6vCVHSfz+hjiKLETZe/MErwmn6kXNJBWqOCOkVUgNFuv
         pTTg==
X-Gm-Message-State: APjAAAUtByN+DYYVyzDGCooSJ45z6Gr/L+GTeyKJsjauLbV5QZKlmJx0
	uOiMHuBpZb16jLE5aMyIel6deZsyjdAJpw==
X-Received: by 2002:a67:6545:: with SMTP id z66mr12584077vsb.2.1570368621724;
        Sun, 06 Oct 2019 06:30:21 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-200-119-56-53.dynamic.etb.net.co. [200.119.56.53])
        by smtp.gmail.com with ESMTPSA id 1sm3201695vss.33.2019.10.06.06.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 06:30:21 -0700 (PDT)
Date: Sun, 6 Oct 2019 08:30:19 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Remove unnecessary braces
Message-ID: <20191006133016.GA22297@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Remove unnecessary braces for single statement block.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index b5dcb78fb4f4..29acbb1ee869 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -3022,9 +3022,8 @@ int rtw_sctx_wait(struct submit_ctx *sctx, const char *msg)
 		status = sctx->status;
 	}
 
-	if (status == RTW_SCTX_DONE_SUCCESS) {
+	if (status == RTW_SCTX_DONE_SUCCESS)
 		ret = _SUCCESS;
-	}
 
 	return ret;
 }
-- 
2.20.1


