X-GM-THRID: 6256393273902891008
X-Received: by 10.140.242.214 with SMTP id n205mr9801168qhc.14.1456680072121;
        Sun, 28 Feb 2016 09:21:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.40.196 with SMTP id o187ls1145401ioo.94.gmail; Sun, 28 Feb
 2016 09:21:11 -0800 (PST)
X-Received: by 10.66.193.131 with SMTP id ho3mr9633081pac.42.1456680071815;
        Sun, 28 Feb 2016 09:21:11 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x22d.google.com (mail-ig0-x22d.google.com. [2607:f8b0:4001:c05::22d])
        by gmr-mx.google.com with ESMTPS id iq8si709922igb.0.2016.02.28.09.21.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:21:11 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22d as permitted sender) client-ip=2607:f8b0:4001:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22d as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22d.google.com with SMTP id y8so68087407igp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 09:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5izHtHv55OMX2HFvHxEIL2dAvgq9HXYp+rMrIaXK5do=;
        b=PAbX1SOwrKpFazFo+0279tIy28S4hxjJA/u/d01DlAQWsSHc8dpHmNjwHuG9VQxPjx
         kcRTYgzbCcDJdsv4fVzj5eh/cskoSCeE1sdbqe+pFNHbnAlhWNms7U0TeZi0YuLqYFKb
         p7v3NBJf1Gis9yw7V0IlX9CJTpSlTmJ/stssCNBEXVtJqe6RYFfh47cC62M7ho6mst+h
         MM3EjcggbtAxfAXiEQZjiXVeLrIlr3MGYLlMjrgrBMzw15xow06+MxFnA+h0MLB0XIMH
         ezDMAYhRy6N3e3DyQK5pVOtbI7HlKFAr0ynVKmJZVHaCpL1VXNzSmrX+6f2A/aeA1r+5
         O6JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5izHtHv55OMX2HFvHxEIL2dAvgq9HXYp+rMrIaXK5do=;
        b=N/ubNFEiFx06tRX5De84VYZbzvsjaX2iQkfag95ijc06SQiAKSAPO3WOapIF9qBn/4
         Hw5LgVAvkQ1+GDjSixoxWdEEaIBLxHRqzMGRLatoXLZEm5Bx6t054/GfVqL/WBxqTpVO
         K14Rya7g0G29a3d3KSkwIOH/XYmRQNBHe6zPg5c7+shop1aIocxQbRuHn6IqD5BIf63o
         cpLeCIXtdvJRh9H90/NR/X3pAKJLHFXAQt7mSWH+m3YpzRQLQThoE/NcVlmLogoKMOQ4
         BtX1GpPAf5KzOvBMLePHwcu2dlvTmBL2zH+WZNU1RrEBq6rnxo+y9ncZIsOL0BRqBT+p
         Q5ww==
X-Gm-Message-State: AD7BkJL+vbkRWJ7+dCEvzNCSk8F4efWHaJ6fTTBPbRRjbKZ53F5RC3KHCCLIDUB6aFTfDA==
X-Received: by 10.50.6.104 with SMTP id z8mr6733356igz.58.1456680071638;
        Sun, 28 Feb 2016 09:21:11 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id l6sm5339106igv.10.2016.02.28.09.21.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:21:11 -0800 (PST)
Date: Sun, 28 Feb 2016 17:20:21 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: ptlrpc: Use list_for_each_entry_safe()
Message-ID: <20160228222021.GA8699@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry_safe() instead of a combination of
list_for_each_safe() and list_entry(). Also remove variable pos
which becomes useless as a result.
Semantic patch used:

@a@
expression pos, n, head;
expression mem;
type t;
identifier var;
iterator name list_for_each_entry_safe, list_for_each_safe;
@@

- list_for_each_safe(pos, n, head)
+ list_for_each_entry_safe(var, n, head, mem)
  {
   ... when != var
-  var = \(list_entry \| container_of\)(pos, t, mem);
   ... when != pos
  }

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c b/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c
index 0c36663..7c1dddd 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c
@@ -199,15 +199,14 @@ ptlrpcd_select_pc(struct ptlrpc_request *req)
 static int ptlrpcd_steal_rqset(struct ptlrpc_request_set *des,
 			       struct ptlrpc_request_set *src)
 {
-	struct list_head *tmp, *pos;
+	struct list_head *tmp;
 	struct ptlrpc_request *req;
 	int rc = 0;
 
 	spin_lock(&src->set_new_req_lock);
 	if (likely(!list_empty(&src->set_new_requests))) {
-		list_for_each_safe(pos, tmp, &src->set_new_requests) {
-			req = list_entry(pos, struct ptlrpc_request,
-					     rq_set_chain);
+		list_for_each_entry_safe(req, tmp, &src->set_new_requests,
+					 rq_set_chain) {
 			req->rq_set = des;
 		}
 		list_splice_init(&src->set_new_requests,
-- 
2.5.0


