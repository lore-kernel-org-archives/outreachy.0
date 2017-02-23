X-GM-THRID: 6390400830187503616
X-Received: by 10.129.107.134 with SMTP id g128mr6727005ywc.139.1487881138404;
        Thu, 23 Feb 2017 12:18:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.2 with SMTP id u2ls57476itc.10.gmail; Thu, 23 Feb 2017
 12:18:57 -0800 (PST)
X-Received: by 10.36.83.14 with SMTP id n14mr1354753itb.30.1487881137713;
        Thu, 23 Feb 2017 12:18:57 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id c123si871841pfa.4.2017.02.23.12.18.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 12:18:57 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 1so205650pgz.2
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 12:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Po2xHNr8ChY6ulJ6LfXQ9pBdNfNZj8nnpwkmAD4ii8Q=;
        b=C5pLH9/jtBaajA3ITb8vHug5am30gKOjaLawUrr1ihdCYGr5g9n3ZdDTt1ICr4w3vF
         7W8TPeRpAX+qdAsLKRwL4PnTsiO6PqhEReIVmAXf39FAgeUlcUd1tB5EvUWa2eqJdgrZ
         Z/ZXyeNKoCByCMU8jy7H86p8xDVZkCK4SpPL6k8a5wL7n8C64DkfFHl7xU2WCLYzXNOi
         QTTwD7oISpj9YzjpbiMUZB6aGpmZnMpuWoFUFR2opacYDR+03Nr7HxkYMWMleBVrejA0
         XwOrdFFtotQAHR6DH8bFoPiqoNXG1dqE7RYlRP1/nr49j5pP5xSvRGfP+MCaWEnzn9yV
         Aw6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Po2xHNr8ChY6ulJ6LfXQ9pBdNfNZj8nnpwkmAD4ii8Q=;
        b=okH9l+nkDlR71wPAyNYyuhFj+WSSgFVh2mneVAAxYJVLkgjzS2VN8cojNr7N/j/U07
         fsUCa3adT1O4JP0utPtzKehnlQAAwsDkSCvxqf8sDGYMZ2KpsuL5PUsqNtTfEIqtgrVh
         CQpp+j8t6U/tjsfML3OR3jynAZb/LXhBI/BDimmmCEFqMaalFXvNFFJhAlvkIAlG3D+q
         +AHo3h1p1IiVnqNSfOE0CEaksT3+c26u3LvS1sabVKRmW9dg/vN87sJ49k3lpexQmEcz
         76W+1ux68gm9Lrjj+JK7/gkiB4BGj5bncEpQXVACckXTS3YKcsmYUGWAHO72Tywp+zwS
         Dz3A==
X-Gm-Message-State: AMke39lIBY+JXXcnGaZIgx+JwiZsEIfY2b6tJT+LvMsAqTSrZE8nAYm/kwdg/Pe3sJ5bqQ==
X-Received: by 10.98.42.151 with SMTP id q145mr47866789pfq.175.1487881137473;
        Thu, 23 Feb 2017 12:18:57 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id d68sm11318643pfj.92.2017.02.23.12.18.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Feb 2017 12:18:57 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: rtl8192u: Replace explicit NULL comparison
Date: Fri, 24 Feb 2017 01:46:46 +0530
Message-Id: <1487881006-29871-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace explicit NULL comparison with ! operator to
simplify code.

Found with Coccinelle script:
@@
expression ptr;
position p;
statement s0, s1;
@@

ptr@p =
\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|
alloc_netdev\|dev_alloc_skb\)(...)
... when != ptr

if (
(
+ !
ptr
- == NULL
)
) s0 else s1

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
index 51503ee..9f1ac96 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
@@ -117,7 +117,7 @@ static struct sk_buff *ieee80211_ADDBA(struct ieee80211_device *ieee, u8 *Dst, P
 		return NULL;
 	}
 	skb = dev_alloc_skb(len + sizeof( struct rtl_80211_hdr_3addr)); //need to add something others? FIXME
-	if (skb == NULL) {
+	if (!skb) {
 		IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc skb for ADDBA_REQ\n");
 		return NULL;
 	}
@@ -202,7 +202,7 @@ static struct sk_buff *ieee80211_DELBA(
 	DelbaParamSet.field.TID	= pBA->BaParamSet.field.TID;
 
 	skb = dev_alloc_skb(len + sizeof( struct rtl_80211_hdr_3addr)); //need to add something others? FIXME
-	if (skb == NULL) {
+	if (!skb) {
 		IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc skb for ADDBA_REQ\n");
 		return NULL;
 	}
-- 
2.7.4


