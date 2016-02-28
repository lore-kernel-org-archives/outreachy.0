X-GM-THRID: 6256381730960179200
X-Received: by 10.98.43.132 with SMTP id r126mr9517994pfr.5.1456677385989;
        Sun, 28 Feb 2016 08:36:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.139 with SMTP id m11ls2254065qge.62.gmail; Sun, 28 Feb
 2016 08:36:25 -0800 (PST)
X-Received: by 10.140.253.198 with SMTP id y189mr9667633qhc.9.1456677385404;
        Sun, 28 Feb 2016 08:36:25 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x22c.google.com (mail-ig0-x22c.google.com. [2607:f8b0:4001:c05::22c])
        by gmr-mx.google.com with ESMTPS id k15si696786igt.3.2016.02.28.08.36.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 08:36:25 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22c as permitted sender) client-ip=2607:f8b0:4001:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22c as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22c.google.com with SMTP id g6so68917935igt.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 08:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6LUf/t5ECkCcXIWuz89ev51ujzecIV8DlMlc3GDSDAs=;
        b=bf8k9+J1DZkVQ7uN8EdASYNhyTK4PD+kyPIDE1dF2PkhlufBcyZbNTNGeNHPNGQxUV
         MLCbyTmKol6uPAxURfCFzPr7w36rFT2QrNNAqoJfZhgc1PwzgTXJgEpubHYkxmG5rQFB
         HIg+XoYxhfMwaD0SI/CBDk8uMi7fF8SPArNxilWG+CtQtcRSsgvhnxRFeWwuNw/UuT31
         WQhFbnaABkOkplTu47+JiTgiGojUsJ+lgopnwYZ8nO8vNRkQntnWM1rLhM8rIIj8xDgo
         ZUGY+14G8SLshj7LjuPsNBttffdBbN+2PH+uM8hS5zSHIKPHila+TY7CQ9LQj5DAXK01
         uWUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6LUf/t5ECkCcXIWuz89ev51ujzecIV8DlMlc3GDSDAs=;
        b=T0nsAwrvH6d5o2XGfvNAZSxru4pB95PlIRzqkI5SsDtOYMo2BtNJofoCQRWXoDGABk
         rZQGM5pQBx3CwBSTyGuGJUxJJcQa2nZOA2cWU8839EH1r6aieSTVS7gr7yanYtV8wpfI
         sNVYeyQgN9DgY/TiC/MqjJJ1OTUSrL2gSsMvqBJCWjMnXJTC/TLNjy3ugklBfLUBRRom
         lKWSnMVxfjU98TlI9SpVjR0xmEKwfYf8trOX/Zp1XquHjBEYz8GoVaDmXjKwGYhRBOrP
         /jPdBULkvpydStK3B2mNyvMWufTG6E4MmOoUQRlkcQdegnG2WmogVttvvdtByHmZ6ICk
         mqwQ==
X-Gm-Message-State: AD7BkJJqdYeckvqF8z++lB9y7PqlWtKm/jh4mXkr/y8e1P2+eCmXBEjxjSK4AqYmLEqRPg==
X-Received: by 10.50.97.2 with SMTP id dw2mr5949150igb.7.1456677385236;
        Sun, 28 Feb 2016 08:36:25 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id z84sm9298458ioi.39.2016.02.28.08.36.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 08:36:24 -0800 (PST)
Date: Sun, 28 Feb 2016 16:35:35 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lustre: ldlm: Use list_for_each_entry()
Message-ID: <20160228213534.GA8027@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry() rather than a combination of list_for_each()
and list_entry(). Also remove the variable tmp which becomes useless
as a result.
Semantic patch used:

@a@
expression pos,  head;
expression mem;
type t;
identifier var;
iterator name list_for_each_entry, list_for_each;
@@

- list_for_each(pos, head)
+ list_for_each_entry(var, head, mem)
  {
   ... when != var
-  var = \(list_entry \| container_of\)(pos, t, mem);
   ... when != pos
  }

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
index 03b9726..cd288fd 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
@@ -743,7 +743,6 @@ extern struct ldlm_lock *ldlm_lock_get(struct ldlm_lock *lock);
 static void cleanup_resource(struct ldlm_resource *res, struct list_head *q,
 			     __u64 flags)
 {
-	struct list_head *tmp;
 	int rc = 0;
 	bool local_only = !!(flags & LDLM_FL_LOCAL_ONLY);
 
@@ -755,9 +754,7 @@ static void cleanup_resource(struct ldlm_resource *res, struct list_head *q,
 		 * all cleaned locks are marked by CLEANED flag.
 		 */
 		lock_res(res);
-		list_for_each(tmp, q) {
-			lock = list_entry(tmp, struct ldlm_lock,
-					      l_res_link);
+		list_for_each_entry(lock, q, l_res_link) {
 			if (lock->l_flags & LDLM_FL_CLEANED) {
 				lock = NULL;
 				continue;
-- 
2.5.0


