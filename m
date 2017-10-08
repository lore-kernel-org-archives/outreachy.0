X-GM-THRID: 6474399283336445952
X-Received: by 10.99.125.28 with SMTP id y28mr596112pgc.161.1507438580128;
        Sat, 07 Oct 2017 21:56:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.4.206 with SMTP id 197ls525672pge.15.gmail; Sat, 07 Oct
 2017 21:56:19 -0700 (PDT)
X-Received: by 10.84.233.2 with SMTP id j2mr330141plk.14.1507438579495;
        Sat, 07 Oct 2017 21:56:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507438579; cv=none;
        d=google.com; s=arc-20160816;
        b=oH5SJ/M5rwiuBwCbkw3dcOh9O1hMMTLmeTfg9YGXtlKtTkJOq1caRQlS+RUT+/R69S
         0IXsjFveLoR1503z6WQsuV6qHyvm9zfRO6GIwVYqUvma5y4XJagCiHupElLQVIT1yiQg
         fII5EdqcPM9O90azGEjBh1a1BUtPndLOdrCKakLDa9foll0JnAquLDIDOO/AJgC7i3qo
         SOnrq3XxJQcLR4Xt+ZlOSGGHziREEFejfBbQFe4GM+2iavw7mMHc265OLSd4nJv4P6Dx
         itJvaQssMSlvW6TFJkiGduT/e3TTwCuFvYj+5USTRdYHnsIOHVLUdXst+b4Wvs8KKH2+
         l3ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=eV+M7J0ZcO/rhcoIMg8dUfNK64OqEX8I5sw1F1zzwfs=;
        b=c1q2ni74MWjJfM8nBR4Iai/oOfB8VrW+y5pmqW0Idon+eC8dhhjVgR+DokDovgp7hH
         awoPx9kV40lUZxc7HNKNxnhavLv5HYNUVS05dkJd4QuzeLa4qTblOPgIz+6NcAjyuwUw
         74OLfcA35sksM3QhuZHv1VRyEV7qLWyUhvqtvqcDWnIawuAMXqjnLbZkOAa626ZGmEnY
         n6D0/18bGiv6lAyHxguAJi/IntbF3NR6JkCuZxeGZ7ruGmT3Ue5zKdlyMjug09OKpo8/
         jCLtNJCL4++c7qBEyC/nFD6NwE478+3wrFAEscMeosiYgyUvgIxHouLpyhb8wuVNGbaK
         X3JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fKV4kYO+;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id w124si517094pfd.18.2017.10.07.21.56.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 21:56:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fKV4kYO+;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id z80so2168560pff.4
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 21:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=eV+M7J0ZcO/rhcoIMg8dUfNK64OqEX8I5sw1F1zzwfs=;
        b=fKV4kYO+fq+eM/PO9B8dJ0ivcLEbwLSGg8MoHf0OOCpPA8E2hSgR1eoyMNDVc+FJa0
         J3V/ghdaYKWe2pr8+JSM4Js3D7aBSW1EDqEwXEFo+/eBJfTFEOBrgqEgrJRDy1MYe7i6
         EO/vGTpOGNzB4/h/uoJPeuJUSeHydbhtyV1eIPpcek1cdXlCBRr5uunDtaUBnmCUR29S
         RZcovx5qbq981+pE0XUH1BXwHc8Ky92D8v58oeIug2PswZdH1Yu7EIIuCDXL5xq5QKNq
         BCBSuAwJp4N50oHcSkUITJtLSY0V7QeBnqbQNpmz2vksYfLFcvyBimVyRizuk0p6CeU7
         dujA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=eV+M7J0ZcO/rhcoIMg8dUfNK64OqEX8I5sw1F1zzwfs=;
        b=OZNhR0UYiHg7sowEeGTr2FDeJQXe/NWQQ8SK1XvmeY1wA+bLCMGo5q0DKWsnAfJeO1
         CGy01B+8eMlFitJnr1bfMEr6SJOJgyyr3C9baLKj7TS9Z8VF1RLY/B5d5fZrYFu2gm7k
         Zxs99XLIahVQhsdohmz3O4u7qKFFPabYhaBFDS7KQXGx5FuZi2KlQQWxCVAbjSZTTEro
         inXRItB/RJrMhzgIZuTsGwdhZMJehJLbrsIqsQq/gehnQjhyyk74nMc76ZgcheXzYinx
         nUucUxtkOToVEnUrvty5q1cCtaIgNGZyHcFrlDqK+TA2pmlJ8ZrrILzbt0N6fte6v7A2
         Stbg==
