X-GM-THRID: 6470117861435113472
X-Received: by 10.28.215.195 with SMTP id o186mr1506040wmg.9.1506893696538;
        Sun, 01 Oct 2017 14:34:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.5 with SMTP id 5ls1677875wmj.2.canary-gmail; Sun, 01 Oct
 2017 14:34:55 -0700 (PDT)
X-Received: by 10.28.136.12 with SMTP id k12mr1554603wmd.10.1506893695940;
        Sun, 01 Oct 2017 14:34:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506893695; cv=none;
        d=google.com; s=arc-20160816;
        b=nKbM6boXDN3eBWZGC5rXTVyWwqxNDGOBRJKvR/4EDHytTSDKbv4B1I4XSbAmPhjR56
         eBzj1MKfDQ22Eqe9ESURc4UyWPX8AM4d0MstIhqVkLjlB5TtWW/FzlvHII1lbW0GNrGf
         CsBarBF0b1OCD+8HW3muYOzZ7TPj0Fow43eUkLxW+Jn98z1AqI/OZCg4eWhJj3WMLcMk
         Y9ju06SKGGX5r1sTuxoOmVLy7EQw7rmYGNgZnB21SIzUUi2iuiQbD0JtXKzhVDkhjXei
         57pQwezsPEbUQ0Rrgy7dDNEWn2Zcb8CzRz1xfHJTHU9k9q53tbdcy/jmbIrMYtg+TBrz
         4z+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=YWexZSDiUEtZUlAjVHK9oVJlY/g+MrxdChrIq1M4T0I=;
        b=aVHfDGD4l8c35rNxnVvGug59TQOU3mNpd7E9QKg8G7BoYLMsY2rEGtAfq6gbJJhJ/W
         4N9xWKf1xX4hR4m7nfUCID0cMw0Gd3r9ZUHx/cVxfZi5oF8Ig05mKPSu/n32BLxz4y/J
         jxhRZG41ZuEI5RVCtMbs7AmpE8QKb9Q8O0d5H8hsyq/FFlyQBzV2zbL5/cRdR5aBSAio
         GPBeFuzoZnVgOsc683ToLOsyqcBF6kMj+t7+dx1tDz3BSiGkwugVkyiqj4vLfm136lmW
         LlZxfc9HHUGeSY+Dpqdo7d7D6Ehm4QT00xMJV2IIm95Akg9k0v4pCTjI40A9aDxYpeYZ
         GLrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IP/plPRw;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id 196si256322wmk.4.2017.10.01.14.34.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 14:34:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IP/plPRw;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id u48so2664076wrf.4
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 14:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=YWexZSDiUEtZUlAjVHK9oVJlY/g+MrxdChrIq1M4T0I=;
        b=IP/plPRwMjEw14Mj9XkmD+MwbZVeWcDlaWV8TmQ+d3tlwAVl9xQEx0+NXnq8iM45ab
         PGRrWU9eb4v/jifsDcbSz6a26RmScPeYbm/hftsCvr/LYj0FZNT/I0lAOz4aYxlvGXdA
         MBEuI+Tof/WWz1Nnn9Hli0mLUBee10R5vO2ZgUvjiVau8skba1nyFatcP4Bsi+EReBfZ
         RPZy+CiyaJm+Awbnk0RuJQIaQ6EBIPE6H+pFxlOoz10xJ02MleYTFHGs/A3T7FCiFPMp
         /O23f4aac+RLJ3QgUH8jMFuFpn6s3WWAjnYxYADvEXUEA+eBCoYJKGT6WtczVE0trVjL
         e52A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=YWexZSDiUEtZUlAjVHK9oVJlY/g+MrxdChrIq1M4T0I=;
        b=GnWfPZMRv0Hy0Ljnk1FTiAF3M8JSRW/Yrxi0eP2t1cELwU0NVwipCdRBF9zc8kVSBU
         0GgeQITx8vzO0Fj2SSe3eUwe6+Q8xYn1muEUdxssZNKyiQLolWYM5ly8XAvlC4Sw1RUt
         x6s0mc/M0R3N3ZMVZIyCLyT+RxBTkZbRxkXdnQAilbFKr62MA3g1Eknp+cHGePREcFKH
         dtcjHrdyn1pLErM87iaH4V0Anal9XM4v/Npl0odOwUUCcrMdlvNfFs1WTLj5852RdSrw
         UYVJqdXsgJBCC/Q7jU33pNcH/X+FETBAqvqs2gmUGgsOZTqVtRruKRdu3HTuN0gIcECp
         FsEA==
X-Gm-Message-State: AMCzsaU6tEH/6jvaW0rGBOOh+oWjuZjsfMQOWMQ5YjqIxcNOqrU4/qht
	vFFbFkbfO91HsM243pTgu08VjA==
X-Google-Smtp-Source: AOwi7QDTwkBzbEPD5rNn43gfni5++qd0BcmXhZzO2/koAcfsCQjbBgD5yc7Da9S3usyjQE1pnCQ3Eg==
X-Received: by 10.223.166.119 with SMTP id k110mr1417052wrc.182.1506893695750;
        Sun, 01 Oct 2017 14:34:55 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-133-163.residential.rdsnet.ro. [5.12.133.163])
        by smtp.gmail.com with ESMTPSA id y39sm12346264wry.70.2017.10.01.14.34.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 14:34:55 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 5/7] Staging: media: atomisp: Add spaces around bitwise OR
Date: Mon,  2 Oct 2017 00:34:40 +0300
Message-Id: <40bc50c3824a12b18507a4520910d6c3e89946df.1506891671.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>

Add spaces around operator to improve the code
readability.

Issue reported by checkpatch.pl script:
* CHECK: spaces preferred around that '|'

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

Changes in v3:
* nothing changed

 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index cf6078b2195a..0dcdcdd16462 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -1519,7 +1519,7 @@ int hmm_bo_mmap(struct vm_area_struct *vma, struct hmm_buffer_object *bo)
 	vma->vm_private_data = bo;
 
 	vma->vm_ops = &hmm_bo_vm_ops;
-	vma->vm_flags |= VM_IO|VM_DONTEXPAND|VM_DONTDUMP;
+	vma->vm_flags |= VM_IO | VM_DONTEXPAND | VM_DONTDUMP;
 
 	/*
 	 * call hmm_bo_vm_open explictly.
-- 
2.11.0


