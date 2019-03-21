X-GM-THRID: 6670918064483074048
X-Received: by 2002:a37:50d5:: with SMTP id e204mr4216598qkb.26.1553194146273;
        Thu, 21 Mar 2019 11:49:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:acb6:: with SMTP id m51ls2803012qvc.1.gmail; Thu, 21 Mar
 2019 11:49:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwceo8xLAcqDrHFpDnqlL/y9/Xcm9jlEaTSWoH/tbPfZYPurgI1QVC1u/hxIdHxlEagRY9q
X-Received: by 2002:a0c:9ba7:: with SMTP id o39mr4310675qve.153.1553194145633;
        Thu, 21 Mar 2019 11:49:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553194145; cv=none;
        d=google.com; s=arc-20160816;
        b=KRXmmXIxNCWwW1I40UjZPjD46iVQLoiBIq989nSkdvCZ6AhzswxJDt4R8ronS9PSls
         hVF4JseWuKT8VHuOEYmNGmuWQZ/yStGGVEXGcbkHDrSJU2kWTwlPLeyk4ri4lz9AQNpR
         Wx5g7YXPZYfz+94UvDiGfm4grrkyHu+Ww+zPCOop7rqqXMwzSdHMzPB7ygnVzteSCGKf
         e92YdvieqOeEKoZw/RuHYtgRRB8R+VxZR4CnphYjoIB7yLKyv15FrIO6MEZ7FiNd59H0
         63Zy+uelX2sqeKLE6CBEWEOXOouOzyVvEIvVd2h0kGTQcL/B9HWZJWZPNVhRZySnU/H8
         G9hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=W4xtsnD/JucofbiKlfR76FWtL123crtKs+XiSb+wRaM=;
        b=eiX1ERDdNNja0GZCEbyueS0FD3V87WePg8eToGy7I8CgOk6wEIfxzmJfhiWkN59h8j
         KDQ+iKJEBF9GyO30pnn9Jj00vOH3+8n3PRWEZHZwAdqxXI5vKqd/dQ2jyeYMeBlNhYYI
         gyb9PkXOhT7JNXNGnALE6AQDwbFMSoq4C+u8spEa3UfWYezF+PYLroar5ksqNJ3lsX59
         DXplLC24Rc1fPsWjZkw+TIsZz0Vf5e5hJXmN12hIkenCHroycjYNjZLQIMRUwM8K2kiM
         WVxUyLVvaLOUcm/R/a2e95d+yD+PcSr2HeCzN9ZSQckM9xe/aajwYG1gO+UKrTGfkaDv
         2K4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=W2vlhOPx;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.84 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic301-21.consmr.mail.sg3.yahoo.com (sonic301-21.consmr.mail.sg3.yahoo.com. [106.10.242.84])
        by gmr-mx.google.com with ESMTPS id j35si326011qte.4.2019.03.21.11.49.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:49:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.84 as permitted sender) client-ip=106.10.242.84;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=W2vlhOPx;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.84 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553194142; bh=W4xtsnD/JucofbiKlfR76FWtL123crtKs+XiSb+wRaM=; h=From:To:Cc:Subject:Date:From:Subject; b=W2vlhOPxooQP2rMnqDsVA+Vfd9nMRRlsKwhs+VBOD4LimfPx0+J0d2kH3tA8aIRu4fROYfD4HdujBoaJFl86WjFeZAxIJnGMJ7Qj8idKNykt8usHO/86honzY82ysPD+nyfRlArN50f+oJ+P2531hm79QV/Rs02uuSuh7CfsnaqurVe/vrFLDe9CyH5W4OscWlA+s1CaTU30e1cYz3bXaS512JPpLUz3UhqRGh3G8lNsXa6sz5L13U7vHdpGWdw3/bNgEu/BlZIG4p/u9go3+aS1gG/H+tBt9e2lwOKkCGDvWFccC8wwZBR6VgHcoG7EqbuKl/706WLMiTXEOVojEw==
