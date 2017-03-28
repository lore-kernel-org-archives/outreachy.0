X-GM-THRID: 6401746378661298176
X-Received: by 10.107.20.129 with SMTP id 123mr8391392iou.78.1490695871055;
        Tue, 28 Mar 2017 03:11:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.144.11 with SMTP id s11ls4551503iod.14.gmail; Tue, 28 Mar
 2017 03:11:10 -0700 (PDT)
X-Received: by 10.36.70.78 with SMTP id j75mr3911759itb.34.1490695870457;
        Tue, 28 Mar 2017 03:11:10 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y203si613706pfb.0.2017.03.28.03.11.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 03:11:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id o123so17431873pga.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 03:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Pau5bmcgjB63onEeifqdkycXsEipStLGOoZYQMOot8g=;
        b=YTMJHjGRxp0yhCOk83vuknJ710Aqm7lctw7KxeZbcl6BPcSoVnuUM39Cs8k8pBoIvA
         5hr+Nrxp8npvEWSXviKsh+QIy3QdezQX6+Av+UOfrwSJp3xpqcAkkGYrG+57chGpTJQW
         wSYt40u6NudNauWwpQS2JXUeH75BtRJALfsPunikGKvckgd3acDeYWrL74RpmnXuApx8
         Wdyd6VJP/3GC9XHGderAlWK3vXLLCWzhoPdVDdn1IKRehVSO4Esw4+GjvwFth6Gfw05h
         DfB/T5xfUBz2tamqy2UKwJiKvsp4UQCkFZUnFlOFZhX6IskGfG7Ft9vgJ8FzbyAl2F5f
         xZCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Pau5bmcgjB63onEeifqdkycXsEipStLGOoZYQMOot8g=;
        b=dg7PFOdngnN/La0XH9JMBjLPluEY6Jo8/YHPKaoGdOkvcrF0ES5KEIcUDXfunhJ9Fr
         lddtKTeKjCwGCrR5Vl6bpJY+qubeX5bZwOyCvjXVkeXunjoJayprD0ssPjg7VppsXXBB
         lN3gRqAqGf6vMiFVqoHBS6BQHncQB1ppQOUWe32jBQikZg0RfDtGJ+HjIyS1AXKidxHv
         AcR1xa8LKVYUrXhwf+otDvFOp1sT2M1+VGJM0+e9FhvKOCEHuv9FcbH0ub5PFmwT+lBK
         J8lcxaAKWfmGjPqwL9yd4ePtiYRddImJpbDpwEDsHZzxgOje5uKy8BgYKg41hAA2mhV7
         AGTg==
X-Gm-Message-State: AFeK/H3S15+rJ7z1N5G1EkqPRvyJsAYm9HY7k7//usxZs34zJcfs0xNHspcTDpGu0L5Yaw==
X-Received: by 10.98.150.196 with SMTP id s65mr30245680pfk.220.1490695870065;
        Tue, 28 Mar 2017 03:11:10 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5181:ce92:a4e3:114c:b305:cb39])
        by smtp.gmail.com with ESMTPSA id c204sm6402657pfc.92.2017.03.28.03.11.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 03:11:09 -0700 (PDT)
Message-ID: <58da36bd.d51c620a.140d2.06e1@mx.google.com>
X-Google-Original-Message-ID: <20170328101104.GA5066@<rvarsha016@gmail.com>>
Date: Tue, 28 Mar 2017 15:41:04 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 2/5] include: linux: pid: Move open brace to previous line.
References: <cover.1490695255.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490695255.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Move open braces to the same line, as that of struct and enum. This patch
fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v3:
- Commit message wrapped within  74 columns.
 
Changes in v2:
- No changes.

 include/linux/pid.h | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index ea90c1f..c6d947f 100644
--- a/include/linux/pid.h
+++ b/include/linux/pid.h
@@ -3,8 +3,7 @@
 
 #include <linux/rculist.h>
 
-enum pid_type
-{
+enum pid_type {
 	PIDTYPE_PID, /* Process ID */
 	PIDTYPE_PGID, /* Process group ID */
 	PIDTYPE_SID, /* Process session ID */
@@ -66,8 +65,7 @@ struct upid {
  * @rcu: RCU helper.
  * @numbers: Instance of upid for each level.
  */
-struct pid
-{
+struct pid {
 	atomic_t count;
 	unsigned int level;
 	/* lists of tasks that use this pid */
@@ -83,8 +81,7 @@ extern struct pid init_struct_pid;
  * @node: List element.
  * @pid: Pointer to the struct pid of the process.
  */
-struct pid_link
-{
+struct pid_link {
 	struct hlist_node node;
 	struct pid *pid;
 };
-- 
2.9.3


