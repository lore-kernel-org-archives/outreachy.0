X-GM-THRID: 6948695492025909248
X-Received: by 2002:a05:600c:228d:: with SMTP id 13mr7356961wmf.49.1617873057017;
        Thu, 08 Apr 2021 02:10:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:3511:: with SMTP id h17ls909105wmq.1.gmail; Thu, 08
 Apr 2021 02:10:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJywRAmHx6s1998k4tPI25sjPIGXSt8CJUdDlUBWxvcvq794ma2B3V0nbWD0QoewFCjGXWWr
X-Received: by 2002:a05:600c:ac2:: with SMTP id c2mr7511928wmr.23.1617873055465;
        Thu, 08 Apr 2021 02:10:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617873055; cv=none;
        d=google.com; s=arc-20160816;
        b=cYLTkea3Um690BABX6/5kkWGu3J2rmCeNjmyVFEKgkhfYmj4HyDAODswXzenzNqjtR
         A7hSZLoY58SfF+GCzv8iKH4huCCKdDLUJ9bzOOIv1XJLmEFfnleo4JAi6m2gk28zcM8V
         yxnAOs4OM62t6l63PO+G9IKPt0/TbWgw0eHZzxWDJ2AapM6ZskqY6Rh516EJ87NCeoYf
         5wqsUfxsWGVwNekWvQJ3KKgcPGIIsM3Lfupc+gF7r07l5kuohblaoXx/9NVUCZq7Eqvg
         WcpxwRWI3ctosnFFmKKlf5XQSKWHmcj2ABSqqqX4+N6FtKI2LK0drJ+teCAVHwbX1QYQ
         DXKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1cebnpBVTUp19RdwzFmR6GsyPKlfHDikB45ydVihbfs=;
        b=dlqRfvs7PYfGNaE+w7+3sWphhMkIOwbIqWhjiRDm52VWGSu7jmilbiRiCq7SZ6G11y
         2I47cR7TX8FMe8q/KAM7vOqxyIRStK3ELaZi8wHmZxkTRnPrx1J5APHTxIzt751MTIfY
         sEWK8UzHgAviVQmNqgfvq+m++avUMM7cwjBJEKKfZ8C/TdPNRheF1JVhkrU48TngH9Mt
         rrR06orz1ax/OjIlKqwEh8unC3Dd0NQl33Y4zt1ybjKaPNR9jTsooBpoI8OEMnv+udmv
         almcF7lT5zYiDAsBZEi2aJ2NV4Q1MbIQCFqALZ2XbJxP7pnz4tUh3/tZhtl8P1MHWQRA
         tzJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jvhOcjxh;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com. [2a00:1450:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id l8si2101198wrz.4.2021.04.08.02.10.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 02:10:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) client-ip=2a00:1450:4864:20::62d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jvhOcjxh;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62d.google.com with SMTP id e14so1744288ejz.11
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 02:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1cebnpBVTUp19RdwzFmR6GsyPKlfHDikB45ydVihbfs=;
        b=jvhOcjxhOgsQBBS5Km0GfSfMVbsV6jIYjlZ6C5yGROvR3tO8to08j1y84xEmcnk4MI
         7Q6MEHoqhNpc03e3cecctIRQLxUj3flh9oPoTZHW9iiEuqD4KZMgm61wgX740iEX+V+Q
         cdT1Dx86BAe0DoKs47BGfaffGkO7UtGCAWcksJQvgDQud/+5YbiM5AVYiT5SN7KJfJGW
         brVqQfCTJ1QYHxu/t3ZLfPlxZaB9gZP99g6NMsNTZ81HaU+C/JP44biQMe19tLQAvKR/
         vW4x3VKnyBUR1TE91zI1N6aXFuldV5gvqlxq2/6qHZ0mM8XeqoulDd4Ojeb3VzWXldLX
         rQug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1cebnpBVTUp19RdwzFmR6GsyPKlfHDikB45ydVihbfs=;
        b=KdM+N/HXZmmCwnUk8PpFJ5B6q4jLOXdojeKCOmOUSN6ngR1tC6mdb1OGy8DlDGnotf
         6FHpiuLddcEC66gZNujbbM6LyZvmhyCVe8QBVlTzvuuavXZRPTRUSKk90wNcNoEO/n6C
         +1rNbqrthdHpovjGRVpgTUYgrGNqiSIH9YhNFx5ndGyX9YvmitSSbEYnoRtcO/jqxvOO
         KAE2eOfA36vxQ2bpmovlmsJGDN5VAKmP0tHA12se9cDW+ORScA5x8NTo+rJ78gC/e64w
         qHfes9wLW/SFjJg9oCPPCA1uaEkfsbraFT+f0Aky+FR/kroDTHshVoTjHYSvOEZ5ZOeR
         Rsxw==
X-Gm-Message-State: AOAM530LUGKhqusfNG/bpKOCHRfv3E+ZyL1UPEbO+yRn59Eb7w8k1c+N
	ErYa8NLFM47s3Gb1iMlhqbE=
X-Received: by 2002:a17:906:688e:: with SMTP id n14mr9011306ejr.439.1617873055302;
        Thu, 08 Apr 2021 02:10:55 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id o17sm5644526ejm.13.2021.04.08.02.10.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 02:10:54 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove camelcase in several files
Date: Thu, 08 Apr 2021 11:10:53 +0200
Message-ID: <8385147.KfrnKTb6Rc@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104081053200.5197@hadrien>
References: <20210408080714.29481-1-fmdefrancesco@gmail.com> <2284292.R3b5UFg5HO@localhost.localdomain> <alpine.DEB.2.22.394.2104081053200.5197@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Thursday, April 8, 2021 10:54:09 AM CEST Julia Lawall wrote:
> On Thu, 8 Apr 2021, Fabio M. De Francesco wrote:
> > On Thursday, April 8, 2021 10:36:32 AM CEST Greg KH wrote:
> > > On Thu, Apr 08, 2021 at 10:07:14AM +0200, Fabio M. De Francesco 
wrote:
> > > > Remove camelcase in a symbol that is used by several files.
> > > 
> > > What symbol?
> > 
> > I'm not sure I understand what you are asking. You mean
> > that I have to specify the name of the variable that I changed?
> > Or you mean that I shouldn't use the term "symbol" but write
> > "variable", "function", "macro", and so on?
> 
> He wants the name of the symbol.  Each changed line includes lots of
> symbols, so it is a significant effort to scan the patch to see what
> symbol is being changed.
> 
> julia
> 

Thank you for clarifying this topic,

Fabio

> > > > --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > > +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > > @@ -203,7 +203,7 @@ struct pwrctrl_priv {
> > > > 
> > > >  	u8 LpsIdleCount;
> > > >  	u8 power_mgnt;
> > > >  	u8 org_power_mgnt;
> > > > 
> > > > -	u8 bFwCurrentInPSMode;
> > > > +	u8 b_fw_current_in_ps_mode;
> > > 
> > > The "b" here means "byte" so you can drop the "b_" as that means
> > > nothing, we do not use this type of notation in the kernel as the
> > > compiler can check it for us.
> > 
> > OK, I didn't know what the 'b' meant in this context. I'll drop it.
> > 
> > Thanks,
> > 
> > Fabio
> > 
> > > thanks,
> > > 
> > > greg k-h
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group. To unsubscribe from this group and
> > stop receiving emails from it, send an email to
> > outreachy-kernel+unsubscribe@googlegroups.com. To view this discussion
> > on the web visit
> > https://groups.google.com/d/msgid/outreachy-kernel/2284292.R3b5UFg5HO%
> > 40localhost.localdomain.





