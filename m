X-GM-THRID: 9790095884288
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2ff1775a6d87248a
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.1.199 with SMTP id 7mr18601681obo.49.1427397272472;
        Thu, 26 Mar 2015 12:14:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.225.199 with SMTP id rm7ls551699obc.49.gmail; Thu, 26 Mar
 2015 12:14:32 -0700 (PDT)
X-Received: by 10.182.40.130 with SMTP id x2mr17163283obk.48.1427397272192;
        Thu, 26 Mar 2015 12:14:32 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id e5si810640qcg.1.2015.03.26.12.14.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:14:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x236.google.com with SMTP id a8so106652602qgf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 12:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=XyzIkKqGZCEJAOvYPAwBAr+nIXUAaJrozdCzeRsSQKk=;
        b=n9Fd8kwrbkwDIJnJYQAl88dFe8Fztr5Wxw00tRyH0CNMMzQwYS/A7uEnRSGMvNzuHl
         mKa064b8u0e3ADWt/hn8eOHWx4Tr6fvcQsBr6ZkwlFDxYSRKIABxSShDn4AfiLOgsyrO
         BTO7qndSqJOl6fUBtlASwXUQUtNA4p7jJ8XrgSRFxT2wmm81WTWyQ/EIll0YgertgYb/
         f0N6FqSZ+yhlOWeJWaBNz8NnzSKwwfZGia8b3PAUyLk8wl2rY3S1bp/njQIrEYfeaggV
         iql7MJHdrSDiWPAIO/GtF9pJk93qbFY9eO5L8aP8nojpEKNotsGXcCmGJiUAc69gdw3+
         uCkg==
X-Received: by 10.55.18.8 with SMTP id c8mr32888592qkh.25.1427397270585;
        Thu, 26 Mar 2015 12:14:30 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id k84sm3988375qkh.48.2015.03.26.12.14.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:14:30 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <55145A95.909@gmail.com>
Date: Thu, 26 Mar 2015 15:14:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Vatika Harlalka <vatikaharlalka@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Add new variable
 to make code compact
References: <20150325131311.GA10728@akanksha>
In-Reply-To: <20150325131311.GA10728@akanksha>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/25/15 09:13, Vatika Harlalka wrote:
> Introducing this variable leads to overall more code
> compactness and increases readability.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  Changes in v2: Changed variable name as per
> 		kernel code conventions.
> 
> drivers/staging/rtl8188eu/hal/bb_cfg.c | 162 +++++++++++++++++----------------
>  1 file changed, 84 insertions(+), 78 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/bb_cfg.c b/drivers/staging/rtl8188eu/hal/bb_cfg.c
> index 2d3d012..8eb2b39 100644
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
> +	struct bb_reg_def               *reg[4];

It took me a little while to convince myself this patch was correct -
kinda an odd way to do it. However you shouldn't have multiple
whitespaces in the bb_reg_def *reg declaration there.

Cheers,
Jes


