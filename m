X-GM-THRID: 6806459520499318784
X-Received: by 2002:a37:7002:: with SMTP id l2mr5871867qkc.372.1584783176899;
        Sat, 21 Mar 2020 02:32:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6192:: with SMTP id v140ls4933777qkb.4.gmail; Sat, 21
 Mar 2020 02:32:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsnf+POcRtZONb+GKv9Pj2tWb2aHoVsF3FiCvpYDKliBK5bA4mR4wiX6DwpVhKntBUwivYL
X-Received: by 2002:a37:b902:: with SMTP id j2mr12322489qkf.247.1584783175878;
        Sat, 21 Mar 2020 02:32:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584783175; cv=none;
        d=google.com; s=arc-20160816;
        b=eXppcxvdk1ojYga8TyF+RN/A8HAkUbGrK6sonYoGFsViWvtXkXckNhFZ3g2dAxTpe0
         5xOTDdB6B8X5oc/vTt61xsfTnmB2j/5c+9/qaT4DuKQ7DLy6ei/AdCEgf/hDNtiyEQ38
         50xOgHgF/Isxt0qNhnxjSLHaDS0LmL5lE24t6wjycIz11poxKc5HLpaeaYq1B8kuIjOl
         m0771zi9kSoQ7vcXtBcTC0OD0LxtgRnoPZmIuvCHTG3dVRG/qw2+RCbEI08VBN/jF6vq
         Q9AGZlUhLt373WWu+HtUjLAP7vlJpcHikPxuIU3L9wH9wyqtl3RHn8x8QYJG2osrapeT
         SuAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZF4ZQlRY7cE/bFdA9shsDNozU7InZtJIRmHdiCUBbKo=;
        b=kAstTGNCF9k2Ze8jDfJOT6xU5awDZaQqgyVuqLDoxWeH6fuM2MHUpzpBQ274l5FBDV
         9yvqDrSPQ8k1qdCfdSwEwnAj0Lo4dyqbVmaM91UJAn0GXl0yslUGEV1bqVlb+KpKHwkd
         qlyvJIFu94U1Opksq0P7KWEFOAggEpZHLdSXalmKd15NW6GJ0b9E13GCyYTuI+xtLvdn
         DhlmKbtAQVlsfNZhhxdhsZmCWiD52ES86ui2EI0iwiTxWB8mCyxF4ySnthb6b5zIV3BE
         CUviiCcCo+sPf8TcsiIpdwR1YsN8raEeHk2OXJZt4Tc707TzQYxFkAby9CIEx5EsImud
         /PMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lN7nItUt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j56si248903qta.0.2020.03.21.02.32.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 02:32:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lN7nItUt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5674D20739;
	Sat, 21 Mar 2020 09:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584783174;
	bh=ZF4ZQlRY7cE/bFdA9shsDNozU7InZtJIRmHdiCUBbKo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lN7nItUtG5WTHGIVzcCbmxN7sFPMa0P5KYban66n29QuSDflR6Ref+kJxowvUkfcE
	 88+HvN6BYMJCf7Baltz8MAr/5qOZcUQaRO+nx4yNZwkxuE6HfD2xDz/7Nuj6SqpVt5
	 876WGYMM8/Js+IuVirIhTT30zdnqxceRVPRJXqQI=
Date: Sat, 21 Mar 2020 10:32:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: hp100: change ---help--- as help
Message-ID: <20200321093250.GB917692@kroah.com>
References: <20200321005907.GA15206@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200321005907.GA15206@siyah2>

On Sat, Mar 21, 2020 at 03:59:07AM +0300, Gokce Kuler wrote:
> Edited ---help--- as help

That said _what_ you did, but not _why_ you did this.

Please fix up.

thanks,

greg k-h

