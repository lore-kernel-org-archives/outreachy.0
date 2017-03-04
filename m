X-GM-THRID: 6393358325939961856
X-Received: by 10.200.56.211 with SMTP id g19mr2814518qtc.6.1488648141521;
        Sat, 04 Mar 2017 09:22:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.110 with SMTP id 101ls12144796oti.43.gmail; Sat, 04 Mar
 2017 09:22:21 -0800 (PST)
X-Received: by 10.31.48.134 with SMTP id w128mr1432862vkw.22.1488648141193;
        Sat, 04 Mar 2017 09:22:21 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id g82si587980pfb.5.2017.03.04.09.22.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:22:21 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 77so2975848pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 09:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xaF1d9mOJqmIb6g/rSeolMcFk0agiq9OaKivY2y8U9Q=;
        b=W7iBLlUtoZgm+vKn6Ksm7PscqrWq4k5zo6vPD+4UY/Puj9xBALXE7PkmDt6vVSh2ia
         PqIr1tJysi6IPSzcqQWLg07WYp3+Ovl8yRI95ful8y+xgGstp1l3mYufY7eHSGTk6MDE
         m0wcZRucj12ngcxuFRD8/1H+0yBAaDZoyJBYq5wrdePa9mUxBCl7fj5zMdsyzXd9egGO
         nwwoKGufx5bJ7LNcjN/GcjJHV3hsP34JNRx6hlYAYGxpBBULuFgyF+bsGyGHq/DIH1PM
         TKMJy5EeYxtHVWXhKW5WSxhOFdsL7M/hbnvuTnhDLn+T/l+Rchh3W+LKvXp/lOAI0ThL
         Y3ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xaF1d9mOJqmIb6g/rSeolMcFk0agiq9OaKivY2y8U9Q=;
        b=ptmOcmWUKWKsoV0WwF7wtg/y3PnV4nVTv+SxQZmjTT6Rw4hpDD3vG9koEinFZPST1X
         80IVHYHcunTI4u8PVKSKhQPDY5GkLEUugyx40YUN6xMX6jZD/f9AXwCa6AlgVw6JH8Lh
         N7s0QOVYKD2gwQPupeJwmV19puDF1VNY4ayRIXuTduYv2bWej5AJUZ9QD7Nuu5CgYNby
         2TQe2XHJxUeZWg+Q/EDujpJHfpnJuUomox4dw5a8aAkUjINw/yFsvAUzrToaYJCB+Y6s
         wO4ZeUneI4V1hK9eCrsYOJnEyJ2TNG/evOFCoYZciT+i3V4/wqQlx9beEbKW4Jaiz7d5
         s7hQ==
X-Gm-Message-State: AMke39lhTN3PgLa3gZt24kigWv9WCO53OH3IaLIqp3ZPLtPPV66vDqDM4FMuEPrpib/AvQ==
X-Received: by 10.84.214.129 with SMTP id j1mr13280498pli.23.1488648140809;
        Sat, 04 Mar 2017 09:22:20 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.75])
        by smtp.gmail.com with ESMTPSA id y5sm2902392pfd.33.2017.03.04.09.22.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 09:22:20 -0800 (PST)
Message-ID: <58baf7cc.058a620a.29e24.4384@mx.google.com>
X-Google-Original-Message-ID: <20170304172207.GA5662@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 22:52:07 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 8/9] staging: media: atomisp: Fixed typo.
References: <cover.1488642821.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488642821.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Correct the spelling of initialize. This patch fixes the checkpatch
issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- Fixed commit message.

Changes in v3:
- No changes.

 .../atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
index 6184019..6d12e03 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
@@ -64,7 +64,7 @@ bnlm_lut_encode(struct bnlm_lut *lut, const int32_t *lut_thr, const int32_t *lut
 		assert(lut_thr[i] <= lut_thr[i+1]);
 	}
 
-	/* Intialize */
+	/* Initialize */
 	for (i = 0; i < total_blocks * block_size; i++) {
 		lut->thr[0][i] = 0;
 		lut->val[0][i] = 0;
-- 
2.9.3


