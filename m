X-GM-THRID: 6465611589668044800
X-Received: by 10.129.122.19 with SMTP id v19mr14297142ywc.5.1505416377241;
        Thu, 14 Sep 2017 12:12:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.142 with SMTP id u14ls5464100iou.25.gmail; Thu, 14 Sep
 2017 12:12:56 -0700 (PDT)
X-Received: by 10.99.114.29 with SMTP id n29mr13893240pgc.88.1505416376669;
        Thu, 14 Sep 2017 12:12:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505416376; cv=none;
        d=google.com; s=arc-20160816;
        b=fh/cFGgX9pYBNYJllp31K+uupcfRFskQo1DW06squjjt03ayOuMc/NIabedXSQzJtL
         h+U+ufiH3gtMJ2V6HNndtDXOnKj3J6NPGVRs7ToLK6v1sRwzps3c6FwhvOn++Y1jzbSi
         EHRTbHvtvt3UDAokQr3ymwNzyOvT8Dg8FC106WwlK2FUMsX6V3F4Xg/skALhZmwYScFy
         2gyCTeIcfv7NgvHa+PM228kBpfK3NrYTlWB6Strut5DPHdrH6SLDCkEuvirgxclsxBx3
         IMV6iT6O4Pwn/uJXoBBGeE/qJYHjOXCLRO2mtT7Bz24PscGd9DXScBaC5TD8qWb5Em6k
         BDzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=xZLUiPbZpD7yFLIFYEP2lAXcjDtSfd33fIL0nc+mxMs=;
        b=Ejbbb18A5b54a9hHuWdbDtTdDpdLG7PxjTX+J8w2fK5fsME2VRSdCREnfTK8SWmAFK
         mkZIKocA/UEuRVh8C9O99EjwZ+UtqVfPwWofa9bcV80+y8lSOXXWdO5Q7NWDmpuy16V3
         x0eHum1l5yZ0ZYPuwDmkIh8d7as0kfEMwM9FZO7Dd2XJS1EA8XXfX/ez5wcQLjzogF6D
         /J81+9IrMVygGn3nhYq9OuXTjf3873LnoFTghc+saQ+jOwjISyFACQGoPjrckb+7Lo0z
         3mKCUp8B97oiAG6Rrv6LdoDAYQqS+Woe17gAT/2T/Q81/4VXE3msHfh6WzZNdcMcMS2G
         Q41w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UOczKl2L;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g27si429513pfa.2.2017.09.14.12.12.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 12:12:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UOczKl2L;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e69so119889pfg.4
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 12:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=xZLUiPbZpD7yFLIFYEP2lAXcjDtSfd33fIL0nc+mxMs=;
        b=UOczKl2LhXQSjvW052OWYh6/lSIV5WFEq/KcRHgoQ9t7JgXjb0hWVDyhf9QWSoK+vb
         foarIjGRqJX8pff23KHjMZjUWWwxODznm8RdFjYp4z+FGbl9JZ0ChuWEzvdo2efHP99F
         S2hodxKm4xrvOYMVkx6Uq8Qn9DUaR5lkLGBV8WpyI8ojbvrOqpkrQU2jgeOIRLJhZ5GG
         h5R1VH7j2pvRkICbb8A1G1FPj7PBb1CcyuaNUP0oGlCjgBQWDkAaNUzE7EZf/GnjyV0Q
         alta5a3aK9ErsmC0N6TQhTqQL/qUKNUIRE1igJC2MF6pMJfUtwfzmaVf4Asvm6V8dImX
         JxIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=xZLUiPbZpD7yFLIFYEP2lAXcjDtSfd33fIL0nc+mxMs=;
        b=kwwlys6fughsHgqoAjeWZQtmsFayj/vSTzT1pkB++7+q9dc1OInPKe2j1eBrVib59w
         C9KUdOpPeurRykzVkxyp9h8HUCNKnmjLLnL5TNJqa8SVDzpdCsQJsz/9EgkoQYEgYnbL
         17Uf3OhgKyV52i46MbdlZEhVyv0RPzzclb+431wzIkDE2LRBeg7umoHjXc2tQ1vxadhs
         GZgl579ahrugJwKihaAe51MawYok8mUm6haU5CSMxSf9mX95DzsQS4MVH4V/ntnl5UpZ
         e2qfZ+NJNLEt44K9J+NXQuyeob7qB5aWzaRqC7w58d3oGgTvhIMlUM8866IVsmT1xpFJ
         TeHg==
X-Gm-Message-State: AHPjjUiF9mWdRZujKCPi6mbC+g3Ws0jKzdP2w0M6OgAK4NFhYLl+kkXL
	Lo0YMsbKtlTMTg==
X-Google-Smtp-Source: AOwi7QCwNQwV6Tol6gE0z6ZiNZgtx5szc4k4KI1QnW7z+ywHkZggOFLcVoaW4p7zp6vGI01NVxrvLw==
X-Received: by 10.99.184.9 with SMTP id p9mr5294276pge.6.1505416376416;
        Thu, 14 Sep 2017 12:12:56 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id e78sm28439634pfh.76.2017.09.14.12.12.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 12:12:55 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 2/3] staging: lustre: fix macro definitions warnings
Date: Fri, 15 Sep 2017 00:41:52 +0530
Message-Id: <ba81893e8d74ca5367f14caa8b4b221df25efdff.1505414917.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505414917.git.aastha.gupta4104@gmail.com>
References: <cover.1505414917.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505414917.git.aastha.gupta4104@gmail.com>
References: <cover.1505414917.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning for macro definitions.

1. single line macro definitions should not be in do-while block.
2. macros with complex values should be enclosed in parentheses.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index 4e4bcf4..abbb4d6 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1163,10 +1163,8 @@ do {					\
 		.lct_fini = mod##_key_fini	      \
 	}
 
-#define LU_CONTEXT_KEY_INIT(key)			\
-do {						    \
-	(key)->lct_owner = THIS_MODULE;		 \
-} while (0)
+#define LU_CONTEXT_KEY_INIT(key) ((key)->lct_owner = THIS_MODULE)
+
 
 int lu_context_key_register(struct lu_context_key *key);
 void lu_context_key_degister(struct lu_context_key *key);
-- 
2.7.4


