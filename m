X-GM-THRID: 9790095884288
X-Received: by 10.66.153.6 with SMTP id vc6mr18093840pab.37.1427399020545;
        Thu, 26 Mar 2015 12:43:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.229 with SMTP id d92ls953063qge.52.gmail; Thu, 26 Mar
 2015 12:43:40 -0700 (PDT)
X-Received: by 10.236.11.196 with SMTP id 44mr17995172yhx.31.1427399020300;
        Thu, 26 Mar 2015 12:43:40 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pj7si794010pbb.2.2015.03.26.12.43.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:43:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id wz10so21222376pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 12:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=OqXqiGzO1dmiGTLuXjtSjVgmS2uDm8okjshyXas/+OY=;
        b=GMR3MtThRgvCGrwsQVpA9RgDoB8b9+J3mAZI5Bjurdr2gwtKwuqig4MFxDBiCGbh9F
         ktZZHc1Jk807iaCjqUrvO9p9WO2/AYcNrSN2N7xb7ldQEPQDH7cXB5+h0xjLly/bevdi
         UpT5Mvo0a6FYS7SCYkNaqcyyrbZgTrAbS2TLHYGSZkRqYGEyOjVtukvw/n6bVcK2t6vP
         Ig7jEMffnjQX4m9dM09QDvvmEYpvu+Q3OFHiiGbW929AzS7xnV1RhUm6t1w9Ma2M054I
         uQ1G/EkwmQzh6v8vJ7eZ+21pKfFwi8nh2317YzDAmgAnbGmjTSEY8FVNpA0uWugJmYSE
         4UNg==
X-Received: by 10.70.52.226 with SMTP id w2mr7097670pdo.84.1427399020110;
        Thu, 26 Mar 2015 12:43:40 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id pq1sm6389926pbb.23.2015.03.26.12.43.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Mar 2015 12:43:38 -0700 (PDT)
Date: Fri, 27 Mar 2015 01:11:25 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: rtl8188eu: Add new variable to make code compact
Message-ID: <20150326194125.GA25188@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Introducing this variable leads to overall more code
compactness and increases readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
Changes in v3: Aligned variable declaration.
Changes in v2: Changed variable name as per
		kernel code conventions.

 drivers/staging/rtl8188eu/hal/bb_cfg.c | 164 +++++++++++++++++----------------
 1 file changed, 85 insertions(+), 79 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/bb_cfg.c b/drivers/staging/rtl8188eu/hal/bb_cfg.c
