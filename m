X-GM-THRID: 6256389646538768384
X-Received: by 10.182.148.71 with SMTP id tq7mr9226195obb.21.1456679228256;
        Sun, 28 Feb 2016 09:07:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.234 with SMTP id d103ls1180131ioj.74.gmail; Sun, 28
 Feb 2016 09:07:07 -0800 (PST)
X-Received: by 10.50.112.232 with SMTP id it8mr6815199igb.9.1456679227917;
        Sun, 28 Feb 2016 09:07:07 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x229.google.com (mail-ig0-x229.google.com. [2607:f8b0:4001:c05::229])
        by gmr-mx.google.com with ESMTPS id xh11si755055igb.0.2016.02.28.09.07.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:07:07 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::229 as permitted sender) client-ip=2607:f8b0:4001:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::229 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x229.google.com with SMTP id g6so69194169igt.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 09:07:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Z8VnQZz2KxBmaS+0ywsw8vRvIEF+6wbASScq7x8Jjuc=;
        b=d2tpYSHqLaXCpv7bwhzp3jGC3IjEDtsYbc1aIXKkrfAPVntrEX/9ZhhDvTKIJxi+5R
         1wjnrf20854tcmvaqaBOHzDnJdjIYvjKcxfTxFyq9U0jzanCMxabiYXXRnmOegxaj4Nf
         bjjNC8Sh/GV5gX4MO6167K8GT+iX61LZqAPn+VsNhSzUUg7HosJ8Bn2i7/TB5lv/IuH5
         Pe61wvoNr5CQ57hR3uY3eh6Wc4SveenWENG8GhLGsu3AFCMPkDrgIY0GLh8d89TFvZl/
         05E6NdGHPMM8IR/kkOgMBIsCmmszxNmnqQxC4bTOnTz3af9xR88vR8CQ2l+uwl6VvlpL
         8GNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Z8VnQZz2KxBmaS+0ywsw8vRvIEF+6wbASScq7x8Jjuc=;
        b=Kdk6/tTKmmcWbp8JPjWaamZajLl+/xYsP3j61KoslJLoQgFcLvQJNSe31sxjI85eRm
         Sha+D3Kkoo4/moODKDSZfM9DCFceBrs6joyT6SYpBh2n6L/SRtBT5GtgpSSRie8YZKox
         6OUq5Z/shdIfa3nCONspa14Ipes5B8QROdy042SDY4sbX4VFGhk+Pa+k4ctbMOAcqTaB
         ud/LQN1JHndoetEqFGBwgJY267YKQv4MwLDtuBx5t9TPHDz9KIk338vk14dXul5/bBpZ
         jc7/T/F4N2GeKHP+n3daYgF9abtliiuH8G+WAfvlPxf0LEPxJIFfUeXONAHLIG9JVFSO
         lmww==
X-Gm-Message-State: AD7BkJJjKxzMf2g25K1cSGy/5DFFpLX928Hh2xgp+QwKm5La8CyFJ319AnlC3jREVZEUhA==
X-Received: by 10.50.66.238 with SMTP id i14mr6136103igt.52.1456679227767;
        Sun, 28 Feb 2016 09:07:07 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id qs10sm5335166igb.7.2016.02.28.09.07.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:07:07 -0800 (PST)
Date: Sun, 28 Feb 2016 17:06:12 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: obdecho: Use list_for_each_entry()
Message-ID: <20160228220612.GA8491@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry() rather than a combination of list_for_each()
and list_entry(). Also remove variable el which becomes useless
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
 drivers/staging/lustre/lustre/obdecho/echo_client.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
index 3be28c5..2b13aa2 100644
--- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
+++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
@@ -1060,12 +1060,10 @@ static int cl_echo_cancel0(struct lu_env *env, struct echo_device *ed,
 {
 	struct echo_client_obd *ec = ed->ed_ec;
 	struct echo_lock       *ecl = NULL;
-	struct list_head	     *el;
 	int found = 0, still_used = 0;
 
 	spin_lock(&ec->ec_lock);
-	list_for_each(el, &ec->ec_locks) {
-		ecl = list_entry(el, struct echo_lock, el_chain);
+	list_for_each_entry(ecl, &ec->ec_locks, el_chain) {
 		CDEBUG(D_INFO, "ecl: %p, cookie: %#llx\n", ecl, ecl->el_cookie);
 		found = (ecl->el_cookie == cookie);
 		if (found) {
-- 
2.5.0


