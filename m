X-GM-THRID: 6202030500933009408
X-Received: by 10.182.233.195 with SMTP id ty3mr25917465obc.44.1444023344362;
        Sun, 04 Oct 2015 22:35:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.227 with SMTP id e3ls1086956igx.22.gmail; Sun, 04 Oct
 2015 22:35:44 -0700 (PDT)
X-Received: by 10.50.62.68 with SMTP id w4mr9423116igr.13.1444023344139;
        Sun, 04 Oct 2015 22:35:44 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id zg1si3540876pbb.2.2015.10.04.22.35.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 22:35:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id lk4so164807012pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 22:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=xaiZOc4cofE5AgQNzRS0+PbAOfpTSQtiFp3PIIN3fvU=;
        b=kAnFm6lVrBbvWCjmon9wPUjjU8bje6Sz4FWZ9dwq+VzAX3jGy39dDm0kXRVsy5VQpD
         OK3fypHkpUI+Sx3rgSMfFI9S/Jn6/qPTyk2crDLtFIRvAONkE7mIBxl08aCQ4AUB19xT
         71mw3e7+dThUuloZDO78uK2oo+v1x/70ZaDkHFwzMcIxXhmZBhXDv84WdjNpekrLZNE8
         sTFJbNplkYFTFVzzuxOSM/jhVFIyh6z2MBq+4VFFR9Ea0tBPk1BJmCvbgebTbGcBedQK
         UmqbLZdO8Tn4R5LIlaGSRRyHXqFB6qENyole3tmknndJ4ggBQvCI5p3m2rPl7cQVyO9M
         +qYw==
X-Received: by 10.66.160.100 with SMTP id xj4mr7516608pab.39.1444023343981;
        Sun, 04 Oct 2015 22:35:43 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id rx10sm5046308pab.21.2015.10.04.22.35.42
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 04 Oct 2015 22:35:43 -0700 (PDT)
Date: Mon, 5 Oct 2015 11:05:38 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: wilc1000:
 host_interface: Replace memset with eth_zero_addr
Message-ID: <20151005053538.GB20276@sudip-pc>
References: <1444022741-4230-1-git-send-email-shraddha.6596@gmail.com>
 <1444022741-4230-3-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1444022741-4230-3-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Oct 05, 2015 at 10:55:41AM +0530, Shraddha Barke wrote:
> Use eth_zero_addr to assign the zero address to the given address
> array instead of memset when second argument is address of zero.
> 
> The Coccinelle patch used -
> 
> // <smpl>
> @eth_zero_addr@
> expression e;
> @@
> 
> -memset(e,0x00,ETH_ALEN);
> +eth_zero_addr(e);
> // </smpl>
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
Please always test build your patch. Build fails with this patch.

drivers/staging/wilc1000/host_interface.c: In function ‘Handle_ConnectTimeout’:
drivers/staging/wilc1000/host_interface.c:1953:2: error: implicit declaration of function ‘eth_zero_addr’

regards
sudip