index 2d3d012..27047ea 100644
--- a/drivers/staging/rtl8188eu/hal/bb_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/bb_cfg.c
@@ -599,85 +599,91 @@ static bool config_bb_with_pgheader(struct adapter *adapt)
 
 static void rtl88e_phy_init_bb_rf_register_definition(struct adapter *Adapter)
 {
-	struct hal_data_8188e		*hal_data = GET_HAL_DATA(Adapter);
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
+	struct hal_data_8188e	*hal_data = GET_HAL_DATA(Adapter);
+	struct bb_reg_def	*reg[4];
+
+	reg[RF_PATH_A] = &(hal_data->PHYRegDef[RF_PATH_A]);
+	reg[RF_PATH_B] = &(hal_data->PHYRegDef[RF_PATH_B]);
+	reg[RF_PATH_C] = &(hal_data->PHYRegDef[RF_PATH_C]);
+	reg[RF_PATH_D] = &(hal_data->PHYRegDef[RF_PATH_D]);
+
+	reg[RF_PATH_A]->rfintfs = rFPGA0_XAB_RFInterfaceSW;
+	reg[RF_PATH_B]->rfintfs = rFPGA0_XAB_RFInterfaceSW;
+	reg[RF_PATH_C]->rfintfs = rFPGA0_XCD_RFInterfaceSW;
+	reg[RF_PATH_D]->rfintfs = rFPGA0_XCD_RFInterfaceSW;
+
+	reg[RF_PATH_A]->rfintfi = rFPGA0_XAB_RFInterfaceRB;
+	reg[RF_PATH_B]->rfintfi = rFPGA0_XAB_RFInterfaceRB;
+	reg[RF_PATH_C]->rfintfi = rFPGA0_XCD_RFInterfaceRB;
+	reg[RF_PATH_D]->rfintfi = rFPGA0_XCD_RFInterfaceRB;
+
+	reg[RF_PATH_A]->rfintfo = rFPGA0_XA_RFInterfaceOE;
+	reg[RF_PATH_B]->rfintfo = rFPGA0_XB_RFInterfaceOE;
+
+	reg[RF_PATH_A]->rfintfe = rFPGA0_XA_RFInterfaceOE;
+	reg[RF_PATH_B]->rfintfe = rFPGA0_XB_RFInterfaceOE;
+
+	reg[RF_PATH_A]->rf3wireOffset = rFPGA0_XA_LSSIParameter;
+	reg[RF_PATH_B]->rf3wireOffset = rFPGA0_XB_LSSIParameter;
+
+	reg[RF_PATH_A]->rfLSSI_Select = rFPGA0_XAB_RFParameter;
+	reg[RF_PATH_B]->rfLSSI_Select = rFPGA0_XAB_RFParameter;
+	reg[RF_PATH_C]->rfLSSI_Select = rFPGA0_XCD_RFParameter;
+	reg[RF_PATH_D]->rfLSSI_Select = rFPGA0_XCD_RFParameter;
+
+	reg[RF_PATH_A]->rfTxGainStage = rFPGA0_TxGainStage;
+	reg[RF_PATH_B]->rfTxGainStage = rFPGA0_TxGainStage;
+	reg[RF_PATH_C]->rfTxGainStage = rFPGA0_TxGainStage;
+	reg[RF_PATH_D]->rfTxGainStage = rFPGA0_TxGainStage;
+
+	reg[RF_PATH_A]->rfHSSIPara1 = rFPGA0_XA_HSSIParameter1;
+	reg[RF_PATH_B]->rfHSSIPara1 = rFPGA0_XB_HSSIParameter1;
+
+	reg[RF_PATH_A]->rfHSSIPara2 = rFPGA0_XA_HSSIParameter2;
+	reg[RF_PATH_B]->rfHSSIPara2 = rFPGA0_XB_HSSIParameter2;
+
+	reg[RF_PATH_A]->rfSwitchControl = rFPGA0_XAB_SwitchControl;
+	reg[RF_PATH_B]->rfSwitchControl = rFPGA0_XAB_SwitchControl;
+	reg[RF_PATH_C]->rfSwitchControl = rFPGA0_XCD_SwitchControl;
+	reg[RF_PATH_D]->rfSwitchControl = rFPGA0_XCD_SwitchControl;
+
+	reg[RF_PATH_A]->rfAGCControl1 = rOFDM0_XAAGCCore1;
+	reg[RF_PATH_B]->rfAGCControl1 = rOFDM0_XBAGCCore1;
+	reg[RF_PATH_C]->rfAGCControl1 = rOFDM0_XCAGCCore1;
+	reg[RF_PATH_D]->rfAGCControl1 = rOFDM0_XDAGCCore1;
+
+	reg[RF_PATH_A]->rfAGCControl2 = rOFDM0_XAAGCCore2;
+	reg[RF_PATH_B]->rfAGCControl2 = rOFDM0_XBAGCCore2;
+	reg[RF_PATH_C]->rfAGCControl2 = rOFDM0_XCAGCCore2;
+	reg[RF_PATH_D]->rfAGCControl2 = rOFDM0_XDAGCCore2;
+
+	reg[RF_PATH_A]->rfRxIQImbalance = rOFDM0_XARxIQImbalance;
+	reg[RF_PATH_B]->rfRxIQImbalance = rOFDM0_XBRxIQImbalance;
+	reg[RF_PATH_C]->rfRxIQImbalance = rOFDM0_XCRxIQImbalance;
+	reg[RF_PATH_D]->rfRxIQImbalance = rOFDM0_XDRxIQImbalance;
+
+	reg[RF_PATH_A]->rfRxAFE = rOFDM0_XARxAFE;
+	reg[RF_PATH_B]->rfRxAFE = rOFDM0_XBRxAFE;
+	reg[RF_PATH_C]->rfRxAFE = rOFDM0_XCRxAFE;
+	reg[RF_PATH_D]->rfRxAFE = rOFDM0_XDRxAFE;
+
+	reg[RF_PATH_A]->rfTxIQImbalance = rOFDM0_XATxIQImbalance;
+	reg[RF_PATH_B]->rfTxIQImbalance = rOFDM0_XBTxIQImbalance;
+	reg[RF_PATH_C]->rfTxIQImbalance = rOFDM0_XCTxIQImbalance;
+	reg[RF_PATH_D]->rfTxIQImbalance = rOFDM0_XDTxIQImbalance;
+
+	reg[RF_PATH_A]->rfTxAFE = rOFDM0_XATxAFE;
+	reg[RF_PATH_B]->rfTxAFE = rOFDM0_XBTxAFE;
+	reg[RF_PATH_C]->rfTxAFE = rOFDM0_XCTxAFE;
+	reg[RF_PATH_D]->rfTxAFE = rOFDM0_XDTxAFE;
+
+	reg[RF_PATH_A]->rfLSSIReadBack = rFPGA0_XA_LSSIReadBack;
+	reg[RF_PATH_B]->rfLSSIReadBack = rFPGA0_XB_LSSIReadBack;
+	reg[RF_PATH_C]->rfLSSIReadBack = rFPGA0_XC_LSSIReadBack;
+	reg[RF_PATH_D]->rfLSSIReadBack = rFPGA0_XD_LSSIReadBack;
+
+	reg[RF_PATH_A]->rfLSSIReadBackPi = TransceiverA_HSPI_Readback;
+	reg[RF_PATH_B]->rfLSSIReadBackPi = TransceiverB_HSPI_Readback;
 }
 
 static bool config_parafile(struct adapter *adapt)
-- 
1.9.1


