X-GM-THRID: 6251650339458514944
X-Received: by 10.66.139.138 with SMTP id qy10mr25210135pab.46.1455687167132;
        Tue, 16 Feb 2016 21:32:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.7.71 with SMTP id h7ls327663iga.16.canary; Tue, 16 Feb 2016
 21:32:46 -0800 (PST)
X-Received: by 10.98.93.217 with SMTP id n86mr25331053pfj.11.1455687166774;
        Tue, 16 Feb 2016 21:32:46 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id ui7si4435384pab.0.2016.02.16.21.32.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 21:32:46 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fy10so4893042pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 21:32:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=3ERvVezvm6O8p2kNptawWKlyQnorF/Y+DrPQSHSAbak=;
        b=t1wF1IBxSPoGOmM3axru2hEI6/REGQJAhqzn+bkwWcJ+OwAsAIyA+DR9/7pW8J7g/i
         tYTfbgBh/PGYNyc2I5h/HyK+BV5YOJ89RjnBFmYFVtfmUEsahY8vSPtXMpDYn7S2D9m3
         LZB1ABYKF0guYJaPCwzcWqIfAu/IFIrTEsFj2r2Mxuyru+Rneer4x8RMEVcFHOP83hFH
         ZCTXfyFUweX9m2HTJ2Ef230QHtyEmhHLFgzPniBSZiINPadd9fsQI68knLo6DKC5EZ/G
         qziAkj323bFSLuifs7/tuhFnKovaMSJvVUGJGVGNYg3zKJ/vYO0+nwOH98O3TX65kxfj
         UL0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=3ERvVezvm6O8p2kNptawWKlyQnorF/Y+DrPQSHSAbak=;
        b=JwAGrqys0nhqwW41Ht+rfe84V7rbJZd8T1PiD95DOTA4/rx6IOcS3AgxNwhF3l5q6A
         R8UVseDixIryh/LUNtxRcQ5deH7igVDx9cOYT2c7nNImEGSXlcVV6r2WMVsW6/DBmEDt
         fDo6YU31+hHmHrX0CY5OpRNOXlwRR+bHInvNjiuDyBXWbJk6mDJbWOTxQuT3vjEqV1Nv
         A4oL1/cEXgM+Sfn+lXVuteP5dnGHedgOXctywWuHFyR9IznN0CzmR1LPKz/FMqxq3YHw
         A9weKaX4cSkjiEXFaLrCSHxXYncNDf68sIRJ0ShkyeX537qQtlw2ErafDuvGDdctN7tW
         yfjw==
X-Gm-Message-State: AG10YORkLW6F/NtnQdj8AufQDGX2vFlfaGYjhhYxkdtFJq4StUsVZBjGHOthAIi7zq9ohQ==
X-Received: by 10.66.100.228 with SMTP id fb4mr36194655pab.84.1455687166656;
        Tue, 16 Feb 2016 21:32:46 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([14.195.236.245])
        by smtp.gmail.com with ESMTPSA id n78sm49593965pfb.53.2016.02.16.21.32.44
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 21:32:46 -0800 (PST)
Date: Wed, 17 Feb 2016 11:02:41 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/7] staging: netlogic: Remove
 blank spaces after a cast
Message-ID: <20160217053240.GC4073@sudip-pc>
References: <cover.1455661648.git.nevola@gmail.com>
 <d3ee83a0b5ee4adb0b7ba37995c1809284532197.1455661648.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d3ee83a0b5ee4adb0b7ba37995c1809284532197.1455661648.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Feb 16, 2016 at 11:36:31PM +0100, Laura Garcia Liebana wrote:
> Remove uneeded blank spaces after a cast. Checkpatch found these issues.
> 
> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> ---
> v2: Include parentheses for pointers, as Julia suggested
> 
>  drivers/staging/netlogic/xlr_net.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> index 59fbaba..b89e3cb 100644
> --- a/drivers/staging/netlogic/xlr_net.c
> +++ b/drivers/staging/netlogic/xlr_net.c
> @@ -130,13 +130,13 @@ static void xlr_net_fmn_handler(int bkt, int src_stnid, int size, int code,
>  	struct xlr_net_priv *priv;
>  	u32 port, length;
>  	unsigned char *addr;
> -	struct xlr_adapter *adapter = (struct xlr_adapter *) arg;
> +	struct xlr_adapter *adapter = (struct xlr_adapter *)arg;
>  
>  	length = (msg->msg0 >> 40) & 0x3fff;
>  	if (length == 0) {
>  		addr = bus_to_virt(msg->msg0 & 0xffffffffffULL);
>  		addr = addr - MAC_SKB_BACK_PTR_SIZE;
> -		skb = (struct sk_buff *) *(unsigned long *)addr;
> +		skb = (struct sk_buff *)(*)(unsigned long *)addr;

I think a better choice might have been:
	skb = (struct sk_buff *)(*(unsigned long *)addr);

regards
sudip


