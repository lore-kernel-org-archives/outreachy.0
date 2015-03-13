X-GM-THRID: 8039524466688
X-Received: by 10.236.30.41 with SMTP id j29mr45789728yha.28.1426233568116;
        Fri, 13 Mar 2015 00:59:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.148 with SMTP id d142ls1018303iod.53.gmail; Fri, 13 Mar
 2015 00:59:27 -0700 (PDT)
X-Received: by 10.66.151.101 with SMTP id up5mr46836368pab.10.1426233567930;
        Fri, 13 Mar 2015 00:59:27 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id ri9si241181pdb.1.2015.03.13.00.59.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 00:59:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so26874962pdj.12
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 00:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=elgB9iipzHbWWByH0W9n/x9JlU9rOaBWTWdJgMM63GY=;
        b=CLTakZvkVKCELrAWXUx9+c31fk1/6dTxaYsSloBo86wT1cE3uokzeMP5GAlEdqkRl+
         +yWOtrq9jvpot3hybxOZpdljB/pvJhnL782F4R8mwnem0LLb4z1gpBv+XJofQ0ePO9og
         qEL6dXxURuwHMKS5Nc4VRUnS1Pjc0h5x9LCQyBzIZmQ2CmJ0KheurDO6Qgh3sYJVjkbY
         6f2y+HxrpM3LcgTJzcOE8dI5Q/VCROM+muqRrcBdsdR+DzUi+tgUfJ/Ti+bQg5yEVITb
         r5UJ47rx3t+FM9pR4Xk/JPeUrODzBE7QMs9+L16bAQpcaYZxrAz77BI8wqmSqvtjDP9C
         NG5g==
X-Received: by 10.66.187.97 with SMTP id fr1mr35936476pac.157.1426233567818;
        Fri, 13 Mar 2015 00:59:27 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id z4sm2017947pdi.90.2015.03.13.00.59.25
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 00:59:26 -0700 (PDT)
From: Supriya Karanth <iskaranth@gmail.com>
To: iskaranth@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: rtl8192u: remove break after return
Date: Fri, 13 Mar 2015 16:58:42 +0900
Message-Id: <b98a2ed15a2c632f64837822461bb0adf7a31c41.1426233142.git.iskaranth@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1426233142.git.iskaranth@gmail.com>
References: <cover.1426233142.git.iskaranth@gmail.com>
In-Reply-To: <cover.1426233142.git.iskaranth@gmail.com>
References: <cover.1426233142.git.iskaranth@gmail.com>

Remove "break" statement after a "return" statement as
it does not get executed.

Found by checkpatch.pl - break is not useful after a goto
or return

Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 878086a..5106b60 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -2110,7 +2110,6 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 		break;
 	default:
 		return -1;
-		break;
 	}
 
 	//dev_kfree_skb_any(skb);
-- 
2.1.0