X-YMail-OSG: reRpSTgVM1ksm5k8MysjWyAHtguXhgS6LpphgHfqFbHRTD8oEwsHzuh9addVSeq
 2SW91gCxyZ6czzS3iRYuW.eyyGcdX9Bu3rXcBp1WoItgqgREGrPmb1xqu1VNySETdSey.R_DdqEr
 mUlDnKf2WpU2TYprAd0MEwKrdTDV8lw7TFazcm1Gacd12.uCjc64F6ymJMC9tJizN25whpWut1ya
 FP.sMWf3uYJRm_hzwEWm2nMZGdM3SjCR4Pmk6j_8CRzjofNWmg4xaqp9BP.9Qe8DVWU8SkyQ1X_Y
 .W5FxZd0nX0R77QYM6jM..Y82CoZrMjHTXSzeUwFjk_QSVTUXBK2gbyV456DXpa8ix7nzMoxBxK4
 MucR.IL38d19F0704mC1VHRbivRk5_sO2rikZc1S82CoTYN3L8BGvy2pYI0p1JA3EG3p4u_JVVSG
 zLWnSLnesacl9Qs65xgrWl7AIqKMOnQWb5ml_0EDgh7GLSeb9to4Qh9s7a..7qHXHgW1goKaZxLG
 oAEsOBqwJPQZtOtES_1kimp9hVtmg7XEzpBGLvUWnbUpt18f4hYDPftwrvsb6Ef067EV7bVEGT0j
 LNid7fL8TcC5M20pBYtAcbfBS8B5qHcXNpWU8nHiTM7yKjlelp.T1Pf0HoAB9IYxOFQk.euv.Zhp
 zKbDZ1UuTW93iG7G4TDy9OIvNcknWfMGxHeN0F7fDlpeVKk3AKtO6alcaHFBApSISI25TLg3INEI
 7o4vJDgjXFfQRJ3d6anwEhKFV5pJcuPTV3yAZMt8gu6HS6HOBSpbjHJfR96dQq469iAZrGhYjsvy
 k43L0VhbHZGGS3gpN_MA6dnYgS_xlsO.DOvkayNxTSVBKnA.DQLEN1L3o8tHBoI4v4FsT7l6kTrF
 g2v8zushdMT0XGTYh6T5szHR2hLTRhiSWXTWKxXLXqkheTXgu1AVsZymTrYRi8aY8_Fl61z0A3iG
 CYWSS5U0IRLPNt11qIJRs37WS5e4.cpRMqTmWMOKR8gDf9reMvru5UO.5aPw87uH.ZcxTxxYJCck
 LTCzVrJ.nDeo9B.2xa3yFoPL.JbPrB6UkCWmsfx4ObKxSfSKUp52btqROHTqjyJAhmR3qAvJ9E4z
 UxinS1tRXI5WX1WkoGElx5WurK4o6jEpubWQ-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 18:49:02 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp411.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 65a84adbc387939af1cf014dcced0417;
          Thu, 21 Mar 2019 18:48:58 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: rtl8723bs: core: Change NULL comparison to Boolean negation
Date: Fri, 22 Mar 2019 00:18:46 +0530
Message-Id: <20190321184846.6185-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change NULL comparison to Boolean negation. Issue found with Coccinelle
using matchnull.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index cbbfef389874..18fabf5ff44b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -782,12 +782,8 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	/* check if there is wps ie, */
 	/* if there is wpsie in beacon, the hostapd will update beacon twice when stating hostapd, */
 	/* and at first time the security ie (RSN/WPA IE) will not include in beacon. */
-	if (NULL == rtw_get_wps_ie(
-		pnetwork->IEs+_FIXED_IE_LENGTH_,
-		pnetwork->IELength-_FIXED_IE_LENGTH_,
-		NULL,
-		NULL
-	))
+	if (!rtw_get_wps_ie(pnetwork->IEs+_FIXED_IE_LENGTH_,
+			    pnetwork->IELength-_FIXED_IE_LENGTH_, NULL, NULL))
 		pmlmeext->bstart_bss = true;
 
 	/* todo: update wmm, ht cap */
-- 
2.19.1


