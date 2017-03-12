X-GM-THRID: 6396588867730800640
X-Received: by 10.13.253.6 with SMTP id n6mr13879830ywf.84.1489331259263;
        Sun, 12 Mar 2017 08:07:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.232 with SMTP id k37ls7217910ote.15.gmail; Sun, 12 Mar
 2017 08:07:38 -0700 (PDT)
X-Received: by 10.157.61.228 with SMTP id l91mr11896012otc.64.1489331258957;
        Sun, 12 Mar 2017 08:07:38 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c123si2667357pfa.4.2017.03.12.08.07.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:07:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id j5so16246747pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 08:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=KkvZlHVXv6bGoKdxe9MasbiTW7jdhQcTrXIJsTiyvLg=;
        b=ndqEk0RwuApKhU6Gtsx1lIniV38n7806X98Uab4LxLreK2v3G7Ot2NOaYZBQoL73eZ
         KXOWhXhWfeUm+82kH1EPBnGe+JlM2beB043GNOk/hhbRXm5YeUW0DJNL/XDJWpwNMZ7O
         C1JUMYBAfi/GG6bwPOlqoSAaQ5wGJc3WKccZs/liqTOVEiRPm8r2UC4dbtgnpBvZCyGs
         XR15qVsuGqYOKWWfGDyCVRb/j1LqGdnTnRq9W/znmWbXZhCS6eVrz05wj5BHRSaFa7jV
         adqC8sv8dIv9AdLHBsZLLfA48SgYPB/Ucr7FKNr8ZInfGNBbqlBp+j/X/cG1xeddrbUA
         r3mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=KkvZlHVXv6bGoKdxe9MasbiTW7jdhQcTrXIJsTiyvLg=;
        b=QbZPYE9u2oKuaAekdCXSHdxMk+XlvxwemNvRLqFhBHialiavwAiEG9jr3Qrzf9IRvU
         YG0+E12g2gQNnzIFsUUjelNwjJ+10pRjE8xnNlz7s18LhPPTpb8+gfcYEKAPi6SdEvx8
         rZCcIf6lE8whYkfaSEr0MogaopZSed8trDGycBruRYPSiJ4NsMjQ02ILcRON9REWKJKj
         gWoKcEPGDtoCLMMPBi+HkG53xMYElTjeHn4ph1wI6wnbqdznZrp7zzgSiyB7517zAwe2
         xgEY4AWS0Elykxa132KnOJdbdi5c+n50aruaMef5iTDm3qpuZpthr5IoIWJgP5O0anUs
         2F0Q==
X-Gm-Message-State: AMke39mfnQUDxe8eghXk5y9ZjwhWjIXxP03HUOrVzBGoj6d9nDavrGX+j7YUppAf3mwj+Q==
X-Received: by 10.98.75.221 with SMTP id d90mr32872088pfj.107.1489331258561;
        Sun, 12 Mar 2017 08:07:38 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.194.58.130])
        by smtp.gmail.com with ESMTPSA id 80sm28828904pfn.61.2017.03.12.08.07.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 08:07:38 -0700 (PDT)
Message-ID: <58c5643a.d30d620a.814ee.7d75@mx.google.com>
X-Google-Original-Message-ID: <20170312150730.GA28295@<rvarsha016@gmail.com>>
Date: Sun, 12 Mar 2017 20:37:30 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: comedi: Compress return logic into one line.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Simplify function return by merging assignment and return into a single
line. The following coccinelle script is used to fix this issue.

@@
expression e;
local idexpression ret;
@@

-ret = e;
-return ret;
+return e;

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v3:

- Modified coccinelle script.

Changes in v2:

- It is not a good idea to remove structure member initialisations. As
  the value of structure members are not limited to scope of the function.
  So it has not been included in this patch version.

 drivers/staging/comedi/drivers/cb_pcidas64.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
index 3b98193..b761f00 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas64.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
@@ -1417,9 +1417,7 @@ static int set_ai_fifo_size(struct comedi_device *dev, unsigned int num_samples)
 	if (retval < 0)
 		return retval;
 
-	num_samples = retval * fifo->num_segments * fifo->sample_packing_ratio;
-
-	return num_samples;
+	return retval * fifo->num_segments * fifo->sample_packing_ratio;
 }
 
 /* query length of fifo */
-- 
2.9.3


