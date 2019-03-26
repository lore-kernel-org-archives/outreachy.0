X-GM-THRID: 6672748306065522688
X-Received: by 2002:a05:6830:164b:: with SMTP id h11mr733441otr.64.1553620283257;
        Tue, 26 Mar 2019 10:11:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:748b:: with SMTP id t11ls4318878otk.7.gmail; Tue, 26 Mar
 2019 10:11:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy8UfnWr3WGHh7G0s97Jq9TFIB1K3WEuSIXEo72wDnPUyt3S5vGqiaIeOjlV2fUYcIPzeEm
X-Received: by 2002:a9d:5e11:: with SMTP id d17mr776880oti.62.1553620282490;
        Tue, 26 Mar 2019 10:11:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553620282; cv=none;
        d=google.com; s=arc-20160816;
        b=wsWYOGHmVELonJrq+/mZPxsgTbAoBxKfatXXNOmmlKkn4tT+I/behUqAxlDKmk1hYL
         H9wNcGzcsQbFoD4rXbCUQQQC+ds2gu/9+VhDGrj8fRm3qB6p9kuBsDzFiHQ+PhTQMHDi
         MRsurIlhyqfSzb9mRUBDsrdDZQV/Q/jrLnut0W1szs0ILlM00EmjWGts/F48j0Lub4O2
         +NKM4gm8tcPWpl1Op+AAHvhmiwRfvoUjVy5GyYLDtD178CQ+CV/BWOu2zTIZf9Z/lTPK
         Foor9DCHgfs05c9LpsypWehHPDAqogN1zyah0AQD+W6iFhSqyWdMz+F+BGxpF9hqHomi
         HGIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=LqEeXPyZcN45/WbaFYMZnsBKK/luVg0RZdLRYhwP6uo=;
        b=m2yzPVbi2vWNo20K2azSgyzjrlLWhJfHDxbi3yzuQC9rRbbaGG4Y8UFBIw293w6ivK
         fhNmbCsftPgqF1Nm5QEh3zRX+DnHmDUnuYkS9O4KwRmyW98De/+0XvEi28Aqm9ohx1Om
         USuwzkjVOvVoDjOD++aWf8f/ojAoag4Pmhbx/WXqD96bU+1gEFb0k8OjnCU51afmPhjb
         uQTzsFE7S92WTgWkXoQ7GyuwIKQsLuxryubNydt8KRAqF7XTFuYwfw3T4fmweZPhbppi
         llzcpG1tolANiQTaDc75eAjWAmU7C7H/ZRlA3kRrXsCoyPDJdNEYZyY1h89EjaFi87VZ
         gM7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n79YZtgY;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x4si1242199otg.2.2019.03.26.10.11.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 10:11:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n79YZtgY;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id t21so8384748pfe.2
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Mar 2019 10:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LqEeXPyZcN45/WbaFYMZnsBKK/luVg0RZdLRYhwP6uo=;
        b=n79YZtgYMbh+aIQAsGs/5y//p5lpkTGZqT0Dq+y0dV6GWlwLYVvizCjzggUWGQ6fY+
         vEt/YzefL9Vet4e7DLmABoSxcVqKSkFmWCa8xaeB3/soyQRlqI+OEBD9ukXBGLI6l6Tx
         K+dgSCy5Zi+LKQDijNMgFbW7ih1clQ8KbAHeMPINq8QsdpCtVJp/j0ZXUmYFyVs7yA+c
         hSHHKpm+9y0XSXQXVERawNTPG4Tl30z0gK9GK3t5934y8T+5sQmdATkAWd4CsdwSOYN0
         KT5R+WSEjgEDqOTTWmLfVpI1BXwdKGc6f4tyvmIpJ9IH7eP5H6az7Ij7U1fPVU8qQZhX
         UAdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LqEeXPyZcN45/WbaFYMZnsBKK/luVg0RZdLRYhwP6uo=;
        b=b9pJqw0BA2sflgKKPiWaf1zChrX9n1Gq1JibrkNAIa0YEWhPazrAEg1JNTxR0D16sv
         f4TbKe1dH+gaWdmRAhabgplQgNrLxeap1rVjeICSjhP4n+pZUANe/BVvuQvlmrw7IHpx
         YWQSx6RjrVToL9ld7+E6fGOHBRYUM6UlPbxYYAfRFj/zqo2FVstAkHHGSsvhNofFKBQv
         I8hZo61ZvFoDq0XilbViUybb4cyPnxO22E1By+U9iYkuTHQEnHldY5R3y+Sx/snYKrwl
         GWcaO7HZSg40trSApMoSqECa5k5y8iIr65DbQrQhoxCVTteIyVvGgHMd+R+smDvndfZJ
         EyRA==
