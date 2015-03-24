X-GM-THRID: 9790095884288
X-Received: by 10.140.148.68 with SMTP id 65mr6706947qhu.6.1427226671407;
        Tue, 24 Mar 2015 12:51:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.193 with SMTP id h1ls1465834igt.6.canary; Tue, 24 Mar
 2015 12:51:10 -0700 (PDT)
X-Received: by 10.66.149.102 with SMTP id tz6mr6770026pab.26.1427226670908;
        Tue, 24 Mar 2015 12:51:10 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x233.google.com (mail-pd0-x233.google.com. [2607:f8b0:400e:c02::233])
        by gmr-mx.google.com with ESMTPS id ni4si29742pdb.2.2015.03.24.12.51.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2015 12:51:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) client-ip=2607:f8b0:400e:c02::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x233.google.com with SMTP id c3so3459382pdn.0
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2015 12:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2Q7qqeyxwyck6/EOCUeadDdddxdAtzqmvu3M7LxBfrs=;
        b=YeoeM1mx2hbVECftHSFa7qcUaY6/zcvhK3M6SqDxx8LKzZLVWrWU8YRhVbNXubNWfR
         6/pLfFLpx2+ObReZRG7sNq0vUXEc3q07XiQja3zbQp1TQuPelycAUSxx2P516398Fi2z
         4YR61kvJIEyh8HSy4H9KYFkcZY2P34p+aEHjxoSa+WS4aS4xSVvApFvpIjFPmHcJ4Yhw
         Iih+BrGX+b7RH3O5xsLBSJLOdBe15IR6ffR0kCkPplIvlouKzCyf9nGJYLqQxxDtNEos
         LN9HjJpaBSBBZhuzHlsZ2lS7HYKwNT0/MNXfu7isU8Ns2bt703gp9CwbMuFSUzG598lf
         r80Q==
X-Received: by 10.66.66.196 with SMTP id h4mr10148819pat.127.1427226670801;
        Tue, 24 Mar 2015 12:51:10 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id ow2sm173266pdb.14.2015.03.24.12.51.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 24 Mar 2015 12:51:09 -0700 (PDT)
Date: Wed, 25 Mar 2015 01:19:01 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Add new variable to make code compact
Message-ID: <20150324194901.GA6284@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Introducing this variable leads to overall more code
compactness and increases readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/bb_cfg.c | 162 +++++++++++++++++----------------
 1 file changed, 84 insertions(+), 78 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/bb_cfg.c b/drivers/staging/rtl8188eu/hal/bb_cfg.c
