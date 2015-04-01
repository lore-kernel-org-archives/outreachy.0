X-GM-THRID: 10665162964992
X-Received: by 10.236.223.195 with SMTP id v63mr28838910yhp.24.1427904378322;
        Wed, 01 Apr 2015 09:06:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.230 with SMTP id h93ls326036qgf.91.gmail; Wed, 01 Apr
 2015 09:06:18 -0700 (PDT)
X-Received: by 10.236.229.233 with SMTP id h99mr50291766yhq.42.1427904378135;
        Wed, 01 Apr 2015 09:06:18 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id br7si258970pdb.2.2015.04.01.09.06.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 09:06:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x235.google.com with SMTP id w1so50986301pdr.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 09:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=5a+82e3QkVZPAeJEuQm47LtLWKif2gP57HmAbPCtX14=;
        b=M0cqmw587XzNT/S7W4krRr4wycshSEXYx0YF46ejthjAV7iiY1JupS6X9UWHKqaRot
         LZBpc+yOJbQ13nI1yHNftw5lSmFrEGKZsmTblxHrMBw3Xs3e4frfUzT1KNL74+1RsTgU
         sq9MMJt6g/0zR5JJQworU38w+qTdQJfa9vbcqAGJQRGp59OUPmwOMjKFhO+1npBHtwD5
         6i14yXuJD94accgXoEevLmsWsFAG9QoJCON2kmyIftAGvqkbEyEJAxtE2/0oG53gMs7q
         IdrE/jJR8krpU27Ngk9TqmhMRAqQ1HYw0dgguFTnBtFVfdmX8cShvwJtCdw3JwJ56wfO
         PVBg==
X-Received: by 10.70.5.68 with SMTP id q4mr21589277pdq.9.1427904377829;
        Wed, 01 Apr 2015 09:06:17 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.82.90])
        by mx.google.com with ESMTPSA id v9sm2568164pdp.12.2015.04.01.09.06.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 09:06:17 -0700 (PDT)
Date: Wed, 1 Apr 2015 21:36:13 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: Fixed indent of switch-case
Message-ID: <20150401160613.GA2764@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixed indent of switch-case by adding space using tabs. Problem found using checkpatch.pl
ERROR: space required after that ';' (ctx:VxV)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index c8a8b3f..b2dc136 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -245,7 +245,8 @@ unsigned int ddk750_getVMSize(void)
 	case MISC_CTRL_LOCALMEM_SIZE_64M:
 		data = MB(64); break; /* 64 Mega byte */
 	default:
-		data = 0;break;
+		data = 0;
+		break;
 	}
 	return data;
 
-- 
1.9.1