X-Gm-Message-State: APjAAAVMpv+RRK568/z1Nj/mwUBmj0wpxQP+BH2ccUpe3pKD/2yv16E/
	uLPz7JAIhN6MKg8vaXFmtio=
X-Received: by 2002:a63:c06:: with SMTP id b6mr30052331pgl.440.1553620281858;
        Tue, 26 Mar 2019 10:11:21 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.183.14])
        by smtp.googlemail.com with ESMTPSA id a13sm21406704pgw.91.2019.03.26.10.11.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 10:11:21 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e:  Remove unncessary paranthesis.
Date: Tue, 26 Mar 2019 22:41:11 +0530
Message-Id: <20190326171111.20036-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.
Remove unnecessary parathesis around the right hand of
assignment using the below script.

@@
binary operator op = {==,!=,&&,||,>=,<=,&,|};
expression l, r, t;
@@

(
l = (r op t)
|
l =
-(
r
-)
)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 .../staging/rtl8192e/rtl8192e/r8192E_phy.c    | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
index 73497d559b77..3de07a79b3e0 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
@@ -81,8 +81,8 @@ void rtl92e_set_bb_reg(struct net_device *dev, u32 dwRegAddr, u32 dwBitMask,
 	if (dwBitMask != bMaskDWord) {
 		OriginalValue = rtl92e_readl(dev, dwRegAddr);
 		BitShift = _rtl92e_calculate_bit_shift(dwBitMask);
-		NewValue = (((OriginalValue) & (~dwBitMask)) |
-			    (dwData << BitShift));
+		NewValue = ((OriginalValue) & (~dwBitMask)) |
+			    (dwData << BitShift);
 		rtl92e_writel(dev, dwRegAddr, NewValue);
 	} else
 		rtl92e_writel(dev, dwRegAddr, dwData);
@@ -223,8 +223,8 @@ void rtl92e_set_rf_reg(struct net_device *dev, enum rf90_radio_path eRFPath,
 			Original_Value = _rtl92e_phy_rf_fw_read(dev, eRFPath,
 								RegAddr);
 			BitShift =  _rtl92e_calculate_bit_shift(BitMask);
-			New_Value = (((Original_Value) & (~BitMask)) |
-				    (Data << BitShift));
+			New_Value = ((Original_Value) & (~BitMask)) |
+				    (Data << BitShift);
 
 			_rtl92e_phy_rf_fw_write(dev, eRFPath, RegAddr,
 						New_Value);
@@ -237,8 +237,8 @@ void rtl92e_set_rf_reg(struct net_device *dev, enum rf90_radio_path eRFPath,
 			Original_Value = _rtl92e_phy_rf_read(dev, eRFPath,
 							     RegAddr);
 			BitShift =  _rtl92e_calculate_bit_shift(BitMask);
-			New_Value = (((Original_Value) & (~BitMask)) |
-				     (Data << BitShift));
+			New_Value = ((Original_Value) & (~BitMask)) |
+				     (Data << BitShift);
 
 			_rtl92e_phy_rf_write(dev, eRFPath, RegAddr, New_Value);
 		} else
@@ -571,9 +571,9 @@ static bool _rtl92e_bb_config_para_file(struct net_device *dev)
 
 	if (priv->IC_Cut  > VERSION_8190_BD) {
 		if (priv->rf_type == RF_2T4R)
-			dwRegValue = (priv->AntennaTxPwDiff[2]<<8 |
+			dwRegValue = priv->AntennaTxPwDiff[2]<<8 |
 				      priv->AntennaTxPwDiff[1]<<4 |
-				      priv->AntennaTxPwDiff[0]);
+				      priv->AntennaTxPwDiff[0];
 		else
 			dwRegValue = 0x0;
 		rtl92e_set_bb_reg(dev, rFPGA0_TxGainStage,
@@ -655,9 +655,9 @@ void rtl92e_set_tx_power(struct net_device *dev, u8 channel)
 			priv->AntennaTxPwDiff[1] = (u8)(ant_pwr_diff);
 			priv->AntennaTxPwDiff[0] = 0;
 
-			u4RegValue = (priv->AntennaTxPwDiff[2]<<8 |
+			u4RegValue = priv->AntennaTxPwDiff[2]<<8 |
 				      priv->AntennaTxPwDiff[1]<<4 |
-				      priv->AntennaTxPwDiff[0]);
+				      priv->AntennaTxPwDiff[0];
 
 			rtl92e_set_bb_reg(dev, rFPGA0_TxGainStage,
 					  (bXBTxAGC|bXCTxAGC|bXDTxAGC),
-- 
2.17.1


