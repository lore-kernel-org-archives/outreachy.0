X-GM-THRID: 7122168315904
X-Received: by 10.66.236.74 with SMTP id us10mr785499pac.28.1425834465932;
        Sun, 08 Mar 2015 10:07:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.33.137 with SMTP id h131ls772341ioh.5.gmail; Sun, 08 Mar
 2015 10:07:45 -0700 (PDT)
X-Received: by 10.50.29.6 with SMTP id f6mr46141914igh.2.1425834465722;
        Sun, 08 Mar 2015 10:07:45 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id ni4si1296632pdb.2.2015.03.08.10.07.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 10:07:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfa1 with SMTP id fa1so66391942pad.9
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 10:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=raFns3jYyCg0tEOite8p9eD5JWj156K3kwRj7yupNYU=;
        b=Jd16I1ySLLUngzAp8PzfsjoTva9TpU8eSYoL1m+cH/mtUp5rDY+sIDy4NQ1YM/ukh7
         IW9dKviWRI4q3RVW+PDdVQu3Q6hXIk4mE6jHrH+5L3kbPyw2e+uHFS8SpL+UfSDqTvwV
         bwuPahWO+6CChDLL5K5tsb9ezk6YRwythf9tNOIWpyYIYTNSjzfGMf1hrRcuy2525phr
         hiOz+FAzJeQ21BBxJb9DX5h4G1rUwbajKhu4XgOU2fKZUIwL/T/29EwlbZuMZ6gt/yrv
         tZ7ckdhHK61aijvbfFcqZbLfp84I9EvktEoHWOt7ROMiHYDb9f10Uq5SXjxV9EhtcDfZ
         v6iA==
X-Received: by 10.68.138.229 with SMTP id qt5mr44168541pbb.62.1425834465606;
        Sun, 08 Mar 2015 10:07:45 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([122.174.223.151])
        by mx.google.com with ESMTPSA id fh1sm15114794pbb.70.2015.03.08.10.07.42
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 10:07:44 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 1/3] drivers: staging: dgnc: Replace min with min_t
Date: Sun,  8 Mar 2015 22:36:30 +0530
Message-Id: <d4b06a098716afe3413fc50634a05e17a1038718.1425833758.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425833758.git.darshanapadmadas@gmail.com>
References: <cover.1425833758.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1425833758.git.darshanapadmadas@gmail.com>
References: <cover.1425833758.git.darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch replaces min with min_t and eliminates
the following warning found by checkpatch.pl:

WARNING: min() should probably be min_t(uint, n, 12)

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/dgnc/dgnc_neo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index c9a8a98..1268aa9 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -1203,7 +1203,7 @@ static void neo_copy_data_from_uart_to_queue(struct channel_t *ch)
 		 * IBM pSeries platform.
 		 * 15 bytes max appears to be the magic number.
 		 */
-		n = min((uint) n, (uint) 12);
+		n = min_t(uint, n, 12);
 
 		/*
 		 * Since we are grabbing the linestatus register, which
-- 
1.9.1


