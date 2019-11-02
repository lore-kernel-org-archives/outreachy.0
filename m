X-GM-THRID: 6754510207440650240
X-Received: by 2002:a17:906:7f94:: with SMTP id f20mr14459791ejr.333.1572688986617;
        Sat, 02 Nov 2019 03:03:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6a4f:: with SMTP id n15ls1993797ejs.0.gmail; Sat, 02
 Nov 2019 03:03:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqws4NMvRjvzgBuAjatd/88GVyW7uINXGrFLGwqRiWdKWtHxv7xb9UmxP16mKN3TLoBKKYwU
X-Received: by 2002:a17:906:494e:: with SMTP id f14mr14680515ejt.42.1572688985868;
        Sat, 02 Nov 2019 03:03:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572688985; cv=none;
        d=google.com; s=arc-20160816;
        b=EWZSUhzpfX7YC+20CMp0dWY7GA1Mqd2hYA/0xwmRhs+xrjPKLGgncNwwJ1izMfKZcR
         bxIkiGGTNIhCe46CuF4Ol2o5ZQDUv3gUz4iTKGeHCHAEwHxNRblkMWRz6UgHWsbpgVQl
         S5DRo7V9FKSme8UNVgE/V0pJsVZyzC8ABYWoPDe4sRBiCZ2k5u9gp9ui5s1lkSodMCUp
         zlbQR1gnNuzx/d0n0IYYZtlUy1MfGqyRlG5g6+99h2euk+k/XvCzbGHK44j9nJNoNz0f
         X0CS+35pGxZjWL7Zu4lbp2zMZut8GJ0N4k9pGK6C3VcndFUtZhc1j3ru/hNf7tvyZCEy
         Ti3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=/MsRMg1RKTk6+tXJHuHAapCcttWxI5pVADbDSOdNncs=;
        b=Ko6ZO1q2RUi7PgJ2ZfoGmotThQn+if6rnM6OXCIioMlR8bPW+ngqh/n/s1W1+OWwLF
         py5/hjRm4gzDMv112/SZgiQ1T9xF/+zGwkoJO5ko+vz6V85d8cLov4VPXfeZ4SbjuOhL
         21CZL3/+I2uS20Skh1NC6zqhd9ZA/b2qDyXl7GSo/HhGLxSs2PfO8BQOX07rHJZ42PcE
         7OQbOO1A9nE6+DsDz9ZnPnyfEUgZkNMvTMmT1BWwqhrCQwQWFFq6FprSkWrP+ZfJIpCn
         FkrvwZhutnh7a/pV6yP9+55K/BfOZn+dU2hMN9TofKf8nLnqHu+W/NwGEvVtCbqeJk0G
         80AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q17si942333edi.1.2019.11.02.03.03.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 03:03:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,259,1569276000"; 
   d="scan'208";a="409980064"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Nov 2019 11:03:05 +0100
Date: Sat, 2 Nov 2019 11:03:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    julia.lawall@lip6.fr
Subject: Re: [Outreachy kernel] [PATCH] staging: wfx: fix warning of assignment
 of 0/1 to bool variable
In-Reply-To: <20191102010908.30269-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1911021101580.8826@hadrien>
References: <20191102010908.30269-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Nov 2019, Jules Irenge wrote:

> Fix warning of assignment of 0/1 to bool variable.
> Issue reported by coccinelle tool.

You seem to also have several patches with the same subject line, which is
not allowed.  Either describe the affected files in a more specific way or
merge the patches.  If you merge the patches, it would still be a v2, even
if the number of patches is different.

julia

>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/wfx/sta.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> index 688586e823c0..ea5707ff8847 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -291,7 +291,7 @@ u64 wfx_prepare_multicast(struct ieee80211_hw *hw, struct netdev_hw_addr_list *m
>  			ether_addr_copy(wvif->mcast_filter.address_list[i], ha->addr);
>  			i++;
>  		}
> -		wvif->mcast_filter.enable = 1;
> +		wvif->mcast_filter.enable = true;
>  		wvif->mcast_filter.num_addresses = count;
>  	}
>
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191102010908.30269-1-jbi.octave%40gmail.com.
>

