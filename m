X-GM-THRID: 6256352550355730432
X-Received: by 10.129.155.201 with SMTP id s192mr9485260ywg.4.1456670591918;
        Sun, 28 Feb 2016 06:43:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.208 with SMTP id l74ls2190842qgl.47.gmail; Sun, 28 Feb
 2016 06:43:11 -0800 (PST)
X-Received: by 10.31.160.209 with SMTP id j200mr9172837vke.6.1456670591128;
        Sun, 28 Feb 2016 06:43:11 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x236.google.com (mail-ig0-x236.google.com. [2607:f8b0:4001:c05::236])
        by gmr-mx.google.com with ESMTPS id i9si798937igg.1.2016.02.28.06.43.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 06:43:11 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::236 as permitted sender) client-ip=2607:f8b0:4001:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::236 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x236.google.com with SMTP id z8so63118580ige.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 06:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PyqjDnO3q72XV+07sNertu3GNSy5VhbOcB3EfBEb1yE=;
        b=harvwySiLghGSNe1gZve3J1YntjTpm3LltidEX9voHyx2arMeKQfr0o/Vx2v2FDUwt
         8JLOp6hHVIRGqsBWvAgGnMnH+T2cRLcmXaSGJ9K9HIAW0VeYcCQ8pm9C9AGv7t87Tr6a
         yE9/LpaXOauIlSw680bLo4mKq9LAG5+8BQfSHtR/4AuVR55TTXMfCAbQvzYKmDMnxb7F
         wqGfxsqS4VnvoG8GqrhJNjWdMuKTGelmLRGIMnWKE6DKSs9mGbcCNy8pW0unrdOcJHab
         66dTn5Y09kGEXvC7+LtINeoBHA1tNS2RNdzLADobyqzKbzoObBfI4NifqyFABM9XCOUk
         o61A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PyqjDnO3q72XV+07sNertu3GNSy5VhbOcB3EfBEb1yE=;
        b=aKuBAUGIF9ZSrBFZtb1TiEgy1wggydbFIpCPSSZnjNuLFsGO1RzbrggQNmPc0jxOXW
         8EtEl+5+qDPnoGG4U52vtB5tKX5dom9I0Qw6iFWQ0kN7OVpoJZpoX8puYfFp3vto8Tz3
         5do1YPEcUDGXbYnlZM9LA1Ay22Ghi4L8a30ygqbugpIwNUCSHMk5pPs5bB2AzWZfwSyy
         +6XhPvXVtq9ECtI/zOLAuZQtb3N3jHrcNR5NPsMmyDzgr3yfwI6Q4bbein0N3zF2Q0t7
         6fIAGoCHQT0k7FJ0qF1PrSmdcA10e5PJKHmpHKGO7qnoW8Kncre4iHaNGT+Mwcq8BTZX
         8D4Q==
X-Gm-Message-State: AD7BkJJwodDZfjTxYuftyf9jLI0vXElOdaZHx22bRb7eypxUJPOLpq4UkWM86NQUkDxTvw==
X-Received: by 10.50.161.8 with SMTP id xo8mr3982609igb.1.1456670590926;
        Sun, 28 Feb 2016 06:43:10 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id j18sm8848931ioj.40.2016.02.28.06.43.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 06:43:10 -0800 (PST)
Date: Sun, 28 Feb 2016 14:42:20 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: core: Prefer list_for_each_entry_safe()
Message-ID: <20160228194220.GA6211@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry_safe() rather than a combination of
list_for_each_safe() and container_of().

Semantic patch used:

@a@ 
expression pos, n, head; 
expression mem; 
type t; 
identifier var; 
iterator name list_for_each_entry, list_for_each_entry_safe; 
iterator name list_for_each, list_for_each_safe; 
@@   

(   
- list_for_each(pos, head) 
+ list_for_each_entry(var, head, mem) 
  { 
   ... when != var 
-  var = \(list_entry \| container_of\)(pos, t, mem); 
   ... when any 
  } 
| 
- list_for_each_safe(pos, n, head) 
+ list_for_each_entry_safe(var, n, head, mem) 
  { 
   ... when != var 
- var = \(list_entry \| container_of\)(pos, t, mem); 
   ... when any 
  } 
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_recv.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_recv.c b/drivers/staging/rtl8723au/core/rtw_recv.c
index a66d631..3ad81d4 100644
--- a/drivers/staging/rtl8723au/core/rtw_recv.c
+++ b/drivers/staging/rtl8723au/core/rtw_recv.c
@@ -1795,8 +1795,7 @@ static int enqueue_reorder_recvframe23a(struct recv_reorder_ctrl *preorder_ctrl,
 	ppending_recvframe_queue = &preorder_ctrl->pending_recvframe_queue;
 	phead = get_list_head(ppending_recvframe_queue);
 
-	list_for_each_safe(plist, ptmp, phead) {
-		hdr = container_of(plist, struct recv_frame, list);
+	list_for_each_entry_safe(hdr, ptmp, phead, list) {
 		pnextattrib = &hdr->attrib;
 
 		if (SN_LESS(pnextattrib->seq_num, pattrib->seq_num)) {
-- 
2.5.0


