X-GM-THRID: 6810983981857636352
X-Received: by 2002:a25:bb0c:: with SMTP id z12mr2950876ybg.253.1585806976197;
        Wed, 01 Apr 2020 22:56:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:25d4:: with SMTP id l203ls840896ybl.3.gmail; Wed, 01 Apr
 2020 22:56:14 -0700 (PDT)
X-Google-Smtp-Source: APiQypJY2LCoEH1CD2820RelUOZWYwZNq95PbLXphriOcyaemUb9b/twxeZ//LrR+PWm4Zu3hjk/
X-Received: by 2002:a25:c64b:: with SMTP id k72mr2966565ybf.177.1585806974825;
        Wed, 01 Apr 2020 22:56:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585806974; cv=none;
        d=google.com; s=arc-20160816;
        b=yXpXGiFnpwiJK6iaGVd0g0vQgejyK35vBsHiAv5J47auEYF55rZcgGblK4O6JbEmIy
         uYlwx2UrDmCWcwDOdmdvboWh3gWBnrPeojipcy5XKBV/WSrw5xjKYCPJS9XAy5kFZvd2
         adVCYSBMb0+pdSTE1hFerQ0aJ53lGca4vEQTER9Z0YPbvrVOqvAWwJNaAEltp0sSFvsr
         69TF1wJQfL2ZpzwGGk/9nWtGnQ+OcOtDXfqtaMGG6K844UVxtrsHUmUkAHqzBa8p71hN
         LorOMtx3wAHpnOgi6RPVe62YbKweRTtVRq6/sKommSiwBbAVReCeKDZDPusW+4/iE0D4
         iDlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id;
        bh=NOVyi7QnTCiULK090eFIqdauO8tTXuj3BRgY3GODhEM=;
        b=V3y2N5gYUDvJPmQYaMYmWp22SF4CoEhJ8E33jwYudRPQPQ+IRGMuTSoeigMr5RJ9U7
         PULgcnoYmTnG41THMWGeRbfTfEx8N8MSjn6ge7o1xhqDjfmsITEcMivOe42g9zdzdkZu
         dQKTR7a1zzmiHNRA1p/tdj7KDPtEVNmfz4m57qwLVbOzhXn3327iXDrvaJ927iDEwIY+
         jQbo9MV01KpMxkyjkuU0WdA9XKPEpeIrkokWqgTrxKExgkat9ezeeSDnqDTph9EqOWlK
         /ch3pJFlDSaNP1R62fqzhWFwyPScgCtcKQn4Pmm7VxH9VDHC/+G/zbRYA1yrRfmKze5f
         j2Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.80 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0080.hostedemail.com. [216.40.44.80])
        by gmr-mx.google.com with ESMTPS id l141si339478ybl.3.2020.04.01.22.56.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 22:56:14 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.80 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.80;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.80 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 38DD15010;
	Thu,  2 Apr 2020 05:56:14 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2692:2828:3138:3139:3140:3141:3142:3354:3622:3865:3867:3868:4250:4321:4605:5007:6119:7514:7875:7903:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12296:12297:12438:12555:12740:12760:12895:13439:13972:14096:14097:14181:14659:14721:21080:21627:21990:30012:30045:30046:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: judge59_8d939426bb842
X-Filterd-Recvd-Size: 3915
Received: from XPS-9350.home (unknown [47.151.136.130])
	(Authenticated sender: joe@perches.com)
	by omf20.hostedemail.com (Postfix) with ESMTPA;
	Thu,  2 Apr 2020 05:56:12 +0000 (UTC)
Message-ID: <5d35084fcc0476fc2f43e3cf371f5078c0fbeeab.camel@perches.com>
Subject: Re: [PATCH 1/2] staging: gasket: Fix 4 over 80 char warnings
From: Joe Perches <joe@perches.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>, 
 outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>, Ben Chan <benchan@chromium.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org
Date: Wed, 01 Apr 2020 22:54:17 -0700
In-Reply-To: <20200402053617.826678-2-jbwyatt4@gmail.com>
References: <20200402053617.826678-1-jbwyatt4@gmail.com>
	 <20200402053617.826678-2-jbwyatt4@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2020-04-01 at 22:36 -0700, John B. Wyatt IV wrote:
> Fix 4 over 80 char warnings by caching long enum values into local
> variables.
> 
> All enums are only used once inside each function (and once inside
> the entire file).
> 
> Reported by checkpatch.
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/gasket/apex_driver.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> index 46199c8ca441..f48209ec7d24 100644
> --- a/drivers/staging/gasket/apex_driver.c
> +++ b/drivers/staging/gasket/apex_driver.c
> @@ -253,6 +253,8 @@ static int apex_get_status(struct gasket_dev *gasket_dev)
>  /* Enter GCB reset state. */
>  static int apex_enter_reset(struct gasket_dev *gasket_dev)
>  {
> +	int idle_gen_reg = APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER;
> +

This indirection only makes the code more difficult to understand.

>  	if (bypass_top_level)
>  		return 0;
>  
> @@ -263,7 +265,7 @@ static int apex_enter_reset(struct gasket_dev *gasket_dev)
>  	 *    - Enable GCB idle
>  	 */
>  	gasket_read_modify_write_64(gasket_dev, APEX_BAR_INDEX,
> -				    APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER,
> +				    idle_gen_reg,
>  				    0x0, 1, 32);
>  
>  	/*    - Initiate DMA pause */
> @@ -395,11 +397,12 @@ static int apex_device_cleanup(struct gasket_dev *gasket_dev)
>  	u64 scalar_error;
>  	u64 hib_error;
>  	int ret = 0;
> +	int status = APEX_BAR2_REG_SCALAR_CORE_ERROR_STATUS;
>  
>  	hib_error = gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
>  				       APEX_BAR2_REG_USER_HIB_ERROR_STATUS);
>  	scalar_error = gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
> -					  APEX_BAR2_REG_SCALAR_CORE_ERROR_STATUS);
> +					  status);
>  
>  	dev_dbg(gasket_dev->dev,
>  		"%s 0x%p hib_error 0x%llx scalar_error 0x%llx\n",
> @@ -584,6 +587,8 @@ static int apex_pci_probe(struct pci_dev *pci_dev,
>  	ulong page_table_ready, msix_table_ready;
>  	int retries = 0;
>  	struct gasket_dev *gasket_dev;
> +	int page_table_init = APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT;
> +	int msix_table_init = APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT;
>  
>  	ret = pci_enable_device(pci_dev);
>  	if (ret) {
> @@ -606,10 +611,10 @@ static int apex_pci_probe(struct pci_dev *pci_dev,
>  	while (retries < APEX_RESET_RETRY) {
>  		page_table_ready =
>  			gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
> -					   APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT);
> +					   page_table_init);
>  		msix_table_ready =
>  			gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
> -					   APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT);
> +					   msix_table_init);
>  		if (page_table_ready && msix_table_ready)
>  			break;
>  		schedule_timeout(msecs_to_jiffies(APEX_RESET_DELAY));


