X-GM-THRID: 6751912583325810688
X-Received: by 2002:a9d:1291:: with SMTP id g17mr13616442otg.76.1572277467004;
        Mon, 28 Oct 2019 08:44:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:84a:: with SMTP id 71ls386501oii.11.gmail; Mon, 28 Oct
 2019 08:44:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxP7/NLDM17LzsBYru5Ploc18iDezeUgzVMRamV7JCDqjmvqVFuaaACEw4THp3bLvCPzdL8
X-Received: by 2002:aca:6702:: with SMTP id z2mr561514oix.2.1572277466131;
        Mon, 28 Oct 2019 08:44:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572277466; cv=none;
        d=google.com; s=arc-20160816;
        b=c1CnYHQr56/iSJTAXQZL8POOMC3UWZGmXpCTuiEpAvBsMRAI+YYHH6N8r9oNzWZleE
         pHE3uG2IEYHniNXDfPr0nEtPfmjc4Cc1XzMdLmYKg/UgqDqNlNveQSl/SpJgNJvGGYBN
         JJ62hhO0P+rPCSUgo3jOgewTokY0rK+wnnGPctFWKYMcMyErEesttZUKBIvnWCf8T+7G
         y8/QnjwGQ+RJSRd1NPwznz51vqQYAxqiT/oePRELfMZ/MJnzImGREucJiNKj4uHM0dpl
         I5DWoSuh+0xCDiPgxCs3rhZHIqHvSKJcy7VuaQZsdeWNmCZZtEsWBPkchlItqOwB61ZW
         oh6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=x+EGa8xgk3Wov2vyTNuG3iIP66sxQTPTiZGwedCF6AY=;
        b=f6dXX3TG67wgvCxLxDRahWZ2RZMwtG7OuSzbJSkOcvPNfJsa48aDP7eCDhkKr0dofn
         4enfIdLR2JbkrcDyGVTMnR3t+6bXQpDkjhAcAmDOXZMuKFAvXyUSIfyY0mesZoyJ7Atz
         b+4xEWaWN58I3jM2F64cs92oTl/ihBJCV8dWMCzvDeZR0J4FnjQPQLltenyBNF0xbHyk
         ngHBv4sid+ERv+n5yIE8Th3xQCER7BqcW7N6V1m5RDIVmdJ8/DuAdNw7578nUw42C6+b
         J6zCVeyaOFA7TgmSNnckxx0trHp1tA3RMRdeL6UBjIwkihLqgAPVfX6J5QK+J58oLrb1
         W2qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lxr5gjwt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n63si487782oib.3.2019.10.28.08.44.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:44:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lxr5gjwt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [91.217.168.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D7C0421721;
	Mon, 28 Oct 2019 15:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572277465;
	bh=Vw6GOlLIyJWbHl6tEVCiGyfOHiOuVzP1YEeoEouPlrI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lxr5gjwtJws1NFeA95O9WSVj2uSK/rojrJTVK2xhh+mVH/CLQJDiZ5+PA94LPgbgb
	 huhy7AyJbIM9Yl7YUmv4dOq+lbNbZpIE/6PI6qQkmM7uxe+/lEkSzxyJIG545ytvh6
	 cDoQJiZs3NnreiGaTfBO2YX406o9LXXpAKGicejQ=
Date: Mon, 28 Oct 2019 16:44:22 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>,
	Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [PATCH v4 2/2] staging: rtl8712: Remove lines before a close
 brace
Message-ID: <20191028154422.GA170402@kroah.com>
References: <cover.1572276208.git.cristianenavescardoso09@gmail.com>
 <359179720fcf90dd7aa35faab5d074bc829fa192.1572276208.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <359179720fcf90dd7aa35faab5d074bc829fa192.1572276208.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Mon, Oct 28, 2019 at 12:39:08PM -0300, Cristiane Naves wrote:
> Fix Blank lines aren't necessary before a close brace '}'. Issue found
> by checkpatch.
> 
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_recv.c | 2 --
>  1 file changed, 2 deletions(-)

This patch did not apply to my tree, it was already present.

thanks,

greg k-h

