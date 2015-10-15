X-GM-THRID: 6205781635135176704
X-Received: by 10.68.231.66 with SMTP id te2mr6381283pbc.5.1444896943176;
        Thu, 15 Oct 2015 01:15:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.99 with SMTP id rv3ls1986179igb.23.canary; Thu, 15 Oct
 2015 01:15:42 -0700 (PDT)
X-Received: by 10.107.153.197 with SMTP id b188mr7170408ioe.3.1444896942909;
        Thu, 15 Oct 2015 01:15:42 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id ce6si758814pad.0.2015.10.15.01.15.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:15:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id rc13so80766789pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=uP/5YfrBSlZIbpPdyRUkqbvOVTIZsINTuSGFalPgFLQ=;
        b=WEcG5iVl9hC9JKyojg0f+3QYFqGSL7tQWlPSGdLANsYCqCMkWGqdC/QYXDJICEOO81
         23svGnE+vszJfXbFoqK/+Kccd5YwIdMvsuBNWvKOSCB3RYF0XJ8OuZD8J6ogszIObLjL
         nxkZgWqwQ/cPoMtlxXfrlVwI+H9PBUnMQMhFi7/V8v72XFsHesAhOaVw03JaOZPZl3nh
         usTCkatNkCX05OH1DfkWVR1nRKXvKXlx5iLnGyBobY40PSf2ZvpWCsNzn9oyp4OTHbPr
         AjHQgIQ13GPxaIxR64hYfwSGC9M4q1jboSnYaHepz6biBmQ/H7jsM0q+ch7P01SYvJvn
         fpYQ==
X-Received: by 10.66.216.39 with SMTP id on7mr8589459pac.73.1444896942756;
        Thu, 15 Oct 2015 01:15:42 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id fx4sm13767516pbb.92.2015.10.15.01.15.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:15:42 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:45:39 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 09/18] staging: vt6655: Remove useless initialisation
Message-ID: <c0fc3456c76d96691645c1b07d62d15271a230a5.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/vt6655/card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index f842be6..4640b56 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -892,7 +892,7 @@ bool CARDbSoftwareReset(struct vnt_private *pDevice)
 u64 CARDqGetTSFOffset(unsigned char byRxRate, u64 qwTSF1, u64 qwTSF2)
 {
 	u64 qwTSFOffset = 0;
-	unsigned short wRxBcnTSFOffst = 0;
+	unsigned short wRxBcnTSFOffst;
 
 	wRxBcnTSFOffst = cwRXBCNTSFOff[byRxRate%MAX_RATE];
 
-- 
1.9.1


