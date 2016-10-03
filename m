X-GM-THRID: 6337248154845446144
X-Received: by 10.46.32.169 with SMTP id g41mr1306621lji.26.1475505566718;
        Mon, 03 Oct 2016 07:39:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.201 with SMTP id 192ls493481ljj.0.gmail; Mon, 03 Oct 2016
 07:39:25 -0700 (PDT)
X-Received: by 10.25.66.207 with SMTP id p198mr230217lfa.7.1475505565772;
        Mon, 03 Oct 2016 07:39:25 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id e21si1088979wmc.2.2016.10.03.07.39.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 07:39:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id p138so15034325wmb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 07:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0M2Q8WWUHgcCv9/mvNMIttiGV+/T1CsOV7Ttl0Hi2ig=;
        b=HOR8dDL50IVuSkVcw8tHh1WnryUsW93uGFqFH0j5UqS1PhUCmmiGs/YAEKsEhznUAv
         DrPl6yiOweNuxNykcxlJ1DPPesNbwtKL5ez5Sb4Y81cSaF9G/zw3RY2DxEHjx/jE8cRA
         6TyAVNbdcSENzvAZP6LuuUYh/fnslK7gHU48aH3TvLgdJ5qe1wkOOMFK6NHLl+zVUTj8
         cZuNSwGThkI7ORGH7PNgE2XksWiHolUZVUdlhyw/mcE+UJzF5K/tlCyMd2l/wy11t6z+
         t5tyUPObhORTDBHCv/a6Ihc61jYDZ5OvqLC46sLCRLjmSkHc5l4H52JbeBJ2Pe3wDx7K
         YiGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0M2Q8WWUHgcCv9/mvNMIttiGV+/T1CsOV7Ttl0Hi2ig=;
        b=B4dDrl3mqZ5ERrK0dw6VujzVBso+StEs8+fDrHMweGSi5gEva6l0T7eShIpQhuW4UI
         PPGxJf6z1SnH+YI/MfauxdXi4zDrxtXFod3vBb2v6zNjwvOpjvnen89PK25RiLMRhQeS
         wQWUBqqsReLZCJn+gAxKocCrcladU6j2JHvpNX4DoA74iScCkOcAOEN1w6j3gyHZBiNL
         ZMLkamPKrkUj0VQ6sw7P9LRZwDn2DZKbNhjBofSduTrWkrNYxjzXqcUBOB74APQKD2qN
         tt/Lf0WjNR3mdEf8MZVc96ouUus9+4Bhy+tiHLITEfkZ24abI4L9SRGud5m0ao2KGOm9
         rbtw==
X-Gm-Message-State: AA6/9Rnhs8PgmjQxKBQKdFc2g94DTIX9kf8SmbCrHjvfiioRjE7f3bB9zyEeM5lOIuUt2Q==
X-Received: by 10.194.30.167 with SMTP id t7mr16798773wjh.199.1475505565259;
        Mon, 03 Oct 2016 07:39:25 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([109.166.128.3])
        by smtp.gmail.com with ESMTPSA id xy4sm34643124wjc.2.2016.10.03.07.39.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 03 Oct 2016 07:39:24 -0700 (PDT)
Date: Mon, 3 Oct 2016 17:39:21 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: use unsigned int instead unsigned
Message-ID: <20161003143921.GA7591@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes a WARNING: Prefer 'unsigned int' to bare use of
'unsigned', found by checkpatch.pl. By fixing this the parameters of the
function became more verbose.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 7d90e25..8770a46 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -575,11 +575,11 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var,
 	return hw_sm750_crtc_checkMode(crtc, var);
 }
 
-static int lynxfb_ops_setcolreg(unsigned regno,
-				unsigned red,
-				unsigned green,
-				unsigned blue,
-				unsigned transp,
+static int lynxfb_ops_setcolreg(unsigned int regno,
+				unsigned int red,
+				unsigned int green,
+				unsigned int blue,
+				unsigned int transp,
 				struct fb_info *info)
 {
 	struct lynxfb_par *par;
-- 
2.7.4


