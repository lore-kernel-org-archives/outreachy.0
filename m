X-GM-THRID: 6806841558557523968
X-Received: by 2002:a19:6f44:: with SMTP id n4mr11347168lfk.59.1584914920778;
        Sun, 22 Mar 2020 15:08:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3188:: with SMTP id i8ls1739972lfe.4.gmail; Sun, 22
 Mar 2020 15:08:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtiWuy6alpLnC9XtyeJfciR4XNRpNDnXGtnBUfECH3YtC8EhaGTNQsbR3BCFsKHNphQZseq
X-Received: by 2002:a19:1d6:: with SMTP id 205mr4020932lfb.80.1584914919349;
        Sun, 22 Mar 2020 15:08:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584914919; cv=none;
        d=google.com; s=arc-20160816;
        b=O3ueQPt+Bhsezk34Taw7a5bAHBdseyQYy018Q6oyOXg0eGWVDttw0dYSbfz5XeyMA0
         EAjo/Jgx+1kY9jty0j4P0UKpGYynOQc8Pp6jE6f6Wk6offdoTxgDtgPP/gfaTw+3p0pQ
         fa0B4Zl6LdbkkD5EuNoobjLgUAW1BbUJaAI+4B7YsZDGnZxSufMAYrM+LwyYW8Z7yl0D
         uKVMTJ6iefwkf+JyCQQU8gsscl3v3Mf12gRgatjXOONK5FvOJhUlxFCrtxtK0mAuDsKz
         6k7Mb5HibW9DHe9o54cWjayL0+hSbBeFTe3UmXdfokFidoVoufGsyc3Oqq6o+jfbUHni
         i1ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=M/XzvbNpW36hSM85NHPfX/cNLPYOF63vIzo310Lztts=;
        b=PK5UZXziRjVmOQKoO99g/QrnjOR2LQ1Pm6O+2fEunsZmwBddCAscHTvJ2ne9By3PF6
         SzXr3/JgHRybI4+ITE1ByTWsbWE+btyN30OBYksjV5tlV4klJIoPQsQk7ZadUfAs8uBK
         H6vIe9MhvE13EGiJtiSO0s7PTTc4zcWByw6xe8DW9VtoeJdGtdCByO6UhuAhje9E4QIA
         FpWNYVR81PjOF7UoszqYrKSdD36M0Api7jOMvcxjbgnOLQOVha78lYdn9oQ0PBzsXNT7
         dwJozZE5OWi2Zc2P6H2CZ+FETctk1BVMBpbLqsG03itV8B7t2Dpk4gzImTCWucic2tSx
         t0tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZAALJbk+;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id s17si965878ljm.5.2020.03.22.15.08.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 15:08:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZAALJbk+;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x244.google.com with SMTP id g27so3625104ljn.10
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 15:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=M/XzvbNpW36hSM85NHPfX/cNLPYOF63vIzo310Lztts=;
        b=ZAALJbk+o6iyeDWQbkWo0RbryNIvI2vEoNIB0LV0cdxM6rUBowPzs5p0KJIHLv55XF
         5jVrB2dOyNvAn0rf2qA83RjAF91mv5eeYF3lNun0EfJTMvHCtNAa5J8NINuQ2is/NDZ3
         Yeib8Cxhra/bRlfjXTsQx6UGVaJEpAsS3mGw1wbYp/XYSViBUy2LCro9gGo3JW21hinJ
         +1eo37YVdZ0kU2hAxVlqcwjBohhK7qGIbglxkob048CMDT3OT23dN5nxMwRZEZFKSuCa
         smrjJtAsm9nzT/BXh6pqvwJnAoOrMxOaiIpH4pQBN1JUe2d0T4BnT08HUZ0XPP2jpTYB
         BxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=M/XzvbNpW36hSM85NHPfX/cNLPYOF63vIzo310Lztts=;
        b=LwtN8MPg6lBXNW3+VtIgASmK6DCw4PXUe4Tt0la+nog3FLNwHSB9Gt+ZG4HJI1hhBA
         MU/wCBfGVKRh6dq9Kx1QbeEaJcz4Za1CqS1NLvVg1zcPGh9ukuskCj/D+juRQsSy3FYF
         gjODvHMq1sUknZ/ux3RtIuQs+350k7V0PPv7ocsN+X5eXTjNJBtY4w6aOqm2rOpMMEpO
         O1S38QJKj6dBGYlNXyjkKfuqd6IT0uqfc/sMZzH2LI/ANpTPBFZmH1rFUKdpwX6H567f
         OGnvIRo4N10b9G3DziQ/MVjrEUbyB+Yk+G0NeKaZEVXZJamYNKLIs5VqkfBo9MPzFsqd
         i8tg==
X-Gm-Message-State: ANhLgQ07k+9r4rWdQ3gN99PRagH8ehG4/jyGJieCdQOQUbC6c+gbjBUf
	8sXSTnzpxKVcIy4ZRDSz07KtBTmR/+4=
X-Received: by 2002:a05:651c:1047:: with SMTP id x7mr11808660ljm.246.1584914919145;
        Sun, 22 Mar 2020 15:08:39 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.39])
        by smtp.gmail.com with ESMTPSA id t13sm7273527lfc.68.2020.03.22.15.08.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Mar 2020 15:08:38 -0700 (PDT)
Date: Mon, 23 Mar 2020 01:08:36 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: hp100: line over 80 characters
Message-ID: <20200322220836.GA8560@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Moved to the bottom line after && operator for it exceeds 80 characters.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/hp/hp100.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 1b957aa..43607fb 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -549,7 +549,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 #endif
 			local_mode = 3;
 		} else if (chip == HP100_CHIPID_LASSEN &&
-			   (lsw & (HP100_BM_WRITE | HP100_BM_READ)) == (HP100_BM_WRITE | HP100_BM_READ)) {
+			   (lsw & (HP100_BM_WRITE | HP100_BM_READ)) ==
+			   (HP100_BM_WRITE | HP100_BM_READ)) {
 			/* Conversion to new PCI API :
 			 * I don't have the doc, but I assume that the card
 			 * can map the full 32bit address space.
-- 
2.7.4


