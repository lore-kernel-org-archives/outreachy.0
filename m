X-GM-THRID: 6259696250078101504
X-Received: by 10.182.24.41 with SMTP id r9mr8456753obf.25.1457726748777;
        Fri, 11 Mar 2016 12:05:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.113 with SMTP id m104ls2870000qgd.24.gmail; Fri, 11 Mar
 2016 12:05:47 -0800 (PST)
X-Received: by 10.13.203.135 with SMTP id n129mr8575104ywd.46.1457726747910;
        Fri, 11 Mar 2016 12:05:47 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id y20si1497903pfa.2.2016.03.11.12.05.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 12:05:47 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id q6so9274131pav.0
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 12:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=toiOKLEKE6DWhjumtGp/06QKuThndH/Bux2GmmTZJM4=;
        b=MHlYVEbvnVKO2yaRfT/1X3E44r8OTZdtMHpJTafUtwXtQZeJ1eLWWMHgKDBW/hAHJT
         Mk9yPWtJaA21MwxV/ikYoDajkdGZOY/6hrGjOyaySMiEl6DfUd+rXLKXrhac4J1SCWEe
         Sn9h0DiV5OPSrOQ/kR0XtV3jlyBGoSa4ADMfowzp4mzhT/KZQD5th9uCqEHwpmhAUOFv
         wf9mLcPJzBPdlIywyJ+oVa/85N8RV5rJBuNRgyBbWjOoBS8punJPSJehziDT26UDqe+I
         rnsMdCa58z8DVDxwSKTvlZdYXnJwVBl3lQmkDT11qNNPG49gN1v6YMkMOHeMwiuB6bJ4
         BE6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=toiOKLEKE6DWhjumtGp/06QKuThndH/Bux2GmmTZJM4=;
        b=NkL5Eyikprw+rQtlZjojtUpdtc/jp5XmbZplStaiIbXdGX0t9g8+jsngzQWKTCMDGK
         JyTaeJfG5L66p/a3Emj7At2pHnPMihL7S7TxDjVIQgZsxjXKGGFZK7NbtdEGmsdUJak3
         j69LgQIK0AoX5e9KEc4ttsqardIJXUJKFZ4zhDfEfBlkcnRftX13n84N6KvaWsiHng5k
         p3uo8Huexz7BilSAVSDrDsvJ0I67MNyDg/T4TGtvXCZqhnmNJahDNwpXi4qXVarVJ/xF
         YOwY/BV7aSPSah/Eze56pAw6Fm+HQ3Pxb9jtccgAAYBNxPNq1Am3qqUAIsLNldli4a8G
         OZEQ==
X-Gm-Message-State: AD7BkJJ+1rVYe0ch2chY2Q7BGnglIeBp69zpmNpbrRo4JZa8/kaSD8iqwVh69o+Pqo6awA==
X-Received: by 10.66.221.167 with SMTP id qf7mr18605719pac.94.1457726747712;
        Fri, 11 Mar 2016 12:05:47 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id yl1sm14834756pac.35.2016.03.11.12.05.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 12:05:47 -0800 (PST)
Date: Sat, 12 Mar 2016 01:35:29 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 07/13] staging: lustre: lnet: api-ni: Use
 list_for_each_entry_safe
Message-ID: <20160311200529.GA2991@Karyakshetra>
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
 Changes in v3:
         -Combined all "Use list_for_each_entry" lustre patches into a
	  patch-set

 drivers/staging/lustre/lnet/lnet/api-ni.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c b/drivers/staging/lustre/lnet/lnet/api-ni.c
index 6c7579e..8764755 100644
--- a/drivers/staging/lustre/lnet/lnet/api-ni.c
+++ b/drivers/staging/lustre/lnet/lnet/api-ni.c
@@ -1086,18 +1086,17 @@ lnet_clear_zombies_nis_locked(void)
 	int i;
 	int islo;
 	lnet_ni_t *ni;
+	lnet_ni_t *temp;

 	/*
 	 * Now wait for the NI's I just nuked to show up on ln_zombie_nis
 	 * and shut them down in guaranteed thread context
 	 */
 	i = 2;
-	while (!list_empty(&the_lnet.ln_nis_zombie)) {
+	list_for_each_entry_safe(ni, temp, &the_lnet.ln_nis_zombie, ni_list) {
 		int *ref;
 		int j;

-		ni = list_entry(the_lnet.ln_nis_zombie.next,
-				lnet_ni_t, ni_list);
 		list_del_init(&ni->ni_list);
 		cfs_percpt_for_each(ref, j, ni->ni_refs) {
 			if (!*ref)
@@ -1147,6 +1146,7 @@ static void
 lnet_shutdown_lndnis(void)
 {
 	lnet_ni_t *ni;
+	lnet_ni_t *temp;
 	int i;

 	/* NB called holding the global mutex */
@@ -1160,9 +1160,7 @@ lnet_shutdown_lndnis(void)
 	the_lnet.ln_shutdown = 1;	/* flag shutdown */

 	/* Unlink NIs from the global table */
-	while (!list_empty(&the_lnet.ln_nis)) {
-		ni = list_entry(the_lnet.ln_nis.next,
-				lnet_ni_t, ni_list);
+	list_for_each_entry_safe(ni, temp, &the_lnet.ln_nis, ni_list) {
 		lnet_ni_unlink_locked(ni);
 	}

--
2.1.4


