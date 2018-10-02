X-GM-THRID: 6607744026526351360
X-Received: by 2002:a62:f601:: with SMTP id x1-v6mr7439902pfh.2.1538498220463;
        Tue, 02 Oct 2018 09:37:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9687:: with SMTP id n7-v6ls6326123plp.10.gmail; Tue,
 02 Oct 2018 09:36:59 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61Atg4uiWVK4RkfJjoIYVUyunxLaQO83pXrTre5v5U/acOrmtlmEWt5GVx7olWyw1l5xZC+
X-Received: by 2002:a17:902:8c8c:: with SMTP id t12-v6mr6669247plo.44.1538498219854;
        Tue, 02 Oct 2018 09:36:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538498219; cv=none;
        d=google.com; s=arc-20160816;
        b=nvR/4phHN/5W3Hf6v9cNghsBpD6eLl5G1EF2FNJc8lRfGG8U7vs2gs8VJronGX8A5G
         GYDVGoju3SNs6bH+pPfZWitGEXSg3tr2sOv7/MqZxihk4oo5KnyknfQJ34pJQvNvEkau
         AsGQLUPS7XK22ffJr0UbeI8BKqzm5xEfvtAgoX94RmbWyZz3le/uKcsunnBCiUfQ0CwC
         ZN6Nuf3bLMz8otvg57u9T7sQIogg8ehiJ0+E0jurFd5DuJNBl4bCyLzm8Nq5pwzwCZRi
         gp5M0UngX4nzAPc4FS9sNomPeEABpob7tybbM5E3J+Bv77jpioaZFw6AHBuKv+InLFLA
         R5Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=11ow3Bg8zLcJj2HZxvqn1/BVxeK4X0+lEIXccK/VOSU=;
        b=mrlCHK7xEy4mRsmqJXeqxW50nmGJEoeYMAhAX3rjucgZLI/ZWvASXulTv1eVbLbZgL
         fyAxEI6GC60M6iwKNY2GBd27Kn/5RF4tYM6vPKl+ocF43+q7BtxCTayaKgpldkV1DV5X
         /EZ5IS7eLnLIZ9tQCsgeDhwzH+AKk6kuY5GRP9nCxPjf4mnZ697RInH9ke+yWC7CO1e9
         AlRradJjOqUqdgrAxl0Wgbs9tSo0RkEV2UEUfiPBSZ8Otbudp9bekJ02cCTHuTS7ZRp7
         jLw5IlkC+H3h1aHj07HE1NtDz1LKipJElVEzKDnQ5aTCWMJrkpzECZE7B3CF+f+HYTxu
         KERg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y7-v6si672329pfe.1.2018.10.02.09.36.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Oct 2018 09:36:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [64.124.202.226])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D449E67D3;
	Tue,  2 Oct 2018 16:36:58 +0000 (UTC)
Date: Tue, 2 Oct 2018 09:36:56 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Replace udelay()
 with usleep_range()
Message-ID: <20181002163656.GB11068@kroah.com>
References: <20181002130124.GA27163@armorer>
 <alpine.DEB.2.20.1810021505480.3460@hadrien>
 <20181002131306.GA32586@kroah.com>
 <CAMNCNOVLEDUvg0RAT_ZP2rBYtR4VSkZRP+i+EdbmwcB+-E4EDQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMNCNOVLEDUvg0RAT_ZP2rBYtR4VSkZRP+i+EdbmwcB+-E4EDQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Oct 02, 2018 at 08:24:55PM +0530, Mamta Shukla wrote:
> > It is _required_ to explain this.  This change comes up every so often,
> > and I keep rejecting it as no one knows what value to put here that will
> > correctly work.  So I recommend just leaving it alone unless you hav the
> > hardware and can test this type of change properly.
> >
> >
>  Thank you for feedback Greg. I understood the hardware dependency for this
> driver.
>  Is it possible to remove this delay ?

It was probably added on purpose, why do you think it can be removed?

> This driver needs DMA accessibility in Linux.

What do you mean by this?  What does DMA have to do with this driver?

>  So if one has to develop PCIe driver for any processor(intel, altera),
> there should be different driver for each platform.

No, that is not how Linux drivers are written.  They should work on all
hardware platforms that the hardware can be plugged into.  Any
platform-specific issues are handled in bus-specific or architecture
specific drivers.

thanks,

greg k-h

