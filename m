X-GM-THRID: 6668981360875536384
X-Received: by 2002:aca:ba02:: with SMTP id k2mr7994833oif.38.1552837184855;
        Sun, 17 Mar 2019 08:39:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:be04:: with SMTP id o4ls2194579oif.1.gmail; Sun, 17 Mar
 2019 08:39:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx9Zn1Oyvu/Sr7jnEr6ib8rlaOR2YeF9HH6YbzqFcsP9mjbvCVKDT6n3JYXYePXWRAS+yES
X-Received: by 2002:aca:d6c3:: with SMTP id n186mr8324633oig.26.1552837183886;
        Sun, 17 Mar 2019 08:39:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552837183; cv=none;
        d=google.com; s=arc-20160816;
        b=RvQaTrxl3uogeIWzLs+0G4UwnksY8BAtggSLG/Uowzv22Qw7sUhMJUiVtPiNmbfCje
         t6NfucPw5vRyBOhfBXAbP0vabGvxfmHXQ4cLcaPHOeAmWEIBV+oh+xKtH0lDVZcrpMfc
         GDcsntj2ROH/VAxZFFJzfOJofAgfuOErFNf7dJjpjVF0FPazc6vXW1JTgbQ/W7ynamLH
         dKQ1hTGxysdyp5vsslvKX7YO67nDPT8glE9d1rOEIeRpbjAce5WshRf8IsMigHIajoUs
         n8c+PWufAIJoggszpLF/6/OQ52t6rljCAaHrBRNxGhaA1vCc9uq2Mx71a3H7L69W9+fx
         dVKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=yDjy44Ad4qc7CGHh4AM3pE5eZy5EAPqX8x3DnD5BtFA=;
        b=Qb3yXgi0bIkcdoyyj3xGRQUxf1BfNTYanjCtRR3jTFmQOvcPafdaxhKmheKQ/3xenk
         DC4pXPck5y7yCiH2IC+IMuNdQDA7REnxjFEtWudfzXJMbf9us4/IPluo/AJJvfCa5zw8
         WWvc1084Jkf9ZTqLGQiGG4TtHFmNdfYewo7JH82/f5aJLcQeGM2f5lz2mLZY28MZKwAf
         UIc3bE/Miw1Aw3L1J73TuyVGzv9lb6FnhOdTgT464WaeqF0hVJcC11kQquCnJfOHPXTH
         tVm3vO/caM/lBU+c5D7A3jEw7Pq4AmT72kVFr/4iPnos1tVhAKzP+tijfZH4GwExXHyg
         rUOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pp1AW2PI;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id x4si317577otg.2.2019.03.17.08.39.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 08:39:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pp1AW2PI;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id r15so6790793pfn.9
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 08:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=yDjy44Ad4qc7CGHh4AM3pE5eZy5EAPqX8x3DnD5BtFA=;
        b=Pp1AW2PIqecyopJSGlpMAlDbEIc1wYxskSHULr2bhayyu/5//dLamj8e//pLICfRVh
         q23T5g7eODVA/wlPA4ogD88FqrMo+Z5KmvzZVxhBBeVQAe/JrLQuWbmhLkdoV3icn1bq
         21eN++b2wnubIvQCG456qfrNt6CYE++8BoqCzD2z/L+B+9BGA3+UcuC2Q0hO9zEJvzof
         VAigk7EN7cSMBlnBoMOY/YObhqeZIY7C0TSVYsaCrxUsVVj/OviWy91MLLJysljMedAI
         VBPirc8jjxpb5TT3EGlMmQUImxSgCGr0KCe2L09EmoxvCW7F4zUa1DEnobe2A6H3E1fE
         CWKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=yDjy44Ad4qc7CGHh4AM3pE5eZy5EAPqX8x3DnD5BtFA=;
        b=C6DVQP1dDYXmRHmlUjMbNOhvyK2pwzQoKw1irfs10ZNr7Y/7Cb9mICosvF9b3joHd+
         UMF54G9rDsTg/NLq6OdfqKQiek8gXhV7lHtmIa4/RkyIvhO+nOnUwfRBePUvlhG4kAUY
         dWP4ELjCS2+549nPCeMx9JRzc7ka9diEeUn8lVh3r0uJHy7xhSqEaiKjEaC1ryKv/Mag
         Aht6d8rcCTZKza9LBM6lWFi937ixeqK3ASC3Qbpgh6UChAHJGeHgjrsFf2OCewqW79VV
         yEu9urjgZirIVwehvKt0CT1cP9kpxWBc9fNNMhe04pSWR7eysFu7xa/KCTzdscpWliCm
         doTg==
