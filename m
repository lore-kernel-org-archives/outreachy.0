X-GM-THRID: 6254064858167246848
X-Received: by 10.50.50.138 with SMTP id c10mr10914923igo.3.1456138005326;
        Mon, 22 Feb 2016 02:46:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.133 with SMTP id f5ls1377519qgf.91.gmail; Mon, 22 Feb
 2016 02:46:44 -0800 (PST)
X-Received: by 10.140.231.138 with SMTP id b132mr26484982qhc.0.1456138004788;
        Mon, 22 Feb 2016 02:46:44 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id 12si3028693pfb.1.2016.02.22.02.46.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 02:46:44 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id yy13so89342473pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 02:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=avUpJDVXnom+jaVrt3I5eTuyrQbNIRGGuP0YVjnFWbw=;
        b=FAHtsX2YAn3lWm9OsEqNPWOAfg/r8FQ+P9BcQ4rwdSZ5zVbu+JNfmwZ+DsKEfzxJna
         D9NXp/hvC9spbjZ2LGr0BzdwOOw6U6dJGGWGeQ4QxZaUAzroE88x8FBDskeGsvUbV3r+
         l5zDaDbAS5xSpd19el72dD6UI37UJqnWVLjPjAynaCAZXdi3aeAY3ARkXfcNoqWqN3N3
         BY3ddoLYXL/2tjcVytwILYfEQmhvJISROzhdAhji/pm+pUe0a683IbjqkSv1GXPHfhjt
         njGZ/3KrmH8VS83k1Ko7ng19AYyFKoOjdlaF8vfmD4E8/IJije82pa3SFQWy6giUtafG
         rtsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=avUpJDVXnom+jaVrt3I5eTuyrQbNIRGGuP0YVjnFWbw=;
        b=HBSo4nFjckNVD0kjwfrdqmNdYErxQKft73d5GWOsjgdchJq2PUY3y8S8FH1ZMozWQj
         FvPqgR5Jvj2hQ2XChxUAs2XSIHk6Yzh8RMF14GOPmRp01CUMJ/+JABzz811IdeWMNAoo
         3t0NbA0mTtwthGmbQTRYyqKEgKYEq+JDvdYuhss1VC5b+MDT7sQZ9Htaqn+bSfUjJNLL
         CHkvWyQq+qrSnbKQ/1vGRWY4tR+Sdyv/TPdgz4bjw4Ptint6shIB8ZcPiCAafZpL7gWY
         jxprQPj6mVrnWkVVLWXrZAb2Z5gu2r87KS3A29iQ48Cm1J5yxsRVcXPDpImR/craHgIp
         zczw==
X-Gm-Message-State: AG10YOTJaKZrqNWi12HT0Kl90ErqU3MgvFcndyphovnWi7XNryXciZdAk7yeRuYLhrZRow==
X-Received: by 10.66.234.166 with SMTP id uf6mr37157839pac.122.1456138004615;
        Mon, 22 Feb 2016 02:46:44 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.155.110])
        by smtp.gmail.com with ESMTPSA id q85sm35823220pfq.81.2016.02.22.02.46.41
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 02:46:44 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Mon, 22 Feb 2016 16:16:35 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 3/5] Staging: gdm724x: Use min_t instead of ternary operator
Date: Mon, 22 Feb 2016 16:15:32 +0530
Message-Id: <a87296c4ae355f87241302412c938fcebb2e5f9d.1456136671.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456136671.git.bhumirks@gmail.com>
References: <cover.1456136671.git.bhumirks@gmail.com>
In-Reply-To: <cover.1456136671.git.bhumirks@gmail.com>
References: <cover.1456136671.git.bhumirks@gmail.com>

This patch replaces ternary operator with macro min_t as it shorter and
thus increases code readability. Macro min_t return the minimum of the
two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min_t(T,x,y)
|
- x > y ? x : y
+ max_t(T,x,y)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/gdm724x/gdm_mux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index 937010b..289d41a 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -433,7 +433,7 @@ static int gdm_mux_send_control(void *priv_dev, int request, int value,
 	if (ret < 0)
 		pr_err("usb_control_msg error: %d\n", ret);
 
-	return ret < 0 ? ret : 0;
+	return min_t(int, ret, 0);
 }
 
 static void release_usb(struct mux_dev *mux_dev)
-- 
1.9.1


