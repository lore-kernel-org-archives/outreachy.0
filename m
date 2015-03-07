X-GM-THRID: 6939320778752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,51726dff31130f74
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.164.171 with SMTP id yr11mr170848lab.4.1425762233634;
        Sat, 07 Mar 2015 13:03:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.8 with SMTP id j8ls195669lae.7.gmail; Sat, 07 Mar 2015
 13:03:53 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr3060375lbb.14.1425762233223;
        Sat, 07 Mar 2015 13:03:53 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id gj20si465127wic.1.2015.03.07.13.03.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 13:03:53 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx12 with SMTP id x12so9307080wgg.13
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2015 13:03:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=vBowyOHCxRZNATfDTDkoxRmM5BGhp01s7uXNZwfveM8=;
        b=pKUZdj+9d7yYJ43txP5VCl6et+SuDRvZa9eGN+nWdTIO0u3aV4i0lf9m1a8SAI1JX8
         wchOrhxrgxoxjMCyBYKEog2EDxw6izfplRjnXx/2aVrJ1PyFQQD0osHG1ca1d9B7flzx
         QCS69QpaZYE98vbmpdLP19iioHXqUnMYFk5DXG8CKgUQe2lXv3dDxt/I8+N4fSc5IE+W
         ktrN9+piSb6TAUt7p0MNGXbIyU7GEVCDq3P/f496O0KAzILN8LeOS40l+JUZ9UdX0Qja
         rJ+q5jGidCJhjR/wFF2nLjyg/0OQ/ZJwC3qNlw5yqEx3YvOO391pMGb21QcHXAc0Y1tF
         h3cQ==
X-Received: by 10.195.13.168 with SMTP id ez8mr42225363wjd.30.1425762233106;
        Sat, 07 Mar 2015 13:03:53 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id ub1sm20845854wjc.43.2015.03.07.13.03.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Mar 2015 13:03:52 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Fixed trailing whitespace in ieee80211_rx.c
Date: Sat,  7 Mar 2015 23:03:43 +0200
Message-Id: <1425762223-2663-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes trailing whitespace error found in ieee80211_rx.c

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index f3e32ce..d2c5451 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -610,7 +610,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	u16			WinEnd = (pTS->RxIndicateSeq + WinSize -1)%4096;
 	u8			index = 0;
 	bool			bMatchWinStart = false, bPktInBuf = false;
-	
+
 	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->RxIndicateSeq is %d, WinSize is %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
 	/* Rx Reorder initialize condition.*/
 	if(pTS->RxIndicateSeq == 0xffff) {
-- 
1.9.1


