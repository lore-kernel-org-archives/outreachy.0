X-GM-THRID: 6255535710113103872
X-Received: by 10.129.88.135 with SMTP id m129mr374194ywb.47.1456480405293;
        Fri, 26 Feb 2016 01:53:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.165 with SMTP id d34ls1051468qge.89.gmail; Fri, 26 Feb
 2016 01:53:24 -0800 (PST)
X-Received: by 10.129.103.69 with SMTP id b66mr394697ywc.58.1456480404716;
        Fri, 26 Feb 2016 01:53:24 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id yd9si1776277pab.1.2016.02.26.01.53.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 01:53:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e127so4435262pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 01:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=dPUh0MXP/KnaAPsRSmZv11bF60q+0Pul8bgVwoTuDk8=;
        b=as7xrIDhLezRTiz6wc+3LTHjRKEK8xZ3nAb3RiYmyFdG8Wh/Pu0huE42faNwDEOANX
         dgXsBwmAVZ7zY6sqjChzTc/cSuvTuKeiwQspxeO1u+Fr/9ScMK3wgJ1BSOH/vbVO4QtQ
         lh8ztBQ7hHYdeEbWMVYkjOff29EafxNjJEAD9aW0XnvpFJf0WLB27neRhjH165kapAcW
         pkQQYlmF47KP4QXkSDhWqI4GO/rsNVAIYwl4pbUJVbBfUNoZs3LSgYdhNxVbHnVprwLr
         LLOefJDGO0y7U6fivUD1xaUsaYlkyWU/dMABpqYxJAAKBqzzapXIHzypSmk42XG2SGzR
         cRWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=dPUh0MXP/KnaAPsRSmZv11bF60q+0Pul8bgVwoTuDk8=;
        b=bUQxK5em8XMOepc9AkIsKYMh8OV8WgR1ilhAvBW44EmT/BIci8eCo8jbEPi7uKpOCi
         spWPGeZouBUk7v/q743znXj8D8Dl41fNf4QvfUBbXwtSgkioDY3Y5AMHkW4izOPPqnej
         KXmT3UXgI8y9ycxcbh1UYD941W6aTZF5VcsPjUP8cq790KFQ2IKG8NNPCtWJc8il4ION
         ZYWqxdyDDEYQ2NzG99/96GbrnUkXZKj7OGMtBttJDHQJ4ohMW4ImJ9CwUWd7tCIA1tMr
         VRdHqNhMkRKpHSuzELpmUEzmVPURbJTn3nPZ/tXsd/eyk0lQ9rfftBMj4K/GKlaEmVHw
         pwDQ==
X-Gm-Message-State: AD7BkJKGQ36taG1ebxDQvdfdQon/VUApiUZUog/oK834UvMutWbFKlaD5xSaNn/A2y7i1w==
X-Received: by 10.98.68.212 with SMTP id m81mr732577pfi.135.1456480404529;
        Fri, 26 Feb 2016 01:53:24 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s197sm18033337pfs.62.2016.02.26.01.53.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 01:53:24 -0800 (PST)
Date: Fri, 26 Feb 2016 15:24:01 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: libcfs: Prefer kmalloc_array over kmalloc
Message-ID: <20160226095401.GA10888@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kmalloc_array instead of kmalloc for arrays to prevent integer
overflows.
This was done using Coccinelle:

@@
expression e1, e2;
constant C;
type t;
@@
(
- kmalloc(
+ kmalloc_array(
e2
- *
+ ,
sizeof(e1), C)
|
- kmalloc(
+ kmalloc_array(
e1
- *
+ ,
sizeof(t), C)
|
- kmalloc(
+ kmalloc_array(
- sizeof(e1)
- *
e2
+ ,
+ sizeof(e1)
, C)
|
- kmalloc(
+ kmalloc_array(
- sizeof(t)
- *
e1
+ ,
+ sizeof(t)
, C)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-Fixed type lusture to lustre in subject.

 drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
index 91c2ae8..b78f6e5 100644
--- a/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
+++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
@@ -61,8 +61,9 @@ int cfs_tracefile_init_arch(void)
 	memset(cfs_trace_data, 0, sizeof(cfs_trace_data));
 	for (i = 0; i < CFS_TCD_TYPE_MAX; i++) {
 		cfs_trace_data[i] =
-			kmalloc(sizeof(union cfs_trace_data_union) *
-				num_possible_cpus(), GFP_KERNEL);
+			kmalloc_array(num_possible_cpus(),
+				      sizeof(union cfs_trace_data_union),
+				      GFP_KERNEL);
 		if (!cfs_trace_data[i])
 			goto out;
 	}
--
2.1.4


