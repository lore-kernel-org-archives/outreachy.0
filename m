X-GM-THRID: 1450652467200
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,162f25e773223d22
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.237.8 with SMTP id uy8mr10779447pbc.7.1424461025811;
        Fri, 20 Feb 2015 11:37:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.83 with SMTP id g77ls1381534qgd.99.gmail; Fri, 20 Feb
 2015 11:37:05 -0800 (PST)
X-Received: by 10.236.203.161 with SMTP id f21mr11071264yho.49.1424461025651;
        Fri, 20 Feb 2015 11:37:05 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id kt5si5675282qcb.3.2015.02.20.11.37.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 11:37:05 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22b.google.com with SMTP id i50so15810796qgf.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 11:37:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=grEWI+ZtLLvfK6YHQGQLXyTiluVaCRwChcgasnbU/ck=;
        b=MZ5a5QqXZ71MJLpbaDhc6rP88kuhSLs7YYY+r1s56WkkzNgpoQSShOkgFsRblsylf1
         KT/PS3xAWxRCbgC1He0TzOr5CMaGKVaegcv8TPMqbBTmfHzzNQJGwb5ePRXDOx4kHkDO
         viNQBbe8xWkMrRJxFqkpTkaqKrK5o2cDhgAXBkLiUEPudUeNhxGAUVBV5q5XHdl9PCrs
         gGPlpNhpMWjBtpQ6Io+2B/VFyhmSsTYQicF3LntEJ8OlByCLXSudKEyMw4Th4sXQzLF5
         Lb8k+xWNo5fQt5R5DQNuH8sH/sB5Zhh2ekd9wS11XfnTvUCKUDdIHyiFfAmPgLacaZ4A
         iuKA==
X-Received: by 10.140.218.202 with SMTP id o193mr27699966qhb.13.1424461025573;
        Fri, 20 Feb 2015 11:37:05 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 10sm12282136qhc.12.2015.02.20.11.37.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 11:37:04 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E78CDF.7000601@gmail.com>
Date: Fri, 20 Feb 2015 14:37:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Gamze POLAT <gamzepolat94@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Add blank line
References: <1424458703-6100-1-git-send-email-gamzepolat94@gmail.com>
In-Reply-To: <1424458703-6100-1-git-send-email-gamzepolat94@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/20/15 13:58, Gamze POLAT wrote:
> WARNING: "Missing a blank line after declarations"
> That was found by running checkpatch.
> 
> Signed-off-by: Gamze POLAT <gamzepolat94@gmail.com>
> ---
>  drivers/staging/rtl8712/drv_types.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
> index e62543d..a775f8d 100644
> --- a/drivers/staging/rtl8712/drv_types.h
> +++ b/drivers/staging/rtl8712/drv_types.h
> @@ -129,6 +129,7 @@ struct dvobj_priv {
>  	struct _adapter *padapter;
>  	u32 nr_endpoint;
>  	u8   ishighspeed;
> +
>  	uint (*inirp_init)(struct _adapter *adapter);
>  	uint (*inirp_deinit)(struct _adapter *adapter);
>  	struct usb_device *pusbdev;
> @@ -166,6 +167,7 @@ struct _adapter {
>  	 pid_t evtThread;
>  	struct task_struct *xmitThread;
>  	pid_t recvThread;
> +
>  	uint (*dvobj_init)(struct _adapter *adapter);
>  	void (*dvobj_deinit)(struct _adapter *adapter);
>  	struct net_device *pnetdev;
> 

This patch is actually wrong - I think checkpatch is confused here by
the declaration of function pointers, treating them like functions.

I do spot a whitespace issue that needs fixing in your patch, but the
blank lines added shouldn't be added.

Cheers,
Jes


