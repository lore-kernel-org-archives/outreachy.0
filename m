X-GM-THRID: 6256386953452716032
X-Received: by 10.66.249.41 with SMTP id yr9mr9816172pac.37.1456678601560;
        Sun, 28 Feb 2016 08:56:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.112 with SMTP id j103ls2222259qge.57.gmail; Sun, 28 Feb
 2016 08:56:41 -0800 (PST)
X-Received: by 10.13.234.77 with SMTP id t74mr9626845ywe.12.1456678600993;
        Sun, 28 Feb 2016 08:56:40 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x22d.google.com (mail-io0-x22d.google.com. [2607:f8b0:4001:c06::22d])
        by gmr-mx.google.com with ESMTPS id i9si819881igg.1.2016.02.28.08.56.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 08:56:40 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22d as permitted sender) client-ip=2607:f8b0:4001:c06::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22d as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22d.google.com with SMTP id 9so161403549iom.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 08:56:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=At5FPwwjW8mH3KOwq2beCQuvUAjrNWFHqh2mfvMAbxc=;
        b=OMWRJ4AaDg4rZ0LLf14IB4H2U93E38b4P77zo+LqA6Sli/W1LEzqL1SvG2xtJ2U0Ny
         Q7O++dtuKGd89qABpq0H9nRw68zM9v8I/3Govr2XEDaG8LjfZ0hMc1eNgp8cTJKwjGYU
         5D024oYPYR2Vs2wDNGp1I3PtdmNCmZKKy5qq/hbFFcowAJRAlyXppMoWOwmGFN+KrfpV
         Q9JIZVpOCvH4JZbjiRf+ut+TQALi22NAcaPR7EiKCxcfJV2uS6q3mwuxDFiUeYFxL3sm
         5RKafzASm4l4CpfeeYYWVw1/zIfg2fWu791flfoYExJjLh4M7IgS4/SUVL+Wsu5ZH4jS
         v+Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=At5FPwwjW8mH3KOwq2beCQuvUAjrNWFHqh2mfvMAbxc=;
        b=HTL7X84A4IofrDbnvDzmj4ap5Z/8R0/rbBSChQEETWepYJTxCjk1iw8liy1kjvD6WW
         8dckTVVgjUYHqK89FXvLNcCZ73Tnxje2eiFdaiKwyIj1gQVQlRpZ3O/bY5hn6jONpVmz
         KfrJ3Q3ZfZq5ABr4k+IyWhUvjVQZ7GaiR8vC57bk5dezXbOt4qGrTv05DilJJhIzKqN5
         b8qV8jbKgsp2uazcowP/2Rhumu9vNJK6Y9RQmTsA8D2L8jc/h0SxMMhYcL/LdFgVlYI/
         cbYvdNcVEeeVYvR/WrRE5T3cdfeXKSg4NHbS+gkLR7klRr0LLjra7wXmSJELyWp/Zfmk
         71Ug==
X-Gm-Message-State: AG10YOS6E6i4lwKV+oe0hocZ9P/OxwdZ7XFFWQ29BtDelswGUJfDmzNxxmZYqM6GGmgawA==
X-Received: by 10.107.16.8 with SMTP id y8mr16491393ioi.21.1456678600788;
        Sun, 28 Feb 2016 08:56:40 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id p102sm1004597ioi.31.2016.02.28.08.56.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 08:56:40 -0800 (PST)
Date: Sun, 28 Feb 2016 16:55:50 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: ldlm: ldlm_extent.c: Use
 list_for_each_entry()
Message-ID: <20160228215550.GA8347@janani-Inspiron-3521>
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
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
index 222cb62..36b13db 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
@@ -67,7 +67,6 @@
 __u64 ldlm_extent_shift_kms(struct ldlm_lock *lock, __u64 old_kms)
 {
 	struct ldlm_resource *res = lock->l_resource;
-	struct list_head *tmp;
 	struct ldlm_lock *lck;
 	__u64 kms = 0;
 
@@ -77,9 +76,7 @@ __u64 ldlm_extent_shift_kms(struct ldlm_lock *lock, __u64 old_kms)
 	 */
 	lock->l_flags |= LDLM_FL_KMS_IGNORE;
 
-	list_for_each(tmp, &res->lr_granted) {
-		lck = list_entry(tmp, struct ldlm_lock, l_res_link);
-
+	list_for_each_entry(lck, &res->lr_granted, l_res_link) {
 		if (lck->l_flags & LDLM_FL_KMS_IGNORE)
 			continue;
 
-- 
2.5.0


