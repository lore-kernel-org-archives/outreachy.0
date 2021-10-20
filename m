X-GM-THRID: 7021139911434567680
X-Received: by 2002:a2e:3207:: with SMTP id y7mr199258ljy.291.1634745382206;
        Wed, 20 Oct 2021 08:56:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:2204:: with SMTP id i4ls548303lji.4.gmail; Wed, 20 Oct
 2021 08:56:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyvRDqHhrXa2a/9rB11A7/t0/XjZN+K1wn5oZhhjEkDVNaXEu/2wk3o2Jp3zlPs614d1QKI
X-Received: by 2002:a2e:bf18:: with SMTP id c24mr254060ljr.408.1634745380418;
        Wed, 20 Oct 2021 08:56:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634745380; cv=none;
        d=google.com; s=arc-20160816;
        b=gP7i6azcKABvibp9TNell/fzzudqdGYJMfCAivWMATm/YnKaRC0HBGk9ksK0i5aZti
         AwUEoIFJoF90kETEBeUEUQDIaKdjixG9+cmDv0s6eggQEbOssZmFsmq0dPWTE6JCZ8tL
         zOXUD0tRae42QIQnX52qDg+U1qdT192FEVsCIfwGFR+rbxIS/uoLBORh5nawqL/panBt
         murnsnyPd90fnj+7qNypxoxAY4KZAyu7R3N+cBRcmXjl3uCVP7sxfL+41SphlogiCGNd
         p9Gcxj84DgpY8E03pdCevKw0POZeG5wJdxxV/rDki+jxNgwd7o98Hd8lF3erfp2lQDdI
         3c0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=uqT1+bpO5GtTAP8kk5EhhjPAS0dVX5h+L+bMjzTPiks=;
        b=nSlfjhZGY/pGCsKo5s/ce9rZRGg+2dpNMliZ9evvpj03L/E57OKJaT8USLISY8SuYD
         ZJAgKooMYeO/rjurwuAW2h0EY45iMemnsApS9e/tvyi9cRENUuPzABslZzJqzb2xdTUg
         jlzJGy8FtOc7oA6E+ArPHajDvjL2LOtZUfv3MqBfpZ740sngSYBVct38bqH+zOtF0eYf
         KA1BZkatmlb0u7rFQ46felsW/i2SukPsY86Kii1echUJ5N1iPOEf5VjepJvAMU773P8b
         3ZCrAZNAcXp3cHTxPn288xvZBK5XSfrZchjzpsRUBaF5KrvL34iCyoB5dn4S7Om9vJi/
         7XSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=cEtB6xSB;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id b27si111148ljf.3.2021.10.20.08.56.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 08:56:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=cEtB6xSB;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32f.google.com with SMTP id p21so19998053wmq.1
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Oct 2021 08:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=uqT1+bpO5GtTAP8kk5EhhjPAS0dVX5h+L+bMjzTPiks=;
        b=cEtB6xSBPm7ST6GkvnB078hot11IthI5rZs3+CQtixOEi4fr82nqsPAEVmThIQf5Ex
         c3SpfkdSOkWM0kh1zVUOkre2FPT9SD+2oOSDTHrJDDg+WcfsvdoBQQ8Oa/WnRAIEaC+e
         dHgBI/x+tc1/iL9lAiRc9V5lE/b44f+h40y4oifolKaBQ5B3y8YM2tX6vjFTuZRBfNQc
         /FOMrr/GCT7E3Yn41vovi94RBCpbHbqAjBMS2kqoE87S31/hcJGsJTaO0Guk04uvFg+p
         egz/MvfAZmI3/4lrBu4Nk7PD5tho6I/FhQzD1suV8GbbGrQNr+wddfF7t+fKa0tSvrCy
         SLng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=uqT1+bpO5GtTAP8kk5EhhjPAS0dVX5h+L+bMjzTPiks=;
        b=E34T57DX4G/K7KB9GUgRGHBkWI67TF6Ec7yd90gCmPX7ll5h/ROqunpCwJWH5zvEhW
         vW2A4vc4S+Xkg9davNSVr97nhiYmh4xPpWDu8ny+zjqSkV8nTOgX8Y6H8dEbqtKjok/p
         rg8/MIi773cEBSLTSzQOcj23iuBMDJabs0yjIPpeUKyIBZM0yWSeUgUa0ZLrgRp1np7D
         I7IcrcHar0khg6ysjSEdsgxQOJiejHUXZZtutMJGypC19/XZnpU2lH/0e4hMTrNlg0ZZ
         +2TeH4FbEL+fkg7/BK7vKJY4Pip0v1XAuY2Yjqt7hemXzMdjQYbd/fOrneSiKv4mOyhF
         sllQ==
X-Gm-Message-State: AOAM5332LJVmTWg9Qe3TYlDJvk3N68wJc+1pogQ5E64lxFcv5bAqHtXW
	XGhWvFnwxb9VNb9HuErIaaM=
X-Received: by 2002:a05:6000:1567:: with SMTP id 7mr42183wrz.408.1634745380064;
        Wed, 20 Oct 2021 08:56:20 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id g10sm2877383wmq.13.2021.10.20.08.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 08:56:19 -0700 (PDT)
Message-ID: <596fba87187b73277fd5c1102baa1815ed8fe4f8.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: vt6655: Rename
 `dwAL2230InitTable` array
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, Joe Perches <joe@perches.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Wed, 20 Oct 2021 16:56:18 +0100
In-Reply-To: <alpine.DEB.2.22.394.2110201615590.2930@hadrien>
References: <20211020132811.417341-1-karolinadrobnik@gmail.com>
	  <16db455b46f130300b5c346160aa434616e4f6b4.camel@perches.com>
	 <157ee66fd0e3304c238e7ad8123277892e0d1132.camel@perches.com>
	 <alpine.DEB.2.22.394.2110201615590.2930@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2021-10-20 at 07:09 -0700, Joe Perches wrote:
> On Wed, 2021-10-20 at 06:44 -0700, Joe Perches wrote:
> > In this file there are more than 100 uses of
> > 
> >         (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW
> > 
> > Maybe add a define for it and substitute the uses for the define.
> 
> Look at the code too.
> 
> It looks as if every use of IFRFbWriteEmbedded() has this added to
> the 2nd argument and that the 2nd argument isn't used anywhere else.
> 
> Maybe remove it altogether and add it to IFRFbWriteEmbedded().
> 
> And it looks as if the + uses for these should logically be |

Sounds like a very good idea. I'll add it to my to-do list, thanks :)

On Wed, 2021-10-20 at 16:16 +0200, Julia Lawall wrote:
> Karolina,
> 
> If more than a hundred such changes are necessary, you may find
> Coccinelle
> useful:  https://coccinelle.gitlabpages.inria.fr/website/

Hmm, I'll check this out, it may come in handy.


Thanks,
Karolina


