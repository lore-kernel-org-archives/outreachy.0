X-GM-THRID: 6665828102544818176
X-Received: by 2002:a50:944c:: with SMTP id q12mr5297804eda.0.1552009050293;
        Thu, 07 Mar 2019 17:37:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:97e2:: with SMTP id f31ls1902420edb.0.gmail; Thu, 07 Mar
 2019 17:37:29 -0800 (PST)
X-Google-Smtp-Source: APXvYqzZtrymJIJF2DixEwMyMA34Y7WjpAmIPkGKlzQX8/i5F7HbevZva+x7WBsPhDv8fkdTl8h9
X-Received: by 2002:a50:915d:: with SMTP id f29mr5283394eda.12.1552009049563;
        Thu, 07 Mar 2019 17:37:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552009049; cv=none;
        d=google.com; s=arc-20160816;
        b=glOFs8GrrHsnzDKOeIS93a5L59idky4uRD+rTAr2I9bhSrc4MXnOrYBffFMzHX0EqQ
         nOtW9pU13EnxwlTTN1zAnJaw9uzh4q/g6PsNXpgKQ6q50qSJabN6BQB/j6F7sVPb2Xwk
         8N1+IwAhII0Ycq2YoWJR7kUg0W8qvXrzsAMZBlbQFzyZFrzxrD9yHPrE6/8hZqoozuET
         Cnf0mm4uvCPCmXWF0AmeII8mxSd37dbtuOSHZaSZdNw/kT6Y3JdEkfvhIrIh11IM+VPH
         sAxOpLKsCFRrEohUNK5zp7SJh4fgLEDZE2I2hIf1tdXXdYJSIWLqFzDQ3T9izAvHk33p
         8yGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lfNjgyI1Q6JzpBoCk6sK3Jix9RlqykWfmvctf6wE9oE=;
        b=NyIUXiKH51T8N8QDXSk6bxXBFCYFT3jeBw03KaQSjtFFj8MPPYgmkgcyuZsx/3y2NC
         M/zofMjcHPfQIOQhZzJ+dnnueSajREZ1DdKtaSpwSKRwt188VCFBt/7UpAgIk8iGiy0Y
         dtt2MZq9NTtuY75JW+098JMzYiGiTWjjL/1FTOJWs2DUexXNuKL60gz8SJvLij3vhjl/
         ISbXwUjsyO696oNXpBnzLE8WbrRSpSPdfmj9WG4v0+yj9nDisV5FDTA4hVjZ2RsahBec
         AqowvDi7B4B6PzbE5vfLbtVVKUZ2UF1CAyo6SEuv+s8+guJ7C7w0E2xUvZbzbmykTE/v
         d07A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fT5PliuJ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id h5si327356ejq.0.2019.03.07.17.37.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 17:37:29 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fT5PliuJ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id x10so10960303wmg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 17:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lfNjgyI1Q6JzpBoCk6sK3Jix9RlqykWfmvctf6wE9oE=;
        b=fT5PliuJA2ZQGJVFjRmALbpuA1Dgq6+l5PFq0IXl4pW+rX3BUQ/6mg2xykVx7XnZgc
         yTLuFk0CH5+VHc4iepJ0hnh6IVUBh/JrZLpypeiy50LEfGfU1UYp1redKGAChQwJg6Jg
         8t6tTO1KeDgeSOsWv9FRHXM5nyiIQGBNztjGJJQXeZGcT4RbM6XIpph9JoezK5yXa91l
         aNLyHFrnsJlrXzXt98OckZRla+OAD5RTiYFS65BADKRGEju9UJajBezzaTsnYUwjCR6h
         XZQMJZ1iX76zsuz1GHjA8GSUdwSMiSmyZFOFTZbqGwhLL+9RgdQlL+UmD+EKkdQo7Djn
         Z/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lfNjgyI1Q6JzpBoCk6sK3Jix9RlqykWfmvctf6wE9oE=;
        b=Yab3MfRQ3MZADhH68gfwP47Fqja8a8PfeQzLOIByf5eU+ZT+ZaM0hmJdPuCZ97mt53
         7KIu6xrRDMLoFa1Jawmn0RJTtsKaO34vL+gmrj7SYje664freuBggt7OCJ573DuiNC1S
         BfqiJ0gTvC3EFik/2PQpr6WjHJVB3eB+Hr7cYwU4gjetSdAckn/tEl8DZgrsgK/rVOWr
         WAl3HLw75tVFlkfyDmU00pkPCVvilI+yMemvlRsB/bqMruqQaTxFjbj7Rwd3CyryVp4c
         6vU9b29noi4QyswLZeL5BPmYRuyJ8Ec1HWl6sxuZBxtxairnuuFgjSGfhx0Jd28jLdJN
         iXag==
X-Gm-Message-State: APjAAAVXfTTQTqq9meFpryJfL15GioeJQi9Qfaa4XuR+qwfQRmHiy1te
	CJiJWZUWiuId5DIK9JKOQxBcCeU=
X-Received: by 2002:a1c:7ec2:: with SMTP id z185mr7926780wmc.69.1552009049096;
        Thu, 07 Mar 2019 17:37:29 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id a82sm7897490wmf.11.2019.03.07.17.37.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 17:37:28 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 2/2] staging: zoran: remove license boilerplate text
Date: Fri,  8 Mar 2019 01:35:00 +0000
Message-Id: <20190308013500.27350-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190308013500.27350-1-jbi.octave@gmail.com>
References: <20190308013500.27350-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove license boilerplate text.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/media/zoran/videocodec.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/staging/media/zoran/videocodec.c b/drivers/staging/media/zoran/videocodec.c
index 468e5f33b8c9..c1ee5cb7e66b 100644
--- a/drivers/staging/media/zoran/videocodec.c
+++ b/drivers/staging/media/zoran/videocodec.c
@@ -8,19 +8,6 @@
  * (c) 2002 Wolfgang Scherr <scherr@net4you.at>
  *
  * $Id: videocodec.c,v 1.1.2.8 2003/03/29 07:16:04 rbultje Exp $
- *
- * ------------------------------------------------------------------------
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  * ------------------------------------------------------------------------
  */
 
-- 
2.20.1


