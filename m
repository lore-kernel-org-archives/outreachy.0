X-GM-THRID: 6256340731045085184
X-Received: by 10.182.120.129 with SMTP id lc1mr2777054obb.43.1456667839193;
        Sun, 28 Feb 2016 05:57:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.32.104 with SMTP id h8ls298509igi.28.canary; Sun, 28 Feb
 2016 05:57:18 -0800 (PST)
X-Received: by 10.107.8.216 with SMTP id h85mr15103545ioi.0.1456667838852;
        Sun, 28 Feb 2016 05:57:18 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id y20si976451pfa.2.2016.02.28.05.57.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:57:18 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id t66so10892427pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:57:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RzeNl5w1HcSVoKmyhzLZ9UzrnGGYDMTMPbeHpxWJAbo=;
        b=PNLkcVWeJU+wXG6nI0rcOQkPLzeZQnxQYmOVxFW0rhpudNq4iE1+xd46S1Ff1G9XXf
         /EYlBOdUSZoOcKITjqMswv+7NFPJ2iSKdLQh58ltgx+7XFQ98pkRbo6tkBTJWA7GVLnL
         oG/bC+IAm0IdToKKv1Tt74QG0NlDP4LEsp9aN8DMt4eFgd2W+7dGIT3pfHd6REoxNmjx
         WhUr3JNMbth/Ed8rBuiV63QvBYKUCGpLisPdzoF4YghdpUGqT5OlfOfoX5uUabYH6ZIf
         tuCaFj5ujhqwfIny4w9Rr2NKHXlYcKk4xBbxDHNb/lIeo6cZOSxRdO68d9suUBO8sr3d
         E9QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RzeNl5w1HcSVoKmyhzLZ9UzrnGGYDMTMPbeHpxWJAbo=;
        b=i+uk81zS5IO7qWpmRoygKkAQPJE5tCPZzJdyhsMMfBN0n0TF/KwnkaG+QGpT4hxPzc
         FGkzCFJlg0eFPyvoWKXT9wwoydp8Hrv4H1pbhfFPZpD9UYTtsNpufFncFEH3aOfGX5cv
         mciZUohj4LQtggF1U067mbXybC9agsBCJDTnaQSBylU8UgFMUtVJH1NLudUjcJIhuHpT
         ByCGw9zbBS3oA+x11PEvJY/dgdomeGcXRqszJz9tMvqIKVP1MJYqiZopNx4Tt3wSmg5L
         AY3x95PzWaIbzER7fLJI+/4p3x5z7vqFVgoEWldUcPdXgDRoCHMerik3uaocSfs0p5s8
         3wmg==
X-Gm-Message-State: AD7BkJKKqvhUg/9QOT5ErbdLvEBX2Fm+/laAOU2LQkF5ER5bJanzGqj16B8DzAyJyklO1A==
X-Received: by 10.98.80.80 with SMTP id e77mr15588529pfb.126.1456667838672;
        Sun, 28 Feb 2016 05:57:18 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 144sm31557748pfa.83.2016.02.28.05.57.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 05:57:18 -0800 (PST)
Date: Sun, 28 Feb 2016 19:24:31 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: obdclass: Use list_for_each_entry_safe
Message-ID: <20160228135431.GA18987@Karyakshetra>
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
 drivers/staging/lustre/lustre/obdclass/lustre_peer.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lustre_peer.c b/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
index b10ea31..5f81246 100644
--- a/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
+++ b/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
@@ -150,6 +150,7 @@ int class_del_uuid(const char *uuid)
 {
 	LIST_HEAD(deathrow);
 	struct uuid_nid_data *data;
+	struct uuid_nid_data *temp;

 	spin_lock(&g_uuid_lock);
 	if (uuid) {
@@ -171,9 +172,7 @@ int class_del_uuid(const char *uuid)
 		return -EINVAL;
 	}

-	while (!list_empty(&deathrow)) {
-		data = list_entry(deathrow.next, struct uuid_nid_data,
-				      un_list);
+	list_for_each_entry_safe(data, temp, &deathrow, un_list) {
 		list_del(&data->un_list);

 		CDEBUG(D_INFO, "del uuid %s %s/%d\n",
--
2.1.4


