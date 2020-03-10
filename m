X-GM-THRID: 6802341212191719424
X-Received: by 2002:a05:6512:692:: with SMTP id t18mr11567845lfe.212.1583825277243;
        Tue, 10 Mar 2020 00:27:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:6c13:: with SMTP id h19ls2236755ljc.7.gmail; Tue, 10 Mar
 2020 00:27:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtAmYlDSmZHNP+cqlg/kXB9Gemozks1d6W4FpQPHItBzwP1XdCYY7bQmUje3m+3EVBIl0nJ
X-Received: by 2002:a2e:8884:: with SMTP id k4mr11671360lji.59.1583825275810;
        Tue, 10 Mar 2020 00:27:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583825275; cv=none;
        d=google.com; s=arc-20160816;
        b=kiHZtsc+dFkPQxutdkxFSGgjVuicdeyawCWIH3v0QwvJfjDv8U1BlMaxJ/5994BMdL
         jY2UyNbuxu2/0lmPXvRoMXzYBkVT7Z5BKlcwbNE/gQe2H5Wm58I8/W57Rq5e1FNCxNby
         /k9/0spcKCaJ0icr5fjVTSilJkdVGFt6AGj8fg10Q1Z51mB5F4cJY+x4cF/P2LL3EcZp
         IR6pktHwkxs2IvcRWxDFnnUkuffSlehJBddAHfuzJL1GaER4qxmax4V90r6f06EsX8Qb
         vBghZGianlgO3To5npv2VNMKioaWIDjIiZ5H3+YoK43yJNfApWyt5GB2rzY8uqcSytEY
         fPjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ETdtidamUapWPRCaBTEw90PBJn//miESVCCITMvpljg=;
        b=TuqogvNqIYd0nQtdThKCKP8m8AbxfAhjmUu9Z+0KtwTqLWNOFNgkzgYAUB/CG54alu
         11RZITL1wI5DAPM+84NSSgGeDKLnYfANJAyK9to08iSdfd2naE04Rtr/7ofeKYfI2AiK
         wR8NQ8dgdgs2P6HRUDgvqTsdkD3f0RrhCh1H4LkI+Zdq+/6XnWOvmKNJPLvnbwu1Nd3T
         OKBXd9cXTC995SAvoXTJZJOh0hwNfElGr79W/yVN3IpxfVZIEwcaS6y9E6jQifADvCGR
         lov+x4trnDUjKcR2HVnkU1OXc4ig20elPXAnmQlCzjgbsgs/J+yTomigppYxiR1Hrmie
         Pb6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w6si32876lfa.1.2020.03.10.00.27.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 00:27:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,535,1574118000"; 
   d="scan'208";a="439592520"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 08:27:54 +0100
Date: Tue, 10 Mar 2020 08:27:54 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
cc: Ian Abbott <abbotti@mev.co.uk>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Forest Bond <forest@alittletooquiet.net>, 
    =?ISO-8859-15?Q?J=E9r=F4me_Pouiller?= <jerome.pouiller@silabs.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/7] staging: wfx: change 1 to bool
In-Reply-To: <20200309223751.GA5676@kaaira-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.21.2003100824490.2455@hadrien>
References: <20200309223751.GA5676@kaaira-HP-Pavilion-Notebook>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tue, 10 Mar 2020, Kaaira Gupta wrote:

> policies[i].uploaded is a bool. It is equated to 1. Change it to bool.

equated -> assigned

As far as I can see, policies[i].uploaded is a u8, not a bool.  Have you
checked that all of the uses indicate that it is used in a boolean way?

julia

>
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/wfx/data_tx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
> index 815fde0913f5..ef617347abad 100644
> --- a/drivers/staging/wfx/data_tx.c
> +++ b/drivers/staging/wfx/data_tx.c
> @@ -227,7 +227,7 @@ static int wfx_tx_policy_upload(struct wfx_vif *wvif)
>  			    memzcmp(policies[i].rates, sizeof(policies[i].rates)))
>  				break;
>  		if (i < HIF_MIB_NUM_TX_RATE_RETRY_POLICIES) {
> -			policies[i].uploaded = 1;
> +			policies[i].uploaded = true;
>  			memcpy(tmp_rates, policies[i].rates, sizeof(tmp_rates));
>  			spin_unlock_bh(&wvif->tx_policy_cache.lock);
>  			hif_set_tx_rate_retry_policy(wvif, i, tmp_rates);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309223751.GA5676%40kaaira-HP-Pavilion-Notebook.
>

