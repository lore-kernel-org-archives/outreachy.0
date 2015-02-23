X-GM-THRID: 3055769616384
X-Received: by 10.182.104.37 with SMTP id gb5mr13807807obb.45.1424723238446;
        Mon, 23 Feb 2015 12:27:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.20.101 with SMTP id m5ls1014609ige.28.canary; Mon, 23 Feb
 2015 12:27:18 -0800 (PST)
X-Received: by 10.43.9.135 with SMTP id ow7mr14353517icb.29.1424723238283;
        Mon, 23 Feb 2015 12:27:18 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x231.google.com (mail-qc0-x231.google.com. [2607:f8b0:400d:c01::231])
        by gmr-mx.google.com with ESMTPS id ba9si6235808qcb.0.2015.02.23.12.27.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:27:18 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::231 as permitted sender) client-ip=2607:f8b0:400d:c01::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::231 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x231.google.com with SMTP id r5so13159830qcx.13
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=HHnpcQmMCIQJGQd+E/W1icXhkw7l5puiPvuKE/+z8W4=;
        b=SFfhCUB0a93ltIh2Ph8nZ9uEeYHoBdNHt3qmqj1/EbPxNMheqVFHOH3bWPMUbz9y94
         vjiWunCoQLVmrX6DrBSMLpIZiwW8jyDO2PqZ7ZTXZ7cL3JUTGb/vQtfM9556psFqjVYu
         LMBHSsMI6mkSkwUKW54aEPziBniJPQXnHSugoAuL4xAy6Wy1RpeddKQyBx1/kAkUqf5Q
         3qybzZ3NEPXvHVuM632ppsba0tZYp6TMln1upSnxjAUgvNGdiGxRksENgFvGse6z2riA
         TXRz1LnIjrm0926KES6FexR0lpiGNUvPlphfPXB+q1Sim4m/wZOOvOauhxHf3PLB7xEU
         VSIg==
X-Received: by 10.140.201.84 with SMTP id w81mr29627889qha.19.1424723238156;
        Mon, 23 Feb 2015 12:27:18 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 201sm18126152qhr.24.2015.02.23.12.27.17
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:27:17 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB8D24.6080408@gmail.com>
Date: Mon, 23 Feb 2015 15:27:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: rtl8192u: Fix comments
 in the file
References: <1424722837-8732-1-git-send-email-ksenija.stanojevic@gmail.com>
In-Reply-To: <1424722837-8732-1-git-send-email-ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 15:20, Ksenija Stanojevic wrote:
> Remove commented code, no longer in use and convert comments from
> C99 to C89 style. Issue found by checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
> v3: remove unused code, format comments.
> v2: remove space before tab.
>  drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)

This one looks great!

Jes


> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
> index 7ed7243..e283f5e 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
> @@ -1,14 +1,14 @@
>  #ifndef _TSTYPE_H_
>  #define _TSTYPE_H_
>  #include "rtl819x_Qos.h"
> -#define TS_SETUP_TIMEOUT	60  // In millisecond
> +#define TS_SETUP_TIMEOUT	60  /* In millisecond */
>  #define TS_INACT_TIMEOUT	60
>  #define TS_ADDBA_DELAY		60
>  
>  #define TOTAL_TS_NUM		16
>  #define TCLAS_NUM		4
>  
> -// This define the Tx/Rx directions
> +/* This define the Tx/Rx directions */
>  typedef enum _TR_SELECT {
>  	TX_DIR = 0,
>  	RX_DIR = 1,
> @@ -28,9 +28,8 @@ typedef struct _TS_COMMON_INFO{
>  typedef struct _TX_TS_RECORD{
>  	TS_COMMON_INFO		TsCommonInfo;
>  	u16				TxCurSeq;
> -	BA_RECORD			TxPendingBARecord;	// For BA Originator
> -	BA_RECORD			TxAdmittedBARecord;	// For BA Originator
> -//	QOS_DL_RECORD		DLRecord;
> +	BA_RECORD			TxPendingBARecord;	/* For BA Originator */
> +	BA_RECORD			TxAdmittedBARecord;	/* For BA Originator */
>  	u8				bAddBaReqInProgress;
>  	u8				bAddBaReqDelayed;
>  	u8				bUsingBa;
> @@ -44,11 +43,10 @@ typedef struct _RX_TS_RECORD {
>  	u16				RxTimeoutIndicateSeq;
>  	struct list_head		RxPendingPktList;
>  	struct timer_list		RxPktPendingTimer;
> -	BA_RECORD			RxAdmittedBARecord;	 // For BA Recipient
> +	BA_RECORD			RxAdmittedBARecord;	 /* For BA Recipient */
>  	u16				RxLastSeqNum;
>  	u8				RxLastFragNum;
>  	u8				num;
> -//	QOS_DL_RECORD		DLRecord;
>  } RX_TS_RECORD, *PRX_TS_RECORD;
>  
>  
> 


