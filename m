X-GM-THRID: 6205808100383916032
X-Received: by 10.31.171.12 with SMTP id u12mr426929vke.12.1444902294225;
        Thu, 15 Oct 2015 02:44:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.56.111 with SMTP id z15ls413731igp.35.gmail; Thu, 15 Oct
 2015 02:44:53 -0700 (PDT)
X-Received: by 10.107.160.72 with SMTP id j69mr7096867ioe.7.1444902293729;
        Thu, 15 Oct 2015 02:44:53 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id el2si1368245pbb.0.2015.10.15.02.44.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 02:44:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id rc13so83089522pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 02:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=WU65BQBUIwf+LXGmacOZVN4nF7wS5FL/FlwP+5Evppg=;
        b=f8jI71UsvOr9LtUnD951BsY4jzEUX5qTfaRqvwuOVpVR+IhwFkBEb2uYmNgNHCd7Dn
         +zvuMEwbxNnXVVNTp51WUXkMIMsvezxjFCvKD1zmHP6vkPocLajwpEA44oiRHWn9/55P
         M91qdCB2/y/9CnxIYF2W5yhN0Wp7yJz/VFa4JnAK8F0s5mhd1QLVexnbKI/dAUnvXsKT
         Sar1Y2icmM+y3mO3W18HCqNMSvSDYztZwBGcYgA1/cwb2zBvljjUnasuzBY3hj8KLmSM
         OguQPj3XDTomqC7x7BVw/WeA7NYHM13mr1ZokQDjORM0g+f885S0QP+Jstt8edteMV8/
         g4aQ==
X-Received: by 10.66.246.162 with SMTP id xx2mr8914355pac.144.1444902293616;
        Thu, 15 Oct 2015 02:44:53 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id sn9sm14411596pac.16.2015.10.15.02.44.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 02:44:52 -0700 (PDT)
Date: Thu, 15 Oct 2015 15:14:41 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rdma: mad: Remove explicit cast
Message-ID: <20151015094441.GA12850@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Explicit type casting is not required as compiler can type cast
variables implicitly. Therefore, it should be removed.
Semantic patch used:
@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rdma/hfi1/mad.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/mad.c b/drivers/staging/rdma/hfi1/mad.c
index b2c1b72..7944ddf 100644
--- a/drivers/staging/rdma/hfi1/mad.c
+++ b/drivers/staging/rdma/hfi1/mad.c
@@ -1488,7 +1488,7 @@ static int __subn_get_opa_sl_to_sc(struct opa_smp *smp, u32 am, u8 *data,
 				   u32 *resp_len)
 {
 	struct hfi1_ibport *ibp = to_iport(ibdev, port);
-	u8 *p = (u8 *)data;
+	u8 *p = data;
 	size_t size = ARRAY_SIZE(ibp->sl_to_sc); /* == 32 */
 	unsigned i;
 
@@ -1511,7 +1511,7 @@ static int __subn_set_opa_sl_to_sc(struct opa_smp *smp, u32 am, u8 *data,
 				   u32 *resp_len)
 {
 	struct hfi1_ibport *ibp = to_iport(ibdev, port);
-	u8 *p = (u8 *)data;
+	u8 *p = data;
 	int i;
 
 	if (am) {
@@ -1530,7 +1530,7 @@ static int __subn_get_opa_sc_to_sl(struct opa_smp *smp, u32 am, u8 *data,
 				   u32 *resp_len)
 {
 	struct hfi1_ibport *ibp = to_iport(ibdev, port);
-	u8 *p = (u8 *)data;
+	u8 *p = data;
 	size_t size = ARRAY_SIZE(ibp->sc_to_sl); /* == 32 */
 	unsigned i;
 
@@ -1553,7 +1553,7 @@ static int __subn_set_opa_sc_to_sl(struct opa_smp *smp, u32 am, u8 *data,
 				   u32 *resp_len)
 {
 	struct hfi1_ibport *ibp = to_iport(ibdev, port);
-	u8 *p = (u8 *)data;
+	u8 *p = data;
 	int i;
 
 	if (am) {
-- 
2.1.0


