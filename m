X-GM-THRID: 6210976897609760768
X-Received: by 10.129.155.83 with SMTP id s80mr259768ywg.55.1446105996303;
        Thu, 29 Oct 2015 01:06:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.241.228 with SMTP id wl4ls77663obc.27.gmail; Thu, 29 Oct
 2015 01:06:35 -0700 (PDT)
X-Received: by 10.182.233.229 with SMTP id tz5mr293277obc.26.1446105995974;
        Thu, 29 Oct 2015 01:06:35 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id vy6si51865pbc.1.2015.10.29.01.06.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 01:06:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id hk11so33618152pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 01:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=oKJMe9TJHuOe9BYJKzdtSRwsUXkLGrvTAHa3hjwecIY=;
        b=Tiq1wxkMnnyM1IAJ4thtKwEH467gFaqEJgfAmXpcpEzNp7PQYBNVj3KPVLWcuJ8VO7
         M0GFcolS565vGO78p/vjKMxbwbmvyNcEPFndvTh3hoQfLovniC0CtQzba9qdqes+Gv8z
         SgluVAQANvefZ90J78980fOjbQ0YJkWzyOjm7KlGJztG0qHFJmwDefoPYb6Mmx0YvSkA
         R191HvVNxhDxwOhuPJ8RyidSjRKfXl563FXNsIB1Llt1vd1noHv4r7YVHQ5vPI1uccQU
         /k9rM/Ons4v5PXO6juD/uwH4dBrrwSwJY5/NJtu7QyHnANiu9+yhvd+EkeLwwBgO0Zgt
         5UKw==
X-Received: by 10.68.254.232 with SMTP id al8mr520647pbd.64.1446105995820;
        Thu, 29 Oct 2015 01:06:35 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.166.247])
        by smtp.gmail.com with ESMTPSA id zk3sm694756pbb.41.2015.10.29.01.06.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 01:06:35 -0700 (PDT)
Date: Thu, 29 Oct 2015 13:36:31 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: rdma: hfi1: chip: Remove unnecessary variables
Message-ID: <63464d2de463b719a1854f61676bdba60ec49af4.1446105494.git.amitoj1606@gmail.com>
References: <cover.1446105494.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446105494.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Dop unnecessary variables that can be replaced by a single line of
code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/chip.c | 22 ++++++----------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
index aa58e59..03c9d3e 100644
--- a/drivers/staging/rdma/hfi1/chip.c
+++ b/drivers/staging/rdma/hfi1/chip.c
@@ -1249,12 +1249,8 @@ CNTR_ELEM(#name, \
 
 u64 read_csr(const struct hfi1_devdata *dd, u32 offset)
 {
-	u64 val;
-
-	if (dd->flags & HFI1_PRESENT) {
-		val = readq((void __iomem *)dd->kregbase + offset);
-		return val;
-	}
+	if (dd->flags & HFI1_PRESENT)
+		return readq((void __iomem *)dd->kregbase + offset);
 	return -1;
 }
 
@@ -1307,7 +1303,6 @@ static u64 dev_access_u64_csr(const struct cntr_entry *entry, void *context,
 {
 	struct hfi1_devdata *dd = (struct hfi1_devdata *)context;
 
-	u64 val = 0;
 	u64 csr = entry->csr;
 
 	if (entry->flags & CNTR_VL) {
@@ -1319,8 +1314,7 @@ static u64 dev_access_u64_csr(const struct cntr_entry *entry, void *context,
 			return 0;
 	}
 
-	val = read_write_csr(dd, csr, mode, data);
-	return val;
+	return read_write_csr(dd, csr, mode, data);
 }
 
 static u64 dc_access_lcb_cntr(const struct cntr_entry *entry, void *context,
@@ -1361,7 +1355,6 @@ static u64 port_access_u64_csr(const struct cntr_entry *entry,
 			     void *context, int vl, int mode, u64 data)
 {
 	struct hfi1_pportdata *ppd = (struct hfi1_pportdata *)context;
-	u64 val;
 	u64 csr = entry->csr;
 
 	if (entry->flags & CNTR_VL) {
@@ -1372,8 +1365,7 @@ static u64 port_access_u64_csr(const struct cntr_entry *entry,
 		if (vl != CNTR_INVALID_VL)
 			return 0;
 	}
-	val = read_write_csr(ppd->dd, csr, mode, data);
-	return val;
+	return read_write_csr(ppd->dd, csr, mode, data);
 }
 
 /* Software defined */
@@ -10673,19 +10665,17 @@ static u16 delay_cycles(struct hfi1_pportdata *ppd, u32 desired_egress_rate,
 u64 create_pbc(struct hfi1_pportdata *ppd, u64 flags, int srate_mbs, u32 vl,
 	       u32 dw_len)
 {
-	u64 pbc, delay = 0;
+	u64 delay = 0;
 
 	if (unlikely(srate_mbs))
 		delay = delay_cycles(ppd, srate_mbs, dw_len);
 
-	pbc = flags
+	return flags
 		| (delay << PBC_STATIC_RATE_CONTROL_COUNT_SHIFT)
 		| ((u64)PBC_IHCRC_NONE << PBC_INSERT_HCRC_SHIFT)
 		| (vl & PBC_VL_MASK) << PBC_VL_SHIFT
 		| (dw_len & PBC_LENGTH_DWS_MASK)
 			<< PBC_LENGTH_DWS_SHIFT;
-
-	return pbc;
 }
 
 #define SBUS_THERMAL    0x4f
-- 
1.9.1


