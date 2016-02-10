X-GM-THRID: 6249367928124211200
X-Received: by 10.66.124.131 with SMTP id mi3mr35518504pab.1.1455085188959;
        Tue, 09 Feb 2016 22:19:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.24.225 with SMTP id x1ls103132obf.81.gmail; Tue, 09 Feb
 2016 22:19:47 -0800 (PST)
X-Received: by 10.182.29.129 with SMTP id k1mr35238598obh.23.1455085187538;
        Tue, 09 Feb 2016 22:19:47 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id 12si175982pfb.1.2016.02.09.22.19.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 22:19:47 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id q63so6871528pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 22:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=SEmOk01Shu8hqMpAH/dxxtzspmsma6zAqir3jdE/+ro=;
        b=flJBiQ8EcSp7MuTZeZ45mvzltHkmP7DBmuItiO9l25VPWmGl7YOu0u7IvrHFgUHTAs
         zO+d5Zkk6gCu6jZ7Q44OVQbAlVTcuXH4xmHikLXjNNj/90nhBMEPLN/kUFoiuZ9XPxRT
         Rf4WBqcJrtXYPImJAy1bdph3O3skDfjlEdZJiHnj+qdp+rPmmLxvx4BhkBIpqVyjFA9h
         hkkiDuPyk+Ss5DLLKKcoCy7kWCp42KKw+bOoQDM0lqW1YdO4sgPDVAuPOCtcIdLpA2ry
         HrsCDybVLz3MwIMfqOD+Hzop7zSP1IaAN4yLoSAuHLIJQMNuBhkp9qH0WWtocYkATCBW
         SDCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=SEmOk01Shu8hqMpAH/dxxtzspmsma6zAqir3jdE/+ro=;
        b=clXC5WZ0sTT8/pGg84/6qlHBC8ORM17aatSflv3y2zCPkWBfyAvks5QbdpwCroLwfX
         n4M1zABpMKyUDpvfMmq0MtVo6i/z7IxM3xR6vz06RLyfE0zbcmgOxGiLeGndTXR6WKkh
         NOQAZfFhu+vM2FZVIwzJdillz9C2jN4JqGCZPnPyBGlj+aHzfALU4hGCO7krXsXC7Ai7
         oOx57N5Wfx3fNsjnoYZ/QUzYuzn/w60o0fHeGV9sgNok6ZfwVwCH4CneZOvbrY8j3CtN
         l1Or6B9m4VYQbXcxtZVlA/iNpvtEIGB5QhUTm5CH7go4PUdGrYbzQcOpAm96WvZ+qIAP
         UApQ==
X-Gm-Message-State: AG10YOR1iNGTotTClZkE4QSjctf8k+eEo7sRsybtpPnkTpom8HEbqmK+X5Hs/ALKNqtuXQ==
X-Received: by 10.98.15.19 with SMTP id x19mr56634567pfi.60.1455085187382;
        Tue, 09 Feb 2016 22:19:47 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([183.82.227.168])
        by smtp.gmail.com with ESMTPSA id tp6sm2053573pab.25.2016.02.09.22.19.45
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 22:19:46 -0800 (PST)
Date: Wed, 10 Feb 2016 11:49:42 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: Use
 kmalloc_array instead of kmalloc
Message-ID: <20160210061942.GB374@sudip-pc>
References: <20160210013122.GA12148@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160210013122.GA12148@janani-Inspiron-3521>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Feb 09, 2016 at 08:31:22PM -0500, Janani Ravichandran wrote:
> Use kmalloc_array instead of kmalloc for arrays. Coccinelle patch used:
> 
> @@
> expression E, F;
> constant FLAG;
> @@
> 
> - kmalloc(E*F, FLAG)
> + kmalloc_array(E, F, FLAG)
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
> Changes since v1:
>  * Corrected an error in commit message.
> 
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 28ad63a..fb344d1 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -601,8 +601,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  	bool			bMatchWinStart = false, bPktInBuf = false;
>  	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->RxIndicateSeq is %d, WinSize is %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
>  
> -	prxbIndicateArray = kmalloc(sizeof(struct ieee80211_rxb *) *
> -			REORDER_WIN_SIZE, GFP_KERNEL);
> +	prxbIndicateArray = kmalloc_array(RECORDER_WIN_SIZE,

something is wrong. coccinelle should not change REORDER_WIN_SIZE to
RECORDER_WIN_SIZE...

and you did not build tested it before sending.

regards
sudip

