X-GM-THRID: 6254513741412433920
X-Received: by 10.31.160.209 with SMTP id j200mr32344434vke.6.1456242505016;
        Tue, 23 Feb 2016 07:48:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.194 with SMTP id c63ls1148010ioj.109.gmail; Tue, 23
 Feb 2016 07:48:24 -0800 (PST)
X-Received: by 10.98.43.132 with SMTP id r126mr32259538pfr.5.1456242504661;
        Tue, 23 Feb 2016 07:48:24 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id u66si4384992pfa.2.2016.02.23.07.48.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 07:48:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fy10so112079551pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 07:48:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=TgeYrfs6yoLyY3VfdEnHUxr/8DuN7DKcVKqfiGk9JoE=;
        b=Qgbm0ukJvzQ0b8k+ebv/jWZ1QJtd/DGC8IP+PAsQU/ZSC7LJ32udE+TjL4FUQ+BrQ7
         eeHlcwVoEt9FNlSogoHvrb5MBW4EfO43Az3bHS6DG/WIYpQ5tqkreN0ThgSl+LIkOGAd
         ndTMkKnWODcgR4qrgGElGeEopJjvFtfdiFUiop59q1XrHEdv+MQz+DFLFMxVAbj57sIh
         ehm8txq+t42LYu7yUuTRfPgcoJdIIXFkTTZV0HdOYp83DZxksAGCtQdwC7k996MslZPp
         iPX0e1sOTv+bxIQjrd4BPlUW4GAepd7xEcyTVRo6ZRAzSUr/X+vCGF+kIjldDKhh4KLf
         gQwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=TgeYrfs6yoLyY3VfdEnHUxr/8DuN7DKcVKqfiGk9JoE=;
        b=eK05KiU9WSbV9KU8dKbCWPEno/QC0Bk8VLE9iwWV06Ea6C98Djy/5kGtUaG6r36ra7
         HxSKSWTxvMLM7cs/of2G6uZg7gZE5DBT25TJbIYH9BXN4+y6+zFffUsngb2IvsemGeGi
         YNpTwFMrlJGS3fT6OMj2faQgqZwgCf3jwIp8V7Z6q8to6HtQQ04tYaOVlSr7pJL+XpNN
         QA/GbNDEqzgv/LI/lBvcBJQKyUUeJ/9G/YcWnFSSXoeE/VdgiP4NnUcqjMNpXf6zUysj
         MYb5pdXv/5SmRaNOzmbO4un8U3AigUjugaaMkWU1BDUSY2VBUA8T6WZDJftns5G+HgVL
         Ufhw==
X-Gm-Message-State: AG10YORqPQKRTjthpCRjZljkxZDLHaCV1WNKkgPeuninawWp52L4HN0puK1OtmnvWDwu+A==
X-Received: by 10.66.167.237 with SMTP id zr13mr47717457pab.85.1456242504542;
        Tue, 23 Feb 2016 07:48:24 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.174.102])
        by smtp.gmail.com with ESMTPSA id ra1sm18980350pab.24.2016.02.23.07.48.20
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 07:48:23 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 23 Feb 2016 21:18:13 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2 3/5] Staging: gdm724x: Use min instead of ternary operator
Date: Tue, 23 Feb 2016 21:17:18 +0530
Message-Id: <8170b976fb7873992da70505b6dea7c7711211c2.1456241358.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456241358.git.bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>
In-Reply-To: <cover.1456241358.git.bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>

This patch replaces ternary operator with macro min as it shorter and
thus increases code readability. Macro min return the minimum of the
two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
Use min() instead of min_t() as the values passed in the macro are of
same type.

 drivers/staging/gdm724x/gdm_mux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index 937010b..6bedd66 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -433,7 +433,7 @@ static int gdm_mux_send_control(void *priv_dev, int request, int value,
 	if (ret < 0)
 		pr_err("usb_control_msg error: %d\n", ret);
 
-	return ret < 0 ? ret : 0;
+	return min(ret, 0);
 }
 
 static void release_usb(struct mux_dev *mux_dev)
-- 
1.9.1


