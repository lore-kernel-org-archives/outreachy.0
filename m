X-GM-THRID: 6203360253861429248
X-Received: by 10.129.116.133 with SMTP id p127mr7702286ywc.50.1444340523425;
        Thu, 08 Oct 2015 14:42:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.197 with SMTP id ta5ls441556obc.95.gmail; Thu, 08 Oct
 2015 14:42:03 -0700 (PDT)
X-Received: by 10.182.24.9 with SMTP id q9mr8417484obf.13.1444340523162;
        Thu, 08 Oct 2015 14:42:03 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id el2si5860813pbb.0.2015.10.08.14.42.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 14:42:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id ve7so6884474pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 14:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Gx/Inw486+e7MHtfiJEop/bc59AanELUtMBfXGSRzF4=;
        b=qrU9m2hfdiHjyqG2+K+WF/KezRb3DPUeoTEZRTK97YwcnSY+9Ofx00H+nisvvZCvX/
         OIaB2MNUBjCAnxIogJ7WpSo7X3qhbteTyR45mulYA0FidiPIDopc3gn83fNXf8mEPXt0
         SXMKs9pB4HpPdw6VNXQihGh2gt2H4IbYv2fV+Q8d1K5IjC+KW30Td96HvrrclTdXXH8U
         J2ihFAR56QJExCCs12qZz17NTPb3gvdzWuLfLshJ4bC9sVH8Ff5+gLRlJKuIOS91kcyR
         nsGLjKHU40nkEZL/7h3ambXq4vd0iVOPjfgUyAPxS2RyKGRQW80zzQ++WfK22TmUOJe4
         Q/hw==
X-Received: by 10.68.234.167 with SMTP id uf7mr10513643pbc.51.1444340523012;
        Thu, 08 Oct 2015 14:42:03 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.203.20])
        by smtp.gmail.com with ESMTPSA id aw5sm15609180pbc.13.2015.10.08.14.42.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 14:42:02 -0700 (PDT)
Date: Fri, 9 Oct 2015 03:11:59 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: sm750fb: Remove space before closing brace
Message-ID: <4de775890ef4fcb1ad32e85993ece7f3aec52f30.1444340091.git.amitoj1606@gmail.com>
References: <cover.1444340091.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444340091.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove space before closing brace '}'. Problem found using
checkpatch.pl
CHECK: Blank lines aren't necessary before a close brace '}'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -None

 drivers/staging/sm750fb/ddk750_chip.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index fe0e25a..deee227 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -234,7 +234,6 @@ unsigned int ddk750_getVMSize(void)
 		break;
 	}
 	return data;
-
 }
 
 int ddk750_initHw(initchip_param_t *pInitParam)
-- 
1.9.1


