X-GM-THRID: 6670815133562830848
X-Received: by 2002:a0c:be81:: with SMTP id n1mr4313133qvi.226.1553192165206;
        Thu, 21 Mar 2019 11:16:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6b82:: with SMTP id g124ls2859766qkc.3.gmail; Thu, 21
 Mar 2019 11:16:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwg2Jc4+j2DAcgdhd7wg0CxxVvIlmAEmNyoUGZhh1akgfPXSIuxOFLUQIUleDsj2RD6ZQ2H
X-Received: by 2002:a37:e315:: with SMTP id y21mr4048862qki.233.1553192164605;
        Thu, 21 Mar 2019 11:16:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553192164; cv=none;
        d=google.com; s=arc-20160816;
        b=J7NUfkYkfhFTXPXqMgVyPSp5d/xxtGVpLPPKnRk/dLHb8wzXcaTbZVsOyphm5n4Qj2
         T2zxjfcVxQX5H5zmLzHWNpKmdCkFlYGS7UZkBGuAnedrOsI6XfFkMIEDP+ekQQ1inKGw
         xzAN6bzKOh126eS8fDzTam8iSbjzP4KpTfT7XrzOgJl/T/wBDscy2R3nqet1Wx8YWT1n
         uQtaG8oFKSY30zPwgH0+xrD7pJAD9qAVzq7NMFbQnqaSLdGd5OBSM2QGVQtrXQX5t4N9
         BlQ3yoms9vCmCFiLKlrwp4XwXXZTc2MGYnO64IfjERiJ3ntjSv6oCjYHeLz53X78beXo
         elWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=45hZm3Mk2bEROTb7ATAwZrAMDBRjoaSN5OV+iRnrK/g=;
        b=NjljiPVbatIYN4LjdTVLIK2W6NSwYBEFX9fg4vq0Ej9hgv3tvWD/4eeetj3fM/LNqB
         1B1mduz1+XLB6QTEUA7qowXGqiA6sZ9HbUE4P5qs8dWGiX4e8iwoFk5On0a/p1+h8QNA
         mUsPiDWUa+IUWozB3oSHk4HIvgAMPGZnuhd/NDvMMGW1hWbbtgIcL/+2RelsGAT4ejBs
         taxWYRweCxt6NQ6sd2UczIzDD9nXaPw7tYVu76IGw85i9oSay03B3bbwAlSmYgmHcmtX
         Bjf4sGSleftsiizXRjFcvdHYHpVjvJPLNUqDisZg3gyQMnWIbmFl/FP/tMdVn0Ew9s9J
         TzIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AujKFapr;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id d192si299594qkb.4.2019.03.21.11.16.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:16:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AujKFapr;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id g8so4766049pgf.2
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 11:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=45hZm3Mk2bEROTb7ATAwZrAMDBRjoaSN5OV+iRnrK/g=;
        b=AujKFaprFuPwgN/W2fRiGSX//Kt1nmzoVn6ll87vYsVFOzL0nEf1f6oH0EVV5YuFUc
         jdrPkx+0TF/K21HtVhRthD+c7Kt5T+7PgHWsHgF2ayKufFw8Dg4kM4jH2C4wShwnJFYw
         zhDNU4714c4Ia3DOvuXpoCQ4sMsDEWckrh6xi9/Q5CG8/E1kKZud10S6tXdIZZGaIimC
         WRbUs+Hb/Mio10UBvhwbobQzqikzRd98tygZs3isIr/aUo/DUfapM5k7LHAIHRq80E1Q
         ArIKGPz2zQIV4VdoiT3IY62Xds64BilfJnfVUJpVskRitXrnF/Bj13V6Qz205k1DBL/x
         OyaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=45hZm3Mk2bEROTb7ATAwZrAMDBRjoaSN5OV+iRnrK/g=;
        b=Ec8Bjn1qPaRI1ZHDDy/hJFFac1hNTRzSa3Bp+8ZVIusxE9fgZEKQxySsGD9iTVmFol
         8alXtWifL7J1TQxyUPu8g8JQiA36N08rLV1EVa7vtTqqbp9rI5a97Ucx9yqyxMJp++fd
         gDV9RGKmNm2EMWB/sECEE1m84OZb1tR8+kbuXl9LA1byfmVpa/PCwhkLgWlNaMcaN/+1
         XdrZ2FkY/0K3k4n5ohp3blpRK6bl08eHzvj4M/xopZH55POYo1TNmoJUBRc5pQdICsCd
         UvEA6TPk9MDAKwC6iQITp8CvjeqZkoPKH+mpA0OrSgFgpRFw8EzOdCYFlNL7QP6lZ6WH
         4+OQ==
X-Gm-Message-State: APjAAAWzcdFvGDPVV223UpNwZboY0Cd7iZJ8pU5e0KKbPimGY2yUg5Iz
	7HgWgn6A/bypsQx/gbizAkmd3EGe
X-Received: by 2002:a62:121c:: with SMTP id a28mr4625628pfj.58.1553192163691;
        Thu, 21 Mar 2019 11:16:03 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([49.34.112.101])
        by smtp.gmail.com with ESMTPSA id v6sm7296251pgi.90.2019.03.21.11.15.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:16:02 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 4/5] staging: rtl8723bs: include: remove typedef for struct pno_scan_channel_info
Date: Thu, 21 Mar 2019 23:44:04 +0530
Message-Id: <20190321181405.6219-5-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190321181405.6219-1-himadri18.07@gmail.com>
References: <20190321181405.6219-1-himadri18.07@gmail.com>

Remove typedef for struct pno_scan_channel_info as The Linux kernel
coding style guidelines discourage the use of typedefs for struct
types.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index 8912182e229f..3ea04bff0cbd 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -179,13 +179,13 @@ struct pno_ssid_list {
 	struct pno_ssid	node[MAX_PNO_LIST_COUNT];
 };
 
-typedef struct pno_scan_channel_info
+struct pno_scan_channel_info
 {
 	u8 channel;
 	u8 tx_power;
 	u8 timeout;
 	u8 active;				/* set 1 means active scan, or pasivite scan. */
-}pno_scan_channel_info_t;
+};
 
 typedef struct pno_scan_info
 {
@@ -198,7 +198,7 @@ typedef struct pno_scan_info
 	u8 orig_ch;			/* original channel */
 	u8 channel_num;			/* number of channel */
 	u64	rfe_type;			/* rfe_type && 0x00000000000000ff */
-	pno_scan_channel_info_t ssid_channel_info[MAX_SCAN_LIST_COUNT];
+	struct pno_scan_channel_info ssid_channel_info[MAX_SCAN_LIST_COUNT];
 }pno_scan_info_t;
 #endif /* CONFIG_PNO_SUPPORT */
 
-- 
2.17.1


