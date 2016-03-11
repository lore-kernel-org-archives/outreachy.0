X-GM-THRID: 6260738819949068288
X-Received: by 10.140.39.229 with SMTP id v92mr6380046qgv.25.1457691869211;
        Fri, 11 Mar 2016 02:24:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.75 with SMTP id b69ls2181967qgf.53.gmail; Fri, 11 Mar
 2016 02:24:28 -0800 (PST)
X-Received: by 10.13.213.208 with SMTP id x199mr6510947ywd.48.1457691868705;
        Fri, 11 Mar 2016 02:24:28 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id tu5si966527pab.2.2016.03.11.02.24.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 02:24:28 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id fl4so7877348pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 02:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=msGIz0WTMJNobVdpUpJzM8TJvvuV+uWWZ9NL5/GKy7U=;
        b=y9Kl9OBSayhn3mBs5quvucJQy7a3Pr9nNzPDonJlVEsZT0KLpM8PpE/6N+v+c3jjke
         hKEd/RYKHA25BKxp7T75tXYlObLl8PXit+JjzgZ121QHG3gICVHxgdpXAkGDkVzDOYrh
         /xbkDs3Ju36vikhRoo7z5JRkcN+tjqM/CtJ1ksu8Mf046blbttCPEQ6nAWPruci+Qk4t
         ymywXTTT7vHQtdwyADiW3xDxpDf/dpX70JT0hXBiSW8dYjsdw/GGT8tUxsqRJmOjz2hG
         KJI9r5vPVVXU1IsofPyLifsMTBpFdajufzKkcRdtbMaB7/xsQMKjHHDxN56gbdFYHNzM
         Gmsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=msGIz0WTMJNobVdpUpJzM8TJvvuV+uWWZ9NL5/GKy7U=;
        b=KdWV0qqfIFANrKxATObZuUyFeUZ0FLcohuDmYHzbMTQjsIKURlbTEiwZcGFvZSe/67
         TPQqFkbzNbH4hrSYmk7Ch4HqRHsx+kX9oc/vYnCpht05t5OSW2YzQc3RgG5rQtzRI9Dd
         79vwJbu3hHiCtnbdEJvrfM4q7GkhoRyxCkpTkPk8jlgQPZhz1ZgbD9ArzO82HhnoUPDa
         44OATfHmwzY8HhAnZPeAKASD8pHh2esFBFWKutgydyST6g+I2EY5wIKwL6TcZnUo4mwx
         WuhaS1QnmiKroFIWesQcP3rsQwQ6dmDFn0t4xYgPEnig6OGYrEMFEASkvSTlWFFIchOJ
         TgSA==
X-Gm-Message-State: AD7BkJLMJ6MXazDkt7S7p1inwU+KNpr7bmL7hLFsbz/aGyIu5v9DqPd/g963pNqLctwd1g==
X-Received: by 10.66.253.68 with SMTP id zy4mr13658250pac.81.1457691868529;
        Fri, 11 Mar 2016 02:24:28 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.156.82])
        by smtp.gmail.com with ESMTPSA id cq4sm11783193pad.28.2016.03.11.02.24.24
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 02:24:28 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 11 Mar 2016 15:54:20 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 2/3] Staging: rtl8188eu: Remove function rtw_freq2ch
Date: Fri, 11 Mar 2016 15:53:56 +0530
Message-Id: <11c1931b11f25511eba1dd577fb295564d5feae2.1457691346.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1457691345.git.bhumirks@gmail.com>
References: <cover.1457691345.git.bhumirks@gmail.com>
In-Reply-To: <cover.1457691345.git.bhumirks@gmail.com>
References: <cover.1457691345.git.bhumirks@gmail.com>

Remove function rtw_freq2ch as it is never used anywhere in the kernel.
Also, remove the function prototype.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_rf.c    | 17 -----------------
 drivers/staging/rtl8188eu/include/rtw_rf.h |  1 -
 2 files changed, 18 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_rf.c b/drivers/staging/rtl8188eu/core/rtw_rf.c
index 6983c57..4ad2d8f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_rf.c
+++ b/drivers/staging/rtl8188eu/core/rtw_rf.c
@@ -70,20 +70,3 @@ u32 rtw_ch2freq(u32 channel)
 
 	return freq;
 }
-
-u32 rtw_freq2ch(u32 freq)
-{
-	u8	i;
-	u32	ch = 0;
-
-	for (i = 0; i < ch_freq_map_num; i++) {
-		if (freq == ch_freq_map[i].frequency) {
-			ch = ch_freq_map[i].channel;
-				break;
-		}
-	}
-	if (i == ch_freq_map_num)
-		ch = 1;
-
-	return ch;
-}
diff --git a/drivers/staging/rtl8188eu/include/rtw_rf.h b/drivers/staging/rtl8188eu/include/rtw_rf.h
index 2df8837..35f61be 100644
--- a/drivers/staging/rtl8188eu/include/rtw_rf.h
+++ b/drivers/staging/rtl8188eu/include/rtw_rf.h
@@ -140,7 +140,6 @@ enum rt_rf_type_def {
 };
 
 u32 rtw_ch2freq(u32 ch);
-u32 rtw_freq2ch(u32 freq);
 
 
 #endif /* _RTL8711_RF_H_ */
-- 
1.9.1


