X-GM-THRID: 6616097415299596288
X-Received: by 2002:a1f:80f:: with SMTP id 15mr6462602vki.17.1540635469191;
        Sat, 27 Oct 2018 03:17:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7681:: with SMTP id r123ls684996vsc.4.gmail; Sat, 27 Oct
 2018 03:17:48 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dUom+dqTVzCdt4cwAXBF35YtIFkFdrJjaLdYdA/MLlOCWmDzjzORjRO1TF1xf/e3ynFOy/
X-Received: by 2002:a67:7dd3:: with SMTP id y202mr6519830vsc.36.1540635468439;
        Sat, 27 Oct 2018 03:17:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540635468; cv=none;
        d=google.com; s=arc-20160816;
        b=nJuB7NSh/5dJ1b8rlNEKVyq3HkTJQZgOe3aEiz9A6yYL4Kml1qPmbS1vDvwGSBtaJI
         5Wciq2LvKxtMa89yiungSC4+fWqUAocnfTqfvBYdK7Lpiu7OSrMiUknLt1b5mt6UAm3d
         rLyRowvnyskGC68pgpHMfQ4ShBGmWPPBV+2I0R6gGCd/NTgh8KHIH7JTz85kQB8m2UUP
         yhn51Yw/JXabZP1xBcAlYZFmSyzm4nKSyCs9QxAj4OR5zjQtcnj/SltqsbEixYEzbFV1
         4wOFMDqPWHpXDAkaBpotPEVuOl1Mxjjpa/wQeA/YSEELQDc08s7GjFDP1OcNMEKNyVqI
         dMbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=LqdUgJUrMFFT86b3dKUJKznZ31ZG4pm2fMtKBC4wz4M=;
        b=Xfe+fls2jKEtu1NNmqBA79amzynV5wyNinwTp/varKFv+B1jFU75RqyunQYeN7SHC2
         0seAIR/E/Xf6HwElD1uq4fUvWPVA8BsFhTMIGBs0DGjsrAsL0O1X6Nz4bIlp3kwyypB+
         ddaCAer133cK9l1Ccxpe8C0Umw7C6g5U+7RMfPDFH7JEPCFtzcOHcYyooJho9cRF3d5n
         stWOYfyRq3I6p+8CQatvLb38bLX+7WP7mQ/JbSLYhnWby5K3E02HgzhIcep79q0/+F/3
         +4togqLRuVZKmzI58+n6vhayYaYTQU4Hz/O0PvpR/Ykt9idwXF3+oQGW93guysm6hupj
         5XJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XHfV79YX;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-it1-x143.google.com (mail-it1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id y4si642349vsa.2.2018.10.27.03.17.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Oct 2018 03:17:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XHfV79YX;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x143.google.com with SMTP id i191-v6so4548115iti.5
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Oct 2018 03:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=LqdUgJUrMFFT86b3dKUJKznZ31ZG4pm2fMtKBC4wz4M=;
        b=XHfV79YXlw1lMOUytG7yiPM5APkpVwwsgdasoA6jGZOsnrAilJUakcicQdge8EsoQM
         W3rstByae/i5k/RqZcF8ozbo19dg0t/MQtH3Xf8aEHPhWhDl2Avh0Gz13FYxr0OvTNXb
         jWGHRTOaKNNo1SDODnYzWk27RsOrlqm7MND43gMyZknnsSfKwZU93W2iLeW4jCfcwW/P
         qYALb8XZqiCofF7kktJDS/CECqL5YZ2A4CWmVoXnCZN1YI93oZrn3WqIJ3IW/7jwrU5k
         JY4W4KWyhl1W2s9QjaD4LqwqzPbvcS9TMem/PUvNxGmRSbvuSye/5PauC7Wz7Jm8Wjbk
         U9Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=LqdUgJUrMFFT86b3dKUJKznZ31ZG4pm2fMtKBC4wz4M=;
        b=FGCEM4AhbQJRT5slTvVIpQm2QkvazdE6PUd6RqtxKPN9/cIdK/jCBbo85RP3vX3gzA
         zCHVNAkzwdQomGaA+pmSlN6VehCKkd08bXvi9z40zAEqa5nK5j6/xHOHecH5PjhZU/tT
         eiM8bJYWOeDUeli/SkhOSFI7gmL6AixYRgpvFQaU5JG/5KTlJ1qtcmmjEh5AhCUoCchj
         vcrbSFM0VVOyGe1CjM4LyrN/Fa8xgA/Roq69hzg3IvXS6Bf8L6UmL4cMDJIoPFQXAsJ0
         77tFQdU7VDKLXPP3ZCQ0/FrYGupgGecsrx0l7tvtJyA3Kirn0TtYN0rxRDhqQrQVjRec
         zI3Q==
X-Gm-Message-State: AGRZ1gJw7vt6BlKyxp2hWIFy+jhW8PmW5BCEwOGPcZVrAA+WQ0mVd2FA
	36koDNwvzRshV2XLKM+fHDEr2KdG
X-Received: by 2002:a05:660c:3c9:: with SMTP id c9mr5529706itl.130.1540635467645;
        Sat, 27 Oct 2018 03:17:47 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id q185-v6sm2804411itc.30.2018.10.27.03.17.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 27 Oct 2018 03:17:47 -0700 (PDT)
Date: Sat, 27 Oct 2018 03:17:43 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: rtlwifi: Remove unused functions
Message-ID: <63ef0e8be67b0e79e8bf68b6dd93af77b711ad50.1540632666.git.m.maya.nakamura@gmail.com>
References: <cover.1540632666.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540632666.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove the five functions that are not used from the source and header
files. Issue found by Coccinelle's semantic patch results for
returnvar.cocci.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
Changes since v1:
 - None

 .../staging/rtlwifi/phydm/phydm_hwconfig.c    | 35 -------------------
 .../staging/rtlwifi/phydm/phydm_hwconfig.h    | 10 ------
 2 files changed, 45 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index 1b05db36e279..e1544e38944b 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
@@ -1848,38 +1848,3 @@ void phydm_rx_phy_status_new_type(struct phy_dm_struct *phydm, u8 *phy_status,
 	/* Calculate average RSSI and smoothed RSSI */
 	phydm_process_rssi_for_dm_new_type(phydm, phy_info, pktinfo);
 }
-
-u32 query_phydm_trx_capability(struct phy_dm_struct *dm)
-{
-	u32 value32 = 0xFFFFFFFF;
-
-	return value32;
-}
-
-u32 query_phydm_stbc_capability(struct phy_dm_struct *dm)
-{
-	u32 value32 = 0xFFFFFFFF;
-
-	return value32;
-}
-
-u32 query_phydm_ldpc_capability(struct phy_dm_struct *dm)
-{
-	u32 value32 = 0xFFFFFFFF;
-
-	return value32;
-}
-
-u32 query_phydm_txbf_parameters(struct phy_dm_struct *dm)
-{
-	u32 value32 = 0xFFFFFFFF;
-
-	return value32;
-}
-
-u32 query_phydm_txbf_capability(struct phy_dm_struct *dm)
-{
-	u32 value32 = 0xFFFFFFFF;
-
-	return value32;
-}
diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h
index c9833889688c..ee4b9f0af2a1 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h
@@ -484,14 +484,4 @@ struct phy_status_rpt_jaguar2_type2 {
 #endif
 };
 
-u32 query_phydm_trx_capability(struct phy_dm_struct *dm);
-
-u32 query_phydm_stbc_capability(struct phy_dm_struct *dm);
-
-u32 query_phydm_ldpc_capability(struct phy_dm_struct *dm);
-
-u32 query_phydm_txbf_parameters(struct phy_dm_struct *dm);
-
-u32 query_phydm_txbf_capability(struct phy_dm_struct *dm);
-
 #endif /*#ifndef	__HALHWOUTSRC_H__*/
-- 
2.17.1


