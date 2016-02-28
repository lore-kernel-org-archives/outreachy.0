X-GM-THRID: 6256406465172471808
X-Received: by 10.182.227.137 with SMTP id sa9mr10276326obc.44.1456683144876;
        Sun, 28 Feb 2016 10:12:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.194 with SMTP id 60ls1745673qgf.81.gmail; Sun, 28 Feb
 2016 10:12:24 -0800 (PST)
X-Received: by 10.140.252.131 with SMTP id x125mr1819486qhc.12.1456683144381;
        Sun, 28 Feb 2016 10:12:24 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x243.google.com (mail-ig0-x243.google.com. [2607:f8b0:4001:c05::243])
        by gmr-mx.google.com with ESMTPS id iq8si717277igb.0.2016.02.28.10.12.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 10:12:24 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::243 as permitted sender) client-ip=2607:f8b0:4001:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::243 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x243.google.com with SMTP id hb3so7520086igb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 10:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZNQJa7ur74AHvQ4A7ZcdwB8M+a0WfvL+4noXStKKrvk=;
        b=nLTjEZKXiMXRuoy43wkC6lTGVDHpwxmBz39hGNoijPfDh/3K1jef52jav+59/ItJxa
         ajt6zLfDDpDIARj3LevwJ8pUoqSUP3WR+JO9wFJm+MOeaflRaIfMSDHVdlpFL/AG6nH9
         JkPFzJWSZHZ0n1JADtVdY3E9VWkM2OOrfitjfP8Wj6yGqlDPczsTeoTuql1UEh/wVN1F
         X7Rhl/QjE96oMV2xSDmprmm/GTWbg/3IUo0KDnzIIGXJIq0a+tUSlWlEoh65joZgni8g
         EMY7bqTepJO/HiVe7R5xJ869h3zigd7Imzltbt15Vw0hfV19E8aVupkSZ6T4/ozoPyuF
         Te4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZNQJa7ur74AHvQ4A7ZcdwB8M+a0WfvL+4noXStKKrvk=;
        b=Ta+4OJN40Xr/CpJgpyQ1snTQBejBi2oASjDWF0QZzw62F+oJwuUgFXE68DbXJyx8jv
         BRZs13MuYOMa1f062Lu1QvFm0NfHFCFEmK5KqI3Ormhu36Qycuv57Mh6BzXYu9vI8/Yw
         YyE76Enmcs/0ntIaNtnU3Ngj4dL4ZrGC3UVfC4t8z9unyC6wkDrS8wajJVzzDqVXwaFm
         rW7B9cbORC58kJM9bh2i5hMDD4U1Nbl8H3gH0+GfCHCdX1BVbyZXuSvKxe3+k3h/5Hyf
         FpX8Hs0rtNY3/a/U/SF8Sm613MG2UywbfSC+a0ESD2r7FaMnlpLORGbeP/nhcG28klQq
         pU5w==
X-Gm-Message-State: AD7BkJKmQmlFdgIjjGBY6WisIJmTa2DDMNo08n6cx7exIhpA3aIwD6czmYLcQM8XUgeHFA==
X-Received: by 10.50.43.134 with SMTP id w6mr6203116igl.22.1456683144200;
        Sun, 28 Feb 2016 10:12:24 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id f70sm9437952ioj.37.2016.02.28.10.12.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 10:12:23 -0800 (PST)
Date: Sun, 28 Feb 2016 18:11:23 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8723au: core: rtw_mlme.c: Prefer
 list_for_each_entry()
Message-ID: <20160228231123.GA10086@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry() rather than a combination of list_for_each()
and container_of(). Also remove variable plist as it becomes useless after
the transformation.
Semantic patch:

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
Changes since v2:
  *Removed variable plist
  *Changed semantic patch

 drivers/staging/rtl8723au/core/rtw_mlme.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_mlme.c b/drivers/staging/rtl8723au/core/rtw_mlme.c
index 3adda55..ae62f94e16 100644
--- a/drivers/staging/rtl8723au/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723au/core/rtw_mlme.c
@@ -426,7 +426,7 @@ Caller must hold pmlmepriv->lock first.
 static void rtw_update_scanned_network(struct rtw_adapter *adapter,
 				       struct wlan_bssid_ex *target)
 {
-	struct list_head *plist, *phead;
+	struct list_head *phead;
 	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 	struct wlan_network *pnetwork = NULL;
 	struct wlan_network *oldest = NULL;
@@ -436,9 +436,7 @@ static void rtw_update_scanned_network(struct rtw_adapter *adapter,
 
 	spin_lock_bh(&queue->lock);
 	phead = get_list_head(queue);
-	list_for_each(plist, phead) {
-		pnetwork = container_of(plist, struct wlan_network, list);
-
+	list_for_each_entry(pnetwork, phead, list) {
 		if (is_same_network23a(&pnetwork->network, target)) {
 			found = 1;
 			break;
-- 
2.5.0


