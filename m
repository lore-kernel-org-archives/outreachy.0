X-GM-THRID: 6304088195072
X-Received: by 10.140.234.206 with SMTP id f197mr256240qhc.2.1425406434503;
        Tue, 03 Mar 2015 10:13:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.85 with SMTP id m79ls216313qgd.44.gmail; Tue, 03 Mar
 2015 10:13:54 -0800 (PST)
X-Received: by 10.236.53.10 with SMTP id f10mr140129yhc.17.1425406434325;
        Tue, 03 Mar 2015 10:13:54 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com. [209.85.192.171])
        by gmr-mx.google.com with ESMTPS id bo1si226011pbc.0.2015.03.03.10.13.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 10:13:54 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.192.171;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by pdjy10 with SMTP id y10so50219321pdj.13
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 10:13:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=WrlSHz2W7gJYvj/JDIap8/QhYFR43vpU37r3iSdJcvs=;
        b=m6Jv3Vbe1GLu6jHKkfXbWEv/Tyyt8wMG8iQyYjRLmHheoErZU/LA5IdKgJE3AIqEFJ
         5XRVH7LyKo1ZuztX3QYtUu2ZK174yr6dMFfsfaN4ZxgOLGQnMNBxovsryCAHolteSs5B
         o1YfBvTDPmrIso7WTqOGzDwJPY+Zen6VYa/cl86qXJcoNMUptQZNGwNBcCZ950dprrS5
         xE/eH4PnPc1t/FVk8NvnUR9Edp9tQ98ERRbDws6lSONfufWcIk2olP9om01w1pnd6AKC
         PUyYu/0jUxGoEbEBUsWqsVyTEYOIGprq8HNAwJ0+JoS9rJ+z/1GjWHfvcVouxuiGV1M5
         kfkg==
X-Gm-Message-State: ALoCoQmyKL3JkOIa4BJlFNuvhMj/s/tVdhnhFkT9pQ+wBjsm9SwL3QDzJSIvjNOWqjJEL/9klgtC
X-Received: by 10.66.101.73 with SMTP id fe9mr125414pab.156.1425406434074;
        Tue, 03 Mar 2015 10:13:54 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:b4ac:77a3:ff8e:b2fe])
        by mx.google.com with ESMTPSA id c10sm1561672pbu.89.2015.03.03.10.13.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 10:13:53 -0800 (PST)
Date: Tue, 3 Mar 2015 10:13:51 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: fwserial: Replace NULL comparison with !foo
Message-ID: <20150303181351.GA13380@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Addresses checkpatch.pl check
CHECK: Comparison to NULL could be written "!fifi->data"

Makes the indicated replacements

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/fwserial/dma_fifo.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/fwserial/dma_fifo.c b/drivers/staging/fwserial/dma_fifo.c
index 0279062..4c50e08 100644
--- a/drivers/staging/fwserial/dma_fifo.c
+++ b/drivers/staging/fwserial/dma_fifo.c
@@ -106,7 +106,7 @@ void dma_fifo_free(struct dma_fifo *fifo)
 {
 	struct dma_pending *pending, *next;
 
-	if (fifo->data == NULL)
+	if (!fifo->data)
 		return;
 
 	list_for_each_entry_safe(pending, next, &fifo->pending, link)
@@ -123,7 +123,7 @@ void dma_fifo_reset(struct dma_fifo *fifo)
 {
 	struct dma_pending *pending, *next;
 
-	if (fifo->data == NULL)
+	if (!fifo->data)
 		return;
 
 	list_for_each_entry_safe(pending, next, &fifo->pending, link)
@@ -149,7 +149,7 @@ int dma_fifo_in(struct dma_fifo *fifo, const void *src, int n)
 {
 	int ofs, l;
 
-	if (fifo->data == NULL)
+	if (!fifo->data)
 		return -ENOENT;
 	if (fifo->corrupt)
 		return -ENXIO;
@@ -192,7 +192,7 @@ int dma_fifo_out_pend(struct dma_fifo *fifo, struct dma_pending *pended)
 {
 	unsigned len, n, ofs, l, limit;
 
-	if (fifo->data == NULL)
+	if (!fifo->data)
 		return -ENOENT;
 	if (fifo->corrupt)
 		return -ENXIO;
@@ -252,7 +252,7 @@ int dma_fifo_out_complete(struct dma_fifo *fifo, struct dma_pending *complete)
 {
 	struct dma_pending *pending, *next, *tmp;
 
-	if (fifo->data == NULL)
+	if (!fifo->data)
 		return -ENOENT;
 	if (fifo->corrupt)
 		return -ENXIO;
-- 
1.9.1


