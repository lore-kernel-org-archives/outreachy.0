X-GM-THRID: 6802341871401041920
X-Received: by 2002:a17:906:f917:: with SMTP id lc23mr18428175ejb.191.1583825413122;
        Tue, 10 Mar 2020 00:30:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:492:: with SMTP id f18ls4148297eja.2.gmail; Tue, 10
 Mar 2020 00:30:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtGgAquKEl2p+7HinxfsHzKbP7J00mSgK7B6TFqwVJzSof22ytXKJcd7ygoBrXLNVJ5gHpO
X-Received: by 2002:a17:906:585:: with SMTP id 5mr18535344ejn.356.1583825411797;
        Tue, 10 Mar 2020 00:30:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583825411; cv=none;
        d=google.com; s=arc-20160816;
        b=jybUagFRNdB5Nr4dximz2zAeZzyN4en+ap1r1e0zCKLbzbDJRXtI3eaOY7gq9p6BQ1
         QxTYbnhJ+AmPcvyQEBBiy8pJmrzrgcY9Z7Jiyhn6N7hBVR9ZRIRLBvO5jU5vPWsXBEAO
         Q+vl+iFpBw9l+LDad2X4q7UkVly9w8j8kyHLpffsxW6J0a5VNWS9pDXFSVqk+I0FyWpm
         3RlBydS0Gp5KRNcJq2yu/UQ13plFzzRiq1V5h34c08PgftNQU0feV9rOK3SMzWzPSs7j
         7Ba0AY3I6ifi+si7TVmqQVPvRTir2DTVByFWxOTpAkwapxzwIOWgcRYJs0Y8qkQBDBRF
         viYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=y2TvS+NaygIZsd89VIgHISxpkgfZGA7s9TgvVpjWWcU=;
        b=QvYMH4zxmQFRF37neg3z5gK/oenM/NyVse+BAtNZ19F6Bu4Fw5dr9Ln6+Ou7PvRfrk
         r0uebMEkouDUpGh5w5ug9c2w7jKVPgttNRt7IV1rvIykvdJK5JkxtDYLpKpjVGBjSfjx
         Ir9AOq6er0GuVCBUDAogwxv9uoPMyhMfNa7xI77tzNVX3Ft6G60r9VLfu3/tZZX7dEqk
         8BQz9LjvNOY35YSFtRbymXMi1fy2BnN7plMSC6It4IBgpd9jPloXcugx1C+bbrbi584f
         21yGUnjh4hppa20YhVJl6nvhwMcS1pX6FKBTD4IGYZ4OmZh/Mu8ZUtIm1tKXMmwCN7ID
         pfNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cw13si738979edb.2.2020.03.10.00.30.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 00:30:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,535,1574118000"; 
   d="scan'208";a="439592732"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 08:30:11 +0100
Date: Tue, 10 Mar 2020 08:30:11 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
cc: Ian Abbott <abbotti@mev.co.uk>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Forest Bond <forest@alittletooquiet.net>, 
    =?ISO-8859-15?Q?J=E9r=F4me_Pouiller?= <jerome.pouiller@silabs.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/7] staging: wfx: remove variable
 declaration
In-Reply-To: <20200309224024.GA5808@kaaira-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.21.2003100829530.2455@hadrien>
References: <20200309224024.GA5808@kaaira-HP-Pavilion-Notebook>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII


On Tue, 10 Mar 2020, Kaaira Gupta wrote:

> int r is uneccessarily declared and assigned to 0. Return 0 directly.

The patch looks ok, but the variable is called ret, not r.

julia

>
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/wfx/sta.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> index 03d0f224ffdb..a60ac03fa73d 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -293,7 +293,6 @@ int wfx_conf_tx(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
>  	struct wfx_dev *wdev = hw->priv;
>  	struct wfx_vif *wvif = (struct wfx_vif *) vif->drv_priv;
>  	int old_uapsd = wvif->uapsd_mask;
> -	int ret = 0;
>
>  	WARN_ON(queue >= hw->queues);
>
> @@ -307,7 +306,7 @@ int wfx_conf_tx(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
>  		wfx_update_pm(wvif);
>  	}
>  	mutex_unlock(&wdev->conf_mutex);
> -	return ret;
> +	return 0;
>  }
>
>  int wfx_set_rts_threshold(struct ieee80211_hw *hw, u32 value)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309224024.GA5808%40kaaira-HP-Pavilion-Notebook.
>

