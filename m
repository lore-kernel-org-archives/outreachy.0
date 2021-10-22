X-GM-THRID: 7021822549853995008
X-Received: by 2002:a2e:a413:: with SMTP id p19mr990994ljn.488.1634920348901;
        Fri, 22 Oct 2021 09:32:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8949:: with SMTP id b9ls1867678ljk.2.gmail; Fri, 22 Oct
 2021 09:32:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzc6TN1OCacfcHslEIt5NoJPHmygOZkrcXNE5IVg4nAAappGl34tjjMN5zIf2Rz4DTrHIv1
X-Received: by 2002:a05:651c:a0c:: with SMTP id k12mr878572ljq.491.1634920347258;
        Fri, 22 Oct 2021 09:32:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634920347; cv=none;
        d=google.com; s=arc-20160816;
        b=yHPfyRS8K/KiUWH0NvbmcnMUuypql/YTOvABmfcTUxfFX0kYiCEjsJQswbL4Nepa+S
         Z9Z+oivFPz6LFJlNxIGvI9hTvyVazXp7MgdfuiRK8lL+XICcJ6piAma/6A992QTsI/2f
         WmFqPsW4FRQn/Iy/vDumuRIdjG2sfXSjVUfOAZu+jGeiPMBWz8yqIniMlOtzZrQrGZ6u
         /lc6nsYZ5yAn0DtoSKtoxxfSPWe+qtfetPkU7W5MZSw+uHsHHs2NiwiDlj+isV+6Wju/
         WXXAjX7nJRSvHOlFU62wh5ljY6R6hPhoRkmPcScp/KvVNIRpf/PmMu0qmZkiMef8gf/G
         VmSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=dw/aae5jLqsZOHALdXeqaGvrr42JuHEanMHVdKxRfY0=;
        b=Rpg1ytZAt/loYhKjBX0y8ecYzMBBeE3kpi0cZNB5uO50+8Irn8yhiZ0XHrzQz+HmJ2
         Z/uQh7GaRjQtihlC9ob3x3UyVvPPIgiqPW5OeU5zRHcTc/Us0ZzsYcfe+bFNmtbgar0J
         zGUBuSxQNrbBLNiu8YJWXPTOqRN+z1qvSCd3CvvICxOoizc6U1kaWXJZF7+Ykb1J4qoh
         a74qxtmZ1YfFqW/tpaIwo3o9gdEx1mb5cIVNfAAEjf8TCigJdOa2Y97Ohec/bMsijZRE
         JA5fuNDu3UIj0SOY9uoiSmGJ0jdSLc1PL3o2cMJ7bghMTJqehwwvpFVuoX7HCdqzamwI
         9WKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id a19si569426lfb.10.2021.10.22.09.32.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Oct 2021 09:32:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="229203709"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; 
   d="scan'208";a="229203709"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Oct 2021 09:32:24 -0700
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; 
   d="scan'208";a="534986075"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Oct 2021 09:32:23 -0700
Date: Fri, 22 Oct 2021 09:40:11 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	forest@alittletooquiet.net, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: vt6655: Rename
 `byInitCount` variable
Message-ID: <20211022164011.GB464908@alison-desk>
References: <cover.1634826774.git.karolinadrobnik@gmail.com>
 <53430b1183324f6a715999792a15df2ea6a3e206.1634826774.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53430b1183324f6a715999792a15df2ea6a3e206.1634826774.git.karolinadrobnik@gmail.com>

On Fri, Oct 22, 2021 at 10:37:15AM +0100, Karolina Drobnik wrote:
> Drop Hungarian notation in `byInitCount` variable in
> `RFvWriteWakeProgSyn` function. Change it to use snake case.
> 
> Fix issue detected by checkpatch.pl:
>   CHECK: Avoid CamelCase: <byInitCount>

Hi Karolina,

This comment is for all the patches.

Commit msg:
We've got plenty of space on that line, how about:
"Rename byInitCount init_count"

(I say this because when someone searches by the oneliners it's
nice to give as many keywords as possible - within the line limit)


Commit log:
The log (why this patch is important) seems to be saying that
snake case is the fix for Hungarian notation. I don't think that
is completely true. Snake case avoids the camel case of Hungarian
notation, but we are also dropping the type descriptor which is
another signature of Hungarian notation.

Perhaps this would be more direct:

To align with the kernel coding style, remove the type from
the variable name and do not use CamelCase.

Reported by checkpatch.pl:
	CHECK: Avoid CamelCase: <byInitCount>

(Not for the log, but a ref if you don't have:
https://www.kernel.org/doc/html/v4.10/process/coding-style.html)

Alison

> 
> Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> ---
>  drivers/staging/vt6655/rf.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index 7e441309dd9c..36708af7d612 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -681,7 +681,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  {
>  	void __iomem *iobase = priv->port_offset;
>  	int i;
> -	unsigned char byInitCount = 0;
> +	unsigned char init_count = 0;
>  	unsigned char bySleepCount = 0;
>  
>  	VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
> @@ -693,9 +693,9 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  			return false;
>  
>  		 /* Init Reg + Channel Reg (2) */
> -		byInitCount = CB_AL2230_INIT_SEQ + 2;
> +		init_count = CB_AL2230_INIT_SEQ + 2;
>  		bySleepCount = 0;
> -		if (byInitCount > (MISCFIFO_SYNDATASIZE - bySleepCount))
> +		if (init_count > (MISCFIFO_SYNDATASIZE - bySleepCount))
>  			return false;
>  
>  		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
> @@ -709,9 +709,9 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  		/* Need to check, PLLON need to be low for channel setting */
>  	case RF_AIROHA7230:
>  		 /* Init Reg + Channel Reg (3) */
> -		byInitCount = CB_AL7230_INIT_SEQ + 3;
> +		init_count = CB_AL7230_INIT_SEQ + 3;
>  		bySleepCount = 0;
> -		if (byInitCount > (MISCFIFO_SYNDATASIZE - bySleepCount))
> +		if (init_count > (MISCFIFO_SYNDATASIZE - bySleepCount))
>  			return false;
>  
>  		if (uChannel <= CB_MAX_CHANNEL_24G) {
> @@ -736,7 +736,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  		return false;
>  	}
>  
> -	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(bySleepCount, byInitCount));
> +	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(bySleepCount, init_count));
>  
>  	return true;
>  }
> -- 
> 2.30.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/53430b1183324f6a715999792a15df2ea6a3e206.1634826774.git.karolinadrobnik%40gmail.com.