X-Gm-Message-State: APjAAAXwUh6NJ9Fjk3ayDDJRpLPTOeQNHGi+T+n59Oir3xD3lfxW1QG6
	2zUfDJfHCiqDeqOjVvLUBqgg8gPK
X-Received: by 2002:aa7:8811:: with SMTP id c17mr14475656pfo.197.1552837183274;
        Sun, 17 Mar 2019 08:39:43 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:24bf:4cf8:99c9:eab4])
        by smtp.googlemail.com with ESMTPSA id r82sm12965384pfa.161.2019.03.17.08.39.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 08:39:42 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 3/3] Staging: rtl8188eu: core: rtw_recv.c: fix a space issue
Date: Sun, 17 Mar 2019 21:09:29 +0530
Message-Id: <20190317153929.16897-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317152736.16374-1-sanjana99reddy99@gmail.com>
References: <20190317152736.16374-1-sanjana99reddy99@gmail.com>

Fix a space issue around the below operators mentioned in CHECK.
Issue found by checkpatch.pl semantic patch results for
rtw_recv.c..

CHECK: spaces preferred around '%' (ctx:VxV)
CHECK: spaces preferred around '&' (ctx:VxV)
CHECK: spaces preferred around '+' (ctx:VxV)
CHECK: spaces preferred around '<<' (ctx:VxV)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v5:
No changes from [PATCH v4 3/3]

Changes in v4:
Fix the patch version number in [PATCH v3 3/3]

Changes in v3: 
fix a overflow of 80 characters from the [PATCH v2 3/3] 
fix a space issue around '>>' from the [PATCH v2 3/3] 
fix a space issue around  '-' from the [PATCH v2 3/3] 

Changes in v2: 
Remove "From" line from the [PATCH 3/3] 
Change subject line in [PATCH 3/3] 
Change log message in [PATCH 3/3] 
 drivers/staging/rtl8188eu/core/rtw_recv.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 35684514c79f..90eb1a025051 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -365,9 +365,9 @@ static struct recv_frame *decryptor(struct adapter *padapter,
 	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("prxstat->decrypted=%x prxattrib->encrypt=0x%03x\n", prxattrib->bdecrypted, prxattrib->encrypt));
 
 	if (prxattrib->encrypt > 0) {
-		u8 *iv = precv_frame->pkt->data+prxattrib->hdrlen;
+		u8 *iv = precv_frame->pkt->data + prxattrib->hdrlen;
 
-		prxattrib->key_index = (((iv[3])>>6)&0x3);
+		prxattrib->key_index = (((iv[3]) >> 6) & 0x3);
 
 		if (prxattrib->key_index > WEP_KEYS) {
 			DBG_88E("prxattrib->key_index(%d)>WEP_KEYS\n", prxattrib->key_index);
@@ -1160,7 +1160,7 @@ static int validate_recv_frame(struct adapter *adapter,
 	u8 bDumpRxPkt;
 	struct rx_pkt_attrib *pattrib = &precv_frame->attrib;
 	u8 *ptr = precv_frame->pkt->data;
-	u8  ver = (unsigned char)(*ptr)&0x3;
+	u8  ver = (unsigned char)(*ptr) & 0x3;
 	struct mlme_ext_priv *pmlmeext = &adapter->mlmeextpriv;
 
 	if (pmlmeext->sitesurvey_res.state == SCAN_PROCESS) {
@@ -1763,7 +1763,8 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 			preorder_ctrl->indicate_seq = pattrib->seq_num;
 			rtw_recv_indicatepkt(padapter, prframe);
 
-			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1)%4096;
+			preorder_ctrl->indicate_seq =
+				(preorder_ctrl->indicate_seq + 1) % 4096;
 			return _SUCCESS;
 		}
 	} else if (pattrib->amsdu == 1) { /* temp filter -> means didn't support A-MSDUs in a A-MPDU */
@@ -1771,7 +1772,8 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 			preorder_ctrl->indicate_seq = pattrib->seq_num;
 			retval = amsdu_to_msdu(padapter, prframe);
 
-			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1)%4096;
+			preorder_ctrl->indicate_seq =
+				(preorder_ctrl->indicate_seq + 1) % 4096;
 			return retval;
 		}
 	}
-- 
2.17.1


