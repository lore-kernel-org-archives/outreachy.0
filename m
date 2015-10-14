X-GM-THRID: 6205587481887244288
X-Received: by 10.182.18.66 with SMTP id u2mr3985307obd.1.1444850960541;
        Wed, 14 Oct 2015 12:29:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.146 with SMTP id 18ls259928iom.103.gmail; Wed, 14 Oct
 2015 12:29:20 -0700 (PDT)
X-Received: by 10.107.6.221 with SMTP id f90mr1904982ioi.13.1444850960232;
        Wed, 14 Oct 2015 12:29:20 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id el2si1075158pbb.0.2015.10.14.12.29.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:29:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id cn9so31307218pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=qQNoazwBYcTr0TN+gsuOsw8diIaJ6/MS2LMe4Tkn2qg=;
        b=nlJ+XBwYYH340w4nf3A88JozouRTgjJUqrocxU07klWz6/e2UnfaIewd3DxpqUKPyH
         KnVexleMh9iQriXMyb9w5l6Y1Rv/MCuR5NPNnbnYlJK7TlN8HZpImdGuuyQE7ffP295O
         Fp8JWOHvT+BeLQN6GpWEjs9Qm1kkGvIhNOvYxDtz/TPfcYKKCYMEOLgTWpUeLKQ/L8Qr
         izAU+KY2v4giFURruI/PbZnhE3PDfp43JWSzKQdo9jozyHafAwWVePDYPdpQmX5x2MgF
         vVY6Prp1yOt1o8R5WPVNvObX4twNi6ikfYSEYzrM4VgfwCxP3Y6eCAqDCbgRBfBsZB6/
         B7hQ==
X-Received: by 10.66.190.6 with SMTP id gm6mr5286821pac.27.1444850960107;
        Wed, 14 Oct 2015 12:29:20 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id aw5sm11106380pbc.13.2015.10.14.12.29.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 12:29:19 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 11/12] Staging: rdma: hfi1: Remove unnecessary cast on void pointer
Date: Thu, 15 Oct 2015 00:58:29 +0530
Message-Id: <1444850910-11408-12-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
References: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561EAD0E.008F,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

void pointers do not need to be cast to other pointer types.

The semantic patch used to find this:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/rdma/hfi1/chip.c  | 30 +++++++++++++++---------------
 drivers/staging/rdma/hfi1/mad.c   |  8 ++++----
 drivers/staging/rdma/hfi1/verbs.c |  2 +-
 3 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
