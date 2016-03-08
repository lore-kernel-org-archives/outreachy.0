X-GM-THRID: 6259688133176066048
X-Received: by 10.50.20.135 with SMTP id n7mr14343387ige.5.1457447217084;
        Tue, 08 Mar 2016 06:26:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.58.20 with SMTP id m20ls160741obq.20.gmail; Tue, 08 Mar
 2016 06:26:56 -0800 (PST)
X-Received: by 10.182.106.11 with SMTP id gq11mr21086204obb.45.1457447216660;
        Tue, 08 Mar 2016 06:26:56 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id r75si509984pfr.0.2016.03.08.06.26.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 06:26:56 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id 129so14052199pfw.1
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 06:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=oUUk0wdUd/wsq5Qlm7YIO6AU0j5GGSiXc39cOWTDhog=;
        b=Qa9cRZWJ5P2BgRa1QP3B//N4aslCqt8cQJSIETG3HwNsyv4BxxN5fLK1ko0EcGibq1
         VQpzhhWjjjMzUJHHjOYKPbTPDqJMAkJu7wjPdvi8F/UlhCxIQGmowD+S07LXuLqSH9yf
         s2J0WdeL+yWtnFcvD30HM4CXIMNJukS05BvpWfkfaYb00WFfZnBN4eU+8qsiPz0+XIg6
         RFufu7H/aEo8cRqTOA200TodxDfhIKhD0yzBO7WgHQojbVFwRpmCzzjVUL6rM1i64Tc+
         Y/zDyoCHlDiEbOa/FipKcP3mGDQddyDmJDjM2+PHSpObeQ5FI9VOYXshGVa0YV6necLX
         kG8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=oUUk0wdUd/wsq5Qlm7YIO6AU0j5GGSiXc39cOWTDhog=;
        b=NEq5NUhauJLt5gqgKBifInm1Upli9nR54QABSJI4wDf4uUTzADwWTxlwjG9DnldYsT
         7RH3CRr9MhMcBw3ekuFNKy2VG9LOWm14Pe7z2XCTf3NkA14p7Rbi3N1KrTzySAD+NCGb
         bzPV6gcnKCD8P2PidebjKZiiJ1DIX8wYzpo6UescUsfYD5EbEWgeg688LGJbyuQbEu9q
         ETXNgmxWL2YqG+TkgvpgKjC8DPWM23+dOO2Agj3/dCyWpcVrrEeWrVgIlVA5Y874rgTG
         1B/4U0B0q0ZCz9/2BAXz2NZyPmk8i75WHVfcy6Brzri8/ciDQ4FfMfO2boOYlpMYpo8E
         neIQ==
X-Gm-Message-State: AD7BkJLhwmTrgIRmprw78YaNsbmgJi2OfsJ/l6cwLtei/dfH2HR0kzM6jGedOTMFj9DW1w==
X-Received: by 10.98.17.74 with SMTP id z71mr16157626pfi.30.1457447216491;
        Tue, 08 Mar 2016 06:26:56 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n19sm5498646pfi.53.2016.03.08.06.26.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 06:26:56 -0800 (PST)
Date: Tue, 8 Mar 2016 19:44:43 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lnet: conrpc: Use list_for_each_entry_safe
Message-ID: <20160308141443.GA30399@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

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

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/conrpc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/conrpc.c b/drivers/staging/lustre/lnet/selftest/conrpc.c
index 8a67f89..9a88203 100644
--- a/drivers/staging/lustre/lnet/selftest/conrpc.c
+++ b/drivers/staging/lustre/lnet/selftest/conrpc.c
@@ -1336,6 +1336,7 @@ lstcon_rpc_cleanup_wait(void)
 {
 	lstcon_rpc_trans_t *trans;
 	lstcon_rpc_t *crpc;
+	lstcon_rpc_t *temp;
 	struct list_head *pacer;
 	struct list_head zlist;

@@ -1375,9 +1376,7 @@ lstcon_rpc_cleanup_wait(void)

 	spin_unlock(&console_session.ses_rpc_lock);

-	while (!list_empty(&zlist)) {
-		crpc = list_entry(zlist.next, lstcon_rpc_t, crp_link);
-
+	list_for_each_entry_safe(crpc, temp, &zlist, crp_link) {
 		list_del(&crpc->crp_link);
 		LIBCFS_FREE(crpc, sizeof(lstcon_rpc_t));
 	}
--
2.1.4


