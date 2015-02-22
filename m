X-GM-THRID: 2547468206080
X-Received: by 10.182.112.167 with SMTP id ir7mr9011060obb.29.1424634612915;
        Sun, 22 Feb 2015 11:50:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.41 with SMTP id w38ls1532533qgw.85.gmail; Sun, 22 Feb
 2015 11:50:12 -0800 (PST)
X-Received: by 10.52.244.198 with SMTP id xi6mr8618349vdc.0.1424634612769;
        Sun, 22 Feb 2015 11:50:12 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x22b.google.com (mail-qa0-x22b.google.com. [2607:f8b0:400d:c00::22b])
        by gmr-mx.google.com with ESMTPS id kt5si6247324qcb.3.2015.02.22.11.50.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 11:50:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22b as permitted sender) client-ip=2607:f8b0:400d:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22b as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-f43.google.com with SMTP id bm13so19601848qab.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 11:50:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=r3EeFifNv+i/hTniF7ipxNgBrciCE7D2odWpP4vzp3c=;
        b=BcxM1yzsuE0Pfmk47VFVg8M1tih2QqO9F2FKyZ3iMp5Tu3tT9RDivQe0Mh1ZSckIjT
         eeJba90pE2qnKu56bQfPNvWWc9oKQiQ5OMtBeI4DH7oH8w/CE6r7CmMOVlpWxFAv1y13
         N3UkK7VWcdEh0LxaOPtS527FGeb2VY1PFxK4o5PB539fFB9Ninq7VTo0i4+GVgGVnXZF
         gsdf2EyMJYnF/newr6XE0vkNnX+PXsclU5bXVMCw/VmXnWOOp9+O2yzKi8DijWsWW+W3
         blgRioHi+UhFMgzpuSQ74TuV23GQgbmmhSdTFExFfroLULTYbN0JkZNEB4t/FSNqjx6U
         t9Lw==
X-Received: by 10.140.150.149 with SMTP id 143mr18399020qhw.4.1424634612640;
        Sun, 22 Feb 2015 11:50:12 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-72-68-159-94.nycmny.fios.verizon.net. [72.68.159.94])
        by mx.google.com with ESMTPSA id o15sm17973522qaa.3.2015.02.22.11.50.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 11:50:11 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EA32F2.8090602@gmail.com>
Date: Sun, 22 Feb 2015 14:50:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?SGF0aWNlIEVSVMOcUks=?= <haticeerturk27@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: core: coding style
 ether_addr_copy
References: <1424628253-15398-1-git-send-email-haticeerturk27@gmail.com>
In-Reply-To: <1424628253-15398-1-git-send-email-haticeerturk27@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 02/22/15 13:04, Hatice ERTÜRK wrote:
> This fixes the following issues detected by checkpatch.pl:
> 
> WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2)
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_ap.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Seems fine - did you verify that the structures are aligned correctly?

Cheers,
Jes


> diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
> index 59d08f4..04717dc 100644
> --- a/drivers/staging/rtl8723au/core/rtw_ap.c
> +++ b/drivers/staging/rtl8723au/core/rtw_ap.c
> @@ -817,7 +817,7 @@ int rtw_check_beacon_data23a(struct rtw_adapter *padapter,
>  
>  	pbss_network->Rssi = 0;
>  
> -	memcpy(pbss_network->MacAddress, myid(&padapter->eeprompriv), ETH_ALEN);
> +	ether_addr_copy(pbss_network->MacAddress, myid(&padapter->eeprompriv));
>  
>  	/* SSID */
>  	p = rtw_get_ie23a(ie, WLAN_EID_SSID, &ie_len, pbss_network->IELength);
> @@ -1079,7 +1079,7 @@ int rtw_acl_add_sta23a(struct rtw_adapter *padapter, u8 *addr)
>  		if (!paclnode->valid) {
>  			INIT_LIST_HEAD(&paclnode->list);
>  
> -			memcpy(paclnode->addr, addr, ETH_ALEN);
> +			ether_addr_copy(paclnode->addr, addr);
>  
>  			paclnode->valid = true;
>  
> 


