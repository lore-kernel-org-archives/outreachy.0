X-GM-THRID: 6666325868481085440
X-Received: by 2002:a1c:ef19:: with SMTP id n25mr1669019wmh.20.1552125185012;
        Sat, 09 Mar 2019 01:53:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f107:: with SMTP id p7ls19361wmh.6.canary-gmail; Sat, 09
 Mar 2019 01:53:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqwuFvRPN9R3cJWaHikdS5NSXNf27DKVE1fQ1MEKzcjMf3khwh7YS5NvShSolvxBDc6WCiQS
X-Received: by 2002:a1c:c3c5:: with SMTP id t188mr1598751wmf.15.1552125184110;
        Sat, 09 Mar 2019 01:53:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552125184; cv=none;
        d=google.com; s=arc-20160816;
        b=U3u9/c0NU3D5en/tfHJPbxNUH2sd3oLgcAHs2vdRUhlIws+sLXBF7pJZUK7P1Eo56d
         eKN4rO09AOCnjjCXaYlwBDGOo9uwUqARfHo57PXFrwUzB8hQI9kVtugUTR/WBLasw1S7
         Gk9kfELlIXmUaLgNgrvnC5y1QjUUfLO3AZOH6cPz7YKfkb8UFJKKUr7YL16ED91Fhucu
         rtyw4I00Y3i18I/DURYHw6O7XfNj9HRtfUCQLlowlOj4I3rFgszQjh07ze4LDx3LfmdB
         VaVwV0W5kKP3SJpzv6Rstvw3iwbOjYw9M9wBmSh4a0PoN1HkjaonawR5n6dhbc3sBfD/
         2V8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=yPa55oT4NpdT2526aAh6YaCh7E+b6ByDzTv4OhC2uLo=;
        b=UeyqZFavyeiQ989BkTdRpJdyh4cHNs1D+1gh+pwIyBJ5zkqxJAEhJ1gqJ75Efeib70
         5XywQqryVFOuHmZmcbzRx2cfdAPqqpAtx8vvrnPYEDAeBLyfOVS9svYcsLNnxC+Ig453
         YoULJLmSbqH6W/V85ZqKekk9VXK7rat1aagsr9Hs+OfHWP2LCZwKDTjd8AdJ9LbIW6WU
         j/HnOG/6zOVxuGxBuIBl1wO+gz/z/nEwavd7PfNVsTLhXLtiATKOVqziFMDTjNgr5Sej
         wrWgcBIDadLDxDsDKtAL7i4W+qGsAhY5Jpmy8gElLDJ92iZIq+bLDdvlW5/z1Qg6V9aY
         Xq2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y192si429404wmd.1.2019.03.09.01.53.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 01:53:04 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,459,1544482800"; 
   d="scan'208";a="298645789"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2019 10:53:02 +0100
Date: Sat, 9 Mar 2019 10:53:01 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: adham.abozaeid@microchip.com, ajay.kathat@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: remove unnecessary
 variable result
In-Reply-To: <20190309094840.38154-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903091051570.2558@hadrien>
References: <20190309094840.38154-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Mar 2019, Himadri Pandya wrote:

> Remove unnecessary local variable "result" and its assignments from
> function wilc_set_pmkid_info. Suggested by Coccinelle.
>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 4dd9a20f6a0b..962c5e6edd5e 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -1358,17 +1358,15 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
>  int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
>  {
>  	struct wid wid;
> -	int result;
>
>  	wid.id = WID_PMKID_INFO;
>  	wid.type = WID_STR;
>  	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
>  	wid.val = (u8 *)pmkid;
>
> -	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> +	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
>  				      wilc_get_vif_idx(vif));

It looks like this now violates the rule that function arguments should
appear just to the right of a (.  Maybe checkpatch didn't check this
because the line with the relevant argument is not affected by the change.

julia

>
> -	return result;
>  }
>
>  int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190309094840.38154-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

