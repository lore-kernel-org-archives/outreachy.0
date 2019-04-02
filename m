X-GM-THRID: 6675306289475616768
X-Received: by 2002:a0c:d928:: with SMTP id p37mr8720057qvj.40.1554215859140;
        Tue, 02 Apr 2019 07:37:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ea50:: with SMTP id u16ls223883qvp.9.gmail; Tue, 02 Apr
 2019 07:37:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzVRfzAYaIclgZmi3KbZ3XvUeMMhgCIOWywKEuZoYv7q23ZmzhzV5l9ZdziE1V9SeIbaXMx
X-Received: by 2002:a0c:af99:: with SMTP id s25mr8652125qvc.57.1554215858536;
        Tue, 02 Apr 2019 07:37:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554215858; cv=none;
        d=google.com; s=arc-20160816;
        b=t79iPTDZoCE2y6qEkH3f/dTO6z9QF1/mcN3qZ+yxq0wjRsW6UOEEqkKh4d9lUE59+H
         24n1eod3IFPWdLFVZ/+zn7NLe8syCmlCWBsFtN3DFsplh3ShGA6YNAvFdItHhA8yNCZY
         8hAXHZ4ZpUMAHkT8Vm/KPRMCHHsDT3gQ6CyxKSF6Cww2k8e1hhEnR6NEwwltqZVYOFkP
         z99EP/nuKw3C42oPZ/FhJAcjHHzzZi7IfK2oytja1gJKJDb/JMOTWn+hM/fDYgUZJYOU
         zTiAjQKsGwBLgJ4BUY3/xQw2bsAaj9I/C/0MpX2uU54J/0Pv8pZstB+6spMDVz45oVS5
         DojQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WZdii8nI8M/XzRLLZEV2oMR0YxemNLkBQ55bQaeZGcw=;
        b=ZZF+g5+hlfrEo+Vk0ZAhUcDZajF2IB8c5E0FLZe726Ip+QJ8iMst4y/1YQgaE4OdAQ
         M0pg3RBjRBfAZhLCCKb3kPxW82lV14RXZKIEiYiNhJ0/2PWl9p7m6uH1F9UoHl+7+no+
         lvwSeI+EWd5StPl/PiSi2GIW/wefpYY/q2D9fNbg6HpkNBny1GhFTUCaQ5VTonz72yis
         MCLKH5V3jZyl/Kl+DjOLM7I5bOPKKmVCay/c3hzpmaS/ZURugTWEh+yH7iOPvWRMENvX
         FfeyOVqfcc3NstJcxIkld6zOXVAef1a2lMkBpNlUnLUsVurjcJjnBG6p75eUPpL9GDAY
         hv6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CCw2LW1D;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com. [2607:f8b0:4864:20::229])
        by gmr-mx.google.com with ESMTPS id f92si478498qtb.1.2019.04.02.07.37.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 07:37:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) client-ip=2607:f8b0:4864:20::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CCw2LW1D;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x229.google.com with SMTP id j132so10670421oib.2
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 07:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WZdii8nI8M/XzRLLZEV2oMR0YxemNLkBQ55bQaeZGcw=;
        b=CCw2LW1Daf4rVWbPMLokJthCmu0YJOXs1IZWHqMmMGtaHQWVPHcYQGA4h8tEoCRNPZ
         N9Yg/8mwtrJEPPeSxZnb56idakSO8yexA0q1eYavKWA0I8wjtAkpguH1vBE/RkC2AedI
         x+F+LkuVcUC1XrGA7HVCJZmNQnTciRrbuETi8VmojAv3+ehzzIzcvxjo6F37gcd8ziDQ
         GruwaMNWFfiPn4M0NeCHoy5Z8cUdUqkLNZ6Na9zHA2Y3EzgPbbIUvzMKI+eDvlXVm+FD
         JUfyff67EEUBbQJ65OrxB7KroiWTBolhQGyRDRZ1d/wjNFiG7NHqh2MyKm1IdZQtXKw1
         +igA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WZdii8nI8M/XzRLLZEV2oMR0YxemNLkBQ55bQaeZGcw=;
        b=M84jG4nGUuAB+1xNYVZf4lIm0rqKp8I37/c4155E6TaXFpAYCe1da9TIAZ+CsGnZj2
         91EwpOt5PpjiRXzKbpjC3iA2QSlE1QuF2j01S19MmEn4H3C+7qJ1Uj4VdMkbH19BNXcY
         WerxvTFuzuPxdg6MgZz05fvMp9Nn3Hl+5NFF+N2Rq/xWc5D738mXxCXPS1jekKZxL7i/
         xv1yNH6opmqamVhVWwSklXP3v4d7CZPetOMSz7ROoikNOdgz84AwkQsV6U7S/2IbTNV+
         OcRPk6PyCBPBIaqcKywK2j9mMYkwxql83vYEepD7whsbR7jmqPDp27OpmLubSQiV2EAG
         2GSQ==
X-Gm-Message-State: APjAAAWwSW/9kI05pUu0k6PBP2NXRh2rwOvVuwPAdSGcnZFEUK49OQOU
	w+SnCjlzSFYQ3ZH/IyE/EQk=
X-Received: by 2002:aca:3405:: with SMTP id b5mr6799321oia.40.1554215857993;
        Tue, 02 Apr 2019 07:37:37 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id g12sm5485099otr.18.2019.04.02.07.37.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 02 Apr 2019 07:37:37 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: rtl8723bs: Remove typedef in struct dynamic_primary_CCA
Date: Tue,  2 Apr 2019 09:37:33 -0500
Message-Id: <20190402143733.15056-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove typedef in struct dynamic_primary_CCA, as a struct that has
elements that can reasonably be directly accessed should never be a
typedef.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v2:
- Modified name of struct
---
 drivers/staging/rtl8723bs/hal/odm.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 23ab160ac2c8..4f1aeb8ded29 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -82,15 +82,15 @@
 
 /* Remove DIG by yuchen */
 
-typedef struct _Dynamic_Primary_CCA {
+struct dynamic_primary_CCA {
 	u8 PriCCA_flag;
 	u8 intf_flag;
 	u8 intf_type;
 	u8 DupRTS_flag;
 	u8 Monitor_flag;
 	u8 CH_offset;
-	u8 	MF_state;
-} Pri_CCA_T, *pPri_CCA_T;
+	u8 MF_state;
+};
 
 typedef struct _Rate_Adaptive_Table_ {
 	u8 firstconnect;
@@ -1112,7 +1112,7 @@ typedef  struct DM_Out_Source_Dynamic_Mechanism_Structure {
 	FAT_T DM_FatTable;
 	DIG_T DM_DigTable;
 	PS_T DM_PSTable;
-	Pri_CCA_T DM_PriCCA;
+	struct dynamic_primary_CCA DM_PriCCA;
 	RXHP_T DM_RXHP_Table;
 	RA_T DM_RA_Table;
 	false_ALARM_STATISTICS FalseAlmCnt;
-- 
2.17.1


