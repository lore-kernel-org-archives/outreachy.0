X-GM-THRID: 6671642851007266816
X-Received: by 2002:a9d:5d0d:: with SMTP id b13mr11784321oti.53.1553362899871;
        Sat, 23 Mar 2019 10:41:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3189:: with SMTP id x131ls1947374oix.2.gmail; Sat, 23
 Mar 2019 10:41:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy/BPcOoCkSfvT3IR4v0r1yqBrRbRo2DlXSCKvmRQ0jIO83iPe3aP1EnDXktGfQ8xjSCwWY
X-Received: by 2002:aca:ea54:: with SMTP id i81mr6223399oih.44.1553362899209;
        Sat, 23 Mar 2019 10:41:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553362899; cv=none;
        d=google.com; s=arc-20160816;
        b=FL9OhFXCF4JUjaJ23Ss4x1WcFEYtPMfSpnm6VKiENuIS+ofwe+QkWoDsy60u8+QeX1
         jaBgMUVz41Cjge0c9xltVCnEq2uB9YTNTVD0aooXy6Ti1NfV9Q5r9vw7W3Tgw9wgfU7s
         XAh8nz70s6J4K2hSnNeU/FPfCTAdqh+DB6MYFZSKr6gktSBHTqF5dBhputes+OZ2BdHs
         4jkFu5kHS9KX2FvuEpgdpmy9feDZmu+o7AyXnKmO4Xk/oYenUkSM0QHswKifmP5qZsqv
         hreTQUMTQp5jDVPUnOeTngn+7shjv/wzNrikbpU82QsEHKXjKGTvuVBwXsDeITRJNP2L
         kaAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=wxpQ2Oh2Leo3OvDkdfHrjHuhN4m1fAMtB0VxkND2TmM=;
        b=ABg7NaegtcwKAbfpVPmUCqiO7rdyaPJ+9AjMtFisUb64kUakDkWGC93uCdCrEIuEZI
         T6yhA0Oi3shxu2P2On/t19/Wmfqc6FCissnkHEeQWNSZKYvalLzoaeoAHXM6tuwv+Uhc
         7/3FuQE92jd8y6OvLAbPnV6Gynx/rYnUTKwk+L0AyQn6IvQIdWsFmWpYnknpb8Lk1ggG
         1zFJfR7oPC+FlLUxKtFzBB/AXX/UPa+18MOnwszLi2tblOQNKPk7v+mYB0SvdvLmOKbz
         j5qDSKZHR62gGVhdBiTiatj7n4EvnCo4jkRxCwvVRZcArdUwREp8SxQbhKsCqOjFh7es
         o+2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TST8gc55;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t14si451482oth.0.2019.03.23.10.41.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 10:41:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TST8gc55;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id c8so3597805pfd.10
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 10:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wxpQ2Oh2Leo3OvDkdfHrjHuhN4m1fAMtB0VxkND2TmM=;
        b=TST8gc55XWsgWAAWp3Ve3aYmJ85pqKP0aaJf0RI+4qDunPoeByNz9B5gWkUesEnp7d
         TgDmmRiropwaaKXcBEQ/3Xg1oaAK9aYVSxOeXPXyl4XeRxjDBNNRLN+zt0447zz4jQPq
         nf0hyKFjYPOnueRNxauQVet3pUbpSJIyVQ6s+bnpCspIWVK+EHsigg5Nx1/S1nuqOBl6
         kVozq4imMu0BoRUBmj7UgxsoPJHjyTQoOUxranYeQMIjVJFi240dRUi0JHCGZCrBZ0Bx
         OrPfuETGKXXfXj1ifHoI2lil/K6FHJ//eEETsbie/NNsvV7aih1J//t2gnqeDJF6Z7u4
         dzkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wxpQ2Oh2Leo3OvDkdfHrjHuhN4m1fAMtB0VxkND2TmM=;
        b=PkABqQ5UOrieCMdiR5rNQkpxOCrg3ni2B+aQ6CXarp2h8SeyDv8ZZdaLRyWzOVqhTd
         9jWH8pOqi8nUzUeei7nfHvOTMw2p0zjClJNv3sub1+/5HqEBiCrhI6xF/+1aqLJkBsdG
         YV9ReJg8aiH1zuHDIdMPlScU41Czmn+PH+gIva/E2zIBhCdsVg51T9ayBDFiI8JZteGT
         VsKtL4pEdwy2WfjcgaiBb0+zeJG7QuagGY03OnWQc9Eu0QQm4stqSgsN8ZMFQqv08bfv
         ghWO+fewAqc/IXKoIsbxPXIJ8urJJFc414kzyOxKb1iKKgYIrtB454HtN4IeTdrozNmT
         mlMA==
X-Gm-Message-State: APjAAAUNgUkHGwQrIvh57jOFTU6yQp/tHHThd71MsQDpKwY0C9JDi6mA
	xN98YnlLmh5aym4iiqBgB++KDGC7K3w=
X-Received: by 2002:a63:7444:: with SMTP id e4mr15134369pgn.398.1553362898379;
        Sat, 23 Mar 2019 10:41:38 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.188])
        by smtp.gmail.com with ESMTPSA id g17sm17233402pfb.0.2019.03.23.10.41.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 10:41:37 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v2 2/2] staging: rtl8723bs: include: Eliminate p
Date: Sat, 23 Mar 2019 23:11:21 +0530
Message-Id: <20190323174121.5857-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Getting rid of p's from pointer's name

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
changes in v2:
-added this patch to patchset

 drivers/staging/rtl8723bs/include/rtw_mp.h   | 2 +-
 drivers/staging/rtl8723bs/include/rtw_recv.h | 2 +-
 drivers/staging/rtl8723bs/include/rtw_xmit.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_mp.h b/drivers/staging/rtl8723bs/include/rtw_mp.h
index bb3970d58573..a2fe98153297 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mp.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mp.h
@@ -44,7 +44,7 @@ struct mp_tx
 	/* struct tx_desc desc; */
 	/* u8 resvdtx[7]; */
 	u8 desc[TXDESC_SIZE];
-	u8 *pallocated_buf;
+	u8 *allocated_buf;
 	u8 *buf;
 	u32 buf_size, write_size;
 	void *PktTxThread;
diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 7d54cf211315..b4ac00e2ba43 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -305,7 +305,7 @@ struct recv_buf
 	struct adapter *adapter;
 
 	u8 *pbuf;
-	u8 *pallocated_buf;
+	u8 *allocated_buf;
 
 	u32 len;
 	u8 *phead;
diff --git a/drivers/staging/rtl8723bs/include/rtw_xmit.h b/drivers/staging/rtl8723bs/include/rtw_xmit.h
index 1b38b9182b31..6e4e047ad5cc 100644
--- a/drivers/staging/rtl8723bs/include/rtw_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtw_xmit.h
@@ -252,7 +252,7 @@ struct xmit_buf
 
 	struct adapter *padapter;
 
-	u8 *pallocated_buf;
+	u8 *allocated_buf;
 
 	u8 *pbuf;
 
-- 
2.17.1