index 1152359..46ebc38 100644
--- a/drivers/staging/rdma/hfi1/chip.c
+++ b/drivers/staging/rdma/hfi1/chip.c
@@ -1295,7 +1295,7 @@ static inline u64 read_write_csr(const struct hfi1_devdata *dd, u32 csr,
 static u64 dev_access_u32_csr(const struct cntr_entry *entry,
 			    void *context, int vl, int mode, u64 data)
 {
-	struct hfi1_devdata *dd = (struct hfi1_devdata *)context;
+	struct hfi1_devdata *dd = context;
 
 	if (vl != CNTR_INVALID_VL)
 		return 0;
@@ -1305,7 +1305,7 @@ static u64 dev_access_u32_csr(const struct cntr_entry *entry,
 static u64 dev_access_u64_csr(const struct cntr_entry *entry, void *context,
 			    int vl, int mode, u64 data)
 {
-	struct hfi1_devdata *dd = (struct hfi1_devdata *)context;
+	struct hfi1_devdata *dd = context;
 
 	u64 val = 0;
 	u64 csr = entry->csr;
@@ -1326,7 +1326,7 @@ static u64 dev_access_u64_csr(const struct cntr_entry *entry, void *context,
 static u64 dc_access_lcb_cntr(const struct cntr_entry *entry, void *context,
 			    int vl, int mode, u64 data)
 {
-	struct hfi1_devdata *dd = (struct hfi1_devdata *)context;
+	struct hfi1_devdata *dd = context;
 	u32 csr = entry->csr;
 	int ret = 0;
 
@@ -1350,7 +1350,7 @@ static u64 dc_access_lcb_cntr(const struct cntr_entry *entry, void *context,
 static u64 port_access_u32_csr(const struct cntr_entry *entry, void *context,
 			     int vl, int mode, u64 data)
 {
-	struct hfi1_pportdata *ppd = (struct hfi1_pportdata *)context;
+	struct hfi1_pportdata *ppd = context;
 
 	if (vl != CNTR_INVALID_VL)
 		return 0;
@@ -1360,7 +1360,7 @@ static u64 port_access_u32_csr(const struct cntr_entry *entry, void *context,
 static u64 port_access_u64_csr(const struct cntr_entry *entry,
 			     void *context, int vl, int mode, u64 data)
 {
-	struct hfi1_pportdata *ppd = (struct hfi1_pportdata *)context;
+	struct hfi1_pportdata *ppd = context;
 	u64 val;
 	u64 csr = entry->csr;
 
@@ -1400,7 +1400,7 @@ static inline u64 read_write_sw(struct hfi1_devdata *dd, u64 *cntr, int mode,
 static u64 access_sw_link_dn_cnt(const struct cntr_entry *entry, void *context,
 			       int vl, int mode, u64 data)
 {
-	struct hfi1_pportdata *ppd = (struct hfi1_pportdata *)context;
+	struct hfi1_pportdata *ppd = context;
 
 	if (vl != CNTR_INVALID_VL)
 		return 0;
@@ -1410,7 +1410,7 @@ static u64 access_sw_link_dn_cnt(const struct cntr_entry *entry, void *context,
 static u64 access_sw_link_up_cnt(const struct cntr_entry *entry, void *context,
 			       int vl, int mode, u64 data)
 {
-	struct hfi1_pportdata *ppd = (struct hfi1_pportdata *)context;
+	struct hfi1_pportdata *ppd = context;
 
 	if (vl != CNTR_INVALID_VL)
 		return 0;
@@ -1420,7 +1420,7 @@ static u64 access_sw_link_up_cnt(const struct cntr_entry *entry, void *context,
 static u64 access_sw_xmit_discards(const struct cntr_entry *entry,
 				    void *context, int vl, int mode, u64 data)
 {
-	struct hfi1_pportdata *ppd = (struct hfi1_pportdata *)context;
+	struct hfi1_pportdata *ppd = context;
 
 	if (vl != CNTR_INVALID_VL)
 		return 0;
@@ -1431,7 +1431,7 @@ static u64 access_sw_xmit_discards(const struct cntr_entry *entry,
 static u64 access_xmit_constraint_errs(const struct cntr_entry *entry,
 				     void *context, int vl, int mode, u64 data)
 {
-	struct hfi1_pportdata *ppd = (struct hfi1_pportdata *)context;
+	struct hfi1_pportdata *ppd = context;
 
 	if (vl != CNTR_INVALID_VL)
 		return 0;
@@ -1443,7 +1443,7 @@ static u64 access_xmit_constraint_errs(const struct cntr_entry *entry,
 static u64 access_rcv_constraint_errs(const struct cntr_entry *entry,
 				     void *context, int vl, int mode, u64 data)
 {
-	struct hfi1_pportdata *ppd = (struct hfi1_pportdata *)context;
+	struct hfi1_pportdata *ppd = context;
 
 	if (vl != CNTR_INVALID_VL)
 		return 0;
@@ -1491,7 +1491,7 @@ static u64 read_write_cpu(struct hfi1_devdata *dd, u64 *z_val,
 static u64 access_sw_cpu_intr(const struct cntr_entry *entry,
 			      void *context, int vl, int mode, u64 data)
 {
-	struct hfi1_devdata *dd = (struct hfi1_devdata *)context;
+	struct hfi1_devdata *dd = context;
 
 	return read_write_cpu(dd, &dd->z_int_counter, dd->int_counter, vl,
 			      mode, data);
@@ -1500,7 +1500,7 @@ static u64 access_sw_cpu_intr(const struct cntr_entry *entry,
 static u64 access_sw_cpu_rcv_limit(const struct cntr_entry *entry,
 			      void *context, int vl, int mode, u64 data)
 {
-	struct hfi1_devdata *dd = (struct hfi1_devdata *)context;
+	struct hfi1_devdata *dd = context;
 
 	return read_write_cpu(dd, &dd->z_rcv_limit, dd->rcv_limit, vl,
 			      mode, data);
@@ -1509,7 +1509,7 @@ static u64 access_sw_cpu_rcv_limit(const struct cntr_entry *entry,
 static u64 access_sw_pio_wait(const struct cntr_entry *entry,
 			      void *context, int vl, int mode, u64 data)
 {
-	struct hfi1_devdata *dd = (struct hfi1_devdata *)context;
+	struct hfi1_devdata *dd = context;
 
 	return dd->verbs_dev.n_piowait;
 }
@@ -1517,7 +1517,7 @@ static u64 access_sw_pio_wait(const struct cntr_entry *entry,
 static u64 access_sw_vtx_wait(const struct cntr_entry *entry,
 			      void *context, int vl, int mode, u64 data)
 {
-	struct hfi1_devdata *dd = (struct hfi1_devdata *)context;
+	struct hfi1_devdata *dd = context;
 
 	return dd->verbs_dev.n_txwait;
 }
@@ -1525,7 +1525,7 @@ static u64 access_sw_vtx_wait(const struct cntr_entry *entry,
 static u64 access_sw_kmem_wait(const struct cntr_entry *entry,
 			       void *context, int vl, int mode, u64 data)
 {
-	struct hfi1_devdata *dd = (struct hfi1_devdata *)context;
+	struct hfi1_devdata *dd = context;
 
 	return dd->verbs_dev.n_kmem_wait;
 }
diff --git a/drivers/staging/rdma/hfi1/mad.c b/drivers/staging/rdma/hfi1/mad.c
index b2c1b72..58723fb 100644
--- a/drivers/staging/rdma/hfi1/mad.c
+++ b/drivers/staging/rdma/hfi1/mad.c
@@ -1438,7 +1438,7 @@ static int __subn_set_opa_pkeytable(struct opa_smp *smp, u32 am, u8 *data,
 
 static int get_sc2vlt_tables(struct hfi1_devdata *dd, void *data)
 {
-	u64 *val = (u64 *)data;
+	u64 *val = data;
 
 	*val++ = read_csr(dd, SEND_SC2VLT0);
 	*val++ = read_csr(dd, SEND_SC2VLT1);
@@ -1457,7 +1457,7 @@ static int get_sc2vlt_tables(struct hfi1_devdata *dd, void *data)
 static void filter_sc2vlt(void *data)
 {
 	int i;
-	u8 *pd = (u8 *)data;
+	u8 *pd = data;
 
 	for (i = 0; i < OPA_MAX_SCS; i++) {
 		if (i == 15)
@@ -1469,7 +1469,7 @@ static void filter_sc2vlt(void *data)
 
 static int set_sc2vlt_tables(struct hfi1_devdata *dd, void *data)
 {
-	u64 *val = (u64 *)data;
+	u64 *val = data;
 
 	filter_sc2vlt(data);
 
@@ -1478,7 +1478,7 @@ static int set_sc2vlt_tables(struct hfi1_devdata *dd, void *data)
 	write_csr(dd, SEND_SC2VLT2, *val++);
 	write_csr(dd, SEND_SC2VLT3, *val++);
 	write_seqlock_irq(&dd->sc2vl_lock);
-	memcpy(dd->sc2vl, (u64 *)data, sizeof(dd->sc2vl));
+	memcpy(dd->sc2vl, data, sizeof(dd->sc2vl));
 	write_sequnlock_irq(&dd->sc2vl_lock);
 	return 0;
 }
diff --git a/drivers/staging/rdma/hfi1/verbs.c b/drivers/staging/rdma/hfi1/verbs.c
index a43fccd..45f291f 100644
--- a/drivers/staging/rdma/hfi1/verbs.c
+++ b/drivers/staging/rdma/hfi1/verbs.c
@@ -1885,7 +1885,7 @@ static void init_ibport(struct hfi1_pportdata *ppd)
 
 static void verbs_txreq_kmem_cache_ctor(void *obj)
 {
-	struct verbs_txreq *tx = (struct verbs_txreq *)obj;
+	struct verbs_txreq *tx = obj;
 
 	memset(tx, 0, sizeof(*tx));
 }
-- 
2.1.4


