X-GM-THRID: 7460820615168
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,95d5e58ffe370867
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.159.227 with SMTP id xf3mr4948878lbb.11.1426006684367;
        Tue, 10 Mar 2015 09:58:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.206 with SMTP id q14ls59729lal.49.gmail; Tue, 10 Mar
 2015 09:58:03 -0700 (PDT)
X-Received: by 10.152.6.232 with SMTP id e8mr4869618laa.2.1426006683744;
        Tue, 10 Mar 2015 09:58:03 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id c8si584949wiw.1.2015.03.10.09.58.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 09:58:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22f.google.com with SMTP id x12so3181184wgg.13
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 09:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=xUprrmMHHGEyu1etuRF4syKKlHJNkBuExOJtybkOeX4=;
        b=f4+NYmOilMnB4kMfrzT0zE7SHvI2qghG5+6i/3JuMb/qJrK0DaaXGhM6kWrXxjIecY
         BiJvR+z+7KVU7syC216/D3Hc9GiPa9NFDpZYAb9vw0AL7iljsr+sUnbolH7P3Rw0P9iC
         EEa9+zn8qyiYCzMqqpsUKXgJ8XHexZOmcU6Y/rzH8IfxznQCPJbCC7LG+F93IqHqCrUk
         JKlv8fPthTiWP50jrkLInlkWxX2QTpu9yxgpehxNs8XFHcUzqFRzIZHcR0uL3HQ6LAnw
         zMFDUkpfWKzEH+i+GuETYs7N2VBdLZCYyHQaRSwn8OmoMz8o5yrutQI+xA3Vj6TGaxI5
         soWQ==
X-Received: by 10.194.239.65 with SMTP id vq1mr68041433wjc.98.1426006683632;
        Tue, 10 Mar 2015 09:58:03 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id kj8sm1673745wjc.29.2015.03.10.09.58.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 09:58:03 -0700 (PDT)
Date: Tue, 10 Mar 2015 18:58:00 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 06/20] staging: mt29f_spinand: remove pointer to pointer cast
 in function argument
Message-ID: <59b7bda1d28f00b2f641222778118044b3a7f6db.1426004643.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes unnecessary pointer to pointer cast on function arguments.
It is worth noting that buf is already a u8 pointer.
Issue detected and resolved using the following coccinelle script:

@@
expression e;
type t;
identifier f;
@@

f(...,
-(t *)
e
,...)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/mt29f_spinand/mt29f_spinand.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
index 3b191fc..7285c64 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
@@ -770,7 +770,7 @@ static void spinand_cmdfunc(struct mtd_info *mtd, unsigned int command,
 		break;
 	case NAND_CMD_READID:
 		state->buf_ptr = 0;
-		spinand_read_id(info->spi, (u8 *)state->buf);
+		spinand_read_id(info->spi, state->buf);
 		break;
 	case NAND_CMD_PARAM:
 		state->buf_ptr = 0;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

