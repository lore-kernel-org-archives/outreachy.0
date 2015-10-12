X-GM-THRID: 6204754090721804288
X-Received: by 10.68.222.104 with SMTP id ql8mr24077804pbc.9.1444657571331;
        Mon, 12 Oct 2015 06:46:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.247.7 with SMTP id ya7ls1234066obc.82.gmail; Mon, 12 Oct
 2015 06:46:10 -0700 (PDT)
X-Received: by 10.182.28.73 with SMTP id z9mr24128179obg.45.1444657570894;
        Mon, 12 Oct 2015 06:46:10 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id uv4si1868140pac.0.2015.10.12.06.46.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 06:46:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id hy16so154725803pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 06:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=CXWnaG9tJgJElK7PleMpMp0oRAIcHeJBj3tCNPHMHAk=;
        b=WpkLbhGKhqps3QZBXxUXIXcOLR7hTIrOz0CToDJ0up1D/RIO/r3cyYdKWTDT5mfYAp
         +oCb4DDk84OJNeIK00LSBtt/PMO3EmtrbmN+rTfNs3gVhZF8ZfHvet52PwwjEvZ6PCsO
         LAb0Tmk8cNjcPlIZSACwfZaougTPBPPnYXiX6WttyDwf8HVIMS/4b8dunqNh9xnVwoUO
         vXNr/bx+Za/Lq8vlC2ucGpZHGY+qLsa1i/1Jm/Wj9F3e6h61SDXPv8h4Hlz90QIzET85
         1FDTU/PW1aks4bCxE/RgcS/SRvsKkM5e5BBMg39d2gFXFW6Gm1v8Iko0fAYivD0yXxIB
         n/Bg==
X-Received: by 10.66.234.138 with SMTP id ue10mr34979553pac.9.1444657570748;
        Mon, 12 Oct 2015 06:46:10 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id su3sm18520118pbc.83.2015.10.12.06.46.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Oct 2015 06:46:10 -0700 (PDT)
Date: Mon, 12 Oct 2015 19:15:59 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: wilc1000: host_interface:
 Replace kmalloc with kzalloc
In-Reply-To: <eac47047141a3ed75e04ca4cfb1fece8a8ef349f.1444655924.git.shivanib134@gmail.com>
Message-ID: <alpine.DEB.2.11.1510121914060.20398@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <cover.1444655924.git.shivanib134@gmail.com> <eac47047141a3ed75e04ca4cfb1fece8a8ef349f.1444655924.git.shivanib134@gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.561BB9A1.0110,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:

> Replace the function kmalloc and following memset function with a
> single function kzalloc.
> Issue found using coccinelle.

Hello Shivani,
  This was done by me in a patch series on 9th Oct. Since it hasn't been 
applied yet, you probably missed it :)

Shraddha
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
> drivers/staging/wilc1000/host_interface.c | 13 +++----------
> 1 file changed, 3 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index bb833d3..d279eba 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -2523,16 +2523,13 @@ static int Handle_Key(tstrWILC_WFIDrv *drvHandler,
>
> 	case WPARxGtk:
> 		if (pstrHostIFkeyAttr->u8KeyAction & ADDKEY_AP)	{
> -			pu8keybuf = kmalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
> +			pu8keybuf = kzalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
> 			if (pu8keybuf == NULL) {
> 				PRINT_ER("No buffer to send RxGTK Key\n");
> 				ret = -1;
> 				goto _WPARxGtk_end_case_;
> 			}
>
> -			memset(pu8keybuf, 0, RX_MIC_KEY_MSG_LEN);
> -
> -
> 			/*|----------------------------------------------------------------------------|
> 			 * |Sta Address | Key RSC | KeyID | Key Length | Temporal Key	| Rx Michael Key |
> 			 * |------------|---------|-------|------------|---------------|----------------|
> @@ -2574,16 +2571,13 @@ static int Handle_Key(tstrWILC_WFIDrv *drvHandler,
> 		if (pstrHostIFkeyAttr->u8KeyAction & ADDKEY) {
> 			PRINT_D(HOSTINF_DBG, "Handling group key(Rx) function\n");
>
> -			pu8keybuf = kmalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
> +			pu8keybuf = kzalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
> 			if (pu8keybuf == NULL) {
> 				PRINT_ER("No buffer to send RxGTK Key\n");
> 				ret = -1;
> 				goto _WPARxGtk_end_case_;
> 			}
>
> -			memset(pu8keybuf, 0, RX_MIC_KEY_MSG_LEN);
> -
> -
> 			/*|----------------------------------------------------------------------------|
> 			 * |Sta Address | Key RSC | KeyID | Key Length | Temporal Key	| Rx Michael Key |
> 			 * |------------|---------|-------|------------|---------------|----------------|
> @@ -6750,9 +6744,8 @@ static void *host_int_ParseJoinBssParam(tstrNetworkInfo *ptstrNetworkInfo)
> 	pu8IEs = ptstrNetworkInfo->pu8IEs;
> 	u16IEsLen = ptstrNetworkInfo->u16IEsLen;
>
> -	pNewJoinBssParam = kmalloc(sizeof(tstrJoinBssParam), GFP_KERNEL);
> +	pNewJoinBssParam = kzalloc(sizeof(tstrJoinBssParam), GFP_KERNEL);
> 	if (pNewJoinBssParam != NULL) {
> -		memset(pNewJoinBssParam, 0, sizeof(tstrJoinBssParam));
> 		pNewJoinBssParam->dtim_period = ptstrNetworkInfo->u8DtimPeriod;
> 		pNewJoinBssParam->beacon_period = ptstrNetworkInfo->u16BeaconPeriod;
> 		pNewJoinBssParam->cap_info = ptstrNetworkInfo->u16CapInfo;
> -- 
> 2.1.0
>
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/eac47047141a3ed75e04ca4cfb1fece8a8ef349f.1444655924.git.shivanib134%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

