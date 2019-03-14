X-GM-THRID: 6668219746815574016
X-Received: by 2002:a2e:2c1a:: with SMTP id s26mr2932976ljs.12.1552567870113;
        Thu, 14 Mar 2019 05:51:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:7408:: with SMTP id v8ls545074lfe.9.gmail; Thu, 14 Mar
 2019 05:51:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwtCAp0s0BLPSQYq8aV96A2OhItJIrzUlOOdwZpTV65bnrC8QRCkGNK36zInkAP5a1Ist7e
X-Received: by 2002:a19:c502:: with SMTP id w2mr2956901lfe.15.1552567869148;
        Thu, 14 Mar 2019 05:51:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552567869; cv=none;
        d=google.com; s=arc-20160816;
        b=Kj/2BBgUv69+Un6FTwXuuyaHpeb4oxDNNJ/j9FCrdXEbo6b94HglYrqtdAWnr3ZvoV
         PZ5Pf5bBaqvPFkO+mKHGcS6cPLqHumozysgPfMuE1v19IIsrQwdFFuG2NqTmzriilFIa
         4jImcTFmcrjFqlZcMjJWLwI4aGQVywn4waqu1kR2VBKZc+/D5zHHl7SEOWN5Fo4d66C9
         5QeJPJ/aWovkcBLZH1UorI08P99bu3f8CcFBjst8yb9ghLwVVyQqO/KBupduFtRGTK9x
         d/PXo6Lvf4sFHY7WI6TSPAP8TakAL6ot78cWt9FmqHE/20lszBuZO10P+LWvW1X2Lybz
         Nnbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+q1FedkBLcnGzos7b06eX28urXBI1zJkaadn0Ca9iwk=;
        b=L4HeCGV+YSj73t72B695EJf2c+zKa7AnLr/ytQNvtMYnFSr+erk39zNcNdaALyM8/7
         iAXFOXnhiu1XxCKLbpTWKHOvkrxQI6rDGmow//lw4JS2gV49/pkssNbhTx9wL8seAJrR
         SzV+oJmyjZusizuNiMZixkqrBWR+Ux1gzN6g2tUVEmS2Z+7CscFQsJvXewgDVFKysTKD
         wadNhF9Aj1j0v9WhQ59wmIu0L63K+q4pPY8IDqeVRBqYNWQPtnpGqCjLi3qTADQds9HA
         JJq01fcifujXM7elFD8ImAcb6veGUP2v9BSgWkAPm39Yoe9njGfljk74mwRgltgPpyDQ
         8sng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y1si669595lfe.1.2019.03.14.05.51.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 05:51:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,478,1544482800"; 
   d="scan'208";a="373400065"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2019 13:51:08 +0100
Date: Thu, 14 Mar 2019 13:51:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: Replace 0 with
 false.
In-Reply-To: <1552565883-10229-1-git-send-email-digholebhagyashri@gmail.com>
Message-ID: <alpine.DEB.2.20.1903141350520.19170@hadrien>
References: <1552565883-10229-1-git-send-email-digholebhagyashri@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 14 Mar 2019, Bhagyashri Dighole wrote:

> Replace 0 with false, Bool intializations should use true or false.
> Detected by Coccinelle semantic patch boolinit.cocci.
>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
> index b519d18..9198189 100644
> --- a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
> +++ b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
> @@ -830,7 +830,7 @@ static void halbtc_display_wifi_status(struct btc_coexist *btcoexist,
>  	dc_mode = true;	/*TODO*/
>  	under_ips = rtlpriv->psc.inactive_pwrstate == ERFOFF ? 1 : 0;
>  	under_lps = rtlpriv->psc.dot11_psmode == EACTIVE ? 0 : 1;
> -	low_power = 0; /*TODO*/
> +	low_power = false; /*TODO*/
>  	seq_printf(m, "\n %-35s = %s%s%s%s",
>  		   "Power Status",
>  		   (dc_mode ? "DC mode" : "AC mode"),
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1552565883-10229-1-git-send-email-digholebhagyashri%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

