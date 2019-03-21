X-GM-THRID: 6670862912726237184
X-Received: by 2002:ac8:a44:: with SMTP id f4mr3567591qti.168.1553181305155;
        Thu, 21 Mar 2019 08:15:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:c583:: with SMTP id a3ls2553401qvj.4.gmail; Thu, 21 Mar
 2019 08:15:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqymkKM+2dO4SLtzlMK8MT3cEMGCXedKZnaHle1gsykTL2FMYFn7Aj2ggMFBolQ9QhEtS8R5
X-Received: by 2002:a0c:d483:: with SMTP id u3mr3628016qvh.54.1553181304484;
        Thu, 21 Mar 2019 08:15:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553181304; cv=none;
        d=google.com; s=arc-20160816;
        b=im0mhDnKC9YdVJgDq5aNgSjvdAgKgCoxZ8FBm4AHZqJPkui+nlCj9TAsscteLcsykK
         sVsmzJsrpjHFxkN29vk/zRUfcYDYg4diRy1ffV3dgNUgwCOG5JTXE4ZTeryRmk+UTq9s
         sYflfhYLDZWI1ZjxgyaxkNz97VEzFJM7ILLmvjvlsu1YXdIvlNePyxnuAn4waubqww58
         ydmtgcRoLyzPSH2fi5vRKm9BXjg4yOd5u9JEmyC6hWTkkJBaMzLkH8uIDS1ujAmbv6yG
         wqoYabA1CDOt2ulInYbpz+DGYj9hqTrSw0kwhcJlniqdFbiPrRwGkIB+k6L3nAcRubfH
         mx5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=k2Lkea2rNdfPicyKQ6vR7htn+QGgFBpGQ09LVJIh1Vg=;
        b=JK92N3KNP+S94dQCBKbJ8ttjAf7e7W4nhyKohFM7SKLJekzWzGZn9WPuCJPo380UYN
         jI3r1qRgyq6WEG7Mm64PQTaejish+5TgWWaVCj2jZ/UTN+SAUe8eN7l4jh5tWX701ghI
         M4HMl03P64lVOCCDn7A6FaHw+yt/oIf0wZgJTOWDP4YDZIeoD0gS+m5PIYH5WSwQM3+L
         abokB2l+sx9GeYq+qajmSLv8J1OC09iHTdI36mdIGKH0jQMvfjl3l1ppNuxkhol5nvUs
         jB0bjhJ2vs8Pzw7CKvDgKlNpkY1xpiv/yg53MkiQOtvi8Dy/YUVRUrpc4ORxNV7O7b8w
         cEsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mRJWgM5l;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 27si426530qtt.1.2019.03.21.08.15.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 08:15:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mRJWgM5l;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id c8so4483266pfd.10
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 08:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=k2Lkea2rNdfPicyKQ6vR7htn+QGgFBpGQ09LVJIh1Vg=;
        b=mRJWgM5lS8/XiofT0lYOEnxyE+xwkUdPj9x+80HtZsVglamD4IiqzDTJO7RKlGWoWg
         LFAif+hX3LH/thQGqdC84H91BNVlDVMYqrf3LZmm+p6lWKyyPWhIw/TE7IYszWsmHcZk
         CERMFYthpl/Rl9yOpTPl3y2e5b00AJt2neex29iJX0bCRqJCsZvXzYOix5UNH6GOaCZ0
         mEjlWn43j2lXzSte0K+CnCMpjJAm7rMj4Rn92qVt8C8CJy1vB4qKYIBD2BsMGeRXECsY
         EpTH6K2g1ZNDEF9312t7prFru+ciVn1W2KHobR4JTuXE4gxeBNnvrNE1sP4+m+EI7LnJ
         vRkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=k2Lkea2rNdfPicyKQ6vR7htn+QGgFBpGQ09LVJIh1Vg=;
        b=tin7UIsGfrzCEiaA5E7XYW15znHrWuuQwhPWVUGSRWw7ycPEQ3wLErzuYkXaADUN0y
         PH/GYJ20ZxTW1fkBQwYj7p8POYFF4DYyAq/tcniCm7fTUyCluIKlxiXLoXaMjdddn1Kw
         TWoCn955KlCtz+83NR05DkTuA0XwCc3DFk+0FggzSkxi6TjO+rmEr9pQ4kOG4+TTbzAN
         FUtG1SJuvNq76rEEAHW+AxN8/Lz5JLds49h4TBM5yEZSFdGjfkDqHzQd1puly4ovEMU3
         3FPmTrvcJ+lwQkwQATiM7vBYFU1Hcd2SysxmAksQP/nRMb0UElaoZj2UymxybIe5NJ46
         IPfw==
X-Gm-Message-State: APjAAAWLebOwgRzZS2jxxrUrU0wCssP0AtCykLgeYV+YIHkG2/CaMj5g
	jxuoneo7qosHxx7IVRt5ImUieiRBuEc=
X-Received: by 2002:a17:902:42:: with SMTP id 60mr4095195pla.132.1553181303953;
        Thu, 21 Mar 2019 08:15:03 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.5])
        by smtp.gmail.com with ESMTPSA id m20sm11114415pfj.142.2019.03.21.08.15.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 08:15:03 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH 2/2] staging: rtl8188eu: core: Add spaces around operators
Date: Thu, 21 Mar 2019 20:44:47 +0530
Message-Id: <20190321151447.10875-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Add spaces around '+' operator to get rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index ddc1620156dd..6043aa44abfc 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -261,7 +261,7 @@ static int recvframe_chkmic(struct adapter *adapter,
 			rtw_seccalctkipmic(mickey, pframe, payload, datalen, &miccode[0],
 					   (unsigned char)prxattrib->priority); /* care the length of the data */
 
-			pframemic = payload+datalen;
+			pframemic = payload + datalen;
 
 			bmic_err = false;
 
@@ -1308,11 +1308,11 @@ static int wlanhdr_to_ethhdr(struct recv_frame *precvframe)
 		return _FAIL;
 
 	memcpy(ptr, pattrib->dst, ETH_ALEN);
-	memcpy(ptr+ETH_ALEN, pattrib->src, ETH_ALEN);
+	memcpy(ptr + ETH_ALEN, pattrib->src, ETH_ALEN);
 
 	if (!bsnaphdr) {
 		be_tmp = htons(len);
-		memcpy(ptr+12, &be_tmp, 2);
+		memcpy(ptr + 12, &be_tmp, 2);
 	}
 
 	return _SUCCESS;
-- 
2.17.1


