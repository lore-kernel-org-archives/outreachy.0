X-GM-THRID: 6666833523477839872
X-Received: by 2002:a0c:d2cc:: with SMTP id x12mr16347312qvh.43.1552243937860;
        Sun, 10 Mar 2019 11:52:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:acb6:: with SMTP id m51ls3255004qvc.1.gmail; Sun, 10 Mar
 2019 11:52:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwgXpQdQDbFmuQxHU63kVqUS/oKvDvlmQLORoGEZPXcyEzEAXVOoL5zTfFBCSLSLu0DvG0u
X-Received: by 2002:a0c:d95d:: with SMTP id t29mr16721947qvj.55.1552243937258;
        Sun, 10 Mar 2019 11:52:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552243937; cv=none;
        d=google.com; s=arc-20160816;
        b=ASiJ8acalUqvgv8GjpzyvdSZEZeaYCZRtZJPOXoUlLptKg+PGiD7a8AXJfshrTnDbf
         avJ1hmIu+6CEDZmSDRc+CaU2BYvHIVVlUzgLyO3Eu5VPkZRgw+e/RKfl1EEl62A2vMBT
         LWY6WINr4M/Mo6YiCD8vjFd0xC1+jnVP15SDugdavpMDYeVZ957oDdklXhFxR4z690ZB
         6sK3a1QMOqQ9BOSYBiL+0xG1JGUCEH4VvByfZkV0nORvaFfTuUKnZPuRzRUvEmXvW09B
         u154tK6IErQ3mZsYoNmEft34IM9oqCxEI4zRcYj+OEluexqsJCswnX19hYYnZb+2BAYq
         uryQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=tEF70Vzi1bhVuMUTRcI37mvQaIh99gwVLK9on9D51hY=;
        b=AwyaxaWvh1Os61/MSFwzMTsD816mSh+L3leR5v8BO7nRDMJdCIf54H1HgwaChaz80e
         MG8p+QX18XbsuK67xGDeR5RqOGRWt+DbD9g2rgfurgqJDrwjW82ADQCRjNqB81oP3Vij
         rMhgswZALKU8kSQRrHKAB8SzQa2GiD45SMPc7m5KhsdNHuOPqwbPcbVy8bm97dPb/CRs
         FXVbVDSmE/UAYVEN+nlp3JfitVCzXjC0y8UXhLl0X3l4cMEyzYwAbpMYuvuplxtah3Qh
         BRJAyjc5LJCjn4t/FjV4BpSm4NDW21L/LP5eXKl6Ymxy8GmGhAmkuDpvaQZYIXXkye3t
         kV/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=fredzsMi;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.167 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic310-47.consmr.mail.sg3.yahoo.com (sonic310-47.consmr.mail.sg3.yahoo.com. [106.10.244.167])
        by gmr-mx.google.com with ESMTPS id p1si213134qkg.3.2019.03.10.11.52.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 11:52:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.167 as permitted sender) client-ip=106.10.244.167;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=fredzsMi;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.167 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1552243934; bh=tEF70Vzi1bhVuMUTRcI37mvQaIh99gwVLK9on9D51hY=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=fredzsMi8EHiWsW2SSVUyJAclJpUbup6VeIAbRWJaLNPiZAR+k5/Lg99m4wRDz0yIgDRPjAtYhbLLR33svoSqYGTJkFEoxiEhfYus12lZYXISM5IR6Aw9t2S/fljuau4cNnne6jwFlrovRQolsMm8CcgGEaxRp371/3wXjGI+qguUPt3Xz23GxJHz7/3l3C38fLAEqc2JqXJIUnYgd6blZF+ICU64O6+9RgA+hWGhW4gvsjkEarqCSxNNXovFHYzJ/Y5w2i18Vs3HKcKwSxpDfCee/9TVTtvBF4IO/d5ENc5wlD4dmk4FW07qmyRUJOKp80KkjIHaVgLL85mzD8PGA==
