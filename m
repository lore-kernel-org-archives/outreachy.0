X-GM-THRID: 6478603135787991040
X-Received: by 10.129.74.136 with SMTP id x130mr609735ywa.24.1508417338381;
        Thu, 19 Oct 2017 05:48:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.53.70 with SMTP id c67ls568136ywa.16.gmail; Thu, 19 Oct
 2017 05:48:57 -0700 (PDT)
X-Received: by 10.37.177.137 with SMTP id h9mr726721ybj.35.1508417337573;
        Thu, 19 Oct 2017 05:48:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508417337; cv=none;
        d=google.com; s=arc-20160816;
        b=XZ4/8WVaFrkIk4PuELDMFZu63Wz/wUlRIqYBxmZmKO72RGXjIli5jmVncPoMa5yDB0
         Y4BR4uWxidhs0/8MlblgbP7Dff5xzXAqTOibiI2RgLbs010liDz5QESza0yosqlmFKFW
         9H9m2AUUpPwhpbcVtEQCThjVCWyEF8JxU5HnJIrOxNEy3FNmS1w7YoB/kJu45ZUYKRbT
         RQSMI9/mDlbgscjiizmIi22V3SPOl8dAhPdektbD+PHXlQIy1WKqERoIM4ITQ5+OSZF+
         Q/Tldy5QthgjtHGqjK1Wif0f3tjzg0O7hm7b9hLWweh0zD/SvGVmB0BuZpLxrgZS4kHS
         knuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=7Y9tZg4Q/mjYtAjvB0OWWEbLQ0e/BIYfSXeSwcHD9pE=;
        b=En+/IwMoTb10ea3mqYjb3jhGiEG7oqRdqrxyBWO5HhkY53qI0kR0zsaplv4zP4+XDb
         onbuvtUtITXc2DCeO/eDED2vj4YJYCq4h91dZ59nPylWiVxy9Seql8F4NM2ePQG7COqg
         TgutLZk3bZ4LBpQL0A6OLAfat2f5mqJB/LqiLpqugk2rm6LDetedur0l9czudpNQDP0C
         sT4l0w7kKZo5V3kC9QjhnanJxkR0+nPs9JF6P9RR5FRqd3uhFkTmybaeeYW7ArgAwquC
         SZ5czrdjOStnENhQfAIX9NwAW63SJ/MThXLpnqA4CdPbmZ+EskynzqhrD9hXV47ly8xx
         c/ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ry8OFgts;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id i14si769806ybk.0.2017.10.19.05.48.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 05:48:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ry8OFgts;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id n89so6508124pfk.11
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 05:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7Y9tZg4Q/mjYtAjvB0OWWEbLQ0e/BIYfSXeSwcHD9pE=;
        b=Ry8OFgtsnn5bxe0tsgxIteWb98JwMhATUMBL8AMD/Z6UQEMLLAyqhXo1tUNi/6Nqc4
         Wy0DZzcYyW3qZhcxysrt2GHKw9qeLXss1Cb1MQr08uhO5WEjCs4Ehiq8HpUBjo5j3zMS
         Kk7vUu0Xy60GSSuTXDWCsyE4JZILIvPSG4cmTWPu+LFQ6fOtIUpFSdJpOqU5H7RGwPXw
         uM8sOzlXytH2bqz2J5O7D/TkAtgovqPVOMtdEgWAR/hVS7fAld1P79iFlsgS20TvGawj
         5ne1dssx/BlIHaOTgJGfLLKv8aZYZLcLoHRRBObF5pqt/Dfas2hB/KhMVTBWp3IXn7iY
         KnUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7Y9tZg4Q/mjYtAjvB0OWWEbLQ0e/BIYfSXeSwcHD9pE=;
        b=A1XZjP9BNgaAyhYm9KrlbzwuvI3q15qZBlW5tBUkhj1hw6g660bBNQbOJlmO8lheUr
         7JqJVzrDhayxapEs8ZH1EkI3EfI/supaYJBdo4UwyHYZGAj/kf6M00nPN1jGiFeXGxAA
         McezlFXJMTRCSsDBbe4RUftpeE+IPbzJH4s+7MJC0JKgynPazrTAHSpJWypNu63ZHEju
         6ZPkwxJOWn5VTM+D1mQn7C4FIX/1ikwNX77cILXu/vEHcYP+mEG4+kBNFUilteMoqij0
         uXQv0YKM5/AgRjEsoGzGx7HQXFUSucT6caIhmAa7OpkNXcCItmC74as3TfVWXqlOYYqc
         QLkQ==
X-Gm-Message-State: AMCzsaX0KFm8x0eW+1qXV0PqEtrGKGP3d/tOxKnFnO5Xnbt60TwGp4fv
	gDiHzMoI81oy3lblSrw63txdoflr
X-Google-Smtp-Source: ABhQp+T7UfIso0r5PNgMmSW0BbDxZfH/+Cedpf34VzbcK0KD+f4fOe5UcMGdFDg5UZIKponQyLdfYA==
X-Received: by 10.101.81.197 with SMTP id i5mr1300852pgq.374.1508417337273;
        Thu, 19 Oct 2017 05:48:57 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([2405:205:1288:bb17:dde6:a96:5704:3108])
        by smtp.gmail.com with ESMTPSA id p12sm23089934pgd.0.2017.10.19.05.48.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 05:48:56 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] tests: xlate: Change testfile to take "extensions/test_file" as argument
Date: Thu, 19 Oct 2017 18:18:29 +0530
Message-Id: <20171019124829.11557-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

When executing xlate-test.py with specified test file, give
"extensions/test_file.txlate" as argument

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 xlate-test.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/xlate-test.py b/xlate-test.py
index 43c4be19..860d94d0 100755
--- a/xlate-test.py
+++ b/xlate-test.py
@@ -78,7 +78,7 @@ def main():
         if not args.test.endswith(".txlate"):
             args.test += ".txlate"
         try:
-            with open("extensions/" + args.test, "r") as payload:
+            with open(args.test, "r") as payload:
                 run_test(args.test, payload)
         except IOError:
             print(red("Error: ") + "test file does not exist")
-- 
2.11.0


