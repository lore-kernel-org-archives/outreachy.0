X-GM-THRID: 10665162964992
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5a6c0e6f93ad1aa9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.50.227 with SMTP id z63mr51723867yhb.4.1427995680985;
        Thu, 02 Apr 2015 10:28:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.227 with SMTP id i90ls890878qge.41.gmail; Thu, 02 Apr
 2015 10:28:00 -0700 (PDT)
X-Received: by 10.236.228.233 with SMTP id f99mr25208420yhq.52.1427995680700;
        Thu, 02 Apr 2015 10:28:00 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id iw3si680151pbd.1.2015.04.02.10.28.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 10:28:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padcy3 with SMTP id cy3so90205673pad.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 10:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=J6Fvr6TDZGeD63wZ6/TrPYOJVnICDO93NbrwAQmsT5E=;
        b=f2OjYh7vuSKQGOLY2S7+OaQQ5p4kMKiWA2JJz0xg3dc1EuO8N/ZX1hVHsLjUN0Ju3B
         qt2yRgdC4FOcGmL0CwbGCBUkGEiATR7Hlr5yH8YSSIurVBiaUA9KwY7pLxRm3W5iQ/R/
         aRVhT91mclVuSrJmLRvhQeuKbkepl960TdOxZjr1w01LuBYX9LteJyT9c/ajAUFdy5Rm
         UHV8LhmxDPl6xXWT0AW5OYeKoKyJFoCRQINgMpAT+OGL+DvQvZS73p5/aRFa+/nnYcxj
         BMwDpUSNdDJ09wY7prwWk2+jrLq8GqtSgnXZ8JaF8vkJHGy7+By0ZAoaNjMtl005tqZm
         YvgQ==
X-Received: by 10.68.76.98 with SMTP id j2mr87529496pbw.75.1427995680503;
        Thu, 02 Apr 2015 10:28:00 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.238.236])
        by mx.google.com with ESMTPSA id oo3sm2535948pdb.26.2015.04.02.10.27.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 02 Apr 2015 10:27:59 -0700 (PDT)
Date: Thu, 2 Apr 2015 22:57:55 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] Staging: sm750fb: Fixed indent of switch-case
Message-ID: <20150402172755.GA7270@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixed indent of switch-case by adding space using tabs.
Problem found using checkpatch.pl
ERROR: space required after that ';' (ctx:VxV)


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes made in v2:
        -Fixed commit message

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


