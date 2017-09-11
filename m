X-GM-THRID: 6463032628218953728
X-Received: by 10.46.0.222 with SMTP id e91mr857665lji.21.1505147102211;
        Mon, 11 Sep 2017 09:25:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.65 with SMTP id i1ls312047ljd.43.gmail; Mon, 11 Sep 2017
 09:25:00 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDCE8Zn/rEnV5SmuTwwPIM/UMD5cVezTfkfz3cwytZTB9LYEOxVTkcawoJsbbeRJeeNm1gd
X-Received: by 10.25.150.66 with SMTP id y63mr904900lfd.23.1505147100909;
        Mon, 11 Sep 2017 09:25:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505147100; cv=none;
        d=google.com; s=arc-20160816;
        b=Z25lnTaeMPIyWwih3rTvY0WzCDEdh5XHMWbZnwvs/VJr7ewYzf8m9ebCqDt2xP6ezl
         hUTHsvGSPt2CnpBxHkPVbjztbbk8cmoeV81Jo9ODDLQHgp5b1+AJuy+i7wH8eCviVKhc
         BAUfqHuxo39lGKFUhX5Ro6XGYPIdmU05pgjohHcXn07g1c7xWnG4iLyzgzIESod6/gZw
         Puns5PHO5jNCCmdQTXWhsQJVdqd9zoYllHYy6jJGEXIEtEcWIEofgwkDvcXD3G+s8N8J
         E/xXvrRIe4en2RC2BAdOVQUVtU59BU4IKrOrqPuULHu1ISopVAdlVk+DrlEeSJ3V94nE
         WaTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=HIdG5GNOCSdEr5YzV3pJ/FkcpYQdjH7lq1zxmC6zMYE=;
        b=FRpjP3zk61sb+9Xrpqm6HmUVYddoLlEnQ4HjQBAjweOEeneuss0bIcYhxDUMlsU/co
         BY32d3cdwtaa6TrbgCH8FFBT+bK6c5HaxPsL5SDtRQ87VSO1iW592dBj0tJXuB3c36Z/
         JY/NzRlNc1tZmYuARrRG5mxVz9VKsRWsCk7CXzeXVJdMyVJ5uDVUZgevTgbADZIapo4L
         O6Bq8e76t8yUzqd3pnqC8amIHdxsOCu7deOqwaqsSXUYavXJgsSbPrnYkzUceUXxqmXp
         zzkmQrV6M7R1JOIrBhueHfjc7Zr29hr/AqdTa3UUeTMOVABgCyckqlXvPM3dhXclyUCQ
         1Gew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c142si626329wmh.3.2017.09.11.09.25.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:25:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 57E1E89E;
	Mon, 11 Sep 2017 16:24:59 +0000 (UTC)
Date: Mon, 11 Sep 2017 09:24:58 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: gilad@benyossef.com, devel@driverdev.osuosl.org,
	driverdev-devel@linuxdriverproject.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	linux-crypto@vger.kernel.org
Subject: Re: [PATCH v2] Staging: ccree: Prefer using BIT macro.
Message-ID: <20170911162458.GA24025@kroah.com>
References: <1504793692-8996-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1504793692-8996-1-git-send-email-srishtishar@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Thu, Sep 07, 2017 at 07:44:52PM +0530, Srishti Sharma wrote:
> Use BIT(x) instead of using (1<<x), reported by checkpatch.pl.
> 
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
> Changes in v2:
>  - Add tab spaces before BIT macro.
> 
>  drivers/staging/ccree/ssi_cipher.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

This change is already in my tree from someone else, sorry.

greg k-h

