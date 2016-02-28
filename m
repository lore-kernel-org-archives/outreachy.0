X-GM-THRID: 6256042901730492416
X-Received: by 10.129.51.2 with SMTP id z2mr8899558ywz.49.1456666432806;
        Sun, 28 Feb 2016 05:33:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.139 with SMTP id m11ls2216785qge.62.gmail; Sun, 28 Feb
 2016 05:33:52 -0800 (PST)
X-Received: by 10.31.174.2 with SMTP id x2mr8928344vke.13.1456666432410;
        Sun, 28 Feb 2016 05:33:52 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id 12si3076928pfb.1.2016.02.28.05.33.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:33:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id bj10so6993031pad.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=23SZ8moPVuKYfIZfdarpL9g1CzW0nFJlf8RawHMfGHs=;
        b=MG8DNazKOHLVoaS9NDSMlg0Dr2bFGZaDSyg08Dlobq2Oyx93xfApf3az9NfYljvZsT
         fUVHE7kruATtRDXu08IKJ6y1o18exXcskUGtMfO/i+hMdNLXwYEjnrRp5fVumKC/MaqC
         +KOySBIf0hTgRG6wZXfGguIdyNGVe/yZ+uAdF2vs2pXxNFpIhv1etV68wEUwOCIOgYPd
         ClzWKlMerq6G9u+IpcKBpObHH1pkguCgPDKslTIF4nMNTFXAIU0+nKzcqYZaZQ49PsNq
         Ofth5HOENFv4q/wEKxHfWoSvPaBNSubu0k5SGrVpwy0FU4SpVRqAdCthVjpjhTWNfuXx
         yVdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=23SZ8moPVuKYfIZfdarpL9g1CzW0nFJlf8RawHMfGHs=;
        b=PkvO7HSbpA0Xq9P2AD8IRgMulu0zJStNO9iHvdxHkuaYf9Mpf5UYAJFBI0Rq4lBlqo
         dzPmfqeOoOhOI4oGvhuIP1qe40H4MZ1/aVWahBLroq42D4j8oc3AHxUaP4exJc3QpoYS
         P9xZhKGBQqH0eQ1kEsE1lT/8EVbFJXK7E9Fm8hcoOnW9lB8L8cqAH0WwH6yj4xQaXgJC
         6NXgL8lyLcjYe4JE3sJ1civ1AKFeNiUrVhUnpBhNkIczK9/PgsxwZL41h9VWOaKAdV4c
         FcQonX79zdxaFveHHYvSYKCIl8S+qkoVlJUxkipz+LkKut53ZP23Mna+QfXT2yOf+vPx
         bRBw==
X-Gm-Message-State: AD7BkJJapU2QDEoO10DeYV+qrJTKMnrohodrM2tZOGE6hvJoHAG+Z+OsmippaTjdGizpig==
X-Received: by 10.66.190.131 with SMTP id gq3mr15290480pac.42.1456666432203;
        Sun, 28 Feb 2016 05:33:52 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 17sm31459370pfp.96.2016.02.28.05.33.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 05:33:51 -0800 (PST)
Date: Sun, 28 Feb 2016 19:01:03 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lnet: Use list_for_each_entry_safe
Message-ID: <20160228133103.GA18517@Karyakshetra>
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
 drivers/staging/lustre/lnet/lnet/config.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/config.c b/drivers/staging/lustre/lnet/lnet/config.c
index 8c80625..a9445c8 100644
--- a/drivers/staging/lustre/lnet/lnet/config.c
+++ b/drivers/staging/lustre/lnet/lnet/config.c
@@ -1016,6 +1016,7 @@ lnet_match_networks(char **networksp, char *ip2nets, __u32 *ipaddrs, int nip)
 	struct list_head *t;
 	struct list_head *t2;
 	struct lnet_text_buf *tb;
+	struct lnet_text_buf *temp;
 	struct lnet_text_buf *tb2;
 	__u32 net1;
 	__u32 net2;
@@ -1038,9 +1039,7 @@ lnet_match_networks(char **networksp, char *ip2nets, __u32 *ipaddrs, int nip)
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


