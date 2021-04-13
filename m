X-GM-THRID: 6950266309427855360
X-Received: by 2002:ab0:638e:: with SMTP id y14mr23996208uao.82.1618338099985;
        Tue, 13 Apr 2021 11:21:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6102:492:: with SMTP id n18ls490295vsa.3.gmail; Tue, 13
 Apr 2021 11:21:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwVaM0y2UpeRbGbRmQ9F/wGB/BuVkXyjE8hihEZxNKkhux+tpXwduRdejjAw7R0DTEPWddw
X-Received: by 2002:a67:7c0c:: with SMTP id x12mr9128795vsc.0.1618338099079;
        Tue, 13 Apr 2021 11:21:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618338099; cv=none;
        d=google.com; s=arc-20160816;
        b=BBFnq/zYzfLqgTntTjEcD03NqhMlx6rBRS2NfW0t26SLuqhnHn59v8LsJCOc5eOAL3
         IvEUM5hVfWWR6sNuN4/gLvka9COs3MtTRdfHFGg8EDuwg3ujhL/kV1yG86jr9XhsFKqG
         ifxhO6dN1X3Q9AyI9fGKJFTNbZYcXM30/lRdYpnl0vHLS94AkLXRL3eeu+yA+6IWwX45
         UDMkO7l2mB7ll9F4NWi9B+YBfjpBkRsxO79Qj6jzpe2BUCef6JmRgIAdI85hdHdOb7cg
         3V85nruZUCoQUezs3N9jqIBcHXV0qH3pUnMq2PlT4FUfMfIzcNvejZPNVjXEHKeWcbE1
         Z6FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=25gNIOG2c1hWR+uLY9hp/OskIyE7B6zmWTWkW5GFvMo=;
        b=p3KZv89psTWuvS67xgxM+gV59ek1AtUgelKE3MFpJDt0lfTVWM/WxZNQzdVYZsTNJL
         XpM8LhOhbkrykeKVpDaDpEU2jy90glbAvSBpUXwqtIvb98/k99KUHk8q23fwB3DwEAm9
         hMaHh5lk4YC/LX0C70m9SwSwIkAiqarj3zhyTUs0wxRbdekrqfKCe84990UDKg1EckqK
         lOyP2UXs2UUO4AUGVyBm7hFivERE0Q3bQmukFEDrhggQzt/9Y1GcUXgSSYuScAZvWEtP
         ajR5WxGmf+QDnkR2nYpx7RgMATK9kIv2nulSxaIiZiNJ3ju8jDJRQTnlqW6zxq0y32eg
         Ck5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VC9MmTbS;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f36 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com. [2607:f8b0:4864:20::f36])
        by gmr-mx.google.com with ESMTPS id h7si78073uad.1.2021.04.13.11.21.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 11:21:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f36 as permitted sender) client-ip=2607:f8b0:4864:20::f36;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VC9MmTbS;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f36 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf36.google.com with SMTP id bs7so8059813qvb.12
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 11:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=25gNIOG2c1hWR+uLY9hp/OskIyE7B6zmWTWkW5GFvMo=;
        b=VC9MmTbS9UfJzu0FekAhcs7mlPCYm98IVB2VcoWDjGP0y2cKlEKa+MezLqxmqgA9uM
         kCJKFbpfyJVS58HTngHby906J5tjd66qIEKfoC5U05uWqQ1XI1hutChJtXE1TNofrKq3
         xMZRr/le0avcpFTLPi+qEo2VF19yyllsWVQgGyh8JirL9OlsIntOLU88F/ezSyMr+W08
         A13bcYNtrNAh13w35qqayzHo1VdIIKCKeT2Qd+/8Fec022BoLn/zE4AkGHFf/hawmuNn
         d0osnyCz0/9LIcsJobW0TkA8X6IXKxuW1S7EquQnU8Sasj+zPWYDgKUZVk43fCMN0Nv1
         QaQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=25gNIOG2c1hWR+uLY9hp/OskIyE7B6zmWTWkW5GFvMo=;
        b=B/6dYgbWlQpS28qWFskUn8L21TwVTuHc1MJJoi8kOjhQReNiK3ip7C/9VApIG40WJn
         OpPclR1HKwNJ//vfio4Rqe448r0Er1ezriDwRLRbvxNsRdLgu4KTX8kP9Kd/GDQVKblP
         liJmiM+X67vFOLXuPcLNpxqo3FmjUFpZ3Ef9qmiuj2/ptRhjXXlSeAsa0QIXbQ6prH9f
         Pn0rQ4iUGZctpARIFAgIsTFq1LCAtg6brhNXrKXzzSEAed+pp/eb25ycOGasWxMRxOj7
         PbyUPrxX6rROUautQ2PtL091DKlZlhHfFr7YYdXCAAqrfLTpSRGAHZG73a7sTCJxj4C3
         xAGw==
