X-GM-THRID: 6528283603618496512
X-Received: by 10.46.22.71 with SMTP id 7mr344675ljw.17.1519985021627;
        Fri, 02 Mar 2018 02:03:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.126.11 with SMTP id z11ls1020537ljc.7.gmail; Fri, 02 Mar
 2018 02:03:40 -0800 (PST)
X-Google-Smtp-Source: AG47ELvN8cXuWzzuTj56Zu5crjjk+0vWyd22Ci66AABcvbqPdwRoxHGsbBP4ODlnr+bmjNxK8w0j
X-Received: by 10.46.20.11 with SMTP id u11mr342785ljd.39.1519985020209;
        Fri, 02 Mar 2018 02:03:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519985020; cv=none;
        d=google.com; s=arc-20160816;
        b=cn5mj6qWdv3IqsxbgQQF4zg3QlN8CFOFK8+B7lch+IKwg/ZqXOuxH4fb//u43MLp1O
         43FlZeIQtMpQSf2F82YIw3LqhhTHaOjCYNu2V09aZGM/BL9xImhnk4FkJ/+KnXAJ4W2n
         AwUSID5NFsIHueplT6LD7XKRpPjOJa0KN+5UZd8sEcyMhYLM2MjKDZ6Kqzh9HEGvvZGY
         Ztb0rKmCi6awMgCOEFSEYYUd1tpooS1tIT0F2je57ovIYJ0rAufuOMG8xV2Pll9S9FOu
         ijR6hqqUBlvDqmK1weCDGQ1daxQgaBHCMMWD80FUUr6DAkcT0Mky8HgWCbELVoP2yPSf
         9m5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=et0wjrPft8xXbcWYPVTV/P+ZxIiN53bX+sHMFCUhLUU=;
        b=tWaITPbGF7PAb7W6jHT1bTVgUr0eWmg2OJVU8zGWhs5v8aNV1KbMJTU9hNFZ9ww+zE
         BYd7aSI3AtHNzC8j7DE5kKPqSFv88TzI8E2EarFMg6S/6eFGrg4xjaDMyL3Ti91Wp1My
         OAaLP9f5roXfgi3LybwMLHqTKRM6JjbMhv7VPP+h7sVtEFLBr6YmUy0ciCJ8/Vo7q02c
         03HqF9sd+b38yLAsZmv0wxv7HD0+0BHiGMAWMcmFDUpuPNZex0IxbNtrxhqVknYn8dWk
         Gj+8BszU3BUMARbJQckOSAZboU5mnGAAXv7L2z3yv397dNV05/+PR3f/t4+6R7SrbEnm
         QNtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s12si291209lje.3.2018.03.02.02.03.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 02:03:40 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,411,1515452400"; 
   d="scan'208";a="256687827"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2018 11:03:39 +0100
Date: Fri, 2 Mar 2018 11:03:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: remove condition
 where it has no effect
In-Reply-To: <1519984441-14752-1-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1803021100500.2214@hadrien>
References: <1519984441-14752-1-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Mar 2018, Santha Meena Ramamoorthy wrote:

> Remove condition where if and else branch are functionally identical.
> Issue found using cond_no_effect.cocci Coccinelle script.

Actually, there are just identical, period.  It would be good to remove
"functionally".

Since having such code that is completely duplicated is a little bit
strange, it could be good to enlarge the recipient list to:

Ping-Ke Shih <pkshih@realtek.com>
(commit_signer:1/1=100%,authored:1/1=100%,added_lines:5225/5225=100%)
Larry Finger <Larry.Finger@lwfinger.net> (commit_signer:1/1=100%)
devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)

Maybe someone out there would know if actually some different arguments
were intended.

julia

>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> ---
>  drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> index ffff5b0..5b82640 100644
> --- a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> +++ b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> @@ -2885,12 +2885,8 @@ static void halbtc8822b2ant_action_a2dp(struct btc_coexist *btcoexist)
>  							     NORMAL_EXEC, 5);
>
>  		} else {
> -			if (wifi_turbo)
> -				halbtc8822b2ant_coex_table_with_type(
> -					btcoexist, NORMAL_EXEC, 10);
> -			else
> -				halbtc8822b2ant_coex_table_with_type(
> -					btcoexist, NORMAL_EXEC, 10);
> +			halbtc8822b2ant_coex_table_with_type(btcoexist,
> +							     NORMAL_EXEC, 10);
>
>  			halbtc8822b2ant_ps_tdma(btcoexist, NORMAL_EXEC, true,
>  						109);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519984441-14752-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

