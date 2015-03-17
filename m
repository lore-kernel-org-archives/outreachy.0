X-GM-THRID: 8809633284096
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7389adbc94109dbc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.246.67 with SMTP id xu3mr74552177obc.18.1426608021645;
        Tue, 17 Mar 2015 09:00:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.163 with SMTP id k3ls183099igx.13.gmail; Tue, 17 Mar
 2015 09:00:21 -0700 (PDT)
X-Received: by 10.50.87.97 with SMTP id w1mr2680569igz.1.1426608019747;
        Tue, 17 Mar 2015 09:00:19 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x22e.google.com (mail-qg0-x22e.google.com. [2607:f8b0:400d:c04::22e])
        by gmr-mx.google.com with ESMTPS id z4si1703205qcf.0.2015.03.17.09.00.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 09:00:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) client-ip=2607:f8b0:400d:c04::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22e.google.com with SMTP id z64so11870866qge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 09:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=C2YUSVSA871MK0DZI7sE34+qpmhjCkgVD3hHgqJF9Uw=;
        b=D8HgcHmEH9nfr19h222lxeYwmQWVYE1EIKe77WHgWXTdQe9kjNhmc3FRTysnuVsgVV
         BHDdDhFLgmWK8QN+KrBeIufVFJW1/8ze+N3dTB72OoML3ZDoXn0QxI2h8wmh1Ly+47d6
         kaURvrm2gmW2C1gnDM24ZRRn/Zmkc5sOyBG9NIHTujgcZSAjOB7KgwtsT5I4eFYo/mmK
         QiHC3DMcPBMu8IAVEFizkOgGNVsFwa48opd+EATJ98BWRj41y9cFfsv94+rxZIVFNz46
         UmPCQ0d3Rmd4l03EOgFghGTvdHvKg4jnVVlA4Hy01RYEyKP6A2qw5s0f7yrrhlSoIzxj
         Ndig==
X-Received: by 10.55.23.26 with SMTP id i26mr92501606qkh.16.1426608015443;
        Tue, 17 Mar 2015 09:00:15 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id c4sm2888598qgf.17.2015.03.17.09.00.13
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 09:00:14 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <55084F8C.4080102@gmail.com>
Date: Tue, 17 Mar 2015 12:00:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Ioana Ciornei <ciorneiioana@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: prism2sta: Replace memcpy
 with ether_add_copy
References: <1426599089-26954-1-git-send-email-ciorneiioana@gmail.com>
In-Reply-To: <1426599089-26954-1-git-send-email-ciorneiioana@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/17/15 09:31, Ioana Ciornei wrote:
> Replace memcpy() with ether_addr_copy() when using __aligned(2) Ethernet
> addresses.
> Changes done using the following coccinelle script:
> 
> @@
> expression e1, e2;
> @@
> 
> - memcpy(e1, e2, ETH_ALEN);
> + ether_addr_copy(e1, e2); 
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/wlan-ng/prism2sta.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

This looks good to me!

Jes

> diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> index 854571f..09fa76b 100644
> --- a/drivers/staging/wlan-ng/prism2sta.c
> +++ b/drivers/staging/wlan-ng/prism2sta.c
> @@ -1544,7 +1544,7 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
>  	 ** authentication.
>  	 */
>  
> -	memcpy(rec.address, inf->info.authreq.sta_addr, ETH_ALEN);
> +	ether_addr_copy(rec.address, inf->info.authreq.sta_addr);
>  	rec.status = P80211ENUM_status_unspec_failure;
>  
>  	/*
> @@ -1657,8 +1657,8 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
>  			if (hw->authlist.cnt >= WLAN_AUTH_MAX) {
>  				rec.status = P80211ENUM_status_ap_full;
>  			} else {
> -				memcpy(hw->authlist.addr[hw->authlist.cnt],
> -				       rec.address, ETH_ALEN);
> +				ether_addr_copy(hw->authlist.addr[hw->authlist.cnt],
> +						rec.address);
>  				hw->authlist.cnt++;
>  				added = 1;
>  			}
> 


