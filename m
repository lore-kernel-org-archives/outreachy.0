X-GM-THRID: 3070446534656
X-Received: by 10.236.45.38 with SMTP id o26mr13737535yhb.32.1424724967511;
        Mon, 23 Feb 2015 12:56:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.3 with SMTP id q3ls144454qgd.15.gmail; Mon, 23 Feb 2015
 12:56:07 -0800 (PST)
X-Received: by 10.236.41.73 with SMTP id g49mr15228580yhb.57.1424724967287;
        Mon, 23 Feb 2015 12:56:07 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x235.google.com (mail-qg0-x235.google.com. [2607:f8b0:400d:c04::235])
        by gmr-mx.google.com with ESMTPS id ba9si6245758qcb.0.2015.02.23.12.56.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:56:07 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) client-ip=2607:f8b0:400d:c04::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x235.google.com with SMTP id f51so26678576qge.12
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=uXQ+EkpttW1e8Aqx9vkW3Kwvfc/apkLskm7jvOth58k=;
        b=bN+UkmcL0KWmJn+c7ISd8SeqNawDGFXQvUrlypGt0WJStR0UYL2K0HbfRY7Jie2CkF
         /omA3sL5eRmROTnUZn2m206YkJfQ7cXemB9TVRClJlVIyoHG7FIc73rtt/IVD7j9/jyx
         5mfl7oXa11wpIyqjgw0+81mMQG9WVpPNm6FqQ/wk6e5y8iY5igu7xL30B9MC8TeMHCmi
         f4VL0u+8WKFeoAB4yYeGFfvEloypbFEjE64hlvqJu+ZnNpnV6RguT/3MOyY3DWhzz8+U
         v6MDciW30ufFBXOfZfjaHduir5hAuBZOWhe9f5UM5fCB4jQ2s+hbUR+Zw6QEteKuAaJ/
         I/xw==
X-Received: by 10.140.148.4 with SMTP id 4mr29199328qhu.61.1424724967195;
        Mon, 23 Feb 2015 12:56:07 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id z13sm26910742qaq.15.2015.02.23.12.56.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:56:06 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB93E5.9000606@gmail.com>
Date: Mon, 23 Feb 2015 15:56:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Add space
References: <1424724642-9022-1-git-send-email-ksenija.stanojevic@gmail.com>
In-Reply-To: <1424724642-9022-1-git-send-email-ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 15:50, Ksenija Stanojevic wrote:
> This patch adds space after struct definition. Issue found by
> checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Looks good

Jes


> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
> index e283f5e..d7c718b 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
> @@ -14,7 +14,7 @@ typedef enum _TR_SELECT {
>  	RX_DIR = 1,
>  } TR_SELECT, *PTR_SELECT;
>  
> -typedef struct _TS_COMMON_INFO{
> +typedef struct _TS_COMMON_INFO {
>  	struct list_head		List;
>  	struct timer_list		SetupTimer;
>  	struct timer_list		InactTimer;
> @@ -25,7 +25,7 @@ typedef struct _TS_COMMON_INFO{
>  	u8				TClasNum;
>  } TS_COMMON_INFO, *PTS_COMMON_INFO;
>  
> -typedef struct _TX_TS_RECORD{
> +typedef struct _TX_TS_RECORD {
>  	TS_COMMON_INFO		TsCommonInfo;
>  	u16				TxCurSeq;
>  	BA_RECORD			TxPendingBARecord;	/* For BA Originator */
> 


