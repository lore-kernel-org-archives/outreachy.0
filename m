X-GM-THRID: 6608897994052861952
X-Received: by 2002:ad4:500d:: with SMTP id s13-v6mr11751574qvo.26.1538848242247;
        Sat, 06 Oct 2018 10:50:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:96d2:: with SMTP id b18-v6ls1586176qvd.12.gmail; Sat, 06
 Oct 2018 10:50:41 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61xiP5PkPxONJR3DS+6df6WLFI0mFcnKPgmJ/y4MfkmsOMv6RLwQg7fGkcB0a3Huhy26Ipt
X-Received: by 2002:a0c:8ad8:: with SMTP id 24-v6mr12373082qvw.10.1538848241685;
        Sat, 06 Oct 2018 10:50:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538848241; cv=none;
        d=google.com; s=arc-20160816;
        b=1JPiDZ+dLLPlGqxZezoMWipeygMI8WCouzHDyqgAjLNlEWzUAZ0Gb/MxZL7bXKYk0u
         8UcLBjfCIFVaCHIL7y3oX1Fymk98IoKep+g5ofbRa2Eih1Q+/qDHNDL7z3DkOQ81GnrK
         MngqfGq3oMsSzcN1aadVIOSICt3SFh5d1v0HhnSdqrw/m1QxqL3q15B4DTglmP6t50FS
         UC8x3vrjWbQznCmmz4yvtu/vkiZkBdK6oZbbb0+ATaK6vag6UDlTibXPuvpFFBkqiqbl
         R+SVQwa1jdDrJypu0mWLsraj0w5o/iF5dA+B/TXd/HxxhtELzb9/VTxTdZPCB+RAuNBL
         ZblQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SG/mBVwd/4v/kUNuh/r2HGS+GpPxsYA+abuMRAO4v8k=;
        b=r2w3L6ILyNIXK6zoIGVTkAwtXU4V+r/toLKh5Qp1OFpppCDV+7YuiDeS5NljkQxFq2
         6d9pGkyV5svHqzMRxFlWo+aZhGrTfEU6d6Bf3/E4ICjFVHLNd0+//jsiMeWtSqbPkuxe
         Y2r9g/dEJR+V9XDdryVQR8IL1cV1ip5k7Zv96ucjuGClb45ioWUESvkW9hQiDhyrEzg5
         HzxW5K4AMv2DtOjkqKMP2rzuIpj3FrovxHuI/i9eYCqryVYExnzkCNJle5eufiNzj3Jk
         E0wAavUyF28A7b+2TQpbJkbl+yL2laXUrmpXznqXsY/er9bYVoM913N3r/qvUzwZZRkx
         Tz6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pY4ZD5mr;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id o5-v6si556716qkf.0.2018.10.06.10.50.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 10:50:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pY4ZD5mr;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id m77-v6so6510959pfi.8
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 10:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SG/mBVwd/4v/kUNuh/r2HGS+GpPxsYA+abuMRAO4v8k=;
        b=pY4ZD5mrEBWbo2s1GKQASRibMK8ACRGvcuhAFcKw36idUp+CUc8+uDiNqIPeCdbhp3
         uW5FOMcVlCj/NpUZq5w0tmbH5ed9T6+yGzx59YHZt7x7khODuuinOV0D91gWCTVQYrP0
         mJ6+r5M8Dcd/7YMNPb0ur6+PAvXVw8y4GfRbbTXjNvMWZynL+7/68Y4QYP/JG9Q9JObo
         u81hdLvIHf+D/PXNQOY0OhsUqVpvn9R3uK4eluJS8zUX9QUxgLeTT6bhUwF0IQOKpfHc
         bELYHcubJOpIaVdkSC59bzo6jDnf5cOc2VDZrsKk5s3CayfUtQ0ASu134ilw+HYE6ukA
         6GJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SG/mBVwd/4v/kUNuh/r2HGS+GpPxsYA+abuMRAO4v8k=;
        b=QckMKJXohmXRJaFAOuE0bvSVivFfKUgfqQvXy/RSHd8prVlIx3uvxC3kgwLVEAIAj5
         BsQGdFYuQZilTvOisQcwZJQR0iJDmjfAPbvVJ5poeUd5mwWjmLs82kl/PXawiA2EDK/9
         4ThtrOAncscd/IXPSS4NmcWRwfkGix6DgsOsd9fmjFH/66lTl4R8LlP7b07YAc4FYhc8
         /xHMBphcxyXSr6UaWM6nko2Sggmu8loMiJZeL0Uxwmg31FjAxh38mdBfwlroingPYJ3m
         829jDipiapq2qXbu6aRdoO6c1oSvXwymw6rPmGDb0O+FiY2hR9RhCdVDmMQGu8LCHVSO
         4CJw==
