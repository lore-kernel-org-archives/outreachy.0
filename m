X-GM-THRID: 6751406799078817792
X-Received: by 2002:a0c:8731:: with SMTP id 46mr15612157qvh.141.1571934390733;
        Thu, 24 Oct 2019 09:26:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:25f6:: with SMTP id y51ls1971203qtc.7.gmail; Thu, 24 Oct
 2019 09:26:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyF2FjU5pJ/fce2Ot+Qhtx7t4xacbmF/emOQLew56cCCrr1ZKsB2gASZJ0x5yjbYTyaGzW2
X-Received: by 2002:ac8:1244:: with SMTP id g4mr5042170qtj.3.1571934389864;
        Thu, 24 Oct 2019 09:26:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571934389; cv=none;
        d=google.com; s=arc-20160816;
        b=C/m2zLCC2RiD+ewmohH8uPK4Y9cvThJSca3DwoH8Rbg9SaMol0zXDs932ANZyo/DKY
         CxipFcxeqIraMBROEw0SAh/kNOYRL6DR9ZPOdsQIqXb88wraJb0LCUWtsXFQXoWDQ0qg
         HZMXIE/IUTFoY8lSshdXywyOMXR9SbU2PDfSL6Ha6x8DcUpahHeoVwNM6MxDpXV2yPPt
         2RfhQOw9wDlUQyoLfzt6JVYnn65N9s1Q29dCOT2XlUOo4l4PmPTVU3iUD4ELBAvem9wr
         59Ykx593Jcc+8BOpgIU4iKp73jDDTFOiZSTJLdZ4p+PzZpNcg7hKdOc484A5yneSj/H/
         fbOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=M4rMlp4nr3Gl3jgaHqsajNk8xbhK5NUaD+MhSNcFeIs=;
        b=N1DTIhMYBc6EQepXe+4LexzKv9+vhu9GDpmVmuAGpDV4JF1Fz0pP6Wv4FPdaGt3dOl
         TqFwhHqiQUArij7JGr3zEuhc4UPVust37M5rhBU8EGBa+XxcBb4ASm4+ynDo2GvQSQNI
         YRV1ZtuhyQKT1Aky9nU2w/vj4qlcWFXHz5nO3N3CFW2fklA50+DfI4Tg2dP+Z+wwNfFw
         ux8RUEKgiPym2x+Ew1P6XHsClZfK8XvJsN+yBQKZMb1AM/nCfsHomFH2rcCSO1ZgsK7v
         OawKFUOtBMPUVIZnzNJqMcC7En0MfqUUo4IsiaK2oh4GaOb26NkGQyau/46/Shz3C4zh
         T4zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C59os57p;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id c78si1083660qkb.7.2019.10.24.09.26.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 09:26:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C59os57p;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id u22so38681354qtq.13
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 09:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=M4rMlp4nr3Gl3jgaHqsajNk8xbhK5NUaD+MhSNcFeIs=;
        b=C59os57pdv/N85fdDfIV0CnL7QbybifIMAN34Ekf77rJnTaK42zz4E8SoVnTCXrUyb
         Egubl+A4WQ4IaIhsGlAhAnCsNz+J1ghVN1+mVZz9rCeAnUW7I+1aGzsveXNDCVU3e8yK
         UoTL7w/L62d5OBSbr+/ws+1DA1NsXb4NS/3+rEzSLoeuD1e0uRvCYPNPcr6ucjZUGa37
         f1SU39w5lhs5Y6ujeIyiPwBdG63X5nSOm1XGSZTQVsjgcH4RrxOQUAQogzNzRCMKnVoS
         sI3qmkgfnFFuz3jMBJwQWp4o6kSiKgOElCchLApMHg12cHFCRsrqdl72TPjEKEhDDjwu
         Hx5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=M4rMlp4nr3Gl3jgaHqsajNk8xbhK5NUaD+MhSNcFeIs=;
        b=CkhkcvG3AOZbMocAs07HYE49ooggQMHffMuCHBI0tnPEiEz67m9StsBt/D46waElYa
         nWTKJ/9kWHG/KGxs9XxO1YMP7DBS0jBnP6SfcaRiTym6YVWNaklWppY8A9gCYE44nvJ7
         VsJduwdGgqzhjm9qfYKTbeYbZb1RgIwGPncmOhMcIG+5LjCRahWauuHcmNL7NGkPc2Pz
         Mvm/fOEVwtOZWnckGQriCl/5QlsspVul03Z3h9XwuLaFyujNlWgMSu2GtpWMtM567Kh/
         J5WWMjuPQyGnv2BQRwknLy1Hj1zYpk+wdCObyrw8bNHTDmBFY9SYLl0zXJPCH1zL1YVF
         8bXA==
X-Gm-Message-State: APjAAAWlC8TOWpDfH9whHQubhUWhc5hwf063gH09az6jgxwbIFYroDiu
	+BzE+uzAMUcAzxAVGtvYHjPetf8e
X-Received: by 2002:ac8:7007:: with SMTP id x7mr4911319qtm.89.1571934389628;
        Thu, 24 Oct 2019 09:26:29 -0700 (PDT)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id k13sm9146200qkg.57.2019.10.24.09.26.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 24 Oct 2019 09:26:28 -0700 (PDT)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH] staging: rtl8723bs: hal: Remove typecast in call to kfree
Date: Thu, 24 Oct 2019 09:26:10 -0700
Message-Id: <1571934370-39013-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove typecast in the call to kfree as it is not needed.
Issue found using coccinelle.

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 301d327..5645658 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -1029,7 +1029,7 @@ void sd_int_dpc(struct adapter *adapter)
 				if (c2h_id_filter_ccx_8723b((u8 *)c2h_evt)) {
 					/* Handle CCX report here */
 					rtw_hal_c2h_handler(adapter, (u8 *)c2h_evt);
-					kfree((u8 *)c2h_evt);
+					kfree(c2h_evt);
 				} else {
 					rtw_c2h_wk_cmd(adapter, (u8 *)c2h_evt);
 				}
-- 
2.7.4


