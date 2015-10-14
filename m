X-GM-THRID: 6205609650776178688
X-Received: by 10.107.31.209 with SMTP id f200mr2221366iof.14.1444856410510;
        Wed, 14 Oct 2015 14:00:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.166 with SMTP id g6ls284477igt.38.gmail; Wed, 14 Oct
 2015 14:00:10 -0700 (PDT)
X-Received: by 10.107.153.197 with SMTP id b188mr5128237ioe.3.1444856410263;
        Wed, 14 Oct 2015 14:00:10 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ce6si521471pad.0.2015.10.14.14.00.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 14:00:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id ws5so362986pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 14:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=EjfzrHj+1roAIo2bscJV08dRtUHOWeutRL6PvHneT+s=;
        b=WfdWRdNg5GdtGxO4nrckXESutvG02r8TCkG2bWWhVu9an01k2BTxe2gdMQXxC6i4N+
         qxnF13Fu6aDSi3fqGi6fP7WuTfixZEHVFVzy5vOnC5/b9uZe+OtuL0U8EJ32F8L3Coru
         iAcAiQbTSj5oauzr5BvZ0ERq78adrXbpEFLkbVQ6hl2QWqYvdbdUjVMtH6flpA3gQ2n5
         nAk7hkZFaZVZx9RtGDIkwgrb4N8l915tUdGAVyzlOoZyujCbJfkfnV09Hf4fws/rc1Up
         MfeswDRxIHSFg8eMc5PMh9PtX1mZZzysRp3fM0ymFwS1j6Gn2oiKlhDnNKj6DLpoGKnD
         5alQ==
X-Received: by 10.66.62.132 with SMTP id y4mr5767813par.130.1444856410059;
        Wed, 14 Oct 2015 14:00:10 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id tb9sm11379481pab.13.2015.10.14.14.00.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 14:00:09 -0700 (PDT)
Date: Thu, 15 Oct 2015 02:29:55 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] staging: rtl8712: rtl8712_recv: Remove useless
 intialisation
Message-ID: <852a3b37ef4f1daa86c3a1eea3865b16e2bc55ff.1444855933.git.amitoj1606@gmail.com>
References: <cover.1444855933.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444855933.git.amitoj1606@gmail.com>
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
 drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index fae06d9..fd2b7e8 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -158,7 +158,7 @@ int r8712_free_recvframe(union recv_frame *precvframe,
 static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
 					   struct recv_stat *prxstat)
 {
-	u16 drvinfo_sz = 0;
+	u16 drvinfo_sz;
 
 	drvinfo_sz = (le32_to_cpu(prxstat->rxdw0)&0x000f0000)>>16;
 	drvinfo_sz <<= 3;
-- 
1.9.1


