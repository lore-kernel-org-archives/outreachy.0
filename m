X-GM-THRID: 9790095884288
X-Received: by 10.70.90.4 with SMTP id bs4mr9888243pdb.7.1427282226132;
        Wed, 25 Mar 2015 04:17:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.211 with SMTP id v77ls335509qgv.11.gmail; Wed, 25 Mar
 2015 04:17:05 -0700 (PDT)
X-Received: by 10.236.2.35 with SMTP id 23mr9866900yhe.22.1427282225828;
        Wed, 25 Mar 2015 04:17:05 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si270771pac.2.2015.03.25.04.17.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 04:17:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E7647AF5;
	Wed, 25 Mar 2015 11:17:04 +0000 (UTC)
Date: Wed, 25 Mar 2015 12:17:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add new variable
 to make code compact
Message-ID: <20150325111702.GA24187@kroah.com>
References: <20150324194901.GA6284@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150324194901.GA6284@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 25, 2015 at 01:19:01AM +0530, Vatika Harlalka wrote:
> Introducing this variable leads to overall more code
> compactness and increases readability.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/bb_cfg.c | 162 +++++++++++++++++----------------
>  1 file changed, 84 insertions(+), 78 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/bb_cfg.c b/drivers/staging/rtl8188eu/hal/bb_cfg.c
> index 2d3d012..d10fcb2c 100644
> --- a/drivers/staging/rtl8188eu/hal/bb_cfg.c
> +++ b/drivers/staging/rtl8188eu/hal/bb_cfg.c
> @@ -600,84 +600,90 @@ static bool config_bb_with_pgheader(struct adapter *adapt)
>  static void rtl88e_phy_init_bb_rf_register_definition(struct adapter *Adapter)
>  {
>  	struct hal_data_8188e		*hal_data = GET_HAL_DATA(Adapter);
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfintfs = rFPGA0_XAB_RFInterfaceSW;
> -	hal_data->PHYRegDef[RF_PATH_B].rfintfs = rFPGA0_XAB_RFInterfaceSW;
> -	hal_data->PHYRegDef[RF_PATH_C].rfintfs = rFPGA0_XCD_RFInterfaceSW;
> -	hal_data->PHYRegDef[RF_PATH_D].rfintfs = rFPGA0_XCD_RFInterfaceSW;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfintfi = rFPGA0_XAB_RFInterfaceRB;
> -	hal_data->PHYRegDef[RF_PATH_B].rfintfi = rFPGA0_XAB_RFInterfaceRB;
> -	hal_data->PHYRegDef[RF_PATH_C].rfintfi = rFPGA0_XCD_RFInterfaceRB;
> -	hal_data->PHYRegDef[RF_PATH_D].rfintfi = rFPGA0_XCD_RFInterfaceRB;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfintfo = rFPGA0_XA_RFInterfaceOE;
> -	hal_data->PHYRegDef[RF_PATH_B].rfintfo = rFPGA0_XB_RFInterfaceOE;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfintfe = rFPGA0_XA_RFInterfaceOE;
> -	hal_data->PHYRegDef[RF_PATH_B].rfintfe = rFPGA0_XB_RFInterfaceOE;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rf3wireOffset = rFPGA0_XA_LSSIParameter;
> -	hal_data->PHYRegDef[RF_PATH_B].rf3wireOffset = rFPGA0_XB_LSSIParameter;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfLSSI_Select = rFPGA0_XAB_RFParameter;
> -	hal_data->PHYRegDef[RF_PATH_B].rfLSSI_Select = rFPGA0_XAB_RFParameter;
> -	hal_data->PHYRegDef[RF_PATH_C].rfLSSI_Select = rFPGA0_XCD_RFParameter;
> -	hal_data->PHYRegDef[RF_PATH_D].rfLSSI_Select = rFPGA0_XCD_RFParameter;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfTxGainStage = rFPGA0_TxGainStage;
> -	hal_data->PHYRegDef[RF_PATH_B].rfTxGainStage = rFPGA0_TxGainStage;
> -	hal_data->PHYRegDef[RF_PATH_C].rfTxGainStage = rFPGA0_TxGainStage;
> -	hal_data->PHYRegDef[RF_PATH_D].rfTxGainStage = rFPGA0_TxGainStage;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfHSSIPara1 = rFPGA0_XA_HSSIParameter1;
> -	hal_data->PHYRegDef[RF_PATH_B].rfHSSIPara1 = rFPGA0_XB_HSSIParameter1;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfHSSIPara2 = rFPGA0_XA_HSSIParameter2;
> -	hal_data->PHYRegDef[RF_PATH_B].rfHSSIPara2 = rFPGA0_XB_HSSIParameter2;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfSwitchControl = rFPGA0_XAB_SwitchControl;
> -	hal_data->PHYRegDef[RF_PATH_B].rfSwitchControl = rFPGA0_XAB_SwitchControl;
> -	hal_data->PHYRegDef[RF_PATH_C].rfSwitchControl = rFPGA0_XCD_SwitchControl;
> -	hal_data->PHYRegDef[RF_PATH_D].rfSwitchControl = rFPGA0_XCD_SwitchControl;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfAGCControl1 = rOFDM0_XAAGCCore1;
> -	hal_data->PHYRegDef[RF_PATH_B].rfAGCControl1 = rOFDM0_XBAGCCore1;
> -	hal_data->PHYRegDef[RF_PATH_C].rfAGCControl1 = rOFDM0_XCAGCCore1;
> -	hal_data->PHYRegDef[RF_PATH_D].rfAGCControl1 = rOFDM0_XDAGCCore1;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfAGCControl2 = rOFDM0_XAAGCCore2;
> -	hal_data->PHYRegDef[RF_PATH_B].rfAGCControl2 = rOFDM0_XBAGCCore2;
> -	hal_data->PHYRegDef[RF_PATH_C].rfAGCControl2 = rOFDM0_XCAGCCore2;
> -	hal_data->PHYRegDef[RF_PATH_D].rfAGCControl2 = rOFDM0_XDAGCCore2;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfRxIQImbalance = rOFDM0_XARxIQImbalance;
> -	hal_data->PHYRegDef[RF_PATH_B].rfRxIQImbalance = rOFDM0_XBRxIQImbalance;
> -	hal_data->PHYRegDef[RF_PATH_C].rfRxIQImbalance = rOFDM0_XCRxIQImbalance;
> -	hal_data->PHYRegDef[RF_PATH_D].rfRxIQImbalance = rOFDM0_XDRxIQImbalance;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfRxAFE = rOFDM0_XARxAFE;
> -	hal_data->PHYRegDef[RF_PATH_B].rfRxAFE = rOFDM0_XBRxAFE;
> -	hal_data->PHYRegDef[RF_PATH_C].rfRxAFE = rOFDM0_XCRxAFE;
> -	hal_data->PHYRegDef[RF_PATH_D].rfRxAFE = rOFDM0_XDRxAFE;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfTxIQImbalance = rOFDM0_XATxIQImbalance;
> -	hal_data->PHYRegDef[RF_PATH_B].rfTxIQImbalance = rOFDM0_XBTxIQImbalance;
> -	hal_data->PHYRegDef[RF_PATH_C].rfTxIQImbalance = rOFDM0_XCTxIQImbalance;
> -	hal_data->PHYRegDef[RF_PATH_D].rfTxIQImbalance = rOFDM0_XDTxIQImbalance;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfTxAFE = rOFDM0_XATxAFE;
> -	hal_data->PHYRegDef[RF_PATH_B].rfTxAFE = rOFDM0_XBTxAFE;
> -	hal_data->PHYRegDef[RF_PATH_C].rfTxAFE = rOFDM0_XCTxAFE;
> -	hal_data->PHYRegDef[RF_PATH_D].rfTxAFE = rOFDM0_XDTxAFE;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfLSSIReadBack = rFPGA0_XA_LSSIReadBack;
> -	hal_data->PHYRegDef[RF_PATH_B].rfLSSIReadBack = rFPGA0_XB_LSSIReadBack;
> -	hal_data->PHYRegDef[RF_PATH_C].rfLSSIReadBack = rFPGA0_XC_LSSIReadBack;
> -	hal_data->PHYRegDef[RF_PATH_D].rfLSSIReadBack = rFPGA0_XD_LSSIReadBack;
> -
> -	hal_data->PHYRegDef[RF_PATH_A].rfLSSIReadBackPi = TransceiverA_HSPI_Readback;
> -	hal_data->PHYRegDef[RF_PATH_B].rfLSSIReadBackPi = TransceiverB_HSPI_Readback;
> +	struct bb_reg_def		*RegDef[4];

Please don't add a variable that is against our coding style rules,
someone will just have to come along later and fix it up again :(


