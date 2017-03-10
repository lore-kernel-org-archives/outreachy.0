X-GM-THRID: 6394893336462753792
X-Received: by 10.99.114.6 with SMTP id n6mr9940336pgc.58.1489174625182;
        Fri, 10 Mar 2017 11:37:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.237.77 with SMTP id r74ls124061ith.11.gmail; Fri, 10 Mar
 2017 11:37:04 -0800 (PST)
X-Received: by 10.99.112.1 with SMTP id l1mr8985609pgc.142.1489174624397;
        Fri, 10 Mar 2017 11:37:04 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si1945734pfx.8.2017.03.10.11.37.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 11:37:04 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so11795721pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 11:37:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PYtvHQWKFjzTJlUjXlMXjfjl+QjzxjbPRFWY6tLyiJ4=;
        b=oK4rjbjR1DxTKJCSnkYlcNK6YKnQrdnG6Z303sFRK+hL3kiBP3o2PquZ45B5xHZmvN
         vf/rWNBQjnE8H5wo6EK+ak8g+oIQzxRJUXjMMvB4fM6PoSGA/HqbraSQZG8LDe00Aie5
         KHVgUTUGcGs23UC2ytHdiXAfkSMUott/7MYHAQ+uVyktYF/gsOIemh8nS+/jP2DAv/9N
         jUkY6w0qhtlOTMzjiFRyZeUT+jp+rQehU+qzI1/p+a5L4VeKWHnGT5tm7qFRA4uP2Kej
         754YHDGVBTQTI/9vznzgt60n6Ie1J/ERfSV1sqsg7dHy6+YPcbVTWNXaNID/Xgcp7cLs
         rS1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PYtvHQWKFjzTJlUjXlMXjfjl+QjzxjbPRFWY6tLyiJ4=;
        b=kgvVmGytDhf6QSwSr0SFwCRF3g8wtKNFypZW4qPhYU5bKGXiHK93tBsY05djxuuagc
         /mDO5A7D1FvtOFtZtzbaZHI683EmWrNbYsLIKsbHqVbp7M+8pXBGk4J9HdfEgnGUJXrP
         jbs6+L9HBD1/18XeeTFWJY41IQtX70eKkSR48zakR2rtvW7n4ZXF4uD8INYD87cmVLyt
         GMdVffBbGpytFcGsYlCuFNXF3y9P7ndzmIS8gIO3bl2FhfA+5/jBS6ZveBdM5mGHkISr
         Zo/LGRGE2udeT9CogYNIu0s6SeODpqAmE36SyE3yr1X1F1qT/AVTH8W928Xb2LEL5cy4
         VucA==
X-Gm-Message-State: AMke39k2ldvY2x9kta5c8mxBy4zvTvNB3fTCWd5CN9HV3gbp8quzBmmht3fJW7+hKd3bsw==
X-Received: by 10.99.152.65 with SMTP id l1mr22668565pgo.28.1489174624167;
        Fri, 10 Mar 2017 11:37:04 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id h71sm20127353pfj.65.2017.03.10.11.37.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 11:37:03 -0800 (PST)
Date: Fri, 10 Mar 2017 11:37:02 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: wilc1000: Align the code
Message-ID: <20170310193701.GC23892@d830.WORKGROUP>
References: <20170310165905.4131-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170310165905.4131-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 10, 2017 at 06:59:05PM +0200, Tamara Diaconita wrote:
> Improve code readability by deleting tabs and adding spaces to align the code.
> 
> Fixed the checkpath.pl issue:
> CHECK: Aligment should match open paranthesis.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
Hi Tamara,
This is a virtual v2, because I've seen it before.

These would need to be corrected - (if you keep this in set)
CHECK: 'Aligment' may be misspelled - perhaps 'Alignment'?
CHECK: 'paranthesis' may be misspelled - perhaps 'parenthesis'?
checkpath.pl -> checkpatch.pl

It seems like we're removing CHECK's on alignment and gaining
WARNINGs on lines over 80.

What did you think about reworking that else block, as per
yesterday email.  That would be more of a code logic change
and wouldn't belong in this patchset.  How about tossing this
patch from the set and plan to come back to it another time
and look at that else block.

alisons

> ---
>  drivers/staging/wilc1000/linux_wlan.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
> index 2eebc62..c65c5e8 100644
> --- a/drivers/staging/wilc1000/linux_wlan.c
> +++ b/drivers/staging/wilc1000/linux_wlan.c
> @@ -870,12 +870,12 @@ static int wilc_mac_open(struct net_device *ndev)
>  				if (memcmp(wl->vif[i ^ 1]->bssid,
>  					   wl->vif[i ^ 1]->src_addr, 6))
>  					wilc_set_wfi_drv_handler(vif,
> -							 wilc_get_vif_idx(vif),
> -							 0);
> +								 wilc_get_vif_idx(vif),
> +								 0);
>  				else
>  					wilc_set_wfi_drv_handler(vif,
> -							 wilc_get_vif_idx(vif),
> -							 1);
> +								 wilc_get_vif_idx(vif),
> +								 1);
>  			}
>  			wilc_set_operation_mode(vif, vif->iftype);
>  
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170310165905.4131-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

