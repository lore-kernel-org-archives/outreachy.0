X-GM-THRID: 6337248154845446144
X-Received: by 10.28.55.205 with SMTP id e196mr595751wma.0.1475506522708;
        Mon, 03 Oct 2016 07:55:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.84 with SMTP id h81ls242022ljh.52.gmail; Mon, 03 Oct
 2016 07:55:22 -0700 (PDT)
X-Received: by 10.25.201.198 with SMTP id z189mr1229277lff.13.1475506522190;
        Mon, 03 Oct 2016 07:55:22 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id w79si912657wmw.0.2016.10.03.07.55.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 07:55:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id b201so9954352wmb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 07:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=os9gh0cBhTDFBcjrJTQ9FOBfQOd+lZP8tx8nUvBR3Lk=;
        b=Q0v8BWUw0qKeLVI0DOjI/V8w75Od+Gb/1AiJ49beJ5ReqN11tOgE4EaTBquwlDds3r
         3uKJUNnU3IIH7EM3JsRpZCOfT9FkEZbqngW6hNB2Kgvz1G4WgL+/yXnowKZ25IDUmR6z
         pevP3eJR2SCUVasZYYXkQhyiertFDqm7jgurRws+jqR+wzamY1acFBjCf94aZxiFQF3D
         IJywfZidQpIA5KPqgWf2IB16YAEKHRzokUWvH7oa9VoP1yKDQW0jPa1s2SZyGvg+rDN7
         p9jYRGcst9cQ8Z16hbht/NBkU/eO4lskmW2dsJcJ/J38qE5Uq/WbGftBR2gk3SqV2jnh
         cqFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=os9gh0cBhTDFBcjrJTQ9FOBfQOd+lZP8tx8nUvBR3Lk=;
        b=dShjoJt2APzBt9ltcl40A+BWoKOW6cYHBYbbiZ7Ik2EffOc10xzWm+j0ug9ecobSZR
         98wtcASWF1/MJuAo7Fp9GypIqWza3rTMl+nRnifhyW3psM5IkPge4oQTGymUi8ua8lb4
         PvjiVKkF0GBc5NUua8HLMqpG8ejm7cm/saTcnY/eZsQu1QHApofYnU/gXBQwNxbmrur0
         uhCsGGH++3PbBM5ZR4eTSWx6d7seCuSwP7bQ5IxLU7dgG45h3yDLMC2ar8wmTZQZZqrT
         tr0zqVNTF+687rV03yZW42b0z3FFBIysiVJwgmA7jc/gTgQAA3Zc2weXBR8N4uzsRFvD
         1maA==
X-Gm-Message-State: AA6/9RkqV2h787CDeggJGfs9Zj1OU/ipjxmnMVpljkQyRhRzMdBsoMsVgFU4UaxJGz1y6w==
X-Received: by 10.194.88.137 with SMTP id bg9mr16842936wjb.155.1475506521953;
        Mon, 03 Oct 2016 07:55:21 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([109.166.128.3])
        by smtp.gmail.com with ESMTPSA id v189sm19251693wmv.12.2016.10.03.07.55.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 03 Oct 2016 07:55:21 -0700 (PDT)
Date: Mon, 3 Oct 2016 17:55:18 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: sm750fb: use unsigned int instead unsigned
Message-ID: <20161003145518.GA9455@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes a WARNING: Prefer 'unsigned int' to bare use of
'unsigned', found by checkpatch.pl. By fixing this the types of the parameters of the function become more explicit.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>

---
Changes in v2:
	- modify the description of the patch.
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


