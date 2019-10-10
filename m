X-GM-THRID: 6746031998697996288
X-Received: by 2002:ac8:5299:: with SMTP id s25mr8818861qtn.316.1570697960954;
        Thu, 10 Oct 2019 01:59:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:131b:: with SMTP id o27ls150222qkj.12.gmail; Thu,
 10 Oct 2019 01:59:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwzd2EsUvSq34S/MNMmyLAEioTH1UgzJ9mfBqPN9ezSEPdJWjL+gVsIOvIlr5IKuVvNju1y
X-Received: by 2002:a05:620a:530:: with SMTP id h16mr8759638qkh.396.1570697959838;
        Thu, 10 Oct 2019 01:59:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570697959; cv=none;
        d=google.com; s=arc-20160816;
        b=j+6U6gL1cDmYfb6t2if2/i/6h+8v++fIhOLKPpMRYI+HC2Bh4VTU2J/AOnJM2hi72O
         SDE2Pz5MRT+i8fnlwIupzw5eCS04eXeJejapn8S2C/xlKUnlwgj7hI9bJ6S6WezTTHJa
         tECFU0JqtShsU8XhXWFdhaLgMakoy+WYBwlmG7j4AWToIFx/FzLE4mfJqaknrVwG5P/g
         AOZ9V+vsOHSsjukRjJdHrdL3dFz9Uh0VK4n5Lj+MZZCFqVSy/5PX9HefUgOZ1ytJy8fW
         jv+ivgYrBn4uqzWH9Yf2Xuaw2Oq0fhh5rY7/y3F/c1TNJ7GQmFHdp4e/bRLHLdHSRkuk
         sCXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xDl/xGwOpIWqypdRu4yV+O3dTq9xJP7yJjhoONGdPpM=;
        b=xfWLEN1q++rxPEmT/ViGfjNEw2bGwGhyF97nlB1Wefl7w4NegNnV7s9YWB9fQRCPTp
         Mabcm6dWX16ufCelC75Jthjx5AEP60kzBzhh41rO38S+IZhjGgR10Z20W1Uh8oglq5cf
         TvPBoZJA0/hpy0eTzmqtSGXO3aYp8Z84B92fOsSLdANb61BxG4Wk6XrxsOAfqYj8K5YV
         DbrO/4H7EUMQE831P75jqx3EPpV5qDHxA1aU0FrXKCQe7OXToeJFZVGxIjSbqg/T/gNH
         +QqLC1mbW0U/PSwvIGprzjTPS0opngu49lOu0Xx7eOU+Dtry+mqKXUIzNoLXBoiubkkJ
         rYGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GRZVyrNB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o8si135503qtk.0.2019.10.10.01.59.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Oct 2019 01:59:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GRZVyrNB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 35F0D2190F;
	Thu, 10 Oct 2019 08:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570697958;
	bh=CBsMU142wfX9FybWwG+uuFeTqNtLpXx3v2EZPchDETs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GRZVyrNBrGhWLYx+dXPGzcSkHO5EWb2PWUxkCozfLTkecgnW2NQSIOMqAEsV6hrsK
	 qsqityIn/xOoTRUyi8dLC9nLvBOLTp+fNbtv1SR/SM2HeidX+etktZ386rhw3Kw2yQ
	 04ss6LkG6iXRyVRUJswRulPJUXjMx9xZyBl1frXA=
Date: Thu, 10 Oct 2019 10:59:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Wambui Karuga <wambui.karugax@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] staging: rtl8723bs: Remove comparisons to NULL in
 conditionals
Message-ID: <20191010085916.GA452879@kroah.com>
References: <cover.1570682635.git.wambui.karugax@gmail.com>
 <da71920fa80298badcced3519f2b84afbdd28a7e.1570682635.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <da71920fa80298badcced3519f2b84afbdd28a7e.1570682635.git.wambui.karugax@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Thu, Oct 10, 2019 at 07:49:05AM +0300, Wambui Karuga wrote:
> Remove most comparisons to NULL in conditionals in
> drivers/staging/rtl8723bs/core/rtw_mlme.c
> Issues reported by checkpatch.pl as:
> CHECK: Comparison to NULL could be written
> 
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme.c | 46 +++++++++++------------
>  1 file changed, 23 insertions(+), 23 deletions(-)

Due to lots of other changes in this file recently, this patch does not
apply, and so the rest of this series does not apply either.

Can you please rebase this against my staging-testing branch and resend?

thanks,

greg k-h

