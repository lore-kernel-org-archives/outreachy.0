X-GM-THRID: 6397085894366461952
X-Received: by 10.157.48.210 with SMTP id r18mr16467554otg.138.1489437639179;
        Mon, 13 Mar 2017 13:40:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.3 with SMTP id f3ls14716151otc.32.gmail; Mon, 13 Mar
 2017 13:40:38 -0700 (PDT)
X-Received: by 10.157.36.99 with SMTP id p90mr15253946ota.7.1489437638901;
        Mon, 13 Mar 2017 13:40:38 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a3si3293906pfb.2.2017.03.13.13.40.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:40:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so19511845pgy.3
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eQNZXmfdgIvi6V4phma3GW6jmUgqpmcRjK5CAzNi0aA=;
        b=sT1PtEYciwRNTRCCC+oCuDaMGun+MIpYOSyvk/n/rHXll1vYeI0S1MyBpp9Ma+xzLv
         n4JkA9pYMgLPIpM3xdk6XId90Q/pVeu3sTrQWmBTRIZ2xhUeqQPb+GvmhIYIXczJ0FhZ
         QZ/Ebku3ptJYv8414qTcnRjrDfvpWHJ8xSmI5L6EhOjOYPr9n9v7k27O/3HGcNfxVKr2
         68NeMCJvRiJofWWXq5dnomCv8Ro+ozXhl/nVgEgLsdzp2b0vVbQVSQ6mq/ko803Dz/LU
         YfZJDOevFfLFujpmcFeHROzS/7ovs0vYmdd9hI4EiyWmTcxekaPV/c824oUz/xOyjM0Y
         jREA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eQNZXmfdgIvi6V4phma3GW6jmUgqpmcRjK5CAzNi0aA=;
        b=BHS8NGWZb9djVBqRkeSu6HRNmrtOnAUStxvUmVS2lJRZOzlVzroRtxjXU/50CXCswL
         aZuRRMr1q0MBi4fRr0ybdEn6gpaVoS+FIJtVIcD2ajTalqVXON+RAHHeShjQcQBmtWWt
         x5X1bot0Gk5Faq/6Lldb/FpFRqM1fBUwZw3sesqwd8J/z0YjdOrzVnQkjgd1KX7iEqwz
         Xdsd/3lUMNrv0kehTRHMg2N7otIK9LrXcxzoYv1WycPttHSd8iGDfvv32/vhwx7c1pXo
         95SH9h75Ez/+F9hZiZYH2ZU6f9CJrFAFcJwCAd4qSIS5/J6Jhz98ZJBmTwhRyYjDgCci
         254A==
X-Gm-Message-State: AMke39n0TL/NVQQEhZpYYvo0iVVyuhUtcGvmep0e/RyRztgZNtHqYdHfwU+I0FssZWfxbw==
X-Received: by 10.98.215.23 with SMTP id b23mr40032964pfh.87.1489437638694;
        Mon, 13 Mar 2017 13:40:38 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y9sm34312402pfi.39.2017.03.13.13.40.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 13:40:37 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 2/2] staging: speakup: fix "Alignment match open parenthesis"
Date: Tue, 14 Mar 2017 02:10:18 +0530
Message-Id: <20170313204018.24601-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170313204018.24601-1-arushisinghal19971997@gmail.com>
References: <20170313204018.24601-1-arushisinghal19971997@gmail.com>

Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 8a586323b728..ca85476e3ff7 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -93,7 +93,7 @@ static void report_char_chartab_status(int reset, int received, int used,
 	} else if (received) {
 		len = snprintf(buf, sizeof(buf),
 			       " updated %d of %d %s\n",
-				used, received, object_type[do_characters]);
+			       used, received, object_type[do_characters]);
 		if (rejected)
 			snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
 				 " with %d reject%s\n",
-- 
2.11.0


