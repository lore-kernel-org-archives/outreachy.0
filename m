X-GM-THRID: 6329540698124058624
X-Received: by 10.129.154.196 with SMTP id r187mr16556550ywg.54.1473711034869;
        Mon, 12 Sep 2016 13:10:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.87 with SMTP id t81ls2801685ota.36.gmail; Mon, 12 Sep
 2016 13:10:34 -0700 (PDT)
X-Received: by 10.157.5.37 with SMTP id 34mr2274188otw.31.1473711034590;
        Mon, 12 Sep 2016 13:10:34 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id z4si2704284pam.0.2016.09.12.13.10.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 13:10:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id h5so8208539pao.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 13:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=R7j9uFzaMxgp8WrAZUQ9URiUI8nK+1ajvLTJHaCjBaY=;
        b=UbvAIDkBpcRXATXKuNFXzY0rIIuBllV6S2gHkwBumlM3Aoi3akxvGpEdaTLyK0zitJ
         MrHIn+9yLLq47SCseB1Tr3deMHYoGENrvoEnQdNQQ9s6AxZqh/0nOpOymF7pwMcJ8r6I
         pWWv5F4tYlb5mN14rUd98xEcgEXhBKgf5zc87YuVAOWbOiiyK23ex+QDXgc9w+Mfh0AI
         aCzkNEBHtZBqdjlUWLHb+kHPiBiGr5+vICEbTBO9Yi7q+1bPn15dVJKjah1UG8Sdbrvk
         wtDM86wbJrlo7nC2qO9LDxrnQYzT8I/HpwASFgxwMhBRIIzMfIw2MCdNgQFwCcI7jAFr
         AuZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=R7j9uFzaMxgp8WrAZUQ9URiUI8nK+1ajvLTJHaCjBaY=;
        b=ePHLzK2BzgKH50R8nbjqxAkOjeoY0pwI/C28t1NyVKvvExOA7F+eAazajkOkw3K4pc
         5ePDB9j60xefnv29bCTMLEPLZ9kaHtuatT64XcCYlR/i0vSHf1N/QB+q9UcEWyDcjQN8
         j63SP1PY3s/BGFQSagCBsYXSWmGimcqJCqCyrj0T+gOTddQ9atIFMIhkFbU9IN6MxT74
         Kkj68UO9xItKTLZuUjA9GIcLd8VmqP4q1bSO98DrPBZj98jLUgdrZWRaPwtVKljPtFhE
         F68ITQxpyBnKxkz8Owm8XP3Kl8VgWzhKTGaR5zWNMehrIIXIV2snLuZSk82blAnNVETN
         66XA==
X-Gm-Message-State: AE9vXwMPiXs2ke1wh8JzENWqXBRxWbIkbI0dpRrl+P1EF5TklpA7L4a2SsjgGDnKjvxN3w==
X-Received: by 10.66.217.132 with SMTP id oy4mr36791299pac.46.1473711034172;
        Mon, 12 Sep 2016 13:10:34 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.35.146])
        by smtp.gmail.com with ESMTPSA id 3sm26446687pai.48.2016.09.12.13.10.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 13:10:33 -0700 (PDT)
Date: Tue, 13 Sep 2016 01:41:06 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: bus: Open brace '{' should be on the previous line.
Message-ID: <20160912201106.GA2870@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Open brace '{' should be on the previous line.This error is found by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/bus/arm-ccn.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/bus/arm-ccn.c b/drivers/bus/arm-ccn.c
index 97a9185..17e30cf 100644
--- a/drivers/bus/arm-ccn.c
+++ b/drivers/bus/arm-ccn.c
@@ -1311,8 +1311,7 @@ static void arm_ccn_pmu_cleanup(struct arm_ccn *ccn)
 
 static int arm_ccn_for_each_valid_region(struct arm_ccn *ccn,
 		int (*callback)(struct arm_ccn *ccn, int region,
-		void __iomem *base, u32 type, u32 id))
-{
+		void __iomem *base, u32 type, u32 id)) {
 	int region;
 
 	for (region = 0; region < CCN_NUM_REGIONS; region++) {
-- 
1.8.2.3