> +	reg[RF_PATH_A] = &(hal_data->PHYRegDef[RF_PATH_A]);
> +	reg[RF_PATH_B] = &(hal_data->PHYRegDef[RF_PATH_B]);
> +	reg[RF_PATH_C] = &(hal_data->PHYRegDef[RF_PATH_C]);
> +	reg[RF_PATH_D] = &(hal_data->PHYRegDef[RF_PATH_D]);
> +
> +	reg[RF_PATH_A]->rfintfs = rFPGA0_XAB_RFInterfaceSW;
> +	reg[RF_PATH_B]->rfintfs = rFPGA0_XAB_RFInterfaceSW;
> +	reg[RF_PATH_C]->rfintfs = rFPGA0_XCD_RFInterfaceSW;
> +	reg[RF_PATH_D]->rfintfs = rFPGA0_XCD_RFInterfaceSW;
> +
> +	reg[RF_PATH_A]->rfintfi = rFPGA0_XAB_RFInterfaceRB;
> +	reg[RF_PATH_B]->rfintfi = rFPGA0_XAB_RFInterfaceRB;
> +	reg[RF_PATH_C]->rfintfi = rFPGA0_XCD_RFInterfaceRB;
> +	reg[RF_PATH_D]->rfintfi = rFPGA0_XCD_RFInterfaceRB;
> +
> +	reg[RF_PATH_A]->rfintfo = rFPGA0_XA_RFInterfaceOE;
> +	reg[RF_PATH_B]->rfintfo = rFPGA0_XB_RFInterfaceOE;
> +
> +	reg[RF_PATH_A]->rfintfe = rFPGA0_XA_RFInterfaceOE;
> +	reg[RF_PATH_B]->rfintfe = rFPGA0_XB_RFInterfaceOE;
> +
> +	reg[RF_PATH_A]->rf3wireOffset = rFPGA0_XA_LSSIParameter;
> +	reg[RF_PATH_B]->rf3wireOffset = rFPGA0_XB_LSSIParameter;
> +
> +	reg[RF_PATH_A]->rfLSSI_Select = rFPGA0_XAB_RFParameter;
> +	reg[RF_PATH_B]->rfLSSI_Select = rFPGA0_XAB_RFParameter;
> +	reg[RF_PATH_C]->rfLSSI_Select = rFPGA0_XCD_RFParameter;
> +	reg[RF_PATH_D]->rfLSSI_Select = rFPGA0_XCD_RFParameter;
> +
> +	reg[RF_PATH_A]->rfTxGainStage = rFPGA0_TxGainStage;
> +	reg[RF_PATH_B]->rfTxGainStage = rFPGA0_TxGainStage;
> +	reg[RF_PATH_C]->rfTxGainStage = rFPGA0_TxGainStage;
> +	reg[RF_PATH_D]->rfTxGainStage = rFPGA0_TxGainStage;
> +
> +	reg[RF_PATH_A]->rfHSSIPara1 = rFPGA0_XA_HSSIParameter1;
> +	reg[RF_PATH_B]->rfHSSIPara1 = rFPGA0_XB_HSSIParameter1;
> +
> +	reg[RF_PATH_A]->rfHSSIPara2 = rFPGA0_XA_HSSIParameter2;
> +	reg[RF_PATH_B]->rfHSSIPara2 = rFPGA0_XB_HSSIParameter2;
> +
> +	reg[RF_PATH_A]->rfSwitchControl = rFPGA0_XAB_SwitchControl;
> +	reg[RF_PATH_B]->rfSwitchControl = rFPGA0_XAB_SwitchControl;
> +	reg[RF_PATH_C]->rfSwitchControl = rFPGA0_XCD_SwitchControl;
> +	reg[RF_PATH_D]->rfSwitchControl = rFPGA0_XCD_SwitchControl;
> +
> +	reg[RF_PATH_A]->rfAGCControl1 = rOFDM0_XAAGCCore1;
> +	reg[RF_PATH_B]->rfAGCControl1 = rOFDM0_XBAGCCore1;
> +	reg[RF_PATH_C]->rfAGCControl1 = rOFDM0_XCAGCCore1;
> +	reg[RF_PATH_D]->rfAGCControl1 = rOFDM0_XDAGCCore1;
> +
> +	reg[RF_PATH_A]->rfAGCControl2 = rOFDM0_XAAGCCore2;
> +	reg[RF_PATH_B]->rfAGCControl2 = rOFDM0_XBAGCCore2;
> +	reg[RF_PATH_C]->rfAGCControl2 = rOFDM0_XCAGCCore2;
> +	reg[RF_PATH_D]->rfAGCControl2 = rOFDM0_XDAGCCore2;
> +
> +	reg[RF_PATH_A]->rfRxIQImbalance = rOFDM0_XARxIQImbalance;
> +	reg[RF_PATH_B]->rfRxIQImbalance = rOFDM0_XBRxIQImbalance;
> +	reg[RF_PATH_C]->rfRxIQImbalance = rOFDM0_XCRxIQImbalance;
> +	reg[RF_PATH_D]->rfRxIQImbalance = rOFDM0_XDRxIQImbalance;
> +
> +	reg[RF_PATH_A]->rfRxAFE = rOFDM0_XARxAFE;
> +	reg[RF_PATH_B]->rfRxAFE = rOFDM0_XBRxAFE;
> +	reg[RF_PATH_C]->rfRxAFE = rOFDM0_XCRxAFE;
> +	reg[RF_PATH_D]->rfRxAFE = rOFDM0_XDRxAFE;
> +
> +	reg[RF_PATH_A]->rfTxIQImbalance = rOFDM0_XATxIQImbalance;
> +	reg[RF_PATH_B]->rfTxIQImbalance = rOFDM0_XBTxIQImbalance;
> +	reg[RF_PATH_C]->rfTxIQImbalance = rOFDM0_XCTxIQImbalance;
> +	reg[RF_PATH_D]->rfTxIQImbalance = rOFDM0_XDTxIQImbalance;
> +
> +	reg[RF_PATH_A]->rfTxAFE = rOFDM0_XATxAFE;
> +	reg[RF_PATH_B]->rfTxAFE = rOFDM0_XBTxAFE;
> +	reg[RF_PATH_C]->rfTxAFE = rOFDM0_XCTxAFE;
> +	reg[RF_PATH_D]->rfTxAFE = rOFDM0_XDTxAFE;
> +
> +	reg[RF_PATH_A]->rfLSSIReadBack = rFPGA0_XA_LSSIReadBack;
> +	reg[RF_PATH_B]->rfLSSIReadBack = rFPGA0_XB_LSSIReadBack;
> +	reg[RF_PATH_C]->rfLSSIReadBack = rFPGA0_XC_LSSIReadBack;
> +	reg[RF_PATH_D]->rfLSSIReadBack = rFPGA0_XD_LSSIReadBack;
> +
> +	reg[RF_PATH_A]->rfLSSIReadBackPi = TransceiverA_HSPI_Readback;
> +	reg[RF_PATH_B]->rfLSSIReadBackPi = TransceiverB_HSPI_Readback;
>  }
>  
>  static bool config_parafile(struct adapter *adapt)
> 


