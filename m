X-GM-THRID: 6205781635135176704
X-Received: by 10.107.27.7 with SMTP id b7mr7013540iob.30.1444897407100;
        Thu, 15 Oct 2015 01:23:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.19 with SMTP id 19ls606718qgm.67.gmail; Thu, 15 Oct
 2015 01:23:26 -0700 (PDT)
X-Received: by 10.140.144.215 with SMTP id 206mr6482219qhq.6.1444897406739;
        Thu, 15 Oct 2015 01:23:26 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id el2si1341056pbb.0.2015.10.15.01.23.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:23:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id p3so33080698pay.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=uVB9mZpkuxfN+bf08C9/4uu4R1M8IHTSJCpoEAu3y8Y=;
        b=lvNdYrMc63Lz4Ybg1nVbC7gfzf1KKhr+4lyIL14YS3VuXLSa60Lv9VipDNcryk81kh
         g6AIrTI9Tvxofwlp/j4PIzAJ96V6ptnboU3RDIRNu+t5xE8wYEun9PViBubL8RmMjr56
         3DN/GzJQKlgk6en7qUOag74kGVctgLf9xi8GcuVpRUMjd3QEbz3xbtxfC1BB58msbbBj
         tYs6Rqg/dQqo82HXdL+uXCNOBi+XKerR/LyLc2QXON9Wmna3RgPL7t5YnLlBXVMZf15Y
         uIcmP1B8KDkyI4a4SbqCNmgTjwLK6pNSXe1m0aLuLYmI5Hp4JqzIc4fiZ1kRDW0bFZae
         e4nw==
X-Received: by 10.68.168.226 with SMTP id zz2mr8815352pbb.8.1444897406546;
        Thu, 15 Oct 2015 01:23:26 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id w9sm13851786pbt.29.2015.10.15.01.23.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:23:26 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:53:23 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 15/18] staging: rdma: hfi1: diag: Remove useless
 initialisation
Message-ID: <04a26701ccf1aa8a55ef362ac6cf9ed539daf3a7.1444895819.git.amitoj1606@gmail.com>
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
 drivers/staging/rdma/hfi1/diag.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/diag.c b/drivers/staging/rdma/hfi1/diag.c
index 3e8d5ac..62c8cac 100644
--- a/drivers/staging/rdma/hfi1/diag.c
+++ b/drivers/staging/rdma/hfi1/diag.c
@@ -607,7 +607,7 @@ static int hfi1_snoop_add(struct hfi1_devdata *dd, const char *name)
 static struct hfi1_devdata *hfi1_dd_from_sc_inode(struct inode *in)
 {
 	int unit = iminor(in) - HFI1_SNOOP_CAPTURE_BASE;
-	struct hfi1_devdata *dd = NULL;
+	struct hfi1_devdata *dd;
 
 	dd = hfi1_lookup(unit);
 	return dd;
@@ -1478,7 +1478,7 @@ static struct snoop_packet *allocate_snoop_packet(u32 hdr_len,
 						  u32 md_len)
 {
 
-	struct snoop_packet *packet = NULL;
+	struct snoop_packet *packet;
 
 	packet = kzalloc(sizeof(struct snoop_packet) + hdr_len + data_len
 			 + md_len,
-- 
1.9.1


