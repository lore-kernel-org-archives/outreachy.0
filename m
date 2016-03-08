X-GM-THRID: 6259696250078101504
X-Received: by 10.140.98.179 with SMTP id o48mr9435824qge.15.1457449106037;
        Tue, 08 Mar 2016 06:58:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.153 with SMTP id 25ls255017iok.51.gmail; Tue, 08 Mar
 2016 06:58:25 -0800 (PST)
X-Received: by 10.107.135.101 with SMTP id j98mr1489622iod.2.1457449105607;
        Tue, 08 Mar 2016 06:58:25 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id y20si537595pfa.2.2016.03.08.06.58.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 06:58:25 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so1313746pad.2
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 06:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RD3GZ0yHytLD3axh04UL2/al4xlBCALJtE8lupCaM/Q=;
        b=AISI3TsNpDEqLC6LZ+F06Hhe+C1MiqnBgovy/eDwVKyWNq5sITBh4sdL/zJ9T85Ysl
         K511rZH2g/vZ783wUyt800Q6qeiOdGQW3mWNkXK7gT27lBKqB2jgO/rf0vBsmMeymZ+E
         8ScjZ5F9I0mKl0EXn5A1GY0Svnbxo40X/P/ZphaapYKGBYe7wmGBD2vmYvSbIR9qcmV+
         OcQAnddfrhg6qWsYI/387AQWDTsIBhMFI7wKuwBLGeY6Z4VdFlZV8+Bws4jNrIJ17zv9
         NMm5zQ86/eF+zetTD1pig2c0FcHnJwC93nd1GYsHY+Doqvgk9sy+3PPiXBydz+8QPFfS
         Sx+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RD3GZ0yHytLD3axh04UL2/al4xlBCALJtE8lupCaM/Q=;
        b=EOfupu5lXdCkt8AEQMdOGHDDpIRZyMMJf4sfnxqqSRIDBkWqu709ibqrxXo9ynubGD
         vMz2SlfL76untEJLhYMexMUTMLntaitgcoh0tRmQYcOntHrco2lBXyT3KOlvKIVGNbXS
         sXL18frxZpWBJz2VIosPx1DSzRxFAFHNeA5qaixKQOJpw+pCNwoijISGOQrAkH/bYzLa
         AGpvSkjFHS526kLtjC9caeNdpRepK5mmpYDNbvndrgavuakpS9G0TVkeZWC8wLD6Uz02
         /bxb235kq9KOaS04o/pQAwxfZBZQ5PdpXCWknIr1Q4YhPzIVWvYgbUweAOGDIyrti4QX
         wm7Q==
X-Gm-Message-State: AD7BkJIoRsq9hOmXOLLdDpi8/D+e32iEEWZfrpzoAwVfBByEv9jsVcLP+Wp1Z6ZaARF09w==
X-Received: by 10.66.193.131 with SMTP id ho3mr41970300pac.154.1457449105411;
        Tue, 08 Mar 2016 06:58:25 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y15sm5682720pfi.16.2016.03.08.06.58.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 06:58:24 -0800 (PST)
Date: Tue, 8 Mar 2016 20:16:12 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: lnet: api-ni: Use
 list_for_each_entry_safe
Message-ID: <20160308144612.GA31393@Karyakshetra>
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
 Changes in v2:
	-Changed Subject to avoid conflict with other patches

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


