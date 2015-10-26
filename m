X-GM-THRID: 6210004102102908928
X-Received: by 10.107.138.221 with SMTP id c90mr12979455ioj.9.1445879252205;
        Mon, 26 Oct 2015 10:07:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.225 with SMTP id z1ls947103igl.18.gmail; Mon, 26 Oct
 2015 10:07:31 -0700 (PDT)
X-Received: by 10.66.169.104 with SMTP id ad8mr16446009pac.47.1445879251362;
        Mon, 26 Oct 2015 10:07:31 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pe1si3632868pac.2.2015.10.26.10.07.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 10:07:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hk11so193854425pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 10:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=qBNLTFY8X60/Hk8j3YW2SsXHbkPLv4BLNTX1k2HwMtI=;
        b=KgBYpko8N2vuXCZmiccQTZ9zD5n0jNVHwGvWEkTrEyFwvm334rrn934hMxQjoIGllK
         gtTWpPQ8GLzDThVLcqUrFV3INwgnrPaSPdpo4pDp5llvN4+4+yCXoMECwFdWs9UNQHHN
         YLMwC9AtFHA48qPhKOMes+9aqihzwOo3nZPfttgtIzscWrBYuh/FbLdCpZYG+imU8KDN
         KEPjM6E1eHXJEWhjHXD+kgOlcs+Z9ojffsSlg/NhTqR7LiR13HK3m+c/BLzyZ9/SAVtq
         JIAKravVdmlMTZUkcaYKSkhvvDC5RlpMqeaDdZXt9RNYB2u4rpEYJ+8hKuEEkg1pSjyc
         pllg==
X-Received: by 10.66.63.37 with SMTP id d5mr22618693pas.99.1445879251201;
        Mon, 26 Oct 2015 10:07:31 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.252.119])
        by smtp.gmail.com with ESMTPSA id qd2sm34927985pbb.68.2015.10.26.10.07.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 10:07:30 -0700 (PDT)
Date: Mon, 26 Oct 2015 22:37:26 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: ptlrpc: Replace seq_printf() with
 seq_putc()
Message-ID: <20151026170726.GA26239@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace seq_printf() with seq_putc() since it is more expensive than
seq_putc(). 

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Replaced seq_puts() with seq_putc()

 drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
index 6cf9b92..183fc8b 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
@@ -923,7 +923,7 @@ static int ptlrpc_lprocfs_svc_req_history_show(struct seq_file *s, void *iter)
 			   (long)(req->rq_sent - req->rq_arrival_time.tv_sec),
 			   (long)(req->rq_sent - req->rq_deadline));
 		if (svc->srv_ops.so_req_printer == NULL)
-			seq_printf(s, "\n");
+			seq_putc(s, '\n');
 		else
 			svc->srv_ops.so_req_printer(s, srhi->srhi_req);
 	}
-- 
1.9.1


