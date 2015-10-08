X-GM-THRID: 6203360253861429248
X-Received: by 10.66.252.6 with SMTP id zo6mr7406565pac.29.1444332704579;
        Thu, 08 Oct 2015 12:31:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.164 with SMTP id o36ls651433ioi.64.gmail; Thu, 08 Oct
 2015 12:31:44 -0700 (PDT)
X-Received: by 10.66.132.69 with SMTP id os5mr7503711pab.12.1444332704269;
        Thu, 08 Oct 2015 12:31:44 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id uv4si6146969pac.0.2015.10.08.12.31.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 12:31:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ve7so4326715pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 12:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=GhDeGp1BN6tC89/+uFBeadwWY9QMVUDxkLNPEAFxAuU=;
        b=VNLzqJf/L8pfTNBL8DrNU6Bs0VDiVLBFnM2Eo+5BgYiyUQmnwArkXupPqDlqzigGlu
         RNvYQCf/JrBrcD1JjiMYmtd0lLQOdf7wI2JfyJtE6nueTiSnGtR0SDgczuQhf+zSuqyu
         FvJftE2Wxyf/AivJIsM2MOAn9pPEy0FkR4JAeZNYMhFhEaoMtxKl0yLyEespF0nMLMld
         B3UJ+30PP3MQzyKzSbf+NGlFTxK5EB+l/cGbWyErgLrRqX9nuk2jB0TCupQE45LKifS1
         aB1exfj5Y7bm/qYgtKA0Pe24zwYGfenAn0ACzFjjyDj/2KHwYN/OtbD3HBAgg4BOMFZj
         Fp7A==
X-Received: by 10.66.160.194 with SMTP id xm2mr9820135pab.111.1444332704114;
        Thu, 08 Oct 2015 12:31:44 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.203.20])
        by smtp.gmail.com with ESMTPSA id dt1sm23080048pbc.96.2015.10.08.12.31.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 12:31:43 -0700 (PDT)
Date: Fri, 9 Oct 2015 01:01:40 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: sm750fb: Remove space after opening brace
Message-ID: <65d703974d96550d8802203b4243da28797ae8bf.1444332001.git.amitoj1606@gmail.com>
References: <cover.1444332001.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444332001.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove space after opening brace '{'. Problem found using
checkpatch.pl
CHECK: Blank lines aren't necessary after an open brace '{'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index ebc3242..6f05f78 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -238,7 +238,6 @@ unsigned int ddk750_getVMSize(void)
 
 int ddk750_initHw(initchip_param_t *pInitParam)
 {
-
 	unsigned int ulReg;
 
 <<<<<<< HEAD
-- 
1.9.1


