X-GM-THRID: 6609994215538556928
X-Received: by 2002:a6b:e0b:: with SMTP id 11-v6mr16492348ioo.3.1539010216888;
        Mon, 08 Oct 2018 07:50:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:2e83:: with SMTP id i125-v6ls97139ita.2.canary-gmail;
 Mon, 08 Oct 2018 07:50:16 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60GDvbH1c8Hg4YUoOTEpzjC9qThfl9X2YvQEfd18d5miwoVOB5eUrvw98dLHysaU4gLB6Bx
X-Received: by 2002:a24:8306:: with SMTP id d6-v6mr17116663ite.24.1539010216084;
        Mon, 08 Oct 2018 07:50:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539010216; cv=none;
        d=google.com; s=arc-20160816;
        b=HuKmHepGLMYyM8HhdV6iiodmtoP8aBwTK6U0BfhZBxR7PhCPh3aq+VWRM42+j40fzO
         qFJgYUUiuUlBWL5qtAQMw7m4aQWZDQuhhJU7D6kCL+Te+myb5BOQTLjKvGeK6RgozxKO
         zES48aZzD5MyqtyipUmB2tElY6GAM0wTpbOaaBAoFLAY67CgGlAwWoIzK+32qDpTfkVd
         1zFsCFe92sLuYtQy00KuPBLUpC/neA0p+xNNBJXhiqEDinyzhNE1Pzr8QidsVVLTziN6
         qFzEMzTbnsqJWx/wfWn3CWeUmiwxifQt4m+JXzSwBa0uhiPvSS0SoKElFN/+E6k6nFB9
         /2Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Vzwc1jyVcjgXYgcDU4zv/1ygKhiSjIw60nQB2kuNHvU=;
        b=pp1Vovt6PtwCk1WUW4CHUMbsSBvqWAqfrL+LNjzby7HWqOuXRNUqwvx7F88GeI00v7
         x0ijrwLw+Q68pxoa5BHQ+GBHeiRrhEr3ipQ5ziUCqGdvwonvKL3X9bnjAOrhGaMfADQp
         VCkacz7BnbB9y32R7sO9V1q3pws06CrLwgsxWKEzGAhlOHpF7du0Qn8NM31WW5ws1J41
         1q66DgRNjLH4IEyjlD4fLBN8ZqjpLCcxAtfAuBLh22uf094cF+GWkjVNAgVOHv05enbU
         HPqFNye1cqUZwgUYkcXp2yJ+oyC2CljV/1CWtQjVly3y30QiqCI0eMKPsXohgdJLbxId
         HFTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lK0jBPYf;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id b81-v6si143850itb.1.2018.10.08.07.50.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 07:50:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lK0jBPYf;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id i4-v6so7926839pgq.9
        for <outreachy-kernel@googlegroups.com>; Mon, 08 Oct 2018 07:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Vzwc1jyVcjgXYgcDU4zv/1ygKhiSjIw60nQB2kuNHvU=;
        b=lK0jBPYfIpuF5FjLZIP9K8IRppwXZl7Ne6G/nUY+J1Cvfso1CYERjnQH1mpsTJH/n2
         j5t83uvE9PTYv1TuLR0zP9ZHVQs00Ezl52YPZnToBgDXFj70tMX/y0RFLmOYyDYs9uE8
         3w6ejkPQvKkX8n/v7k2rhe3MXzPuWTNp+uPkCdstx34Q5pSLmcYeB0v2a3inMR9zTYuP
         AIc7Bw1S6kE3WZcmeqPhUs1esl/Na/8VL+Y+dzmAXrNP1Vetj/uAd7t8hPnO6iylo0Qr
         E4CHmo9AtFxCAJbDjQxxE4HS108uR0JCq6T2Pg6E0bln6YZ+0T6imvnO7ScqXoAYhFaP
         omiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Vzwc1jyVcjgXYgcDU4zv/1ygKhiSjIw60nQB2kuNHvU=;
        b=bZPYHbHe2iFKNW5hTeKQ//nbl8h3cYGkNkRyYx067o02qgPAn1G1MBOU6yHdXZsJPh
         G2qyb6m/Ucs5Trrw9xj07FRnZ1bog7xXYLQowWbrnfzXTJymfBm08kyqMn4wdapf1KNE
         xLBqjEhSryA0aRw9tsWnRjZgnBDQ8yX/H3h9Vil0vI0JRzyvG0szmahypkJxfh8bXdQZ
         1NI9sstTVL/qejhYnWjy0njBuX5Yy57/IY0Q88UHzS1Jd8cojjWfXifz6x2UTg9HnYhz
         mAt50P2r8qhMLN5GjBxETn/dlIpuk87Uj4K63Q438Mj0bjHowRlE8VK6/gBUWbO+d/c0
         PINw==
X-Gm-Message-State: ABuFfojGvDElwx7x9+DWMlcsVgAMu0QnxIjI1nHSJBIK7Wxd5bgeWhzl
	S3wj7b9xx3jznvz7t5hnc3A=
X-Received: by 2002:a63:fc46:: with SMTP id r6-v6mr21756659pgk.345.1539010215369;
        Mon, 08 Oct 2018 07:50:15 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from veda-VGN-CS3AGH-R ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id e7-v6sm26682104pfk.3.2018.10.08.07.50.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 08 Oct 2018 07:50:14 -0700 (PDT)
Date: Mon, 8 Oct 2018 20:20:12 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: greg@kroah.com
Subject: [Outreachy Kernel][PATCH v2] staging: mt7621-dma: Fix Spelling
Message-ID: <20181008145012.GA13213@veda-VGN-CS3AGH-R>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix Spelling in #define GDMA_REG_CTRL1_CONTINOUS. Perhaps 'CONTINUOUS'

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

v2: fixed log message in place

 drivers/staging/mt7621-dma/ralink-gdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dma/ralink-gdma.c b/drivers/staging/mt7621-dma/ralink-gdma.c
index 6d9fe175ea52..a430c8afa3d0 100644
--- a/drivers/staging/mt7621-dma/ralink-gdma.c
+++ b/drivers/staging/mt7621-dma/ralink-gdma.c
@@ -47,7 +47,7 @@
 #define GDMA_REG_CTRL1_REQ_MASK		0x3f
 #define GDMA_REG_CTRL1_SRC_REQ_SHIFT	16
 #define GDMA_REG_CTRL1_DST_REQ_SHIFT	8
-#define GDMA_REG_CTRL1_CONTINOUS	BIT(14)
+#define GDMA_REG_CTRL1_CONTINUOUS	BIT(14)
 #define GDMA_REG_CTRL1_NEXT_MASK	0x1f
 #define GDMA_REG_CTRL1_NEXT_SHIFT	3
 #define GDMA_REG_CTRL1_COHERENT		BIT(2)
-- 
2.17.1


