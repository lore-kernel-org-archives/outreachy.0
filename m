X-GM-THRID: 6259692740218454016
X-Received: by 10.129.101.66 with SMTP id z63mr8400799ywb.14.1457726601991;
        Fri, 11 Mar 2016 12:03:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.145 with SMTP id f17ls2549752qgd.27.gmail; Fri, 11 Mar
 2016 12:03:21 -0800 (PST)
X-Received: by 10.140.88.139 with SMTP id t11mr8393453qgd.21.1457726601387;
        Fri, 11 Mar 2016 12:03:21 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h69si486936pfj.0.2016.03.11.12.03.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 12:03:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so9257222pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 12:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Boqz1I979QR2Xv+eK/io48Cd0rZdNrik5p4GHmgGZQI=;
        b=akGlwQsfkV2wDVVbt8omDZZ0UatzalilQD2bje5HjZI8s4VUxReSrSqlrsUUp1zVFI
         /IcjtycSBbVxeeuN6Jp2kxwjvxt7wG1l5+YWn+Su9DmvdD7arCuYThauLJOqoK6hPFkF
         IkvElkZ2brcDatXQXhIKMd9xNGMnPZL3IegrfuEX67Be1g4okajr+MB2k/aZAOs1zM1P
         HtRLzyC0Fm+sBXKMBfZ5R3Ih+JBiR+yfnvz+GKc4pq3/pcuNGmgzpgVPXLR+6dEJA1ma
         wIEIoPyviyB5NvHDGZPtBRb4FpdKvvvxdzv4V5XuObBvZMIgSc7uTPXWPUDo/HcOF+cb
         hFxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Boqz1I979QR2Xv+eK/io48Cd0rZdNrik5p4GHmgGZQI=;
        b=PBdT2ZiMv055JU4KbosBICD5LJ4eUfsoIMTUnZUpw4hjeZ3xZkgniJrO+jEv/oM9iL
         d6sneZXFh2sH/KHy7eQZfrp6R4N7gYCLB+27TcU04ShJKzFg7MXNpluPhgWa0af+kjXS
         tnJ6MwmviimRJipFVz6o4gpVx3GezmcrBR0rjte4EHQktN2F23bwIYG6ZEneMqk51ksi
         hlZusJzvMJH1bg5hztAzs5kBn9SzKNlL+IYPNs2Bl5E5jcduSWj4jG7RmpZxYyXE89RE
         WR0p6vqrM7ScOt08tpWPbo31UUOpLqnCQsnSlHe3cmENQD2VVQyEVK1JbqUE4YCAF5iw
         U2ng==
X-Gm-Message-State: AD7BkJIOGQsIjvuH9zBbXZRhTTt86SSbABT7ZUaZ0tRjWhFhZSb8S86cTOn3oJETLu2czA==
X-Received: by 10.66.235.9 with SMTP id ui9mr18566670pac.135.1457726601211;
        Fri, 11 Mar 2016 12:03:21 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id wq3sm14820622pac.44.2016.03.11.12.03.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 12:03:20 -0800 (PST)
Date: Sat, 12 Mar 2016 01:33:03 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 05/13] staging: lustre: lnet: config: Use
 list_for_each_entry_safe
Message-ID: <20160311200303.GA2958@Karyakshetra>
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

 drivers/staging/lustre/lnet/lnet/config.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/config.c b/drivers/staging/lustre/lnet/lnet/config.c
index e71eea71..449069c 100644
--- a/drivers/staging/lustre/lnet/lnet/config.c
+++ b/drivers/staging/lustre/lnet/lnet/config.c
@@ -1020,6 +1020,7 @@ lnet_match_networks(char **networksp, char *ip2nets, __u32 *ipaddrs, int nip)
 	struct list_head *t;
 	struct list_head *t2;
 	struct lnet_text_buf *tb;
+	struct lnet_text_buf *temp;
 	struct lnet_text_buf *tb2;
 	__u32 net1;
 	__u32 net2;
@@ -1042,9 +1043,7 @@ lnet_match_networks(char **networksp, char *ip2nets, __u32 *ipaddrs, int nip)
 	len = 0;
 	rc = 0;

-	while (!list_empty(&raw_entries)) {
-		tb = list_entry(raw_entries.next, struct lnet_text_buf,
-				ltb_list);
+	list_for_each_entry_safe(tb, temp, &raw_entries, ltb_list) {
 		strncpy(source, tb->ltb_text, sizeof(source));
 		source[sizeof(source) - 1] = '\0';

--
2.1.4


