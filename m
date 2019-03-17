X-GM-THRID: 6669275216969990144
X-Received: by 2002:a2e:447:: with SMTP id 68mr654854lje.0.1552812401379;
        Sun, 17 Mar 2019 01:46:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7:: with SMTP id 7ls444327lja.13.gmail; Sun, 17 Mar 2019
 01:46:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyES9CuADfY/yopZ65X9DTAiE7fxE7PB1MR3vH3GMkf+nfrd/CSqeBjg4UU85UK263Rfx/b
X-Received: by 2002:a2e:994b:: with SMTP id r11mr645246ljj.15.1552812400503;
        Sun, 17 Mar 2019 01:46:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552812400; cv=none;
        d=google.com; s=arc-20160816;
        b=QL2pd+RquxW9sjYEW6FYtErbTFIhAKFXoHz5OFl92z7lc7Akue0KzOJ2sMu+re2A7Q
         GfoFW1YQn0UcIPtNPfTc3PQ5s8LHAP+QYqEtiR+IGwGw/MlAemQttTjT7moU6LGnc9U5
         GZXCFAWnMMjPg+waFhnhrz6BKXr8lWxBaC6eC4OKiRv3WBf5lgxRhhigoxZYU/wtMv35
         OwDyVEHUtU2VqPIT9ZkR2NLj1kN2CpXa7wZYtFEO801UF7BvvHaSMziKIT/s7W3EIDxc
         5wd+ISbyvez0B8HLx+h6I2yQ/Vew4iiW/IHAIbHuUsGUFVJvwOmhVdTUhFeCipIvJBgA
         9Dcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=yoTt4H6ywqFssDg04IG4ZDi92MDIQrON1rdt1nAt6uE=;
        b=wC/n1KeaJ0UHftqLah2JT/pIcVKo3tz3x5sWwJa1upLk4Tq611vly2UkYp7yJPb6sL
         GkNUzUECSl56CbuWuOFLNLTyc5bAnQ5TxHPP6XPkVN/AUakhqustZZyTfNa0sEQuV2fI
         Gq7GYfh3mWlGX9e08JiJBxbZggE65glOaR5SQQ8TMF8m9PSmYQDMZIeomINHqCRzSNnT
         UDdNXXCfRMrnxZXK1hZtOJjv2J+ba2Rzok5IE6RahPcRgNyuIJU2GeDn1RIPaoOtweeq
         fzqzXg+ggGYbHb+9hF+LRGzLJ56x0ZDGOSvh6oCxP79YSLqHYX+UpRYRrYeHTy9zJins
         Mojw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si251338lfh.3.2019.03.17.01.46.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 01:46:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,489,1544482800"; 
   d="scan'208";a="299678924"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 09:46:39 +0100
Date: Sun, 17 Mar 2019 09:46:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: avoid bool structure
 members
In-Reply-To: <1552811623-12131-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903170944570.27672@hadrien>
References: <1552811623-12131-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, Payal Kshirsagar wrote:

> To avoid bool structure members (because they tend to waste of space ),
> change type to int and they will work as flags that is 1 if true  and 0
> if false

Hello,

In messages before you joined the group, Greg has pushed back on these.
In this cas, with an int before and an int after (or something similar)
there is not going to be any space savings, due to alignment constraints.
It would be better to stick with bool, as that makes clear how the value
is being used.

julia

>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/ks7010/ks_wlan.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks_wlan.h b/drivers/staging/ks7010/ks_wlan.h
> index 7aaf8d7..fe2ab72 100644
> --- a/drivers/staging/ks7010/ks_wlan.h
> +++ b/drivers/staging/ks7010/ks_wlan.h
> @@ -337,7 +337,7 @@ struct mic_failure {
>
>  struct wpa_status {
>  	int wpa_enabled;
> -	bool rsn_enabled;
> +	int rsn_enabled;
>  	int version;
>  	int pairwise_suite;	/* unicast cipher */
>  	int group_suite;	/* multicast cipher */
> @@ -475,7 +475,7 @@ struct ks_wlan_private {
>  	unsigned int need_commit;	/* for ioctl */
>
>  	/* DeviceIoControl */
> -	bool is_device_open;
> +	int is_device_open;
>  	atomic_t event_count;
>  	atomic_t rec_count;
>  	int dev_count;
> @@ -487,7 +487,7 @@ struct ks_wlan_private {
>  	unsigned char firmware_version[128 + 1];
>  	int version_size;
>
> -	bool mac_address_valid;
> +	int mac_address_valid;
>
>  	int dev_state;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1552811623-12131-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