X-Gm-Message-State: ABuFfoiKavSVtCfr6YqtKvt/gF4CaSPLqecju8x75ZcUIhutU1JV2GCa
	Yrk8gurIfqKj7BKuQhy0bD8=
X-Received: by 2002:a62:c4c5:: with SMTP id h66-v6mr17560166pfk.39.1538848241200;
        Sat, 06 Oct 2018 10:50:41 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id a64-v6sm17376576pfe.32.2018.10.06.10.50.39
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Oct 2018 10:50:40 -0700 (PDT)
Date: Sat, 6 Oct 2018 23:20:35 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] staging: vt6655: Add spaces
 around operators
Message-ID: <20181006175035.GB6283@himanshu-Vostro-3559>
References: <cover.1538823377.git.mamtashukla555@gmail.com>
 <eb334e41286c10e2350603e2de51da22255aade6.1538823377.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eb334e41286c10e2350603e2de51da22255aade6.1538823377.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Oct 06, 2018 at 05:00:00PM +0530, Mamta Shukla wrote:
> Add spaces around '*' and '-' to fix checkpatch issue.
> 
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

Reviewed-by: Himanshu Jha <himanshujha199640@gmail.com>

> ---
> 
> change in v2:
> -Merge patch 2 and patch 3 and submit this as 
> a new patch in this patch series.
> 
>  drivers/staging/vt6655/rxtx.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 8ae9c68..1eb8cea 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -213,12 +213,12 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
>  	} else if (byRTSRsvType == 3) { /* CTSTxRrvTime_ba, only in 2.4GHZ */
>  		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
>  		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
> -		uRrvTime = uCTSTime + uAckTime + uDataTime + 2*pDevice->uSIFS;
> +		uRrvTime = uCTSTime + uAckTime + uDataTime + 2 * pDevice->uSIFS;
>  		return cpu_to_le16((u16)uRrvTime);
>  	}
>  
>  	/* RTSRrvTime */
> -	uRrvTime = uRTSTime + uCTSTime + uAckTime + uDataTime + 3*pDevice->uSIFS;
> +	uRrvTime = uRTSTime + uCTSTime + uAckTime + uDataTime + 3 * pDevice->uSIFS;
>  	return cpu_to_le16((u16)uRrvTime);
>  }
>  
> @@ -241,7 +241,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
>  	bool bLastFrag = false;
>  	unsigned int uAckTime = 0, uNextPktTime = 0;
>  
> -	if (uFragIdx == (uMACfragNum-1))
> +	if (uFragIdx == (uMACfragNum - 1))
>  		bLastFrag = true;
>  
>  	switch (byDurType) {
> @@ -254,7 +254,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
>  				return 0;
>  			}
>  		} else {/* First Frag or Mid Frag */
> -			if (uFragIdx == (uMACfragNum-2))
> +			if (uFragIdx == (uMACfragNum - 2))
>  				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
>  			else
>  				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
> @@ -277,7 +277,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
>  				return 0;
>  			}
>  		} else {/* First Frag or Mid Frag */
> -			if (uFragIdx == (uMACfragNum-2))
> +			if (uFragIdx == (uMACfragNum - 2))
>  				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
>  			else
>  				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
> @@ -306,7 +306,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
>  				else if (wRate > RATE_54M)
>  					wRate = RATE_54M;
>  
> -				if (uFragIdx == (uMACfragNum-2))
> +				if (uFragIdx == (uMACfragNum - 2))
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
>  				else
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
> @@ -317,7 +317,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
>  				else if (wRate > RATE_54M)
>  					wRate = RATE_54M;
>  
> -				if (uFragIdx == (uMACfragNum-2))
> +				if (uFragIdx == (uMACfragNum - 2))
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
>  				else
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
> @@ -347,7 +347,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
>  				else if (wRate > RATE_54M)
>  					wRate = RATE_54M;
>  
> -				if (uFragIdx == (uMACfragNum-2))
> +				if (uFragIdx == (uMACfragNum - 2))
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
>  				else
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
> @@ -358,7 +358,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
>  				else if (wRate > RATE_54M)
>  					wRate = RATE_54M;
>  
> -				if (uFragIdx == (uMACfragNum-2))
> +				if (uFragIdx == (uMACfragNum - 2))
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
>  				else
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/eb334e41286c10e2350603e2de51da22255aade6.1538823377.git.mamtashukla555%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

