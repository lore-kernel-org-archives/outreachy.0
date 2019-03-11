X-GM-THRID: 6667148493451165696
X-Received: by 2002:a24:bdc7:: with SMTP id x190mr53900ite.2.1552316482744;
        Mon, 11 Mar 2019 08:01:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:9784:: with SMTP id s4ls5761996jaj.2.gmail; Mon, 11 Mar
 2019 08:01:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzVBMpD36+QIQI/y82diZ+o4T80+IEMnq0DJexaf6s8IZbPp6CJNWa/VWPjprcbCXu5dsFl
X-Received: by 2002:a02:6614:: with SMTP id k20mr19475298jac.24.1552316481876;
        Mon, 11 Mar 2019 08:01:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552316481; cv=none;
        d=google.com; s=arc-20160816;
        b=bEUk4n8TgeN1m/BiwavkHQJ/wevxbahbxKmJFqo3atKBY+Hm+U6iSXceIlPfFDOwbx
         TitjizU7WVjxzZR+pAP9SpHzfTv9kJpThXJBDCB1Yu3P6xjMKTEO1qKtLMTfuriNbgxu
         XEPV2rOYkyyUI5WgBvPq1lPmdi1LYkbAmOz4xoj1JQlzh5+lGZsrZipw23AX2CerJZvg
         OdrH66nXWMA5USp1Qo6BLqkyGkjdsfgOskepSN0ZhIhJEPw36s+Uhr8InfxCHcw7KiNH
         s9n5z2ZN735nEtppXrdQrRj/pFkImXibUXXyk1FiC1pPZtfMcqTydrAx5TuqdQq4viux
         J6nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=7pQ7Amj+FIBux0DJun1Fndxt5/DdYq2rbNeuwO0aF6s=;
        b=cxdY1yvMEDI7TDA7d3w8+a6jjPWt6hZrHJ9gaq21bk1vev9wKcMsDue229HHnr4fH/
         YtXWJQQJxJDFnjshRDBnwTtAZYnOnVw5WFz6wkgDlUPCXik731rZ3geL0voiQi1W63Xf
         e530aG0AQbIg4yREC5+YCqPdZQiG9Bc64B6RWXwcCEoIr2/OWFCwi0labq8WCbQyrThf
         G2zjtr37+dZLSkPjW/mlT5W266Ji6b9PWttshdD6Mvfpxj0eR737glHYleXaOatNVR0k
         TSMhXYJS+ZpZq+l+whSP+dw0XmzhRyvTEPpJs+V2xpLtQIgxwFgqadzQXdhEOQuvQVf3
         qAYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q7BfB2+L;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id n6si217100iod.1.2019.03.11.08.01.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:01:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q7BfB2+L;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id h11so4250323pgl.0
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7pQ7Amj+FIBux0DJun1Fndxt5/DdYq2rbNeuwO0aF6s=;
        b=Q7BfB2+LVg+hMttgBXEVam+bpE0/ZoVOV3zvL/eUhy2M1Ydw5tu0U+UGF5+LrMe1hF
         Tuwh3eS31tfcaSLuSZvtWo8s9A6VHPDQoJZza8jS0Rcf2p3YZhvToodz965ri3Ionlan
         OmBzw1yk8zsuqf4egKs1NY6fF8BuCMW8fNyG530TeX2HNasxbaqe1xCRL0q+ZTRNKLxZ
         prJHjg0GorpMsJll5tDWn2TrYgSjbtZzfWP+Mw+MkWFZd3xZv8oA54Hd0LdkRUFvQ+sl
         WhwWV3pqvMUOAKDc1yHILhP+BI22s6eQze+N3ZJVb07eNIWz6pYDM9Ffg0LjnCnuDBDk
         6ZwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=7pQ7Amj+FIBux0DJun1Fndxt5/DdYq2rbNeuwO0aF6s=;
        b=ZgJpJ/r2AFgovYf6qxvK16s3nHQkLnj6KFO86we+FPlI3LGLe8+63+ZJ3bDCsfHtXi
         ADPKh8Vu2SKlCP6Vrthac5RekCenGIZucFJTIVd4r6UbnNb1QMnlQq6DYVfIIYZF7jS9
         KKaHaTqcUHmG/xwU23n/0FTdkVBPhU/YAyQi0Q63pxVBcbs05ScBgz/UprIvYfk6trEn
         f8sk6ZCXbyMI8UKDtj+G3e+A29DsJVEYV0CUSBU2ixHd0QnBAzJwsvDWbex+UeQZy4rf
         QOowgoX3atqqPngiS1kcw8YJ+otVg+TCSmM5ozjkJ97+WpIBZpardhilYBDG/NnUO0VW
         aQ6g==
X-Gm-Message-State: APjAAAX5E1iZGbatBHXhmdrtqsjn/r4bWjt1pwAEF2RgzGSr20GYvVil
	TyyY6J6FK2Acw7Ych19DiIaJUU2lb5TGcg==
X-Received: by 2002:a17:902:8d89:: with SMTP id v9mr34972318plo.254.1552316481582;
        Mon, 11 Mar 2019 08:01:21 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id n15sm20098456pgc.92.2019.03.11.08.01.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 11 Mar 2019 08:01:21 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 1/5] Staging: most: cdev: Replace '--help--' with 'help'
Date: Mon, 11 Mar 2019 08:01:04 -0700
Message-Id: <20190311150108.4717-2-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190311150108.4717-1-etsai042@gmail.com>
References: <20190311150108.4717-1-etsai042@gmail.com>

Replace '--help--' with 'help' in Kconfig to silence checkpatch.pl warning:
WARNING: prefer 'help' over '---help---' for new help texts

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/cdev/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/cdev/Kconfig b/drivers/staging/most/cdev/Kconfig
index 2b04e26bcbea..2e27e1fce58d 100644
--- a/drivers/staging/most/cdev/Kconfig
+++ b/drivers/staging/most/cdev/Kconfig
@@ -5,7 +5,7 @@
 config MOST_CDEV
 	tristate "Cdev"
 
-	---help---
+	help
 	  Say Y here if you want to commumicate via character devices.
 
 	  To compile this driver as a module, choose M here: the
-- 
2.11.0


