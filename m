X-GM-THRID: 6249599077237915648
X-Received: by 10.129.41.70 with SMTP id p67mr2369631ywp.33.1455296972525;
        Fri, 12 Feb 2016 09:09:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.149 with SMTP id 21ls1849455qgd.55.gmail; Fri, 12 Feb
 2016 09:09:31 -0800 (PST)
X-Received: by 10.129.155.201 with SMTP id s192mr2498421ywg.4.1455296971769;
        Fri, 12 Feb 2016 09:09:31 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yw0-x241.google.com (mail-yw0-x241.google.com. [2607:f8b0:4002:c05::241])
        by gmr-mx.google.com with ESMTPS id y131si1106269ywc.0.2016.02.12.09.09.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 09:09:31 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) client-ip=2607:f8b0:4002:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yw0-x241.google.com with SMTP id q190so4566461ywd.2
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 09:09:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=kvwLAIy+D3uE3RrOsswGSk/Gw8mBtP/1dD0qMdA2bwQ=;
        b=pDY81oqJdWGkNjDhCwdc0I4JidFjA1WoEBM7or64h4PD6VERSfj8tbpepDKEUJD60v
         nFjYCodOay25/2lETD0hwVtQBQyPOHhNgit8LYEfbjjbzHMYJoDqJxF+FGd5bV4iUhmY
         d6fTLPB389dQInJlLq+hwctL8HR+z/D1BJu1suTg/ng7zY6vXdh7AKigEAot/nUvKGm8
         2hs29Ae26uckonZCBPBTlKEn/aVZ0YRur3RhMh44KnzkbATdM4RtuxihVa7fJpFhbCHH
         iOQgZUfUG6qEjGi5dc03GEzZ/swK0OUPcLITdjCMyEHC0gYMLuTlE8qXlpVD8ZGOyVYD
         7Sdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=kvwLAIy+D3uE3RrOsswGSk/Gw8mBtP/1dD0qMdA2bwQ=;
        b=EGzIFWh6PZEZvOzknp9boBrZFCvk07R1O8Eh1gNQ2IJuoLY28SQhkDkbY4l6ajUegw
         UpA9QDMwlQLJGO1RZ2pkXdsdxAVbN/IBfVrKrrlEmq9501aAtLBra0kNUpPV6LTrytTC
         fowFzMI8V3DZ/FiEKm2+gi4pfirr30sf9kp9oCXOm8iOtgnrbN/bkpCqqbocWizNKuxV
         pHPVG6W1E5KBAEFbhAnbRxK9nZWXwPRDbvKvYPoElJufxZwFZoIuvgldTetqZf94CJp5
         QgmQ47Ptv3mYdMAd7blFt4XxR5CE/6T0oC7h3+74z7QRUaJ5/X1M25kKRAeiWHIWA/c7
         iEOw==
X-Gm-Message-State: AG10YOSj0hRGd+HTT6F52a0Qoo3dnj/l4vy3xDCN4FrahU76UugCvYfCmAWTxDfJlIgU9Q==
X-Received: by 10.129.86.8 with SMTP id k8mr1585580ywb.286.1455296971632;
        Fri, 12 Feb 2016 09:09:31 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::a:8dab])
        by smtp.gmail.com with ESMTPSA id y4sm10571175ywa.28.2016.02.12.09.09.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 09:09:30 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Fri, 12 Feb 2016 12:09:30 -0500
From: Tejun Heo <tj@kernel.org>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: fbtft: Add blank line
 after function declaration
Message-ID: <20160212170930.GI3741@mtj.duckdns.org>
References: <1455210550-11363-1-git-send-email-eraretuya@gmail.com>
 <1455210550-11363-4-git-send-email-eraretuya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455210550-11363-4-git-send-email-eraretuya@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello, Eva.

On Fri, Feb 12, 2016 at 01:09:08AM +0800, Eva Rachel Retuya wrote:
> Insert the required whitespace after the function declaration as
> suggested by checkpatch.
> 
> CHECK: Please use a blank line after function/struct/union/enum
> declarations

While checkpatch suggestions can be useful, I don't think following
them blindly is a good idea.

> diff --git a/drivers/staging/fbtft/fb_ili9163.c b/drivers/staging/fbtft/fb_ili9163.c
> index 9f7c7ec..6b8f8b1 100644
> --- a/drivers/staging/fbtft/fb_ili9163.c
> +++ b/drivers/staging/fbtft/fb_ili9163.c
> @@ -236,6 +236,7 @@ static int gamma_adj(struct fbtft_par *par, unsigned long *curves)
>  
>  	return 0;
>  }
> +
>  #undef CURVE
>  #endif

I don't think this improves anything and it also breaks symmetry with
the matching #ifdef above.

Thanks.

-- 
tejun

