X-GM-THRID: 9252100898816
X-Received: by 10.70.45.135 with SMTP id n7mr14129455pdm.9.1426856708565;
        Fri, 20 Mar 2015 06:05:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.85 with SMTP id m79ls1667560qgd.44.gmail; Fri, 20 Mar
 2015 06:05:08 -0700 (PDT)
X-Received: by 10.140.147.130 with SMTP id 124mr86707155qht.8.1426856708248;
        Fri, 20 Mar 2015 06:05:08 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id ni4si788794pdb.2.2015.03.20.06.05.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 06:05:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pacwe9 with SMTP id we9so108729608pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 06:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=zyOU6A6UDIh6h6MCY+U5SMrQNRZ+OHbBM0Ka90Umdo4=;
        b=fkJHYtFItMjqgyeytiLczeIkR2enMDZeROsA6TB/oBTUHQjx0L2KcesrD8wL+ntP1L
         41jU4H+gBo+M1aBq0ck2YMA1EmZsrXRmvDaGFGGw+GDuhmYZVlTeyqpN5k3kDrRZ8BYz
         EWjbVj8XejnjqTbYQMm8VjqwSxuzToXSXUqHe86WpFvfEJcTjYihamAl37ibyfih4NZy
         8oERKUq9zsvCPiwcE8a+Y8iKxSgCtt77qSlL5y0kLMgfxfDUkT9vKU8p5WTvMFRqH/uZ
         lfFCOP/jiwzNyLDPGyAoWoaMOzCNbWp48zWZuyUz5Q+RkDRccwq+d5KeKYkBac0BA+FT
         c/LA==
X-Received: by 10.66.240.228 with SMTP id wd4mr131459481pac.80.1426856708118;
        Fri, 20 Mar 2015 06:05:08 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([223.176.17.175])
        by mx.google.com with ESMTPSA id i11sm8134345pdj.61.2015.03.20.06.05.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2015 06:05:07 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 1/2] Staging: lustre: Convert macro class_export_rpc_inc into static inline function
Date: Fri, 20 Mar 2015 18:34:38 +0530
Message-Id: <1426856679-1443-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

Static inline function are generally preferred over macros because
static inline functions have types and return values. But in order
to change a macro into static inline function we have to check the
calling sites of the macro and ensuring that the types of arguments
in each case is same and also ensure that macro always returns same
type.

This patch converts the macro class_export_rpc_inc into static inline
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
class_export_rpc_inc(es,e,...);

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
 drivers/staging/lustre/lustre/include/obd_class.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 4a29261..9f528d4 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -222,12 +222,12 @@ extern void (*class_export_dump_hook)(struct obd_export *);
 
 #endif
 
-#define class_export_rpc_inc(exp)				       \
-({								      \
-	atomic_inc(&(exp)->exp_rpc_count);			  \
-	CDEBUG(D_INFO, "RPC GETting export %p : new rpc_count %d\n",    \
-	       (exp), atomic_read(&(exp)->exp_rpc_count));	  \
-})
+static inline void class_export_rpc_inc(struct obd_export *exp)
+{
+	atomic_inc(&(exp)->exp_rpc_count);
+	CDEBUG(D_INFO, "RPC GETting export %p : new rpc_count %d\n",
+	       (exp), atomic_read(&(exp)->exp_rpc_count));
+}
 
 #define class_export_rpc_dec(exp)				       \
 ({								      \
-- 
1.9.1


