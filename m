X-GM-THRID: 6465983114452664320
X-Received: by 10.25.150.66 with SMTP id y63mr181118lfd.23.1505482979580;
        Fri, 15 Sep 2017 06:42:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.216.78 with SMTP id p75ls344819wmg.15.canary-gmail; Fri, 15
 Sep 2017 06:42:58 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5JgllrCeJp+vwrYbiS9693xPW3+pmGP5Snp+F8l1SQqmWlqCGMC1fEA7DQVawYTLs97y5i
X-Received: by 10.223.138.151 with SMTP id y23mr1586317wry.21.1505482978550;
        Fri, 15 Sep 2017 06:42:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505482978; cv=none;
        d=google.com; s=arc-20160816;
        b=nSrB0CWkKz75MwJvhuBdeaXGZyG5f2Y5gMjSr2qcoPl1Rh+LDeMiZv8URzdySEnYxR
         Ws0E8ZFYW3VRMNExOtBcYmGLeLxxEA+YaxFFV2hk1pA0CfGDHZoezqqXXqt8m1KRfti8
         Lng81sRJ+VJ2hLvCKzu+Nk1PDdacmYP2PMXX8dHIlyjQmRHSl/1YfkKyiH7s8pVW0zD1
         mD8WiVfgObrGWpec4eYM9piXDdi5CcEdLuBjI61rH8r8WkLjszhg2zHRgUfIeme6hgQQ
         zs1xaZD9W3hLfD6Hf8O1D9AzKl4uCwbCc0uyKf/I+3DchJh9/ZHrA9vutBCWkgzUfIgL
         rClg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=MsskVcIQHdmNe/kABX36OG1twiW+fdaxlvXx4Ec3jCM=;
        b=oXW8YW4Kgg0RkQdsEephEIwytPp8BjcJP5oMCHJcjUmrjBYMud8UC6FtlLIR4enzCZ
         cHkQhWrD6YpzMuUi9pOP0gGDk0mqxGCuvE5y1x48s8gC4wHgcI2WSaxcpDJJ98zYYiKu
         7WAkjUa3HeuYjlkbybuRLumNU68AV5jTAgzAxTU+oAJrrg+YStJKG/cQI6opu7CCUiHE
         i/SdMPBq1Far+jU74tFmos2+Yf2IznUDZAzbKpuyeIU/FX/tu5FQVKaWXlp6CvxWK+RY
         LKFX7rcPax23F1k74qyqjMcy9KKom+kpvHbBOg73KsQKVAzUK1NCBjAIkbd939Uk9OQv
         lrwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p200si31666wmg.4.2017.09.15.06.42.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 06:42:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,397,1500933600"; 
   d="scan'208";a="237647001"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 15:42:57 +0200
Date: Fri, 15 Sep 2017 15:42:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: delete double
 assignment
In-Reply-To: <1505478887-1820-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709151541090.3146@hadrien>
References: <1505478887-1820-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Sep 2017, Harsha Sharma wrote:

> Remove two adjacent assignments to the same location.
> In practice, many such occurences are intentional but
> this case don't seem to fall into that category.
> Done using following coccinelle semantic patch
>
> @@
> expression e1,e2,e3;
> @@
>
> (
>  (<+...e1++...+>)=e2;
> |
>  (<+...e1--...+>)=e2;
> |
>  (<+...++e1...+>)=e2;
> |
>  (<+...--e1...+>)=e2;
> |
> e1=e2;
> e1 = <+...e1...+>;
> |
> *e1=e2;
> *e1=e3;
> )
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  drivers/staging/rtlwifi/base.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
> index b88b0e8..68bd124 100644
> --- a/drivers/staging/rtlwifi/base.c
> +++ b/drivers/staging/rtlwifi/base.c
> @@ -1536,7 +1536,6 @@ u8 rtl_is_special_data(struct ieee80211_hw *hw, struct sk_buff *skb, u8 is_tx,
>  		/* EAPOL is seen as in-4way */
>  		rtlpriv->btcoexist.btc_info.in_4way = true;
>  		rtlpriv->btcoexist.btc_info.in_4way_ts = jiffies;
> -		rtlpriv->btcoexist.btc_info.in_4way_ts = jiffies;

For something like this, it can be useful to do a git blame on the lines.
If they were both introduced at the same time, it probably doesn't tell
you anything.  But if there was one and then someone explicitly introduced
another one, then there could have been some reason for doing that.

julia

>
>  		RT_TRACE(rtlpriv, (COMP_SEND | COMP_RECV), DBG_DMESG,
>  			 "802.1X %s EAPOL pkt!!\n", (is_tx) ? "Tx" : "Rx");
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505478887-1820-1-git-send-email-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

