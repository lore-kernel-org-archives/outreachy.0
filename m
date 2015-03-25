X-GM-THRID: 9822875418624
X-Received: by 10.43.60.131 with SMTP id ws3mr30987915icb.13.1427299618427;
        Wed, 25 Mar 2015 09:06:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.158.104 with SMTP id wt8ls309827obb.65.gmail; Wed, 25 Mar
 2015 09:06:58 -0700 (PDT)
X-Received: by 10.182.126.68 with SMTP id mw4mr11681672obb.40.1427299618087;
        Wed, 25 Mar 2015 09:06:58 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id gb13si355469pac.2.2015.03.25.09.06.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 09:06:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id cy3so33188282pad.3
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 09:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Ecwb68lGT/jS4xvo48YcfduaE7rGRDCFB0OMXpGKz2Q=;
        b=ltcZNyErmF1w/J4etEGyusOsh9c9K6st5PVnaYYSXdYxe3wvWMyPAE4oloPabQcUDH
         yhBibAnqxFnMfgAq/W0SNoqcwCwuOb2lUK/XIYC1t05a8x6zMjvYnaHWkt3Gp9jxvZwI
         hZ93VRwvEn7bgBbK5gE9+aH+D60lfSAV38zuqhVG8Cao4be4JQnfWLHhwWxFXc4sfXfa
         9pIrqcI6o1vE7hX8j1fPN8/tUjcghBFwCViWDkw/TL6rs/JJAP2LdI/L8k0+CUEFCLIA
         yHNVVZTAQ3kfLRUf5rmH0QyMjCeGFOBQ0EfQXDyfArvL6eUOuX3AxiM2TC8dekECMJlC
         uS8A==
X-Received: by 10.66.219.130 with SMTP id po2mr18345066pac.98.1427299617906;
        Wed, 25 Mar 2015 09:06:57 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id e4sm2892841pdm.70.2015.03.25.09.06.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Mar 2015 09:06:56 -0700 (PDT)
Date: Wed, 25 Mar 2015 21:34:48 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: Remove extern from function declaration
Message-ID: <20150325160448.GA6708@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Functions have the extern storage class specifier by default,
so this keyword can be removed. 

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
index 5bf9488..70b909f 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
@@ -211,9 +211,9 @@ struct ldlm_state {
 /* interval tree, for LDLM_EXTENT. */
 extern struct kmem_cache *ldlm_interval_slab; /* slab cache for ldlm_interval */
 extern void ldlm_interval_attach(struct ldlm_interval *n, struct ldlm_lock *l);
-extern struct ldlm_interval *ldlm_interval_detach(struct ldlm_lock *l);
-extern struct ldlm_interval *ldlm_interval_alloc(struct ldlm_lock *lock);
-extern void ldlm_interval_free(struct ldlm_interval *node);
+struct ldlm_interval *ldlm_interval_detach(struct ldlm_lock *l);
+struct ldlm_interval *ldlm_interval_alloc(struct ldlm_lock *lock);
+void ldlm_interval_free(struct ldlm_interval *node);
 /* this function must be called with res lock held */
 static inline struct ldlm_extent *
 ldlm_interval_extent(struct ldlm_interval *node)
-- 
1.9.1


