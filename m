X-GM-THRID: 6252584121027002368
X-Received: by 10.129.3.69 with SMTP id 66mr6066498ywd.41.1455793197443;
        Thu, 18 Feb 2016 02:59:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.234 with SMTP id 97ls4895843qgl.23.gmail; Thu, 18 Feb
 2016 02:59:56 -0800 (PST)
X-Received: by 10.13.216.150 with SMTP id a144mr6113930ywe.52.1455793196806;
        Thu, 18 Feb 2016 02:59:56 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 12si892682pfb.1.2016.02.18.02.59.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 02:59:56 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id fl4so1860777pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 02:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=p1n2H7LMDYWS2X4Ms7X4oz4VZTdM8/dEpFuvP8Jy8jo=;
        b=SSh284QBt7Y5dKX88jZWIF5Zql4qUVx5CHKD4R1ZRVEas1Oqqg5ILDG1MkPki4kpHM
         9uj2oQuVKMFn+ZdDzPhDruOady9FkHvbzTBy9KoF9+LRedwiNxjbcxnnulUy1PlmiGgM
         1n+z32nJGjNYtMaIPgjZO0ntxxPXmJdFf7jkM1ODtisLqU+axonPY+I627pD33gRJQa6
         F/7XbOZMqoK5YhZLiVbGrk+P/rSNhvwMy/n1KieFZAjXOyivTeIUw3K9mhEvOjn9ajOT
         q8xTYWWJrt1RfwnVSg9yEvDXQyRxLxPQOC5Xy3LjaMlVTUMIb3Plp21t5HOzWugvYiM4
         m9NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=p1n2H7LMDYWS2X4Ms7X4oz4VZTdM8/dEpFuvP8Jy8jo=;
        b=IN/mWSIlv13Gn3DIqszCOv3VjbvX9USE0X/coT2jEY1fhMY7dWPADbtuZO753sm37l
         +TU+CqdLmVhV16QDgbSxewvg9uCoiPqhOaWesiHxaIhjxzmVR/C9WT58GRd26lzX/AZR
         NqdnFGsBoeGEFs8mPgfc/d12Jo1r8wPw7fMeqktyo465y/WoK/6OyhuzrMiagEfTex3y
         RK2CXisF4F/D0TAFip1MtbTSeOzwRQM/Ps5hiTr3a+oKTIFWknqIlZvp1Ng3OwQU1fyG
         wzDqMTiGNdWaOq+/PuNeaVuoq2ccQtqQcipeNp7tP3yqlma0RiPPTut2887I0ZU3JO6C
         J0sA==
X-Gm-Message-State: AG10YOQ5UingkQVqTnGgSnNqgM0kNhM7VcMIX2z23iF7rjS7n+O0xKHcD6NWZeeZB+dgFA==
X-Received: by 10.66.190.168 with SMTP id gr8mr9031436pac.23.1455793196639;
        Thu, 18 Feb 2016 02:59:56 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.106])
        by smtp.gmail.com with ESMTPSA id d22sm9402884pfj.32.2016.02.18.02.59.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 02:59:56 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 4/7] staging: iio: resolver: add missing braces on if-else statements
Date: Thu, 18 Feb 2016 18:59:36 +0800
Message-Id: <1455793179-2674-5-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>
References: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>

Add braces around the else clause to adhere to kernel coding style. This
clears the following checkpatch issue:

CHECK: braces {} should be used on all arms of this statement

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 4cf5e41..563a01c 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -319,9 +319,9 @@ static ssize_t ad2s1210_store_control(struct device *dev,
 		data = ad2s1210_read_resolution_pin(st);
 		if (data != st->resolution)
 			dev_warn(dev, "ad2s1210: resolution settings not match\n");
-	} else
+	} else {
 		ad2s1210_set_resolution_pin(st);
-
+	}
 	ret = len;
 	st->hysteresis = !!(data & AD2S1210_ENABLE_HYSTERESIS);
 
@@ -381,8 +381,9 @@ static ssize_t ad2s1210_store_resolution(struct device *dev,
 		data = ad2s1210_read_resolution_pin(st);
 		if (data != st->resolution)
 			dev_warn(dev, "ad2s1210: resolution settings not match\n");
-	} else
+	} else {
 		ad2s1210_set_resolution_pin(st);
+	}
 	ret = len;
 error_ret:
 	mutex_unlock(&st->lock);
-- 
1.9.1