X-Gm-Message-State: AMCzsaVExsGqZSiYCLqEZNRhlcwLRMYFj8l5lwTx47vX1PX3buBXJsHA
	9yHmsKlJ5L8iMrm69YS9YjM=
X-Google-Smtp-Source: AOwi7QCAA8MXRitDUe4c2x0j0zRTu/lErzTs/Yjj9fnQq7ngZbR+23ELLNsri+5i+1ooBWYTVfP6Kg==
X-Received: by 10.98.17.202 with SMTP id 71mr6597313pfr.142.1507438579196;
        Sat, 07 Oct 2017 21:56:19 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([45.127.232.78])
        by smtp.gmail.com with ESMTPSA id d7sm8492589pgf.20.2017.10.07.21.56.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 21:56:18 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 6/6] staging: rtl8723bs: remove useless variable rtw_AcceptAddbaReq
Date: Sun,  8 Oct 2017 10:24:56 +0530
Message-Id: <400354c142eb8a27a4f50eb2decd3fd63ec34bc0.1507437264.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1507437263.git.aastha.gupta4104@gmail.com>
References: <cover.1507437263.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1507437263.git.aastha.gupta4104@gmail.com>
References: <cover.1507437263.git.aastha.gupta4104@gmail.com>

rtw_AcceptAddbaReq is a static variable, it is set once and never
modified. It is referenced only once, to assign its value to a member
of struct registry_priv.

Remove the variable, and move the meaningful part of the comment
near the declaration of the relevant field of struct registry_priv.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8723bs/include/drv_types.h | 1 +
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   | 4 +---
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/drv_types.h b/drivers/staging/rtl8723bs/include/drv_types.h
index 6812dd0..32129ac 100644
--- a/drivers/staging/rtl8723bs/include/drv_types.h
+++ b/drivers/staging/rtl8723bs/include/drv_types.h
@@ -177,6 +177,7 @@ struct registry_priv
 	u8 bt_ampdu;
 	s8	ant_num;
 
+	/* false:Reject AP's Add BA req, true:accept AP's Add BA req */
 	bool	accept_addba_req;
 
 	u8 antdiv_cfg;
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index b4b79fe..c002c10 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -113,8 +113,6 @@ static int rtw_ant_num = -1; /*  <0: undefined, >0: Antenna number */
 module_param(rtw_ant_num, int, 0644);
 MODULE_PARM_DESC(rtw_ant_num, "Antenna number setting");
 
-static int rtw_AcceptAddbaReq = true;/*  0:Reject AP's Add BA req, 1:Accept AP's Add BA req. */
-
 static int rtw_antdiv_cfg = 1; /*  0:OFF , 1:ON, 2:decide by Efuse config */
 static int rtw_antdiv_type; /* 0:decide by efuse  1: for 88EE, 1Tx and 1RxCG are diversity.(2 Ant with SPDT), 2:  for 88EE, 1Tx and 2Rx are diversity.(2 Ant, Tx and RxCG are both on aux port, RxCS is on main port), 3: for 88EE, 1Tx and 1RxCG are fixed.(1Ant, Tx and RxCG are both on aux port) */
 
@@ -311,7 +309,7 @@ static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 	registry_par->bt_ampdu = (u8)rtw_bt_ampdu;
 	registry_par->ant_num = (s8)rtw_ant_num;
 
-	registry_par->accept_addba_req = (u8)rtw_AcceptAddbaReq;
+	registry_par->accept_addba_req = true;
 
 	registry_par->antdiv_cfg = (u8)rtw_antdiv_cfg;
 	registry_par->antdiv_type = (u8)rtw_antdiv_type;
-- 
2.7.4


