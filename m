X-GM-THRID: 6671279616502530048
X-Received: by 2002:a63:ed53:: with SMTP id m19mr10182123pgk.78.1553278729491;
        Fri, 22 Mar 2019 11:18:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1281:: with SMTP id 1ls4128770pfs.4.gmail; Fri, 22 Mar
 2019 11:18:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzDmkDX92LGq8XWjBIQy9TWbHx+oeMuHabtUIRgCMy4Tw99eIqou9GDjrT92UZgG+LSsUIF
X-Received: by 2002:a63:f453:: with SMTP id p19mr9756091pgk.232.1553278728730;
        Fri, 22 Mar 2019 11:18:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553278728; cv=none;
        d=google.com; s=arc-20160816;
        b=FyY4LZUDIfAzlryN9vyiO4hSs58NHCxbV73oOzxtBBgCQGE8cM+Gt1x4ifp5VFYaAB
         kUAla3cYDpousXozST++eluup+mswK+R7eOCZh5EpmA+AhUEx/Xe6ayyH9cxLxvoiLjI
         Tjw/emNeCHOG5DavZRVJ6RNN1ugzCqGtyC/UDXyi0iEbQziXI43APOoGxnI8vK+VnM8H
         Zcz+It0+JvyGHn1rmlMnaJfEufbP99pe94UJ5eh2Toydo+7yQwQXIAeHataTTrLuozse
         vOAkwJOWjIAlceXGdPPQeZSy7kv1wdLqZx55bze5diMl2ugYg9UiwyManvjFa6ReCbrW
         +wog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=rg3Fy3oS+aSnv+wYPwS0QIDIPC7FmjMvPt3OLGNlvWQ=;
        b=MEujrWF8WvF9dmI0MTifGCNg7iwnYspKsLkPPSU59hAH9ffxSY9YihCbB7t86uNhLA
         1KjmNYrOLH9BxGEjAWbKEP2gpLNFXLh1aBKZh3RHV4Pd5kMYpXlkVie6xsdqvtzGFn0M
         jWXjV/TNB7I9+wsfmrL9dNLUV3AqFgOd616Xjw53VDUj0NjAugyPBssLWolbxHaea57l
         SyWzfACp1UqweL8gKr/iyONXJnFTGDiGdGGvkQQ2b5MbtsoKy9tSx5ymF8+XbkX8fIvL
         vS1H7wXcYljs3io3m5m4RJyqhwB0u/XJgthfW9p/q/xh2D47lHiTWuxb1fjpEyWvAMBX
         tReg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jDfSyBjC;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id r133si569213pgr.4.2019.03.22.11.18.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 11:18:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jDfSyBjC;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id m10so2770678otp.2
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 11:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rg3Fy3oS+aSnv+wYPwS0QIDIPC7FmjMvPt3OLGNlvWQ=;
        b=jDfSyBjCNm4ZQH0kDLaxf5m/0qygBpNeE0ozQ7sXUjDDrlPh0BhwPr7ipOY5ek63j7
         VvghdfdrQA87wR5n5NJAPu+y7IwHR7JQk26lfJMhf5BPF0WLkHUtFeOWcw+24Y3jqLN7
         k6SOo4yoItDLwmvOvKvXVxjYQ17NnJAgDDTvxOk4n6wCyY5GLSwKUjvqJCemw4qEE79L
         TX1xEmV45B6LjT7NMt8lLSVkuu/tqTi3QlavxRxcfj+p846/pAo5GawPkOLf92KMef76
         yNUonrOzGCFWNIpnlcwbL8lba8VFyu1lHv3TNAwibFeheEhYXIqlypv4qsTT9KdjkNr5
         ULFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rg3Fy3oS+aSnv+wYPwS0QIDIPC7FmjMvPt3OLGNlvWQ=;
        b=jgBzcZmn8LZxSj++b2tmGhhnW5ejYxdoNLHBNmGAPygsew7+ZOVLOR4CCtL1PsGkBj
         ZJj3cmx/Ug77GyStXhSaZKh5hZXOYcpPMvGD/WXFX1sZ5NFkmti0YxtNH30xfoFvJAlV
         7SMkx30YZZ96BKIy65QAeZc9JJdrbeE2F+58BVGuKU5A0WnnH0wJjcozLlo9y8ZJq1S2
         B59FJEC4DxVG8wYctMwvdzQhHGGKuSDC/nd9oXRnyw+3f+ECVGX44CGFo2iwo/FiorCv
         MlsEfgvC0katVlsqYqr5q2O8Rs4wUF5My6Cq822ozwmATHsJEomznV/vf5CbtlbN8xzo
         r/OQ==
X-Gm-Message-State: APjAAAXIVtzHZwihARnjQbgWA+K4v3beNXQl22cnBPGutaNP97Ehrhkx
	kTZOctTfbue0QaBcXAQrTVRkgBPvLdM=
X-Received: by 2002:a05:6830:1398:: with SMTP id d24mr7694561otq.104.1553278727948;
        Fri, 22 Mar 2019 11:18:47 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:25c4:3243:c335:9f7b])
        by smtp.gmail.com with ESMTPSA id l18sm3208411otp.74.2019.03.22.11.18.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 22 Mar 2019 11:18:47 -0700 (PDT)
Date: Fri, 22 Mar 2019 13:18:45 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: davinci_vpfe:
 Convert macros into inline functions
Message-ID: <20190322181843.GA6363@madhuleo>
References: <20190322181202.6289-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.20.1903221912550.14339@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1903221912550.14339@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Mar 22, 2019 at 07:13:35PM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 22 Mar 2019, Madhumitha Prabakaran wrote:
> 
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
> 
> No, Greg suggested that you use the set_bit and clear_bit that
> already exist in the kernel.
> 
> julia

I was checking on that

https://www.kernel.org/doc/htmldocs/kernel-api/API-set-bit.html

But, I wasn't sure about that.
I will fix it.

Thanks

> 
> > +
> > +static inline void clear_bit(u32 *reg, int bit)
> > +{
> > +	*reg &= ~(0x00000001 << bit);
> > +}
> >
> >  #define IPIPEIF_ADOFS_LSB_MASK		0x1ff
> >  #define IPIPEIF_ADOFS_LSB_SHIFT		5
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190322181202.6289-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903221912550.14339%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