index 2d3d012..d10fcb2c 100644
--- a/drivers/staging/rtl8188eu/hal/bb_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/bb_cfg.c
@@ -600,84 +600,90 @@ static bool config_bb_with_pgheader(struct adapter *adapt)
 static void rtl88e_phy_init_bb_rf_register_definition(struct adapter *Adapter)
 {
 	struct hal_data_8188e		*hal_data = GET_HAL_DATA(Adapter);
-
-	hal_data->PHYRegDef[RF_PATH_A].rfintfs = rFPGA0_XAB_RFInterfaceSW;
-	hal_data->PHYRegDef[RF_PATH_B].rfintfs = rFPGA0_XAB_RFInterfaceSW;
-	hal_data->PHYRegDef[RF_PATH_C].rfintfs = rFPGA0_XCD_RFInterfaceSW;
-	hal_data->PHYRegDef[RF_PATH_D].rfintfs = rFPGA0_XCD_RFInterfaceSW;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfintfi = rFPGA0_XAB_RFInterfaceRB;
-	hal_data->PHYRegDef[RF_PATH_B].rfintfi = rFPGA0_XAB_RFInterfaceRB;
-	hal_data->PHYRegDef[RF_PATH_C].rfintfi = rFPGA0_XCD_RFInterfaceRB;
-	hal_data->PHYRegDef[RF_PATH_D].rfintfi = rFPGA0_XCD_RFInterfaceRB;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfintfo = rFPGA0_XA_RFInterfaceOE;
-	hal_data->PHYRegDef[RF_PATH_B].rfintfo = rFPGA0_XB_RFInterfaceOE;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfintfe = rFPGA0_XA_RFInterfaceOE;
-	hal_data->PHYRegDef[RF_PATH_B].rfintfe = rFPGA0_XB_RFInterfaceOE;
-
-	hal_data->PHYRegDef[RF_PATH_A].rf3wireOffset = rFPGA0_XA_LSSIParameter;
-	hal_data->PHYRegDef[RF_PATH_B].rf3wireOffset = rFPGA0_XB_LSSIParameter;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfLSSI_Select = rFPGA0_XAB_RFParameter;
-	hal_data->PHYRegDef[RF_PATH_B].rfLSSI_Select = rFPGA0_XAB_RFParameter;
-	hal_data->PHYRegDef[RF_PATH_C].rfLSSI_Select = rFPGA0_XCD_RFParameter;
-	hal_data->PHYRegDef[RF_PATH_D].rfLSSI_Select = rFPGA0_XCD_RFParameter;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfTxGainStage = rFPGA0_TxGainStage;
-	hal_data->PHYRegDef[RF_PATH_B].rfTxGainStage = rFPGA0_TxGainStage;
-	hal_data->PHYRegDef[RF_PATH_C].rfTxGainStage = rFPGA0_TxGainStage;
-	hal_data->PHYRegDef[RF_PATH_D].rfTxGainStage = rFPGA0_TxGainStage;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfHSSIPara1 = rFPGA0_XA_HSSIParameter1;
-	hal_data->PHYRegDef[RF_PATH_B].rfHSSIPara1 = rFPGA0_XB_HSSIParameter1;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfHSSIPara2 = rFPGA0_XA_HSSIParameter2;
-	hal_data->PHYRegDef[RF_PATH_B].rfHSSIPara2 = rFPGA0_XB_HSSIParameter2;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfSwitchControl = rFPGA0_XAB_SwitchControl;
-	hal_data->PHYRegDef[RF_PATH_B].rfSwitchControl = rFPGA0_XAB_SwitchControl;
-	hal_data->PHYRegDef[RF_PATH_C].rfSwitchControl = rFPGA0_XCD_SwitchControl;
-	hal_data->PHYRegDef[RF_PATH_D].rfSwitchControl = rFPGA0_XCD_SwitchControl;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfAGCControl1 = rOFDM0_XAAGCCore1;
-	hal_data->PHYRegDef[RF_PATH_B].rfAGCControl1 = rOFDM0_XBAGCCore1;
-	hal_data->PHYRegDef[RF_PATH_C].rfAGCControl1 = rOFDM0_XCAGCCore1;
-	hal_data->PHYRegDef[RF_PATH_D].rfAGCControl1 = rOFDM0_XDAGCCore1;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfAGCControl2 = rOFDM0_XAAGCCore2;
-	hal_data->PHYRegDef[RF_PATH_B].rfAGCControl2 = rOFDM0_XBAGCCore2;
-	hal_data->PHYRegDef[RF_PATH_C].rfAGCControl2 = rOFDM0_XCAGCCore2;
-	hal_data->PHYRegDef[RF_PATH_D].rfAGCControl2 = rOFDM0_XDAGCCore2;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfRxIQImbalance = rOFDM0_XARxIQImbalance;
-	hal_data->PHYRegDef[RF_PATH_B].rfRxIQImbalance = rOFDM0_XBRxIQImbalance;
-	hal_data->PHYRegDef[RF_PATH_C].rfRxIQImbalance = rOFDM0_XCRxIQImbalance;
-	hal_data->PHYRegDef[RF_PATH_D].rfRxIQImbalance = rOFDM0_XDRxIQImbalance;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfRxAFE = rOFDM0_XARxAFE;
-	hal_data->PHYRegDef[RF_PATH_B].rfRxAFE = rOFDM0_XBRxAFE;
-	hal_data->PHYRegDef[RF_PATH_C].rfRxAFE = rOFDM0_XCRxAFE;
-	hal_data->PHYRegDef[RF_PATH_D].rfRxAFE = rOFDM0_XDRxAFE;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfTxIQImbalance = rOFDM0_XATxIQImbalance;
-	hal_data->PHYRegDef[RF_PATH_B].rfTxIQImbalance = rOFDM0_XBTxIQImbalance;
-	hal_data->PHYRegDef[RF_PATH_C].rfTxIQImbalance = rOFDM0_XCTxIQImbalance;
-	hal_data->PHYRegDef[RF_PATH_D].rfTxIQImbalance = rOFDM0_XDTxIQImbalance;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfTxAFE = rOFDM0_XATxAFE;
-	hal_data->PHYRegDef[RF_PATH_B].rfTxAFE = rOFDM0_XBTxAFE;
-	hal_data->PHYRegDef[RF_PATH_C].rfTxAFE = rOFDM0_XCTxAFE;
-	hal_data->PHYRegDef[RF_PATH_D].rfTxAFE = rOFDM0_XDTxAFE;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfLSSIReadBack = rFPGA0_XA_LSSIReadBack;
-	hal_data->PHYRegDef[RF_PATH_B].rfLSSIReadBack = rFPGA0_XB_LSSIReadBack;
-	hal_data->PHYRegDef[RF_PATH_C].rfLSSIReadBack = rFPGA0_XC_LSSIReadBack;
-	hal_data->PHYRegDef[RF_PATH_D].rfLSSIReadBack = rFPGA0_XD_LSSIReadBack;
-
-	hal_data->PHYRegDef[RF_PATH_A].rfLSSIReadBackPi = TransceiverA_HSPI_Readback;
-	hal_data->PHYRegDef[RF_PATH_B].rfLSSIReadBackPi = TransceiverB_HSPI_Readback;
+	struct bb_reg_def		*RegDef[4];
+
+	RegDef[RF_PATH_A] = &(hal_data->PHYRegDef[RF_PATH_A]);
+	RegDef[RF_PATH_B] = &(hal_data->PHYRegDef[RF_PATH_B]);
+	RegDef[RF_PATH_C] = &(hal_data->PHYRegDef[RF_PATH_C]);
+	RegDef[RF_PATH_D] = &(hal_data->PHYRegDef[RF_PATH_D]);
+
+	RegDef[RF_PATH_A]->rfintfs = rFPGA0_XAB_RFInterfaceSW;
+	RegDef[RF_PATH_B]->rfintfs = rFPGA0_XAB_RFInterfaceSW;
+	RegDef[RF_PATH_C]->rfintfs = rFPGA0_XCD_RFInterfaceSW;
+	RegDef[RF_PATH_D]->rfintfs = rFPGA0_XCD_RFInterfaceSW;
+
+	RegDef[RF_PATH_A]->rfintfi = rFPGA0_XAB_RFInterfaceRB;
+	RegDef[RF_PATH_B]->rfintfi = rFPGA0_XAB_RFInterfaceRB;
+	RegDef[RF_PATH_C]->rfintfi = rFPGA0_XCD_RFInterfaceRB;
+	RegDef[RF_PATH_D]->rfintfi = rFPGA0_XCD_RFInterfaceRB;
+
+	RegDef[RF_PATH_A]->rfintfo = rFPGA0_XA_RFInterfaceOE;
+	RegDef[RF_PATH_B]->rfintfo = rFPGA0_XB_RFInterfaceOE;
+
+	RegDef[RF_PATH_A]->rfintfe = rFPGA0_XA_RFInterfaceOE;
+	RegDef[RF_PATH_B]->rfintfe = rFPGA0_XB_RFInterfaceOE;
+
+	RegDef[RF_PATH_A]->rf3wireOffset = rFPGA0_XA_LSSIParameter;
+	RegDef[RF_PATH_B]->rf3wireOffset = rFPGA0_XB_LSSIParameter;
+
+	RegDef[RF_PATH_A]->rfLSSI_Select = rFPGA0_XAB_RFParameter;
+	RegDef[RF_PATH_B]->rfLSSI_Select = rFPGA0_XAB_RFParameter;
+	RegDef[RF_PATH_C]->rfLSSI_Select = rFPGA0_XCD_RFParameter;
+	RegDef[RF_PATH_D]->rfLSSI_Select = rFPGA0_XCD_RFParameter;
+
+	RegDef[RF_PATH_A]->rfTxGainStage = rFPGA0_TxGainStage;
+	RegDef[RF_PATH_B]->rfTxGainStage = rFPGA0_TxGainStage;
+	RegDef[RF_PATH_C]->rfTxGainStage = rFPGA0_TxGainStage;
+	RegDef[RF_PATH_D]->rfTxGainStage = rFPGA0_TxGainStage;
+
+	RegDef[RF_PATH_A]->rfHSSIPara1 = rFPGA0_XA_HSSIParameter1;
+	RegDef[RF_PATH_B]->rfHSSIPara1 = rFPGA0_XB_HSSIParameter1;
+
+	RegDef[RF_PATH_A]->rfHSSIPara2 = rFPGA0_XA_HSSIParameter2;
+	RegDef[RF_PATH_B]->rfHSSIPara2 = rFPGA0_XB_HSSIParameter2;
+
+	RegDef[RF_PATH_A]->rfSwitchControl = rFPGA0_XAB_SwitchControl;
+	RegDef[RF_PATH_B]->rfSwitchControl = rFPGA0_XAB_SwitchControl;
+	RegDef[RF_PATH_C]->rfSwitchControl = rFPGA0_XCD_SwitchControl;
+	RegDef[RF_PATH_D]->rfSwitchControl = rFPGA0_XCD_SwitchControl;
+
+	RegDef[RF_PATH_A]->rfAGCControl1 = rOFDM0_XAAGCCore1;
+	RegDef[RF_PATH_B]->rfAGCControl1 = rOFDM0_XBAGCCore1;
+	RegDef[RF_PATH_C]->rfAGCControl1 = rOFDM0_XCAGCCore1;
+	RegDef[RF_PATH_D]->rfAGCControl1 = rOFDM0_XDAGCCore1;
+
+	RegDef[RF_PATH_A]->rfAGCControl2 = rOFDM0_XAAGCCore2;
+	RegDef[RF_PATH_B]->rfAGCControl2 = rOFDM0_XBAGCCore2;
+	RegDef[RF_PATH_C]->rfAGCControl2 = rOFDM0_XCAGCCore2;
+	RegDef[RF_PATH_D]->rfAGCControl2 = rOFDM0_XDAGCCore2;
+
+	RegDef[RF_PATH_A]->rfRxIQImbalance = rOFDM0_XARxIQImbalance;
+	RegDef[RF_PATH_B]->rfRxIQImbalance = rOFDM0_XBRxIQImbalance;
+	RegDef[RF_PATH_C]->rfRxIQImbalance = rOFDM0_XCRxIQImbalance;
+	RegDef[RF_PATH_D]->rfRxIQImbalance = rOFDM0_XDRxIQImbalance;
+
+	RegDef[RF_PATH_A]->rfRxAFE = rOFDM0_XARxAFE;
+	RegDef[RF_PATH_B]->rfRxAFE = rOFDM0_XBRxAFE;
+	RegDef[RF_PATH_C]->rfRxAFE = rOFDM0_XCRxAFE;
+	RegDef[RF_PATH_D]->rfRxAFE = rOFDM0_XDRxAFE;
+
+	RegDef[RF_PATH_A]->rfTxIQImbalance = rOFDM0_XATxIQImbalance;
+	RegDef[RF_PATH_B]->rfTxIQImbalance = rOFDM0_XBTxIQImbalance;
+	RegDef[RF_PATH_C]->rfTxIQImbalance = rOFDM0_XCTxIQImbalance;
+	RegDef[RF_PATH_D]->rfTxIQImbalance = rOFDM0_XDTxIQImbalance;
+
+	RegDef[RF_PATH_A]->rfTxAFE = rOFDM0_XATxAFE;
+	RegDef[RF_PATH_B]->rfTxAFE = rOFDM0_XBTxAFE;
+	RegDef[RF_PATH_C]->rfTxAFE = rOFDM0_XCTxAFE;
+	RegDef[RF_PATH_D]->rfTxAFE = rOFDM0_XDTxAFE;
+
+	RegDef[RF_PATH_A]->rfLSSIReadBack = rFPGA0_XA_LSSIReadBack;
+	RegDef[RF_PATH_B]->rfLSSIReadBack = rFPGA0_XB_LSSIReadBack;
+	RegDef[RF_PATH_C]->rfLSSIReadBack = rFPGA0_XC_LSSIReadBack;
+	RegDef[RF_PATH_D]->rfLSSIReadBack = rFPGA0_XD_LSSIReadBack;
+
+	RegDef[RF_PATH_A]->rfLSSIReadBackPi = TransceiverA_HSPI_Readback;
+	RegDef[RF_PATH_B]->rfLSSIReadBackPi = TransceiverB_HSPI_Readback;
 }
 
 static bool config_parafile(struct adapter *adapt)
-- 
1.9.1


