X-GM-THRID: 2850147008512
X-Received: by 10.52.125.180 with SMTP id mr20mr8661752vdb.1.1424719360021;
        Mon, 23 Feb 2015 11:22:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.171.230 with SMTP id ax6ls942476igc.19.gmail; Mon, 23 Feb
 2015 11:22:39 -0800 (PST)
X-Received: by 10.43.99.67 with SMTP id cr3mr5672960icc.32.1424719359811;
        Mon, 23 Feb 2015 11:22:39 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x230.google.com (mail-qc0-x230.google.com. [2607:f8b0:400d:c01::230])
        by gmr-mx.google.com with ESMTPS id kt5si6571215qcb.3.2015.02.23.11.22.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:22:39 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::230 as permitted sender) client-ip=2607:f8b0:400d:c01::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::230 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x230.google.com with SMTP id p6so12791945qcv.9
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=vs14OmfKpYnJo5dnuT8o9xWv61VSR5AAtyl6K79Dpmg=;
        b=I7qMnO2G/136pltt0kENkOauaRm+QOIc3uezFnieeTpLu1nKPN3LJdsh7LiyjszIaD
         GN4movuTKG74CBtkU9ecEkCuuGQImhfZWUfnlYQ6CkqFoiKrpPkxuMirkyYeh1hcrZvV
         na7KQO0091NfX+gOR3UOJLttDqg9jkFILPnKVZhSY8eADp5IHlVOT6QT+STSeGH33I27
         s4fGiMbmugYHG1FvDUFFFBJZUchZgReiLWh7iNCNchquqjs0k/tS3J3kLzhwgWyxTUNr
         x3Ud8rzvLyK+fIL+ahQTvJJV9y01Q5xHrRoVGicUN1/Fq86aZVOa32Z6Zp7TE2occcr/
         pG0g==
X-Received: by 10.140.232.206 with SMTP id d197mr27999416qhc.79.1424719359707;
        Mon, 23 Feb 2015 11:22:39 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id x124sm18000195qha.2.2015.02.23.11.22.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:22:39 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB7DFD.7030108@gmail.com>
Date: Mon, 23 Feb 2015 14:22:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?SGF0aWNlIEVSVMOcUks=?= <haticeerturk27@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: core: Add spaces
 around that '='
References: <1424707733-23115-1-git-send-email-haticeerturk27@gmail.com>
In-Reply-To: <1424707733-23115-1-git-send-email-haticeerturk27@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 02/23/15 11:08, Hatice ERTÜRK wrote:
> This Error found with checkpatch.pl
> 
> ERROR: spaces required around that '='
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_xmit.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
> index 2c9fe07..bece9b3 100644
> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
> @@ -645,7 +645,7 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>  	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
>  	int curfragnum, length;
>  	u8 *pframe, *payload, mic[8];
> -	u8 priority[4]= {0x0, 0x0, 0x0, 0x0};
> +	u8 priority[4] = {0x0, 0x0, 0x0, 0x0};
>  	u8 hw_hdr_offset = 0;
>  	int bmcst = is_multicast_ether_addr(pattrib->ra);
>  
> @@ -672,7 +672,7 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>  	if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
>  		/* encode mic code */
>  		if (stainfo) {
> -			u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
> +			u8 null_key[16] = {0x0, 0x0, 0x0, 0x0,
>  					 0x0, 0x0, 0x0, 0x0,
>  					 0x0, 0x0, 0x0, 0x0,
>  					 0x0, 0x0, 0x0, 0x0};
> 

In the second portion, you should look at aligning the follow-on lines,
however an even better solution would be to memset() null_key.

Please also try and put a personalized commit message rather than just
the checkpatch words.

Cheers,
Jes


