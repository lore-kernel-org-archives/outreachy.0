X-GM-THRID: 6477098943281889280
X-Received: by 10.80.206.3 with SMTP id y3mr1724236edi.11.1508067596096;
        Sun, 15 Oct 2017 04:39:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.219.194 with SMTP id s2ls4786416edk.5.gmail; Sun, 15 Oct
 2017 04:39:55 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB2z+Yewxqr7Ylahd2DWj5E2cgdbV17ISkK+anGbtzydHZ8VbOOBOO9B2gHDBqItgnDXZbs
X-Received: by 10.80.182.75 with SMTP id c11mr1706047ede.4.1508067595145;
        Sun, 15 Oct 2017 04:39:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508067595; cv=none;
        d=google.com; s=arc-20160816;
        b=zLDiba5VCPV9PuVj7r06xxzxI55vL7wT732g/cgr/uFZKc46pdcqfy6eCgyh90qdPG
         GQxgabyjBfsH7aUD0qXH2B59tmSRsCaD+oFm/r3hc9WyeJjmyTK4xhHMF1T+fLWRZKuV
         VO1S/HC2KOG96Y0xespTE8GwMslbFwSELnspoRIulDjnNopOrSW1F4sxC2O0JiWBBzi/
         MZJXXfcwf7S2NdO1FEBG0dnO48s1tjf58PRLStmzG9vHoLCycAH8G8SLiqFuaufEe0+y
         fWsgW639Z5+aCHljVi46CSOZQz71SDRTHUYBXSxhvIqOEOcKO4qgTWlVJWsXQUNWk0KH
         RYDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=ndAf1KFX5gfo06/TnuBTn3pgRZA6G4XLJGnNuaFcDkg=;
        b=HFBpw4WW7qqDm3ZKjpiwrPhE3FV0zu5yYp2bm63RL7ThstckaRNWMI6/P3GXh1mQDd
         X+wtGnFJLxypWg+3AAhV1TLCHu69mhq7sEa6oZbgK8rpjrtYlTzdjFxlkCygSyr6yJym
         vYuu5ByGtTxTbnVdrR3T+hEUf7/ZAPng0nuL2rFL2LTjaxKPvVYQ+w5ZdGPJBTuaEXWv
         0D2QlRyEVL+Sw3lak4pYoUyZsFissI/OJ7ZgwCpzeI67SSqREy+gc2vF3/HD5m1sogSu
         W/CN7+pNXWTxYEc+E4y7R2wZ3c9M345q3BMaGzlcw41zfdgOzMkUZwtP6oSHszbndSAq
         YLKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Return-Path: <pablo@gnumonks.org>
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org. [2001:780:45:1d:225:90ff:fe52:c662])
        by gmr-mx.google.com with ESMTPS id a57si224459edd.3.2017.10.15.04.39.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Oct 2017 04:39:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) client-ip=2001:780:45:1d:225:90ff:fe52:c662;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Received: from 40.red-212-170-55.staticip.rima-tde.net ([212.170.55.40] helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.84_2)
	(envelope-from <pablo@gnumonks.org>)
	id 1e3hGq-0005Vp-Ke; Sun, 15 Oct 2017 13:39:54 +0200
Date: Sun, 15 Oct 2017 13:39:50 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] iptables: iptables-compat translation for TCPMSS
Message-ID: <20171015113950.GA2233@salvia>
References: <1508067107-13649-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1508067107-13649-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -2.9 (--)

On Sun, Oct 15, 2017 at 05:01:47PM +0530, Aastha Gupta wrote:
> Since path mtu support was added, we can now add
> iptables-compat translation for TCPMSS extension.
> 
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  extensions/libxt_TCPMSS.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/extensions/libxt_TCPMSS.c b/extensions/libxt_TCPMSS.c
> index 4b71e44..7f65298 100644
> --- a/extensions/libxt_TCPMSS.c
> +++ b/extensions/libxt_TCPMSS.c
> @@ -91,6 +91,17 @@ static void TCPMSS_save(const void *ip, const struct xt_entry_target *target)
>  		printf(" --set-mss %u", mssinfo->mss);
>  }
>  
> +static int TCPMSS_xlate(struct xt_xlate *xl,
> +						 const struct xt_xlate_tg_params *params)
> +{
> +	const struct xt_tcpmss_info *mssinfo =
> +		(const struct xt_tcpmss_info *)params->target->data;
> +	if(mssinfo->mss == XT_TCPMSS_CLAMP_PMTU)
> +		xt_xlate_add(xl, "tcp option maxseg size set rt mtu");

Could you also translate other options in man iptables-extensions,
under the TCPMSS target extension?

BTW, please Cc netfilter-devel@vger.kernel.org in your netfilter patches.

Thanks!