X-Gm-Message-State: AOAM5317ZANz9v/bxL+AwY/xv3CLDYyj2dBRB+iNEGQxJD+iAbSWmxG9
	QJjfuEq2gS+3FeYlvmDpaHU=
X-Received: by 2002:a0c:dc04:: with SMTP id s4mr4580782qvk.1.1618338098917;
        Tue, 13 Apr 2021 11:21:38 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from ?IPv6:2001:1284:f016:a037:83a0:18ef:c76d:6086? ([2001:1284:f016:a037:83a0:18ef:c76d:6086])
        by smtp.gmail.com with ESMTPSA id q67sm8596124qkb.89.2021.04.13.11.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 11:21:38 -0700 (PDT)
Message-ID: <4e2f52124b29b3ed6c3f7f645f067c503c7cf4cf.camel@gmail.com>
Subject: Re: [PATCH] staging: media: omap4iss: Remove unused macro functions
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Tue, 13 Apr 2021 15:21:35 -0300
In-Reply-To: <03549d0e-04d9-6d37-93e3-c09b29ce53aa@xs4all.nl>
References: <20210412134253.GA19402@focaruja>
	 <03549d0e-04d9-6d37-93e3-c09b29ce53aa@xs4all.nl>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em ter, 2021-04-13 às 17:06 +0200, Hans Verkuil escreveu:
> On 12/04/2021 15:42, Aline Santana Cordeiro wrote:
> > Remove unused macro functions "to_iss_device()", "to_device()",
> > and "v4l2_dev_to_iss_device(dev)".
> 
> 'git grep to_iss_device drivers/staging/omap4iss' gives me lots of
> hits!
> Same for to_device. Only v4l2_dev_to_iss_device appears to be unused.
> 
> Regards,
> 
>         Hans
> 
This command is really helpful, I didin't know. 
Thank you for the tip.

May I send a v2 removing just v4l2_dev_to_iss_device?

Thank you in advance,
Aline

> > 
> > Signed-off-by: Aline Santana Cordeiro <
> > alinesantanacordeiro@gmail.com>
> > ---
> >  drivers/staging/media/omap4iss/iss.h | 8 --------
> >  1 file changed, 8 deletions(-)
> > 
> > diff --git a/drivers/staging/media/omap4iss/iss.h
> > b/drivers/staging/media/omap4iss/iss.h
> > index b88f952..a354d5f 100644
> > --- a/drivers/staging/media/omap4iss/iss.h
> > +++ b/drivers/staging/media/omap4iss/iss.h
> > @@ -29,11 +29,6 @@
> >  
> >  struct regmap;
> >  
> > -#define to_iss_device(ptr_module)                              \
> > -       container_of(ptr_module, struct iss_device, ptr_module)
> > -#define
> > to_device(ptr_module)                                          \
> > -       (to_iss_device(ptr_module)->dev)
> > -
> >  enum iss_mem_resources {
> >         OMAP4_ISS_MEM_TOP,
> >         OMAP4_ISS_MEM_CSI2_A_REGS1,
> > @@ -119,9 +114,6 @@ struct iss_device {
> >         unsigned int isp_subclk_resources;
> >  };
> >  
> > -#define v4l2_dev_to_iss_device(dev) \
> > -       container_of(dev, struct iss_device, v4l2_dev)
> > -
> >  int omap4iss_get_external_info(struct iss_pipeline *pipe,
> >                                struct media_link *link);
> >  
> > 
> 



