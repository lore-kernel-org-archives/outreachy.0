X-GM-THRID: 7122168315904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,99b69ea22516648c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.111.132 with SMTP id ii4mr23264054obb.2.1425837843994;
        Sun, 08 Mar 2015 11:04:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.33.137 with SMTP id h131ls782429ioh.5.gmail; Sun, 08 Mar
 2015 11:04:03 -0700 (PDT)
X-Received: by 10.42.254.202 with SMTP id nf10mr16681788icb.23.1425837843867;
        Sun, 08 Mar 2015 11:04:03 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x22b.google.com (mail-pd0-x22b.google.com. [2607:f8b0:400e:c02::22b])
        by gmr-mx.google.com with ESMTPS id ri9si2159640pdb.1.2015.03.08.11.04.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 11:04:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) client-ip=2607:f8b0:400e:c02::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22b.google.com with SMTP id fl12so58140134pdb.5
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 11:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=raFns3jYyCg0tEOite8p9eD5JWj156K3kwRj7yupNYU=;
        b=CJfVdOzaFbfLHOQ3aqop4b5RCegZwNsbgUQl36CH5AjjfDJGtmAcSq9/57QmnDZ/YA
         e2m9zYHwS5jFqpGyd5lrcBvt25eV1RXKu6bXMC5Vw/YkKjNglc5xrTFlfiY9ikdWOdpQ
         Ubv0H35h1uRFF8KCuCQQ+A/cxoFJI+Mo8zUzI9yKzdUsoIfg6IsldtYGX7aFK/OMzbL8
         i8gm+83NsGwK3R8v4+x03Ek4DxOuP5gBr/Zz3V3ieWJqVoJwsT14dfiepGI3RlzcacT5
         4d4p0bY8aa1nOhlIKzsyu3MegbBoBzVoVYczY2dKf18mEdrpbwlqzchhjhuiv9yc8zwG
         jZWQ==
X-Received: by 10.70.98.197 with SMTP id ek5mr44739863pdb.104.1425837843410;
        Sun, 08 Mar 2015 11:04:03 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([122.174.223.151])
        by mx.google.com with ESMTPSA id ey10sm10973712pab.47.2015.03.08.11.03.59
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 11:04:02 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v2 1/2] drivers: staging: dgnc: Replace min with min_t
Date: Sun,  8 Mar 2015 23:33:39 +0530
Message-Id: <d4b06a098716afe3413fc50634a05e17a1038718.1425837526.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425837526.git.darshanapadmadas@gmail.com>
References: <cover.1425837526.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1425837526.git.darshanapadmadas@gmail.com>
References: <cover.1425837526.git.darshanapadmadas@gmail.com>
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


