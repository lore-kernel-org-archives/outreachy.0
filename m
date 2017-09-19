X-GM-THRID: 6467514574021066752
X-Received: by 10.129.118.79 with SMTP id j15mr994122ywk.62.1505835592667;
        Tue, 19 Sep 2017 08:39:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.139.4 with SMTP id g4ls7373529ite.15.gmail; Tue, 19 Sep
 2017 08:39:52 -0700 (PDT)
X-Received: by 10.31.235.129 with SMTP id j123mr888983vkh.110.1505835592035;
        Tue, 19 Sep 2017 08:39:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505835591; cv=none;
        d=google.com; s=arc-20160816;
        b=0V9DFHmJ4tYdIcWK4/HhwnKDkYHjEA6rMQaGl97SkvEs34vWyPdus9B3wDZ5f1PL42
         fRWWtlOYTcDOsl8sCaUeBc8e8UvFjSYU9kIQjTUDUB/XCj5CJSvZsy4rPqpu5giudUQe
         3xrsxJqF8Jt9CABvkvm6gjvL6k6lqkOcxraDDy5xinsYx5BhomDrr3GXj8j6o48v0aXW
         p9rQbth8SxfU4XboNSA4nEaDroF1/M1O6xRD5WhDQCe/j/gExQwN4kqGHYhf2+HhA5kl
         SW2skP8V8ccj8QQ1CfaOWzZ6oSPdt7uDY6XpO5m6CF6VuFwvs/SLIfr0UucsBy75hkX5
         N/cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=jZXKEG/R06YIGM8EZ91PWc8GnNVrVc61K/LAW8kh02danNbkAzidpbkJFfelShDmjs
         IuNeY62na8xmEEKc8IcRnEQobyOfOgywC5pNLTsz3VkBQj64ujR11zdPFu8Cmjhfyqzd
         +iUJJ1y/Am265dy4yi3vz5k0NSPaPPg5JBSbbpuhENsUSOMkI96dCTtyI5Sdaf6YlpzR
         rQLWDJT77j4Uu5DAw/YMSmK4kJb2vawAZHMr9EeKyB7GWTzl7r+/dDi8dznSy1GkQB1e
         exKgde3bzw0b8hUiadwZjtZ3cxFtehJjy3PEDIDqMxfzerZjEAV1eGMoyJS0USW7L5aC
         6dUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BJI9XkEQ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c200si267092pfb.14.2017.09.19.08.39.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 08:39:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BJI9XkEQ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id h4so5130pfk.0
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 08:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=BJI9XkEQ4F3zxgkN2oUboz99egSpifUMGCIUniW+S00Q3E27ECyexo/A0Ii0JAryTH
         g9/lhB0VfsE47LFzeHFQWXiMQ952O+hsBWfsqOBFF683P/eOt3pGSzEbac1nITMhIG3K
         r0+C8ZOQlZUuZVVS0YBS/Az58ZsnulTOAQMZuz6YfY3LA6rHuGlDJfw9RN7p85xitqwc
         G9rIihzlh8+iArgqh85cmS7e/B9tPZvrPm2aH5GK94q4pWH17vP3/VFI9IRGFDzv6nEK
         Gej0bFfYpPO/fIIz7gVfZCvzkXKb4oKhzyPwIqjLonhEVwt4YqpOPdYw2P78dvtzSGYl
         DYUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=C1xhsvRE9X0fI+gvXMzbYOS3KbAGxcgHGrwYZPHHYpIpETRuTeTZgQbHsqHTNuePAw
         TBjpNo2xmzylkFHsPT7OBqOZmoj18SBI0rS2pCnoISsp4jV4JRLeeR5ViRq4V5UINqXB
         j2fsUU+6795op7LcEy2xo4sb7bbGOiA9vGrb/Vmr8mO7xJWj8Hebom92U/R62/L7t6Ru
         DgHbQmZ1aIGPpV1Iw2kfUHcES4ZxodJCi+eq6SVpX7j4cGG8+6dWYQqduulgYbhUi2Oc
         /BzJJesA4rijKF+4ak5MkSYzp+YfiSZzaU34dixuA2TqROLl8mDFcByV19SRlUUwvtyE
         GtoQ==
X-Gm-Message-State: AHPjjUjV3c+nzGqf90XYLtTVR6JMrkz+KBj64sEhhbQ6cokwpE1+pDGY
	igBMoj6nUOFkLnTHdZssGnU=
X-Google-Smtp-Source: AOwi7QCNKwZFVIcJClRAcNvu8HCdwyA/Z4klgQtt4+deAijKDUxh57uuf3imepcAfpguhFofnO/IJw==
X-Received: by 10.99.168.72 with SMTP id i8mr1721876pgp.427.1505835591741;
        Tue, 19 Sep 2017 08:39:51 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([2405:204:300f:5ad2:74dd:e91f:361a:e01e])
        by smtp.gmail.com with ESMTPSA id d5sm5121494pfg.26.2017.09.19.08.39.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 19 Sep 2017 08:39:51 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 02/12] staging: lustre: fix comparisons should place the constant on the right side
Date: Tue, 19 Sep 2017 21:09:14 +0530
Message-Id: <a9eaaebd078e0e68f3cf10d3788807b84e87d680.1505834825.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:

WARNING: Comparisons should place the constant on the right side of the test

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index 4f213c4..a3c0481 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1130,7 +1130,7 @@ struct lu_context_key {
 	{							 \
 		type *value;				      \
 								  \
-		BUILD_BUG_ON(PAGE_SIZE < sizeof(*value));        \
+		BUILD_BUG_ON(sizeof(*value) > PAGE_SIZE);        \
 								  \
 		value = kzalloc(sizeof(*value), GFP_NOFS);	\
 		if (!value)				\
-- 
2.7.4


