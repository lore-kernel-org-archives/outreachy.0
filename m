X-GM-THRID: 6675276130832875520
X-Received: by 2002:a25:2c89:: with SMTP id s131mr2702034ybs.83.1554210550254;
        Tue, 02 Apr 2019 06:09:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e684:: with SMTP id d126ls907395ybh.13.gmail; Tue, 02
 Apr 2019 06:09:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxUzk1Pm38L55mwuCcHCCYmL/IXXvNR0HHGL5xJcHFcGFEp47l0z/W7QQEGs953GE6ot5iH
X-Received: by 2002:a25:481:: with SMTP id 123mr6365084ybe.96.1554210549363;
        Tue, 02 Apr 2019 06:09:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554210549; cv=none;
        d=google.com; s=arc-20160816;
        b=oBrgdM0YUFKViUguGfht4hkpLkGR1tLuXCXAhfu1P1q0wSkhTmDTzLjhGUkx8uvEKb
         4bK+OXCZoaZeRX5qGOOFBgPDe7nhZaheNrjaTnmVcFT+RowjdaLxFHHaQSSgGWsd0rYF
         seY8SLOTGgWpHWynpzECvx8Km7OgGV63FFgzMUKduzMqoy6OKOdk9nvIdKMQdNciUiPT
         9lhBskd/1NgQF5Ba1JT1MzBqK2yOFVfgT1w1By+7cnzVcmAaVMLATpodNsnji7CRpnOr
         F/e/tdYD495sFUOTBkplO3z3JHN5fDt72QzMhOco81oIEi906VQJlZsBqKFFawY7sRa9
         AiBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=9kw8n9GmyGkkYfMQV+kkE0uOsWnd5Fdgaxv03W4RIl0=;
        b=uc0+94XQTctSHQhhbPF/bIg6Y+dHuo2UUsM6/TK5LDjQypKcj8oIgTfYowsj8hP27s
         YkKfGp2KrzYbVQo7kgY0LdsZZ1ntn0tZQmXq7ZqsaQMDvDhxj6+zqcqiDYD6RTwQEGJg
         s9tKTWfGCEJay0ek0dEK88V1y70AcynUaYaQziPx8wygoSOsWotwbdyUagb2jKojZflq
         4K7Y3K1IsDXtaee9PPKeZld+S9ZejLa03Q9IU6csUGzrBmuiNVoaP/dARJMXZYjBLbpM
         EXkUH8VMfW2jvfU6KZrnBofT1YByWaEaKCc+/QV2HXnlPU6H5fjtYHH8+lYQwkI3YrqO
         WtTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=um7g+ym0;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="C/oAzSnq";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by gmr-mx.google.com with ESMTPS id e3si48959ybq.5.2019.04.02.06.09.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 06:09:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=um7g+ym0;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="C/oAzSnq";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id C70BA220F1;
	Tue,  2 Apr 2019 09:09:08 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Tue, 02 Apr 2019 09:09:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=9kw8n9GmyGkkYfMQV+kkE0uOsWn
	d5Fdgaxv03W4RIl0=; b=um7g+ym0damgB5B6kAE22BpeKJNZ54TRTjhOUZ2lzYS
	7s2yrYVVlelyCr0LCAo+an1jduGl3xsLZeZjVXu854rWqTcUqbLliqYWVXlzj9sG
	oBe0JXfcOkdluYpVWLRVh90LnVAigY4DXk2zEMVMBKSG9GhK27m5EKvcHyqF65rn
	CFY+a/fxM/K2F8UfBzK8COMLXo2e6KBEto2HgH7k0lq6T5SoEEN0oEfosQxhPbb3
	FlJYfBpb6vKeUsGB0qqrBykgZP5Kzu5LevqLROyL4Wh6WoLOZuWb4KJNw5UAOGdN
	zFNyHXd76InYz/YkSHIxiJaMIuZxwJU4qksa4Jls4dA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=9kw8n9
	GmyGkkYfMQV+kkE0uOsWnd5Fdgaxv03W4RIl0=; b=C/oAzSnq20tYpfGu7LLG4A
	HzGR+xUf+q2ihTYgWMvvJGY3/VpyaedIjjLif0PcDYC/L499cOYUJIZ+Gsh7kqTg
	xP4cDJNAk0DBZrtvqCQPj0YJhsq6s/PZbyvuhBHUbBe50vSgtjqqQVHue4wa9R7r
	yFX1I3XEZYeZooGW+C3mBiiVgEsALPiU4CnatS4O1fmB/lSeAqAjytBGomW2VgW4
	PFpOx/AomvCav7FQTwm2W9k2PKNRQvtw+2g3E0jIzlm3zLI7IJniGdA61Avo3MXE
	1u3bLJTy8vMOMbtsVpo7EYn+PHr2FudmCp0jccraWdFwsGKX0j+DRHRJIn+tD6LQ
	==
X-ME-Sender: <xms:9F6jXMWycwuMRZBQNg5zZYDMvTFDhefLtgpspmE4KbEkjqvn-QOVdg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrtddtgdegudculddtuddrgedutddrtddtmd
    cutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfsehttdertddtredv
    necuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkph
    epkeefrdekiedrkeelrddutdejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvghes
    khhrohgrhhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:9F6jXMa7QiPNXPDCbureD62XZcsTvn00uxNnchmOiPkuSieNJ9cj9Q>
    <xmx:9F6jXG37DOK8qczcIo5Lrg6wYVlOH_0dOS0kgSyXti7hHWGu6iF8_A>
    <xmx:9F6jXIAAEszZ8a7Z8SafUx9fVBKCSucu1fk6tzs_rT3VYoLRVIp3kA>
    <xmx:9F6jXDFQYaOWxT30qmskv6e6QKo2OTGPJ3tYMYNkGwJodFLYAJR4Kg>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 0905410398;
	Tue,  2 Apr 2019 09:09:07 -0400 (EDT)
Date: Tue, 2 Apr 2019 15:09:06 +0200
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: rtlwifi: base.c: Replace
 bit shifting with BIT macro
Message-ID: <20190402130906.GB32338@kroah.com>
References: <cover.1554208601.git.payal.s.kshirsagar.98@gmail.com>
 <629f050185c487686882839655603a6804e03ce9.1554208601.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <629f050185c487686882839655603a6804e03ce9.1554208601.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Apr 02, 2019 at 06:10:23PM +0530, Payal Kshirsagar wrote:
> Challenge suggested by coccinelle.
> Prefer using BIT and replace bit shifting with the BIT(x) macro.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtlwifi/base.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
> index 35df2cf..e9830b1 100644
> --- a/drivers/staging/rtlwifi/base.c
> +++ b/drivers/staging/rtlwifi/base.c
> @@ -2446,7 +2446,7 @@ struct sk_buff *rtl_make_del_ba(struct ieee80211_hw *hw,
>  						  IEEE80211_STYPE_ACTION);
>  	action_frame->u.action.category = WLAN_CATEGORY_BACK;
>  	action_frame->u.action.u.delba.action_code = WLAN_ACTION_DELBA;
> -	params = (u16)(1 << 11);	/* bit 11 initiator */
> +	params = (u16)BIT(11);	/* bit 11 initiator */

Why are you still casting here?

thanks,

greg k-h

