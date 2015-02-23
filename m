X-GM-THRID: 2063631122432
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3dfa74777ed570cd
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.57.47 with SMTP id f15mr13095579igq.1.1424721571898;
        Mon, 23 Feb 2015 11:59:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.41 with SMTP id w38ls2016588qgw.85.gmail; Mon, 23 Feb
 2015 11:59:31 -0800 (PST)
X-Received: by 10.140.196.209 with SMTP id r200mr13467600qha.0.1424721571738;
        Mon, 23 Feb 2015 11:59:31 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x233.google.com (mail-qc0-x233.google.com. [2607:f8b0:400d:c01::233])
        by gmr-mx.google.com with ESMTPS id e5si3610218qcg.1.2015.02.23.11.59.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:59:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::233 as permitted sender) client-ip=2607:f8b0:400d:c01::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::233 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x233.google.com with SMTP id m20so12943149qcx.0
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=crkMPwIOtgWTensa0/48pWpGbl3nPJf1ckSPX4z+YHY=;
        b=FwzmQzyt8KSHZcVq6CjtcCJf/snN4L0yCZC0b5rydiOGRK8CRsgwMrt2Ok/DcEzBBP
         khnlFdmgbIhPeWZZbOw9TqwFGHOD4nPX7kHi2HtXlqPf2trE61Egngi2n/eUgBrLVluo
         YC0oCa3C32Ia0tk9M+QJXuVUV43dxonKesI3qfyy1Ke+P0ZWLI4GyM7ja3ETWNK7lbmO
         zYwy+jtZpwFv9Ngyv+OkM0/gSbYBY4AGcca7bJtC5oZvHH8dDDmbYWXbF68d8qRAHKDV
         5uLb9Ar4wSr8MLvkS+tqnjhJIcGNQ5n8a5GtKSf6hc2IWHuBf/t5TirKGJG4yyiiHHRW
         7bQw==
X-Received: by 10.141.18.208 with SMTP id u199mr1548559qhd.47.1424721571660;
        Mon, 23 Feb 2015 11:59:31 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id p142sm18076782qha.20.2015.02.23.11.59.30
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:59:31 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB86A2.9060208@gmail.com>
Date: Mon, 23 Feb 2015 14:59:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8192u: Convert comments
 from C99 to C89 style
References: <1424719968-7895-1-git-send-email-ksenija.stanojevic@gmail.com>
In-Reply-To: <1424719968-7895-1-git-send-email-ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 14:32, Ksenija Stanojevic wrote:
> Kernel style for comments is C89 style. Issue found by checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
> v2: remove space before tab
> 
>  drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
> index 7ed7243..44a9e3d 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
> @@ -1,14 +1,14 @@
>  #ifndef _TSTYPE_H_
>  #define _TSTYPE_H_
>  #include "rtl819x_Qos.h"
> -#define TS_SETUP_TIMEOUT	60  // In millisecond
> +#define TS_SETUP_TIMEOUT	60  /*  In millisecond */

Please only one space after the /*

>  #define TS_INACT_TIMEOUT	60
>  #define TS_ADDBA_DELAY		60
>  
>  #define TOTAL_TS_NUM		16
>  #define TCLAS_NUM		4
>  
> -// This define the Tx/Rx directions
> +/*  This define the Tx/Rx directions */

Same here

>  typedef enum _TR_SELECT {
>  	TX_DIR = 0,
>  	RX_DIR = 1,
> @@ -28,9 +28,9 @@ typedef struct _TS_COMMON_INFO{
>  typedef struct _TX_TS_RECORD{
>  	TS_COMMON_INFO		TsCommonInfo;
>  	u16				TxCurSeq;
> -	BA_RECORD			TxPendingBARecord;	// For BA Originator
> -	BA_RECORD			TxAdmittedBARecord;	// For BA Originator
> -//	QOS_DL_RECORD		DLRecord;
> +	BA_RECORD			TxPendingBARecord;	/*  For BA Originator */
> +	BA_RECORD			TxAdmittedBARecord;	/*  For BA Originator */
> +/*	QOS_DL_RECORD		DLRecord; */

The last line is not a comment, but disabling a variable. In this case
you should remove the variable from the struct instead of changing the
comment style as it's dead code.

>  	u8				bAddBaReqInProgress;
>  	u8				bAddBaReqDelayed;
>  	u8				bUsingBa;
> @@ -44,11 +44,11 @@ typedef struct _RX_TS_RECORD {
>  	u16				RxTimeoutIndicateSeq;
>  	struct list_head		RxPendingPktList;
>  	struct timer_list		RxPktPendingTimer;
> -	BA_RECORD			RxAdmittedBARecord;	 // For BA Recipient
> +	BA_RECORD			RxAdmittedBARecord;	 /*  For BA Recipient */

Again the issue with two spaces

>  	u16				RxLastSeqNum;
>  	u8				RxLastFragNum;
>  	u8				num;
> -//	QOS_DL_RECORD		DLRecord;
> +/*	QOS_DL_RECORD		DLRecord; */

And another case of dead code.

>  } RX_TS_RECORD, *PRX_TS_RECORD;
>  
>  
> 

Cheers,
Jes


