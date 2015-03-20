X-GM-THRID: 9252100898816
X-Received: by 10.236.3.106 with SMTP id 70mr87377867yhg.20.1426856718784;
        Fri, 20 Mar 2015 06:05:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.40 with SMTP id y8ls701220obg.51.gmail; Fri, 20 Mar
 2015 06:05:18 -0700 (PDT)
X-Received: by 10.182.231.199 with SMTP id ti7mr90923972obc.7.1426856718546;
        Fri, 20 Mar 2015 06:05:18 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id gb13si786366pac.2.2015.03.20.06.05.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 06:05:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x230.google.com with SMTP id ni2so108538955pdb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 06:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Ww1biv39QKjCpEglwHcyewc0d4K8C4BPFuBSAKvHAd8=;
        b=z0ZTJffvEoXqwRCobswX7/MzuJ70KNdw/L5Vb85IBvEARpzyfVGnrEmvQwT/Q1ucWl
         j5lcugLXohkMj5b6+JTug8bacNI6SfSPXdjxXQXaohezbTnpMzNZ/wIOqALbALTAZVOY
         baN8VCaoc0jUCku6L24+4T7uIE3G7FmZIIptCeKEwkjnlMoCTsKUNsxHv32CDfwYMMrv
         8O5PuaNMxAM1KUPQNP2uN+wWCUehEaVik7x1aHxP2BESu50g4Op4gO5XCNNZbaot6iGO
         uvwlNGgZpPgnbFkwHqtJ043ZUwdZppqOtsX5UQt/7mO6hRGGn2GI/qi7SHZ6mIfYwIGs
         JjVA==
X-Received: by 10.70.119.3 with SMTP id kq3mr29698339pdb.16.1426856718441;
        Fri, 20 Mar 2015 06:05:18 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([223.176.17.175])
        by mx.google.com with ESMTPSA id i11sm8134345pdj.61.2015.03.20.06.05.09
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2015 06:05:17 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 2/2] Staging: lustre: Convert macro class_export_rpc_dec into static inline function
Date: Fri, 20 Mar 2015 18:34:39 +0530
Message-Id: <1426856679-1443-2-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426856679-1443-1-git-send-email-somyaanand214@gmail.com>
References: <1426856679-1443-1-git-send-email-somyaanand214@gmail.com>

Static inline function are generally preferred over macros because
static inline functions have types and return values. But in order
to change a macro into static inline function we have to check the
calling sites of the macro and ensuring that the types of arguments
in each case is same and also ensure that macro always returns same
type.

This patch converts the macro class_export_rpc_dec into static inline
function. To do so, we have used the following coccinelle script to
ensure the above mentioned requirements for this change.

Since this macro does not return anything, so coccinelle script can be
simplified to avoid return type checks.

@initialize:python@
@@
list = []

@rule1@
type T;
T e;
expression list[n] es;
@@
class_export_rpc_dec(es,e,...);

@script:python rule2@
e << rule1.e;
T << rule1.T;
@@
list.append(T)

@finalize:python@
@@
possible = True
for t in list:
    if t != list[0]:
            possible = False

if possible:
    print 'This patch is possible. Argument type:', list[0]
else:
    print 'This patch is not possible'

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/lustre/lustre/include/obd_class.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 9f528d4..3565660 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -229,13 +229,13 @@ static inline void class_export_rpc_inc(struct obd_export *exp)
 	       (exp), atomic_read(&(exp)->exp_rpc_count));
 }
 
-#define class_export_rpc_dec(exp)				       \
-({								      \
-	LASSERT_ATOMIC_POS(&exp->exp_rpc_count);			\
-	atomic_dec(&(exp)->exp_rpc_count);			  \
-	CDEBUG(D_INFO, "RPC PUTting export %p : new rpc_count %d\n",    \
-	       (exp), atomic_read(&(exp)->exp_rpc_count));	  \
-})
+static inline void class_export_rpc_dec(struct obd_export *exp)
+{
+	LASSERT_ATOMIC_POS(&exp->exp_rpc_count);
+	atomic_dec(&(exp)->exp_rpc_count);
+	CDEBUG(D_INFO, "RPC PUTting export %p : new rpc_count %d\n",
+	       (exp), atomic_read(&(exp)->exp_rpc_count));
+}
 
 #define class_export_lock_get(exp, lock)				\
 ({								      \
-- 
1.9.1


