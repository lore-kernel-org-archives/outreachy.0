X-GM-THRID: 6473410411176656896
X-Received: by 10.99.127.9 with SMTP id a9mr2544654pgd.81.1507208320389;
        Thu, 05 Oct 2017 05:58:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.49.84 with SMTP id x81ls1168700pgx.23.gmail; Thu, 05 Oct
 2017 05:58:39 -0700 (PDT)
X-Received: by 10.101.66.136 with SMTP id j8mr2426178pgp.0.1507208319425;
        Thu, 05 Oct 2017 05:58:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208319; cv=none;
        d=google.com; s=arc-20160816;
        b=ifcdNrD0gvctR7MaVowbHUVftn90POkyYD01XU0sA7Jmle5NogFGE6Crdf+AHfPzlt
         35BHzWuUqZOleiGG61DvhduA/TNJ1SNAqK3jGmwXhRhZwv1bFtH7+SOMHf8bPmgsDXVL
         3s5U/02kUgkwGr51c/8u8mE8tM/3CDrTU2+bqb2MDlcxd2Dqj2aQdcGV5Kare7xPFh5E
         xJmyUtS0xGnehbOzrsmqnPSB/hmF6deWxH5Ckvz1qX/ohdmkSXiYysej9W/IJVPObaru
         /AipV00PHu7PFcbW6fWuofwo+ADE0jUEdS0XBdu4/r1rR4u+583g4pj7q0hEGBef64IT
         w7Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=dP+pN7fE4psUUnbggfOChOj6H4YSG9R7h2BpJs4wHxGLEk2p7HwKp8ifywF/KZpRUE
         KOLXPSVkjpHlTdL4DELsh3reA2F0pa1BLYxUW/iOrMHcyu0ibxSmiH60EsHoH4apE5/Y
         5GZAyMCOotsVvxnvZyGjJRZocxPsHz8TCIWLBKuL3l0WTg5TGyHMFiKeDlQ+8siJm/VV
         j3zfFBP2tGSyspnsIIPcIzVRjgM2jkEPFyuMCBFF2/zgSvmzhiSR3pGYbReLZAJPMTnw
         GjKExtSvvGa7/jCHiJpa76BSm7PuEa62K+KAruQpMe7rP6yCLIGg39j5AGbmdmgKQdBP
         FOAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sqr/pkuM;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id w124si330677pfd.18.2017.10.05.05.58.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 05:58:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sqr/pkuM;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id p5so13358643pgn.2
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 05:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=sqr/pkuMId9XtzRU9iCUy1qsYmjZeRz0LZsEkANLznGZth01H7gZnP4dnkiN3CS1sC
         5DzIqWEQ9oJYRjUtp3a/1E/x54oc6mWomLybBlwMax+tgIhyQYuJoU0gvebK3sD/S/JS
         tG9XO26os2zWPg8M9yyULiDW4PHjRBo8RTGD2Vyr5rVkxArr6mGGOpJ6lZO24o8azZ+u
         8l2ksv2bd7J0o0gE8Fiz+mw5JaSqR8sODxu5qLpFS5d1rw1bxfFm6I4FVSfwA7BEmXDD
         Lz4v9D42DnzfIuUGVKXFX+2cS0G2JWVKsaU2pdky5qIHJeVWORd7WOpdd38mMyJl79UJ
         6JNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=g7EplzGzRimvcj+CU+TaywSu8FMXh5FENDza+vOl2upjZdPzjsEHmSGhpOYjoN3WmN
         6FZQ4oehwFh5BL8VakopsX+EsZcWOAJ6e2JYR69NikbURnatjhmgaIjoW3ccn2GBAxPM
         k9etDmvJcMwNGC/eIpjGBig8bHfLgwAbpvMD59vl1ipZsAD6mQnIm/CXZP1voaer2VGx
         M9hv/+4vhRFiZnzliKbSxigSK6RJywSkK7GZCYSXJnbPPizTSaHOq4Fu0NgDOICsASML
         yxNMz9KRZZTx9iDx2eB1cL/kD4hOXBmX6F3AA38iMk2ySt1aLgdnd5GLqmpk8kjdERnQ
         MVEw==
X-Gm-Message-State: AHPjjUjScaHhzavLTRGxmUlwEisU9/Tn3xTZyoYbM9AQq8Nc7v0rzEHQ
	xWuvf+gG8cpcyvsnwih7Wx8=
X-Google-Smtp-Source: AOwi7QCua6vvzFpBsMiPMZZvtNoWU9W3hPlqg9mUaLk47nSHYovJ/RdXB2RVoTIC8tvGTnHLloGWRg==
X-Received: by 10.159.233.204 with SMTP id b12mr22431984plr.125.1507208319140;
        Thu, 05 Oct 2017 05:58:39 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id e13sm28787990pgt.14.2017.10.05.05.58.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 05:58:38 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 02/11] staging: lustre: fix comparisons should place the constant on the right side
Date: Thu,  5 Oct 2017 18:28:14 +0530
Message-Id: <1507208303-17615-3-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>

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


