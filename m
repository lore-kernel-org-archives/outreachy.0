X-GM-THRID: 6259692740218454016
X-Received: by 10.140.88.139 with SMTP id t11mr16585233qgd.21.1457448289540;
        Tue, 08 Mar 2016 06:44:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.230 with SMTP id j93ls419006qgd.64.gmail; Tue, 08 Mar
 2016 06:44:48 -0800 (PST)
X-Received: by 10.129.154.16 with SMTP id r16mr2297360ywg.39.1457448288913;
        Tue, 08 Mar 2016 06:44:48 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y20si526639pfa.2.2016.03.08.06.44.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 06:44:48 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 184so1378433pff.1
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 06:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wNjgb06FN8E4bPTZk3eADNgIyGV1XpUeUPS+IRgaEWw=;
        b=hA8P8OaeLyI9Gu2KGMDOxTZcUvGj2500RR4olI43TQ1nRkIjHC8n987Eo8/iDyJd7C
         M1W5DXai9oEVdzga94+VveD6ApcCyhk2LibF9/VmQhcRHTEiKyE3cFo0nN863CzErJOv
         HizEOCzo9G4rsrRkXuU6cXFLIyUhtwryOeNetjjzlef0T1HpEc5I0Tzs1kyPIgoy5a7R
         MXdW7Emrb/bpPrxhBNZa/p5V/bCka/3gTjfX20oG/MXHUN9Ijs2lh+b7BJgh8Dp87++i
         7PIVK7767BrN7sdexXb/q8x+oydsC3d15NSXk3UOvsAu60K76B4tQC1cOfrGbgFmTtb4
         YjhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wNjgb06FN8E4bPTZk3eADNgIyGV1XpUeUPS+IRgaEWw=;
        b=HlITvib9ROsUPfMsfAHahbDfS1FgZKn/2eguVL4+mnpGDM9A4ZpsSikB+eEKXXviao
         uY/6KWbY28MIJJg9cUd6bFjwb+cVc7g2Y4NHrEsXYSeITn7ExPb4zB29MekOi/atE6fn
         NsuCLojUwoLoHAElWFwPgwKudV3p48vptwQmyOyOXiAMNEEbDDlESxwmobzRtDmFqNjv
         wMmhBtWTe4CbaVpr67rNSbSksquk/I5A6bnqEaJ0zR/d1oHh21HAHZm7Hj1IrI6HNoVU
         4BBs0J8FxBLyNQ2ZtLVrTHHjUG7/MFCq1GLECuthvtb3GeU5J4rZevHfAIPkLeTdr2MC
         TFOQ==
X-Gm-Message-State: AD7BkJKaWuXQcGLE0eLT1P/8LEk2dV9cT+v2D2AbrnNug0pKNpHSBZRPI0q/4Vc1l6pcwQ==
X-Received: by 10.98.18.195 with SMTP id 64mr32144121pfs.131.1457448288735;
        Tue, 08 Mar 2016 06:44:48 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id qy7sm5620090pab.34.2016.03.08.06.44.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 06:44:48 -0800 (PST)
Date: Tue, 8 Mar 2016 20:02:34 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: lnet: config: Use
 list_for_each_entry_safe
Message-ID: <20160308143234.GA31172@Karyakshetra>
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
	-Modified subject to avoid conflicts with other patches

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


