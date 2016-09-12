X-GM-THRID: 6329444787310034944
X-Received: by 10.129.76.211 with SMTP id z202mr15888159ywa.31.1473688703197;
        Mon, 12 Sep 2016 06:58:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.54.199 with SMTP id l190ls3253770itl.2.gmail; Mon, 12 Sep
 2016 06:58:19 -0700 (PDT)
X-Received: by 10.36.115.205 with SMTP id y196mr11285318itb.2.1473688699902;
        Mon, 12 Sep 2016 06:58:19 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id h124si2280618pfe.0.2016.09.12.06.58.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 06:58:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id pp5so7826075pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 06:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=mjGTnQ43pcYuAzG3/1wAfmOuMUEIMH0DJPoY8vP8FDo=;
        b=Z1cs/f5GWCUXTv1q5brZo8UA6WHhVvzOtblvF2HhhT+IF6HSpnbwW/SNul3FqLEwKI
         h+rrDRWp086+YhpoIuoZeUoOt315/MPV5f24TMmNZ3++npRVugXe8YACiynpfh5b215X
         4VyqjDcNg7pbOq612TrpnqYEf6DZlKPGulirKYuEp/jG+2tMHNL6ew1weQPyUjEo4qiP
         sVACYzXb/le7fLMria/l0b7DE9gNkTU3gnomT4vsyJl5QjXdXlMCOrxLYk13Azof+zy8
         bUoV+MDAzSoRAxPNXYzAAzc7+LsaKgEctVVjmgtmVFEsotknFJ6a3VsOUal6SuMaTZTa
         RCtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mjGTnQ43pcYuAzG3/1wAfmOuMUEIMH0DJPoY8vP8FDo=;
        b=d3dkI+zovmxl7tvvKiVSj0EH9Sl26IAkjdyfjxFCIf5/WYMLC5qY2Q5x6jX/OxoknG
         fVgq66Yk+U4VhH/sqD9OcjCty95vr4b9QCIL4b9Zgy2dy1RTs+Y5HhR8yhcxmJnGKyJo
         YMi3YOFVsiS2kO5hvr9wrmF3eCRufnnzsp3lqOx7+e/8XLRLSHmYDmBUCubN3oRf+p6Y
         KIXj3OxOFuCRq+Oyg0SmAUvQFlH5zMfAw20zdeP3U26s0cNuzLOCNC/kYdzqTlai7B2b
         CJn7fBDUaUbkR1waGtckeSuS0NSbujZS5MVXSKKb4ZEEtimAwSo7jNfYm96AXy7fbQYw
         A0EQ==
X-Gm-Message-State: AE9vXwM7EoGjwsYJHxyLv39LbLvx3umhD038CifIgUeP5ZSAAGttuvQIDeJxTrtYJw/2ig==
X-Received: by 10.66.191.2 with SMTP id gu2mr33363720pac.149.1473688699281;
        Mon, 12 Sep 2016 06:58:19 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.150.14])
        by smtp.gmail.com with ESMTPSA id y184sm24955572pfg.94.2016.09.12.06.58.10
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 06:58:18 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Mon, 12 Sep 2016 19:28:02 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: Remove ternary operator
Date: Mon, 12 Sep 2016 19:28:01 +0530
Message-Id: <1473688681-14479-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Relational and logical operators evaluate to either true or false.
Explicit conversion is not needed so remove the ternary operator.
Done using coccinelle:

@r@
expression A,B;
symbol true,false;
binary operator b = {==,!=,&&,||,>=,<=,>,<};
@@
- (A b B) ? true : false
+ A b B

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 8 ++++----
 drivers/staging/rtl8188eu/hal/phy.c           | 2 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c   | 3 ++-
 3 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 9544e55..b43f57be 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -705,7 +705,7 @@ static int issue_probereq_ex(struct adapter *padapter,
 	unsigned long start = jiffies;
 
 	do {
-		ret = issue_probereq(padapter, pssid, da, wait_ms > 0 ? true : false);
+		ret = issue_probereq(padapter, pssid, da, wait_ms > 0);
 
 		i++;
 
@@ -1293,7 +1293,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
 		da = pnetwork->MacAddress;
 
 	do {
-		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0 ? true : false);
+		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0);
 
 		i++;
 
@@ -1420,7 +1420,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
 		da = pnetwork->MacAddress;
 
 	do {
-		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0 ? true : false);
+		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0);
 
 		i++;
 
@@ -1527,7 +1527,7 @@ static int issue_deauth_ex(struct adapter *padapter, u8 *da,
 	unsigned long start = jiffies;
 
 	do {
-		ret = _issue_deauth(padapter, da, reason, wait_ms > 0 ? true : false);
+		ret = _issue_deauth(padapter, da, reason, wait_ms > 0);
 
 		i++;
 
diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 776e5b8..41e0cbc 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -1292,7 +1292,7 @@ void rtl88eu_phy_iq_calibrate(struct adapter *adapt, bool recovery)
 		rOFDM0_RxIQExtAnta};
 	bool is2t;
 
-	is2t = (dm_odm->RFType == ODM_2T2R) ? true : false;
+	is2t = dm_odm->RFType == ODM_2T2R;
 
 	if (!(dm_odm->SupportAbility & ODM_RF_CALIBRATION))
 		return;
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
index 11e7246..962102d 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
@@ -60,7 +60,8 @@ static void Init_ODM_ComInfo_88E(struct adapter *Adapter)
 
 	ODM_CmnInfoInit(dm_odm, ODM_CMNINFO_CUT_VER, cut_ver);
 
-	ODM_CmnInfoInit(dm_odm, ODM_CMNINFO_MP_TEST_CHIP, hal_data->VersionID.ChipType == NORMAL_CHIP ? true : false);
+	ODM_CmnInfoInit(dm_odm, ODM_CMNINFO_MP_TEST_CHIP,
+			hal_data->VersionID.ChipType == NORMAL_CHIP);
 
 	ODM_CmnInfoInit(dm_odm, ODM_CMNINFO_PATCH_ID, hal_data->CustomerID);
 	ODM_CmnInfoInit(dm_odm, ODM_CMNINFO_BWIFI_TEST, Adapter->registrypriv.wifi_spec);
-- 
1.9.1


