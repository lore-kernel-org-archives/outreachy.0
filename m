X-GM-THRID: 6394061646033059840
X-Received: by 10.237.36.165 with SMTP id t34mr4222501qtc.50.1488733497432;
        Sun, 05 Mar 2017 09:04:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.191.134 with SMTP id p128ls4070217iof.31.gmail; Sun, 05
 Mar 2017 09:04:56 -0800 (PST)
X-Received: by 10.36.40.195 with SMTP id h186mr2766669ith.27.1488733496358;
        Sun, 05 Mar 2017 09:04:56 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si950751pfd.3.2017.03.05.09.04.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 09:04:56 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so17501377pgy.3
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 09:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=bGfVvcPlu5dgCn8pG7Vf0upEH7qnedc11ZZzYpAqT4U=;
        b=VpxUL+FJsbgS9Q2/ig6Zsyv8MHP1SVn0kFiSSZrWBHeuXgZBRTRj3aTR1A7rHeM/M4
         r/md2wFuxOQBe7G9nzH4YZbruDsyCigfXsPnn+wCfSOpTl6AJ1m7EIPDh25Di/sA48et
         B7B3KUeulfEdLia+BciEuo9d6G7t+ydF822rb0VXtwUSMa7sz4IQbmWdirBebixTuucZ
         7OUCwhNR5yJIYrAu9MXqcQ7zn4z2T0N85IJV+/V7uCGPGYlIv2XE/f8LMjCZTvox49PV
         BiigR6I5eyePdiNlA+g7OIY2pTkzBa2eWw4qe98tH+8YRcRj7FsEHUgANpencFeanwN5
         c6mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=bGfVvcPlu5dgCn8pG7Vf0upEH7qnedc11ZZzYpAqT4U=;
        b=aiSdSaXgUu5IuyuC9RACvnhVcs3KU2HS1mqB748bIZMBqwoEKTZfaDoxuRnIGuYofZ
         bX3/oD7ZjZ8nyL+vncByMrsEoxGLdOG0gaJedvmulhFStB34AQOwtlELXCFWwVicG3Yu
         lB5xqJea3XCRGOqXYE0I0e+kSYoo9UnJtoQDBXvc7NiSlyo9mazP8vHQ5VWaS+nzTDyD
         G4BqMWIJz/Qb1C0MtXvw1z34DiU7GDt7NzgQfbasAMF7VlkrCNoxzYDDNMchnE6HQ+al
         6+IPx8hyLp9AD3uTZGtcr+pW/FDe3LElH29ncR+Spt6mxpPyye7ULjns+AJTC+a/Huzz
         qG0Q==
X-Gm-Message-State: AMke39l034jJFbU8swYF20fid1eQsJsl809qn9Tpj5j8BwCfOsXtT2ToHmSwrUx4EPZbWQ==
X-Received: by 10.99.137.66 with SMTP id v63mr14906812pgd.207.1488733495777;
        Sun, 05 Mar 2017 09:04:55 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p129sm34470976pfp.118.2017.03.05.09.04.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 09:04:54 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: oleg.drokin@intel.com
Cc: andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] staging: lustre: ptlrpc: Use list_for_each_entry_safe
Date: Sun,  5 Mar 2017 22:36:47 +0530
Message-Id: <1488733610-22289-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com>
References: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com>

Doubly linked lists which are  iterated  using list_empty
and list_entry macros have been replaced with list_for_each_entry_safe
macro.
This makes the iteration simpler and more readable.

This patch replaces the while loop containing list_empty and list_entry
with list_for_each_entry_safe.

This was done with Coccinelle.

@@
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry_safe;
@@

T *I1;
+ T *tmp;
...
- while (list_empty(&E1) == 0)
+ list_for_each_entry_safe (I1, tmp, &E1, I2)
{
...when != T *I1;
- I1 = list_entry(E1.next, T, I2);
...
}

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/sec_gc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c b/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
index 8ffd000..fe1c0af 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
@@ -98,12 +98,11 @@ void sptlrpc_gc_del_sec(struct ptlrpc_sec *sec)
 static void sec_process_ctx_list(void)
 {
 	struct ptlrpc_cli_ctx *ctx;
+	struct ptlrpc_cli_ctx *tmp;
 
 	spin_lock(&sec_gc_ctx_list_lock);
 
-	while (!list_empty(&sec_gc_ctx_list)) {
-		ctx = list_entry(sec_gc_ctx_list.next,
-				 struct ptlrpc_cli_ctx, cc_gc_chain);
+	list_for_each_entry_safe(ctx, tmp, &sec_gc_ctx_list, cc_gc_chain) {
 		list_del_init(&ctx->cc_gc_chain);
 		spin_unlock(&sec_gc_ctx_list_lock);
 
-- 
2.7.4