X-YMail-OSG: 6rP1ZgMVM1mIDMZgjekCZQw5JQFfHwPIPEOHt4QcisNwT50FmDSRfz73o5vKdWa
 H7Uzv5zwcEDYI4j.PLRygaipdIZJjuAhmko6ALRj6VbVsh5MCBQ7RD2_Wbem115DKnFwaLZ6fxvc
 fib4v5CrAknDD3YNl2GEBvcwlqXmBw4280WWqMO5Ocj_HW9l4FjiCNTV7S7xX.gTzKaKMaiI.ZnR
 ydUclfp66DKP88VnTv456B6dWy5ow7AyAdnacH05o7BuA33jk49MoDhEjJtdGt1ZniTE4tNhEW0e
 f46iGwGSFB9ywyT8.2RjeABh_hccI0maiZ9Y5TVHE.685k4HEQmMxs3ksYtu2CQGsCIW4xhxCxC4
 .IRNRiCtzfZXjraphvnmOZyuk_D24EKtMBczeaMJrtveIVQ1QGwNRer0BOOaBy6qIotQUDozihzV
 mjWgxP0crINgZX7ljrEVHcEQM_E1v7V8YfuNtsTCmqarEuL51wTzMXy0hL53XSOXYUTjqWKcVl83
 0nLox6hQY3JTFiJE8a_zc46p_iABiQeP68dzOqV26WCJIch2fuIBX2sxxqHMERXb7qhFd5MF7.Hs
 GxPW8NcT_5ISVpsQBCmHZnKseIFSvg7Sa0kAuhVKPM4sNoHayZuajiFXi.2oWpNfo9N3nUOR5ked
 44UEYcQ0XMU_.nLFwVlCvEIs3tfT8CpYTT8VVUfHNeEq9Vw6v3Ngoj9LV1TXOeeyhtLHlwtpO.2q
 xA_76dq3CsOwS.SsMzTEMZQkuPdBAZ728Grbi8UYdRkAQItmwHGbZfApyEwS_W8IPz1R5_KNaUqH
 2YaeeNr9FT7GRYWkd.eRNJzCP3PVrx.HHdKDLkNXA3.WNPf9N2YBtZhTc3sYxEe2jnDp5XB5W49h
 xVZIw2s_KeKWubKxp3cBQCsUnfkrLcqcQXxRACfBe_HCF0urc_R7zcHRrdxZqxhns7L0ibjuti9y
 h76DV..staYuh3igkoLRxWSrfiVNVpU4RM3OjrgIBmnSiWA94ELxPs6rmC0sOZJAb79Ak5y0L1.U
 lgj1TShbqaCl8uuKIwjqA7_pPQ2RAmB2XR6XZ5B9dmwhFybFyKwuDQ5yzZE_LsU.TO4nmR7x9Hfx
 WMS_2tNBSJQljzYxbm0NJpIPVWngRrXDvzclckyS_n.OUuUG9F3Ch04KNJrRYI2o-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.sg3.yahoo.com with HTTP; Sun, 10 Mar 2019 18:52:14 +0000
Received: from 103.7.128.210 (EHLO [10.0.2.15]) ([103.7.128.210])
          by smtp421.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 61271c20899b6bf06b12a695d59f6f32;
          Sun, 10 Mar 2019 18:50:13 +0000 (UTC)
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: Edit CamelCase in
 local variables
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
 teddy.wang@siliconmotion.com, sudipm.mukherjee@gmail.com
References: <20190310183836.2464-1-nishka.dasgupta@yahoo.com>
 <alpine.DEB.2.21.1903101941100.3131@hadrien>
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <c8d24c3b-fbe0-f7bd-e00e-adaccb105119@yahoo.com>
Date: Mon, 11 Mar 2019 00:20:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1903101941100.3131@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 11/03/19 12:11 AM, Julia Lawall wrote:
> 
> 
> On Mon, 11 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
> 
>> Edit CamelCase in local variables across 4 files:
>> - sm750fb/ddk750_chip.c
>> - sm750fb/ddk750_chip.h
>> - sm750fb/ddk750_dvi.c
>> - sm750fb/ddk750_sii164.c
> 
> You don't have to redo it, but you don't really need to give the
> filenames.  One can see them just below in the diffstat.

