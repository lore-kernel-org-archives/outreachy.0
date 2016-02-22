X-GM-THRID: 6254162596522360832
X-Received: by 10.50.23.113 with SMTP id l17mr8159404igf.13.1456160702853;
        Mon, 22 Feb 2016 09:05:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.162 with SMTP id x2ls448445igl.34.gmail; Mon, 22 Feb
 2016 09:05:01 -0800 (PST)
X-Received: by 10.50.124.73 with SMTP id mg9mr12486917igb.4.1456160701733;
        Mon, 22 Feb 2016 09:05:01 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id yd9si3212656pab.1.2016.02.22.09.05.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 09:05:01 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fy10so93841065pac.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 09:05:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ZpN4Si1lHWG110gIeQ4LV/Cil4K+vV1vgbKRgvrPtKY=;
        b=EJsIvsfA3bPWpSaSROLPNG+l6UTc63VhDfdrIlDKiUbToEX+tnEcimohO/zybrIsj0
         /YC2B1Zy2Idk5HehfYI1yRsE5Kys8pT5pazRDo9tqkUGzf4z53YooEqbybVswNHZ7mHR
         p+a+iZg/DoGdMR/7x7iaKZNsj2ApOa8GA0xlGC4+RUfp/cxw9hJZrEvX2O5kkjOVJjD3
         ZelrXGTyPoXKynIXqRFtfI9CQY+mW/ifiU+/paA8iDm0c+g/ij7oBS5ZK3xLeZmizjmo
         BK1kIKK/crMoF28H67wy4IPWzTMZxRZabENnA069EGuTGLZPRcmZMnza1uXzkssSY4ld
         yW3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ZpN4Si1lHWG110gIeQ4LV/Cil4K+vV1vgbKRgvrPtKY=;
        b=Fx6my9RHbrxVKSkqmQbyqs8sPxDMkY/dRdkyGRAGl0YVNjrP28z36PD/qFa4bKowHb
         huDOT/u9HOAfSZkDiYvJqWOZW7eo3ILD4nAngqT4us91EYoPOjxnKI7rrkBmELg6TyXL
         lhsyAXQb0miXKCdpIKRg8VZGof+L6jC0YYWK/5nhjWCaVjolWXP/Y3/X7sY3FRg2MBrN
         a2M6iRmnkPZRnK2ywbrf+5DdxgNLRyywQZx7KyclfRcImRVio87HRIhqPTP7a65Fw/1A
         dSeerH54KgSrh7XEU8jTjwTFgwOgfFGmBU2vmLZl8fj524R91rvtGKZPpZviO6D2CXOc
         n57A==
X-Gm-Message-State: AG10YOTcgKIIrLruckVYQQMVaZfRLOs+Bqus+QLid7+P/75SQu8DSryxbpqE9V0jNWHzUg==
X-Received: by 10.66.222.199 with SMTP id qo7mr39580515pac.38.1456160701601;
        Mon, 22 Feb 2016 09:05:01 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x13sm38102317pfa.72.2016.02.22.09.05.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 09:05:01 -0800 (PST)
Date: Mon, 22 Feb 2016 22:35:34 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lusture: lnet: Replace typedef with struct
Message-ID: <20160222170534.GA26061@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

As per the Linux kernel coding style guidelines, using typedef for a structure
type is not recommended. Hence, occurences of typedefs have been
removed.

This was done with Coccinelle.

@r1@
type T;
@@

typedef struct { ... } T;

@script:python c1@
T2;
T << r1.T;
@@
coccinelle.T2 = T;

@@
type r1.T;
identifier c1.T2;
@@
-typedef
 struct
 + T2
 { ... }
 -T
 ;
 @@ type r1.T;
 identifier c1.T2;
 @@
 -T
 + struct T2

The '_t' suffix has not been removed since there is a variable with the
same name.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/ping_test.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/ping_test.c b/drivers/staging/lustre/lnet/selftest/ping_test.c
index 9d27e39..617a641 100644
--- a/drivers/staging/lustre/lnet/selftest/ping_test.c
+++ b/drivers/staging/lustre/lnet/selftest/ping_test.c
@@ -48,12 +48,12 @@ static int ping_srv_workitems = SFW_TEST_WI_MAX;
 module_param(ping_srv_workitems, int, 0644);
 MODULE_PARM_DESC(ping_srv_workitems, "# PING server workitems");

-typedef struct {
+struct lst_ping_data_t {
 	spinlock_t	pnd_lock;	/* serialize */
 	int		pnd_counter;	/* sequence counter */
-} lst_ping_data_t;
+};

-static lst_ping_data_t  lst_ping_data;
+static struct lst_ping_data_t  lst_ping_data;

 static int
 ping_client_init(sfw_test_instance_t *tsi)
--
2.1.4


