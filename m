X-GM-THRID: 6671279616502530048
X-Received: by 2002:aca:d702:: with SMTP id o2mr3198266oig.113.1553285402972;
        Fri, 22 Mar 2019 13:10:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:764b:: with SMTP id o11ls1663544otl.4.gmail; Fri, 22 Mar
 2019 13:10:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwDmGR9OY1frgB8Zo2zwEgAlZtd3jieHGY4Ahm4dwfnE9dUHjfmuiCQA4l8gdGnJMtgHXbf
X-Received: by 2002:a9d:76c8:: with SMTP id p8mr8754704otl.34.1553285402118;
        Fri, 22 Mar 2019 13:10:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553285402; cv=none;
        d=google.com; s=arc-20160816;
        b=WaCFh1lqB4YK0Enr5YyVFNFmzEpr6v8Y2LK8SaipgichkKmtg0iA9Zp4DZtR7FmH12
         1NdU07doJ1XPTuW6phlG2/wECLKV6lwAYp7xZCI9KlEsZ/vrM17J+pplsGgD7V3lOty/
         vVtRjD396h9YdLd4QkngeUzEKUDzlH5bK6viRuhQa5U1uG5SbNwvuWe+dQao4ifK4D00
         TVYh385WxsLUMalT1KXByLx//ziZbe+23a9BTjAwsAg3pbJtbkVmUP9tfEqoXTGi24Lz
         57lsi+jjEbZzANf+NYwu95RDtq4F39jWW3c02elCi2Bl5H+c1FtWX2P63sf7Dw5K/eNY
         UbfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=ANX3/F1JKEkgzM6qNtpj7RlwwAVtqTG1vtofz5I2Rrg=;
        b=yfII9oi9R8hnunF3ZCLdus8hlACXCBdhUzuUG19A8IlpwuYzG5hAU4W7uUQOVG0n9y
         6eAGVfCdsm+3/m5GpR9hAhZK/bVzmZDgg3/qqj38in7CAHpCNihcnsC5yMqM+sFV7hpo
         Hni/VJ9u9Bnc/WwMSbYEkbPSKymLnO2NzaYo8tMb0WMWxx1sBJpgJyxp8Dy6In+ViHn6
         hyBZHoX906x0EwstgD0xszurLO1FgRl3MlFCF4FKXQnWdX3ITa5tOyerCbiyUGpWkJlf
         GQQXYQiZcxsyCKBrwdDDmv/FxIfF+FtpLkA+6gZWbNAKy5yT+SE7GF/6f8vg3HMaJ5Uh
         touA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EEmjulW0;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id l23si563656otn.4.2019.03.22.13.10.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 13:10:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EEmjulW0;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id t206so2680984oib.3
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 13:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ANX3/F1JKEkgzM6qNtpj7RlwwAVtqTG1vtofz5I2Rrg=;
        b=EEmjulW06vRpS3i1mY0dRpbqFPxc+jGnGvAryElMKmndewu3zwWu9gtWH75NqPpPA5
         j7nWSigQ6aBgyAkXvr51COyShcjwJ9rg8rtllIbpAqGJIcSdN2+KFvHX5KZrXcJx2wOt
         tdBPtDPCYvGz2GBi/USGOr6CYvliEQ9E2fvJkJhYhfJ+idY2e1zbDhGT7kLqGEhGBoFw
         srch3BcrGwLdd8z/2C63NcbJvrW6FVh99z+qDbbvNc1KBtPMaAMifsml2UaLwF6ehHgK
         1bK70SKlqll5L2PaBMDJo78YFpUm0wAKcg4yRbepwdOweaCXdSv0qx+lP/VSjmBTtQrX
         bfuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ANX3/F1JKEkgzM6qNtpj7RlwwAVtqTG1vtofz5I2Rrg=;
        b=jqIjgtosIgp8yWibSL5BEJWzCZfUBS3nsDMAyMoaI5POWTJYnvqH3J1gx0fh/WwVPF
         UnXHEI9FaEKdZAlK41PtdYFxu7LIy/YcLOWi07ySORpOZ68o/BiEVb/CnfCB6pthi584
         ZJ7b7cTJF3WtvG4eOpGx55n7fcO6l4hoNspzjo/uf77xj9DDFvp6yBFZxRL/jQMDLz/G
         Mad1nkkEjkT5aCA9iUOgu3XZvoJBzCpiJVudQOr+CwKFjEAQWPWl9FLqYDco9HatDPrt
         18iNTex950UeKE8wbGh65g0NvfnU/PqXN7bmP7/qPgvcRzHzNH4oDvakhjY/lP72ZKMD
         x7EA==
X-Gm-Message-State: APjAAAWAEXQPp/jFiH3bNx/EnvMr9rxC10Yx2//f5Y2gh1y9T9T/vCqO
	xhv3qmMhO24rkXm1s3v42q/eGa1EGCk=
X-Received: by 2002:a54:4390:: with SMTP id u16mr3262458oiv.32.1553285401719;
        Fri, 22 Mar 2019 13:10:01 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:25c4:3243:c335:9f7b])
        by smtp.gmail.com with ESMTPSA id q6sm3355398oia.4.2019.03.22.13.10.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 22 Mar 2019 13:10:00 -0700 (PDT)
Date: Fri, 22 Mar 2019 15:09:58 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: media: davinci_vpfe: Convert macros into
 inline functions
Message-ID: <20190322200956.GA7299@madhuleo>
References: <20190322181202.6289-1-madhumithabiw@gmail.com>
 <20190322195351.GG17603@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190322195351.GG17603@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Mar 22, 2019 at 08:53:51PM +0100, Greg KH wrote:
> On Fri, Mar 22, 2019 at 01:12:02PM -0500, Madhumitha Prabakaran wrote:
> > Convert macros into inline functions, as inline functions are perferable
> > to macros resembling function based on documentation of linux kernel
> > coding style.
> > 
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/media/davinci_vpfe/dm365_ipipeif.h | 11 +++++++++--
> >  1 file changed, 9 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > index 4685d64016de..fe608be00154 100644
> > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > @@ -166,8 +166,15 @@ struct vpfe_ipipeif_device {
> >  #define IPIPEIF_RSZ_MIN			16
> >  #define IPIPEIF_RSZ_MAX			112
> >  #define IPIPEIF_RSZ_CONST		16
> > -#define SETBIT(reg, bit)   (reg = ((reg) | ((0x00000001)<<(bit))))
> > -#define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
> > +static inline void set_bit(u32 *reg, int bit)
> > +{
> > +	*reg |= (0x00000001 << bit);
> > +}
> > +
> > +static inline void clear_bit(u32 *reg, int bit)
> > +{
> > +	*reg &= ~(0x00000001 << bit);
> > +}
> 
> Did you try to build this and see if you use this function what happens?
> The compiler should complain :(

Sorry, I didn't build it. I will remember it in future.

thanks

> 
> As Julia said, I asked that you _use_ those functions as the kernel
> already provides them (and does it better), these macros should not be
> needed at all.
> 
> thanks,
> 
> greg k-h

