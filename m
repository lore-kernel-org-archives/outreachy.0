X-GM-THRID: 6949457058068430848
X-Received: by 2002:a2e:b0d5:: with SMTP id g21mr4767702ljl.258.1618056109428;
        Sat, 10 Apr 2021 05:01:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9212:: with SMTP id k18ls133713ljg.8.gmail; Sat, 10 Apr
 2021 05:01:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxWfCxeTddKmL/i1ts0EvJ654F8vbpw6HQtL71fO0RwuTgre2Z/GY5XHdrs5iJsWja1ZS1g
X-Received: by 2002:a2e:9bd1:: with SMTP id w17mr8455352ljj.77.1618056107728;
        Sat, 10 Apr 2021 05:01:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618056107; cv=none;
        d=google.com; s=arc-20160816;
        b=BQM1PBvHve5kJ6md5V4rFyzkPu5f10UO5Hdhmo935QZoCNk7N5DaevQWWjuYupImcM
         1kXezYjYU9fH9Bn90aME6v2hP6afCuNtWxFe4syaiJAZIr+kn1z6+CE89FssEvGQfvuQ
         jfnoXAur9bRIcx5fjIKjW7P7mDgZS5IZtQexP0l1KzN/fvjUeBTtM9ycpLeIpGN9dRtQ
         uMk2tm2z0zJuGso4D5TqwzHQhKoDOQYFZQ9key1znvFHnjTFzIxAlS0KGSDCQilVA7X0
         GURGybjAvZDCAK2nfmtluAqTmumV11rWsmkBWkQ+e9P1rTlWa6aYmmO4lEZpZ8IWieqd
         N0fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+Y+rFLdZxttQk+x+XDqZN+DXOyaagZNtXVw+dsN8Xs4=;
        b=O8iDfEccTrCC8yyo33wg1fSVQZCg8mMMpBD/9z7F0fCkeIGqRwWQVBJiSjgVkAhiJY
         Z0ULMyQCQCSt7mUPQUcBc02zTXOPLSIN1Cjz5SpfRu/7NcRHy1I3iuXjVVwFWy6YPaSS
         /TuFWi9QLRZPOyyFJi18BfVqfIdzlZHCED7mdVA+E6ZV2e/U/jARHprR0CioWgIQmSH2
         9RpzsCxVXEpisQIHf2VL/eW2oPDRwto1HTaHeVjQRjGuf0xgEVbB1v5KpnRRuLZ/7v9X
         fxS+HkVLYdjj2SkgYp0VsdA8Ya/6INGJweEEReFT0EMvIGIwM3LUzMx2aYIpx8YF/b/M
         BIew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JT5TMWYQ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id y11si311993lfg.8.2021.04.10.05.01.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 05:01:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JT5TMWYQ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52a.google.com with SMTP id h10so9486214edt.13
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 05:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+Y+rFLdZxttQk+x+XDqZN+DXOyaagZNtXVw+dsN8Xs4=;
        b=JT5TMWYQc17RndU05frqUYMfr9OcULkN1aHQIhnHmyjL9iu/zVJFRL77ub+OMBnRYb
         y8YVsIMovNSgkBKCO4Z/J6TIkYtPjrPw5IXbE1WNhib84mAKamGSULHDb5VOSTF8Ao2I
         zD1zbUQ35s3Wcs2wxCVDX7wZFZiZBgNESCS7RvZwejTi5hFcIiYBxpesHTku3YyoBeXj
         Zqp0+f+wMekiiatD70J8nK1HWOhBYl63IWj/vOszfsVsqGOOLhn9qdTRN5scVUcKh00Y
         LeN6KT6rskVYNMEkqWriFmotZHyWRV8SDs2OrGXcrW7LKmDv9bT9YFtz8b4coQahrZh0
         KsCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+Y+rFLdZxttQk+x+XDqZN+DXOyaagZNtXVw+dsN8Xs4=;
        b=nEKJg9SQtj99QzrNAmGRE8H9Q0lk6Coca9tsuoUZY8pginZuZ133DDMNRAaQR6xgiB
         Ih27ai2hJ/LktdsA7CFaj9myb+BR7m5b5TKQ028tEs9+qKd5WXjMN3wio6BcrJgbmvm3
         t1EFrhmljwjJ0QN3PiouUFVgm9+XizuzAmxbSHdZE00kSrZi1MiQcPwzHaoyBusSmMZm
         gZnsj8PxlpYUlGMIbhUIEwYUKqLJDjKdScy/AhTmK+59t36FmsYw3ctixbda6ncMoRiS
         R3wpnH+N8QSQBz5D3W2zs7RdtcjUD4YlfoRcfWswLTLag2l3DsloIkWzRh0QiJzizaWF
         M4Rg==
X-Gm-Message-State: AOAM5303+czPCvOIysKdJlWgs4b4EoC4CO7AncZuXPyzqCSS8DYlJziG
	cDPS2pnsgsN60ZnvMhjTF1I=
X-Received: by 2002:a05:6402:408:: with SMTP id q8mr21046748edv.201.1618056107273;
        Sat, 10 Apr 2021 05:01:47 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id r19sm2582083ejr.55.2021.04.10.05.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 05:01:46 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the type and use of a variable
Date: Sat, 10 Apr 2021 14:01:45 +0200
Message-ID: <2763630.ZYQqkGPH9U@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104101334190.2975@hadrien>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com> <10115279.QsZogQpAqX@localhost.localdomain> <alpine.DEB.2.22.394.2104101334190.2975@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Saturday, April 10, 2021 1:37:30 PM CEST Julia Lawall wrote:
> > That variable has global scope and is assigned at least in:
> What do you mean by global scope?  None of the following look like
> references to global variables.
> 
> julia
I just mean that fw_current_in_ps_mode is a field of a struct in a .h file 
included everywhere in this driver and that the functions whom the 
following assignments belong to have not the "static" type modifier.

Thanks,

Fabio
> 
> > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:368:
> > pwrpriv->fw_current_in_ps_mode = false;
> > 
> > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:380:
> > pwrpriv->fw_current_in_ps_mode = true;
> > 
> > drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:433:
> > adapter_to_pwrctl(padapter)->fw_current_in_ps_mode = false;
> > 
> > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:981:
> > pwrctrlpriv->fw_current_in_ps_mode = false;





