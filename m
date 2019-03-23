X-GM-THRID: 6671577370158170112
X-Received: by 2002:a02:1e99:: with SMTP id 25mr11520137jat.131.1553347653869;
        Sat, 23 Mar 2019 06:27:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:455f:: with SMTP id y92ls339297ita.1.canary-gmail; Sat,
 23 Mar 2019 06:27:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxNe+2zUheXFN/0UopbOlnMl+igNht8WkQyKb53F0b2NVk7aOCW69xUFHI/xUjT09YOGJxP
X-Received: by 2002:a24:2b8c:: with SMTP id h134mr2053125ita.15.1553347653074;
        Sat, 23 Mar 2019 06:27:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553347653; cv=none;
        d=google.com; s=arc-20160816;
        b=N738uWqlpxOFPfh5GnJeBVyaRELeON1fRRTQY9QKBP4g94CnPYcMV9nmNA4CrpMMxv
         4B+70XQgjjJCySNfbLg1de1iYmPFkG8cqjvkunBQn2drOrcSUZNwv1bg9dD2zcwZlYXv
         b/5Ki3C8LlW3yZWHNJrIkdD4HO975fTCW80L4Ix+OZQDXrwndSOflXBPakW9sLHdvICM
         B5u6wsc2HZyUeEAqwfGkfS3NBmIbFp++nD4Se6hRzX6NZKmqUHB9oW8L9Rizf3k0RX2i
         0hzHoMZnbaY522tjwQAmwd3JWarv8hZYQqX4Fg6L3Ej7NbnEn3oM+jEYzwpkgXuHqzt9
         uK7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=+F6MsgQaY4daLxGa5UCpQZFXUwbIBNGAR5ruy3In89k=;
        b=vrjorIXzjkJFnymdNtQPJC1QBNuSiH8KxHtsWM2AaEfHQWXawpy3K2f23KEvanApPc
         EStMfxKFAjA97wq6u1yTnXgedi6qssGbVm1L+IjBwwa4fbS508hPENXYsu65Ti14jJj+
         0etncTtPMSIOIiho2RtZZ1+Kq+k6kIsJu1NzGNTrnb5XwXuCePzkhgcHu9IH3A1c5NuL
         AeWNABvKWTofwE8tVmC9I5e+7pKGVHBQVib4wVQPo2xaouVHjaZLIJxu+lltJVOoo/gM
         fe3Z/F1TbARemQbOKH6ilZso0XZxBY2OzGXb2bCEkqxcK1IAAsQmUDsWPtn6ux4/oTQP
         zCQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C7GhQz6J;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id f13si594081iok.3.2019.03.23.06.27.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 06:27:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C7GhQz6J;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id c207so3369990pfc.7
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 06:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+F6MsgQaY4daLxGa5UCpQZFXUwbIBNGAR5ruy3In89k=;
        b=C7GhQz6JuuEkMpjH/1rU4ArDF1ZfOKrVyZHaRu4G5dFuTudeCWxhtqdsiRUQgT+9Ej
         RjEoPkazCr8hdGo707mNwR0qcFK+Iq52jpgo6eTtaeYBVsVnk1WTNYBC05ile3yu3UQx
         Ll5juuqi6Vg+QgfWWtVAd642d0QhEQH/iLEDbiYROQOVxnMUeVs1smZamYrcl4WdwNeN
         1mb5Z1HJepL6b/MMhJwvO2CVUteOwmVJKf+VLABY4Mx7yuco0l8TwugJ5ywYDse1TGXu
         6Xy0rqK3mgSnUPOaj9mVPCTT/3DeCwnznDMsq3v+LJholb83jqu3WYt1J/Hs8tODjrx1
         CHVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+F6MsgQaY4daLxGa5UCpQZFXUwbIBNGAR5ruy3In89k=;
        b=E4thYSj2G5/kP6oBY2PtMjcEGoxstSiZ1Co8XC8lW/MSjklxwEB03FGlsoUpP2ua6D
         hoKcpuc5e0IxqOLY4eyWIaR18RRPYQkIJN8ekB2svKUMliuREmCiRtT4FBPYgobYnBPW
         j8sjevDGIL970RxSZf0jytEoqUzQU+Z6guSLxvRtUbGh/Uta75VTD7yA1gr4WSS5vEL+
         0lE3RtJwLU7DQFeCHN3vRMvzGs5UodxEe4iwDjZ8uPXZzZArlen5Ygt0atGqfuEweBCH
         3ly+hRkKr/k4Zih9pS6aGQ+aIynw9VbDcZZZIgZB0Zbv/iXKVNRBb397l4WJSQG1WDgS
         V6Ow==
X-Gm-Message-State: APjAAAUSIRX5IM+saCToUPVNcYgT18WU5MhQ1RiOmznkcnL6E2iY7t8V
	wA/VqPw60D7EwaliU6oeubdw3DvVxok=
X-Received: by 2002:a17:902:b20e:: with SMTP id t14mr14761508plr.97.1553347652508;
        Sat, 23 Mar 2019 06:27:32 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.188])
        by smtp.gmail.com with ESMTPSA id j20sm13819251pfa.158.2019.03.23.06.27.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 06:27:31 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] staging: rtl8723bs: include: Fix a space issue
Date: Sat, 23 Mar 2019 18:57:16 +0530
Message-Id: <20190323132716.904-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Replace 'foo * bar' with 'foo *bar' to fix a checkpatch warning

Signed-ff-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_recv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 1f53c1c7b0da..7d54cf211315 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -302,7 +302,7 @@ struct recv_buf
 
 	u32 ref_cnt;
 
-	struct adapter * adapter;
+	struct adapter *adapter;
 
 	u8 *pbuf;
 	u8 *pallocated_buf;
-- 
2.17.1