Okay. I wasn't sure since I haven't recently submitted edits to multiple 
files in a single commit (that's why v1 was a patch series). I'll keep 
this in mind for next time.
Thanking you,
Nishka

> julia
> 
>> to comply with the coding style. Also edit associated comments
>> accordingly.
>> Issue found with Checkpatch.
>>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>> ---
>> Changes in v2:
>> - Submit entire patchset (4 files) as a single commit.
>>
>>   drivers/staging/sm750fb/ddk750_chip.c   |  16 ++--
>>   drivers/staging/sm750fb/ddk750_chip.h   |   2 +-
>>   drivers/staging/sm750fb/ddk750_dvi.c    |  40 ++++-----
>>   drivers/staging/sm750fb/ddk750_sii164.c | 114 ++++++++++++------------
>>   4 files changed, 86 insertions(+), 86 deletions(-)
>>
>> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
>> index 4c1f00f551da..90f5480304f4 100644
>> --- a/drivers/staging/sm750fb/ddk750_chip.c
>> +++ b/drivers/staging/sm750fb/ddk750_chip.c
>> @@ -15,14 +15,14 @@ enum logical_chip_type sm750_get_chip_type(void)
>>   	return chip;
>>   }
>>
>> -void sm750_set_chip_type(unsigned short devId, u8 revId)
>> +void sm750_set_chip_type(unsigned short dev_id, u8 rev_id)
>>   {
>> -	if (devId == 0x718) {
>> +	if (dev_id == 0x718) {
>>   		chip = SM718;
>> -	} else if (devId == 0x750) {
>> +	} else if (dev_id == 0x750) {
>>   		chip = SM750;
>>   		/* SM750 and SM750LE are different in their revision ID only. */
>> -		if (revId == SM750LE_REVISION_ID) {
>> +		if (rev_id == SM750LE_REVISION_ID) {
>>   			chip = SM750LE;
>>   			pr_info("found sm750le\n");
>>   		}
>> @@ -321,7 +321,7 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
>>   	int mini_diff;
>>   	unsigned int RN, quo, rem, fl_quo;
>>   	unsigned int input, request;
>> -	unsigned int tmpClock, ret;
>> +	unsigned int tmp_clock, ret;
>>   	const int max_OD = 3;
>>   	int max_d = 6;
>>
>> @@ -365,8 +365,8 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
>>   			if (M < 256 && M > 0) {
>>   				unsigned int diff;
>>
>> -				tmpClock = pll->inputFreq * M / N / X;
>> -				diff = abs(tmpClock - request_orig);
>> +				tmp_clock = pll->inputFreq * M / N / X;
>> +				diff = abs(tmp_clock - request_orig);
>>   				if (diff < mini_diff) {
>>   					pll->M = M;
>>   					pll->N = N;
>> @@ -375,7 +375,7 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
>>   						pll->POD = d - max_OD;
>>   					pll->OD = d - pll->POD;
>>   					mini_diff = diff;
>> -					ret = tmpClock;
>> +					ret = tmp_clock;
>>   				}
>>   			}
>>   		}
>> diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
>> index c72aac21b675..3e92b3297160 100644
>> --- a/drivers/staging/sm750fb/ddk750_chip.h
>> +++ b/drivers/staging/sm750fb/ddk750_chip.h
>> @@ -93,7 +93,7 @@ struct initchip_param {
>>   };
>>
>>   enum logical_chip_type sm750_get_chip_type(void);
>> -void sm750_set_chip_type(unsigned short devId, u8 revId);
>> +void sm750_set_chip_type(unsigned short dev_id, u8 rev_id);
>>   unsigned int sm750_calc_pll_value(unsigned int request, struct  pll_value *pll);
>>   unsigned int sm750_format_pll_reg(struct pll_value *pPLL);
>>   unsigned int ddk750_get_vm_size(void);
>> diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
>> index b20d16198c17..cd564ea40779 100644
>> --- a/drivers/staging/sm750fb/ddk750_dvi.c
>> +++ b/drivers/staging/sm750fb/ddk750_dvi.c
>> @@ -30,31 +30,31 @@ static struct dvi_ctrl_device g_dcftSupportedDviController[] = {
>>   #endif
>>   };
>>
>> -int dviInit(unsigned char edgeSelect,
>> -	    unsigned char busSelect,
>> -	    unsigned char dualEdgeClkSelect,
>> -	    unsigned char hsyncEnable,
>> -	    unsigned char vsyncEnable,
>> -	    unsigned char deskewEnable,
>> -	    unsigned char deskewSetting,
>> -	    unsigned char continuousSyncEnable,
>> -	    unsigned char pllFilterEnable,
>> -	    unsigned char pllFilterValue)
>> +int dviInit(unsigned char edge_select,
>> +	    unsigned char bus_select,
>> +	    unsigned char dual_edge_clk_select,
>> +	    unsigned char hsync_enable,
>> +	    unsigned char vsync_enable,
>> +	    unsigned char deskew_enable,
>> +	    unsigned char deskew_setting,
>> +	    unsigned char continuous_sync_enable,
>> +	    unsigned char pll_filter_enable,
>> +	    unsigned char pll_filter_value)
>>   {
>>   	struct dvi_ctrl_device *pCurrentDviCtrl;
>>
>>   	pCurrentDviCtrl = g_dcftSupportedDviController;
>>   	if (pCurrentDviCtrl->pfnInit) {
>> -		return pCurrentDviCtrl->pfnInit(edgeSelect,
>> -						busSelect,
>> -						dualEdgeClkSelect,
>> -						hsyncEnable,
>> -						vsyncEnable,
>> -						deskewEnable,
>> -						deskewSetting,
>> -						continuousSyncEnable,
>> -						pllFilterEnable,
>> -						pllFilterValue);
>> +		return pCurrentDviCtrl->pfnInit(edge_select,
>> +						bus_select,
>> +						dual_edge_clk_select,
>> +						hsync_enable,
>> +						vsync_enable,
>> +						deskew_enable,
>> +						deskew_setting,
>> +						continuous_sync_enable,
>> +						pll_filter_enable,
>> +						pll_filter_value);
>>   	}
>>   	return -1; /* error */
>>   }
>> diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
>> index 8391f57d5383..c8e856c13912 100644
>> --- a/drivers/staging/sm750fb/ddk750_sii164.c
>> +++ b/drivers/staging/sm750fb/ddk750_sii164.c
>> @@ -69,58 +69,58 @@ unsigned short sii164GetDeviceID(void)
>>    *      This function initialize and detect the DVI controller chip.
>>    *
>>    *  Input:
>> - *      edgeSelect          - Edge Select:
>> - *                              0 = Input data is falling edge latched (falling edge
>> - *                                  latched first in dual edge mode)
>> - *                              1 = Input data is rising edge latched (rising edge
>> - *                                  latched first in dual edge mode)
>> - *      busSelect           - Input Bus Select:
>> - *                              0 = Input data bus is 12-bits wide
>> - *                              1 = Input data bus is 24-bits wide
>> - *      dualEdgeClkSelect   - Dual Edge Clock Select
>> - *                              0 = Input data is single edge latched
>> - *                              1 = Input data is dual edge latched
>> - *      hsyncEnable         - Horizontal Sync Enable:
>> - *                              0 = HSYNC input is transmitted as fixed LOW
>> - *                              1 = HSYNC input is transmitted as is
>> - *      vsyncEnable         - Vertical Sync Enable:
>> - *                              0 = VSYNC input is transmitted as fixed LOW
>> - *                              1 = VSYNC input is transmitted as is
>> - *      deskewEnable        - De-skewing Enable:
>> - *                              0 = De-skew disabled
>> - *                              1 = De-skew enabled
>> - *      deskewSetting       - De-skewing Setting (increment of 260psec)
>> - *                              0 = 1 step --> minimum setup / maximum hold
>> - *                              1 = 2 step
>> - *                              2 = 3 step
>> - *                              3 = 4 step
>> - *                              4 = 5 step
>> - *                              5 = 6 step
>> - *                              6 = 7 step
>> - *                              7 = 8 step --> maximum setup / minimum hold
>> - *      continuousSyncEnable- SYNC Continuous:
>> - *                              0 = Disable
>> - *                              1 = Enable
>> - *      pllFilterEnable     - PLL Filter Enable
>> - *                              0 = Disable PLL Filter
>> - *                              1 = Enable PLL Filter
>> - *      pllFilterValue      - PLL Filter characteristics:
>> - *                              0~7 (recommended value is 4)
>> + *      edge_select           - Edge Select:
>> + *                               0 = Input data is falling edge latched (falling
>> + *                                   edge latched first in dual edge mode)
>> + *                               1 = Input data is rising edge latched (rising
>> + *                                   edge latched first in dual edge mode)
>> + *      bus_select            - Input Bus Select:
>> + *                               0 = Input data bus is 12-bits wide
>> + *                               1 = Input data bus is 24-bits wide
>> + *      dual_edge_clk_select  - Dual Edge Clock Select
>> + *                               0 = Input data is single edge latched
>> + *                               1 = Input data is dual edge latched
>> + *      hsync_enable          - Horizontal Sync Enable:
>> + *                               0 = HSYNC input is transmitted as fixed LOW
>> + *                               1 = HSYNC input is transmitted as is
>> + *      vsync_enable          - Vertical Sync Enable:
>> + *                               0 = VSYNC input is transmitted as fixed LOW
>> + *                               1 = VSYNC input is transmitted as is
>> + *      deskew_enable         - De-skewing Enable:
>> + *                               0 = De-skew disabled
>> + *                               1 = De-skew enabled
>> + *      deskew_setting        - De-skewing Setting (increment of 260psec)
>> + *                               0 = 1 step --> minimum setup / maximum hold
>> + *                               1 = 2 step
>> + *                               2 = 3 step
>> + *                               3 = 4 step
>> + *                               4 = 5 step
>> + *                               5 = 6 step
>> + *                               6 = 7 step
>> + *                               7 = 8 step --> maximum setup / minimum hold
>> + *      continuous_sync_enable- SYNC Continuous:
>> + *                               0 = Disable
>> + *                               1 = Enable
>> + *      pll_filter_enable     - PLL Filter Enable
>> + *                               0 = Disable PLL Filter
>> + *                               1 = Enable PLL Filter
>> + *      pll_filter_value      - PLL Filter characteristics:
>> + *                               0~7 (recommended value is 4)
>>    *
>>    *  Output:
>>    *      0   - Success
>>    *     -1   - Fail.
>>    */
>> -long sii164InitChip(unsigned char edgeSelect,
>> -		    unsigned char busSelect,
>> -		    unsigned char dualEdgeClkSelect,
>> -		    unsigned char hsyncEnable,
>> -		    unsigned char vsyncEnable,
>> -		    unsigned char deskewEnable,
>> -		    unsigned char deskewSetting,
>> -		    unsigned char continuousSyncEnable,
>> -		    unsigned char pllFilterEnable,
>> -		    unsigned char pllFilterValue)
>> +long sii164InitChip(unsigned char edge_select,
>> +		    unsigned char bus_select,
>> +		    unsigned char dual_edge_clk_select,
>> +		    unsigned char hsync_enable,
>> +		    unsigned char vsync_enable,
>> +		    unsigned char deskew_enable,
>> +		    unsigned char deskew_setting,
>> +		    unsigned char continuous_sync_enable,
>> +		    unsigned char pll_filter_enable,
>> +		    unsigned char pll_filter_value)
>>   {
>>   	unsigned char config;
>>
>> @@ -139,31 +139,31 @@ long sii164InitChip(unsigned char edgeSelect,
>>   		 */
>>
>>   		/* Select the edge */
>> -		if (edgeSelect == 0)
>> +		if (edge_select == 0)
>>   			config = SII164_CONFIGURATION_LATCH_FALLING;
>>   		else
>>   			config = SII164_CONFIGURATION_LATCH_RISING;
>>
>>   		/* Select bus wide */
>> -		if (busSelect == 0)
>> +		if (bus_select == 0)
>>   			config |= SII164_CONFIGURATION_BUS_12BITS;
>>   		else
>>   			config |= SII164_CONFIGURATION_BUS_24BITS;
>>
>>   		/* Select Dual/Single Edge Clock */
>> -		if (dualEdgeClkSelect == 0)
>> +		if (dual_edge_clk_select == 0)
>>   			config |= SII164_CONFIGURATION_CLOCK_SINGLE;
>>   		else
>>   			config |= SII164_CONFIGURATION_CLOCK_DUAL;
>>
>>   		/* Select HSync Enable */
>> -		if (hsyncEnable == 0)
>> +		if (hsync_enable == 0)
>>   			config |= SII164_CONFIGURATION_HSYNC_FORCE_LOW;
>>   		else
>>   			config |= SII164_CONFIGURATION_HSYNC_AS_IS;
>>
>>   		/* Select VSync Enable */
>> -		if (vsyncEnable == 0)
>> +		if (vsync_enable == 0)
>>   			config |= SII164_CONFIGURATION_VSYNC_FORCE_LOW;
>>   		else
>>   			config |= SII164_CONFIGURATION_VSYNC_AS_IS;
>> @@ -175,12 +175,12 @@ long sii164InitChip(unsigned char edgeSelect,
>>   		 * This fixes some artifacts problem in some mode on board 2.2.
>>   		 * Somehow this fix does not affect board 2.1.
>>   		 */
>> -		if (deskewEnable == 0)
>> +		if (deskew_enable == 0)
>>   			config = SII164_DESKEW_DISABLE;
>>   		else
>>   			config = SII164_DESKEW_ENABLE;
>>
>> -		switch (deskewSetting) {
>> +		switch (deskew_setting) {
>>   		case 0:
>>   			config |= SII164_DESKEW_1_STEP;
>>   			break;
>> @@ -209,19 +209,19 @@ long sii164InitChip(unsigned char edgeSelect,
>>   		i2cWriteReg(SII164_I2C_ADDRESS, SII164_DESKEW, config);
>>
>>   		/* Enable/Disable Continuous Sync. */
>> -		if (continuousSyncEnable == 0)
>> +		if (continuous_sync_enable == 0)
>>   			config = SII164_PLL_FILTER_SYNC_CONTINUOUS_DISABLE;
>>   		else
>>   			config = SII164_PLL_FILTER_SYNC_CONTINUOUS_ENABLE;
>>
>>   		/* Enable/Disable PLL Filter */
>> -		if (pllFilterEnable == 0)
>> +		if (pll_filter_enable == 0)
>>   			config |= SII164_PLL_FILTER_DISABLE;
>>   		else
>>   			config |= SII164_PLL_FILTER_ENABLE;
>>
>>   		/* Set the PLL Filter value */
>> -		config |= ((pllFilterValue & 0x07) << 1);
>> +		config |= ((pll_filter_value & 0x07) << 1);
>>
>>   		i2cWriteReg(SII164_I2C_ADDRESS, SII164_PLL, config);
>>
>> --
>> 2.19.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190310183836.2464-1-nishka.dasgupta%40yahoo.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

