X-GM-THRID: 6671552795749908480
X-Received: by 2002:adf:fd46:: with SMTP id h6mr10265332wrs.139.1553348165068;
        Sat, 23 Mar 2019 06:36:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b406:: with SMTP id d6ls1507778wmf.2.canary-gmail; Sat,
 23 Mar 2019 06:36:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy87iGAs1K0g1PSHJ7Vtr42IkW8ZZ+q484VfVgwI1z7XWMo1+ce0WOpWGutulPGL0pNVdVC
X-Received: by 2002:a1c:a993:: with SMTP id s141mr6102443wme.152.1553348164337;
        Sat, 23 Mar 2019 06:36:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553348164; cv=none;
        d=google.com; s=arc-20160816;
        b=P6yFjiToAl9XzZi3cain5wij/cbR3KmyE99gnJlEEipZxmWriaGgpSq+fAAUfqnR6/
         ObnPMiqpXy56viu9ICSNl67bEa20qP0jfzRNVlm+IYxdpJsp81p8QD8xE14elrOBGokZ
         OyoHKy5P56UDFBnQLVER5J1YCfZT0QDFP0n5BSmYwUdZlXUA+s4OqtaaPehw1QXmzuRc
         tVLYzweWJt+J2QEk3fRPw2tMusI1zFLTCYmKOmoKZMIPThx7DH1ZDzF3zF6A7Ye3dhU1
         dc/N8wdZ/ICAN6q0sMw8s7zvaAYDvCwaO79seVF1/kwWmOXlnIqhiut4KKKLQgv5jitO
         OyDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=fAa5g27GYaU/aIEZiSpDNKJuzBCj7kAA5QQL2OFeR78=;
        b=RSMeoTRWARTnZNxj7KnvrIJz42o3KLpg7Asv/CQwGKFGTfPuwZtrtwAdSZyOdp87uk
         YMeogq4SDW5bIUZScsAor/f8ays7QB3K1+j5Zp30l3f9WDkteyCsWONhK+EvOB9Ptvvv
         zvTC3MDYDjNJXrUBo1CJKnwKV9TEG4KekmN1L/4I3FE/q6KGFNZnzwQgttidhiMtYGat
         tEVolaLE9OzRnSBHTqZ7jbqIbh+J5J9yi4AQ2xoiF/HD4nr1bdBdunEjTGtg2LnC3qFJ
         otaiCCRfWUh+zDXUTi+KAYpiUEL6XFhbf/7FeP0hbSKmg2/6mJCYHK2u3fg5dDMsOhpM
         KGpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v17si644090wmc.4.2019.03.23.06.36.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 06:36:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="375419032"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2019 14:36:04 +0100
Date: Sat, 23 Mar 2019 14:36:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anushka Shukla <anushkacharu9@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtlwifi: base.c: fix line
 over 80 charcters
In-Reply-To: <20190323115159.9331-1-anushkacharu9@gmail.com>
Message-ID: <alpine.DEB.2.21.1903231434550.2566@hadrien>
References: <anushkacharu9@gmail.com> <20190323115159.9331-1-anushkacharu9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Mar 2019, anushkacharu9@gmail.com wrote:

> From: Anushka Shukla <anushkacharu9@gmail.com>
>
> fix line over 80 characters
>
> Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
> ---
>  drivers/staging/rtlwifi/base.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
> index 35df2cf60619..5fbd71c01ff3 100644
> --- a/drivers/staging/rtlwifi/base.c
> +++ b/drivers/staging/rtlwifi/base.c
> @@ -2130,7 +2130,8 @@ void rtl_watchdog_wq_callback(void *data)
>  			if (rtlpriv->link_info.roam_times >= 5) {
>  				pr_err("AP off, try to reconnect now\n");
>  				rtlpriv->link_info.roam_times = 0;
> -				ieee80211_connection_loss(rtlpriv->mac80211.vif);
> +				ieee80211_connection_loss(rtlpriv->
> +                                               		  mac80211.vif);

This is not an improvement.  I guess it is only like 1 character over and
it is not good to break up an expression in this way.

julia

>  			}
>  		} else {
>  			rtlpriv->link_info.roam_times = 0;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190323115159.9331-1-anushkacharu9%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

