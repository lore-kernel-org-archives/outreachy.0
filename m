X-GM-THRID: 6466416490649223168
X-Received: by 10.36.61.15 with SMTP id n15mr4439278itn.31.1505579975485;
        Sat, 16 Sep 2017 09:39:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.71 with SMTP id c68ls8771119ioe.22.gmail; Sat, 16 Sep
 2017 09:39:34 -0700 (PDT)
X-Received: by 10.31.142.83 with SMTP id q80mr10185819vkd.1.1505579974933;
        Sat, 16 Sep 2017 09:39:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505579974; cv=none;
        d=google.com; s=arc-20160816;
        b=JDtKPwQFz6IEA9ckwa/yThzdli6FrfIhwxFaaz6nigdV90VoXP/23NsoutJ/EJpzx2
         SkXOIC3c0RSL27fETkHHvrnDd9Rc6oSvad31pFsqJKQ06RJcyFQJM7S4/ntXKqhEBYQQ
         2cHDXTzHIKKdBjzHw8vDG4NTxG2dmsJj5XGM6Tv2o6HjpFXyTFOhRNvlSuGGbBab3d5v
         5vGFA1onYc2Obj7jD9Np7esEeHyd33C8Mc/BLpdz+/EThf4NenQPbx7W1r4FlZWHyAbq
         JAqTd7+D1DtMJBw8ivttIEhhH4yWpkyNtkaFa/KlyY1I85zMnHjgJ6eEf+rDyLY+oGMP
         nGCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=xw/WsSuIYmvwv6LQ3dp/U61iRwIiZppuhXyueH+Ng1k=;
        b=piVXMe7gEx9u/MRx1gDy/x+cDCyE7EFODp6d42N4OKjtkdGGGRyIPsuyJhNWSvx86t
         NoBRW5FDQI5AQcU8/351M1t/N03E1Dk4DBSH+G2+2smG+iZjQVxUdigs6vHkY30uc+9j
         8Hooj3CyEDNjp4RQvr6FUUz3F1j+H+OufyvU6BTBQBs5c4HnUlMIRkLwPwbPxTxnJqws
         sVf/N5CKnW7W39s65HduBJXCSy9Vjjty4zzDWYqFZYqfR4y7YqxBSuhVxjdSncDy2Pcg
         vxnv/6GIIsvHvh6Ty6Nx86GJs9+/2ggd5hOYGQmjQO/izDc0FUxevOyaQjTZ0Ml2STyA
         b06Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R6/t1wPQ;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r78si371450pfb.3.2017.09.16.09.39.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 09:39:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R6/t1wPQ;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g65so2675849pfe.1
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 09:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=xw/WsSuIYmvwv6LQ3dp/U61iRwIiZppuhXyueH+Ng1k=;
        b=R6/t1wPQdErBeSQCp16v7cJsO0KLq2kWikxeCI8IYuS7+TTaOuj1+ZxZoDlQE5nH6M
         PBXzwCCcyYVtyW6O4bKAqwI5JBjG+lh1bZxGn8eGlKlY07Bgv5WZViV4NZ/qb8YHui9i
         wJiUutsvvWtJZTuCNlhnBN04PK1V5mQGrUlXqC7xeIDtwuAfVZuZP1ccHyLbzrjtGYA3
         vmtPlk3/au+IULBFiVdCmVJ4XvwDA3RuvwZECoOZSQdyRIZeRVmRIHrIoPSDwQaIZqB4
         BZzFFLrex20b5ol+hWvglp2YNQUgfr7uuN9bY9eq8UNv8eBkTQUzRVbwoy3ZGqhIpLKY
         qGTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=xw/WsSuIYmvwv6LQ3dp/U61iRwIiZppuhXyueH+Ng1k=;
        b=AcZJDIxJvjs+sC6FzsGPcEz05Z75nXgCpkknFiDE+6BZFWShbD0ukECp2Ki0pOnvwt
         oM8H2kTXDZIzD0Oum+mVpxrFskUnfXitqXVsOswppvMtd30hW4hfON6jUmUnjwz8s9pZ
         S64FCT/ToMIHcvuci+wyAs82ilwb4i1eOhlloiFoXvKEOqFtClrbszH71NZDYLWLMMj2
         +ovE5sCx2jiNaZDD7HdVuxviH5l1CjOC7MGgRt0jZdaEBiPk52ZOSmKViFipyCPtmqBL
         3MNNww8BwUm+J96eMvhkueCZxS0A7hFG/txHFVKYncp9SGWpfkbK3pK/r/iFc/jFfORL
         oDXw==
X-Gm-Message-State: AHPjjUgj98hEi+aXZMFXlnYk5VPh+yW0Nc7TyOkmzxgEbjKNNgH5ABzR
	fozdQ8qUMbkweQ==
X-Google-Smtp-Source: AOwi7QCgM2VoW0SFOkeSCG1DFIB08XURkZS26c+UbaMQ0Ui5lXmEoX7FyOR1/NEX0Y+q4ZQELiqmFQ==
X-Received: by 10.99.97.208 with SMTP id v199mr10220465pgb.92.1505579974694;
        Sat, 16 Sep 2017 09:39:34 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.15.200])
        by smtp.gmail.com with ESMTPSA id n83sm7450565pfi.163.2017.09.16.09.39.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 09:39:34 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: lidza.louina@gmail.com
Cc: markh@compro.net,
	gregkh@linuxfoundation.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2 2/2] Staging: dgnc: Remove unused fields in struct channel_t
Date: Sat, 16 Sep 2017 22:09:29 +0530
Message-Id: <a57f835fc443d51ae9eadd1b995435c215f14974.1505579409.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505579408.git.srishtishar@gmail.com>
References: <cover.1505579408.git.srishtishar@gmail.com>

Eliminate the fields that are not used and the comments
associated with them.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v2:
 - Use the word field instead of variable.

 drivers/staging/dgnc/dgnc_driver.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 5d2566e..082d659 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -312,8 +312,6 @@ struct un_t {
  * @ch_err_overrun: Count of overruns on channel.
  * @ch_xon_sends: Count of xons transmitted.
  * @ch_xoff_sends: Count of xoffs transmitted.
- * @proc_entry_pointer: Proc/<board>/<channel> entry.
- * @dgnc_channel_table: Proc/<board>/<channel> entry.
  */
 struct channel_t {
 	struct dgnc_board *ch_bd;
@@ -382,10 +380,6 @@ struct channel_t {
 
 	ulong		ch_xon_sends;
 	ulong		ch_xoff_sends;
-
-	struct proc_dir_entry *proc_entry_pointer;
-	struct dgnc_proc_entry *dgnc_channel_table;
-
 };
 
 extern uint		dgnc_major;		/* Our driver/mgmt major */
-- 
2.7.4


