X-GM-THRID: 6804610075497332736
X-Received: by 2002:a92:79cf:: with SMTP id u198mr1534160ilc.23.1584389008873;
        Mon, 16 Mar 2020 13:03:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:31c:: with SMTP id w28ls2299057jap.1.gmail; Mon, 16
 Mar 2020 13:03:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvvBieE/heOPKt7wqp8Hbd0KnUtITcqP2/BMniHpYHk4sa2/+Mq5v4ZiFFAe5WnSxKhmtoT
X-Received: by 2002:a02:a813:: with SMTP id f19mr1533070jaj.35.1584389007602;
        Mon, 16 Mar 2020 13:03:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584389007; cv=none;
        d=google.com; s=arc-20160816;
        b=tXM+luOglZaOlb/aCqaDLuMnadDIc2DPeskZNJIVgbKek7SRd944ZRkAoGimZ90twU
         Qxrts69sH3Q8oqKCra41TpRBV/UWa/eFoQHDHrldGCsvc+9m6+08lri4E8pp93aSokX5
         Kf9jx16wlVLWylljRPq/1Hxj5BP5nMKizWy/1zGxwC023CscFI2llKYbyRs7+jOxIHyE
         KuSm5KTcO11ZRWWKSpxiylVL1ZiZG/ALzUp1fP1+X8VeByc8d+CXf8UI1Kcs7aq1bBFA
         /INSHaq91k4MYueHr0Mx7DmAc4kmE2gprgfXpcf29j49E9hu52O1NFdTSb8gU6MgSa7B
         6QPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=dwV5gyztHCdm9eDj17K2baVYSQiI6QXF96phlF8hkWE=;
        b=UUq5vUr0yn7+jLvirZ+sWWQE4oCFeUnl2Xuz6uU81FTT1bVnJyLEYzkmMUn5+/C/Fv
         4/onTwyhd8YGaD9/4KIQDQ/Y1L+NoRdDItFVf7qiJ0KHg6UaiaHPgH3JHtMuGzNes+f7
         +2+F94tuaQmawMwNAMDVVuCfMhr/NHFLvxEJTyLl7BCGTMNLxqAws4wQW0BHcFWnyhMS
         IOrhiHFMj75rv4bo780+cHERbju77pnVpnZpw0WmqBLyJ/RGBRiBm/O2/EFOLre3+Hzk
         /tFnhoPVuQ8pphVII8XzR/ZMMpt3RYZxyDeR3cYCtCdvdBLrnMmgTYt3Y0ffCq+uaaG0
         vX+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="h5/D0FL+";
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id s201si67200ilc.0.2020.03.16.13.03.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 13:03:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="h5/D0FL+";
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id d8so9255135pje.4
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2020 13:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=dwV5gyztHCdm9eDj17K2baVYSQiI6QXF96phlF8hkWE=;
        b=h5/D0FL+S94IKkgbXjNRpVXtDUTn8tFQFrXPj5qMN9B5VUkV9RrT/6EpZ/gH1P0wCw
         rMiFHZIXa0TBdDL9Q1AZv7m407sCF30O9e9td2hqsTUSVLI5StLvRxTPRNa6k2ouqYfT
         WzLDM1BAddMu4DzgKjEfLb+vcoziSRRG0uveq7hi/LoxBWwts8f5SDeIPd1+4govqZR4
         RlaHpPIiZMtR45WMXzWmKudSaHH9szUnByxImN2OHfCpVtMCOZUaKvhVXeGegZFlNRfe
         JqpEqX0Ci2fFlfntH9z5reSyBd7LdVM0qTitMnpiVWebxKT3+XCupSRhckP4gDLW8Br8
         UEVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=dwV5gyztHCdm9eDj17K2baVYSQiI6QXF96phlF8hkWE=;
        b=T2L4YUkjBpfIct0lCCr77Pi3UeiWpP5HHDHz4BbvV/1E+oW5Q0uhw00GySUZsQG2Zh
         jl4drwfI9jJOaaA80qUm5JFzMYLMOXzudukHIcWtaWTPaBJUC5/t+FPe4lmMqx1m1/Zi
         vHwBiJp5kc1BIPREHENXzaAeOoBYl1cjVk4dLEYx6GpoynGctw1DaBQSNQzWNhxwvoIJ
         jKgeo1OXnFCClnG5yZ9FSMrRh66VnmaB54OTwiad1Q6cyYuUxlj+Hx2Lzg6b5KUHA4FQ
         c22K6HhKr7U6e4v9jPmW12wN8tpFyGPExdolahzVEq8R2vRrx9OmnFHLJq5GOcLTwAnk
         5CmQ==
X-Gm-Message-State: ANhLgQ0tMq5jXFpG+mk60IZMyfyw5PyL4KuX8gjIGVE+5Rg08uzM1GDR
	ccZCFDnCvr03nvecHWv+Blg=
X-Received: by 2002:a17:90a:3328:: with SMTP id m37mr1237034pjb.158.1584389007212;
        Mon, 16 Mar 2020 13:03:27 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id e30sm343376pga.6.2020.03.16.13.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 13:03:26 -0700 (PDT)
Message-ID: <1f03af664ed57dca20821d59a4af282ec6f32001.camel@gmail.com>
Subject: Re: [PATCH v2] staging: wlan-ng: Fix line going over 80 characters
From: John Wyatt <jbwyatt4@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, Stefano Brivio <sbrivio@redhat.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Mon, 16 Mar 2020 13:03:20 -0700
In-Reply-To: <alpine.DEB.2.21.2003162050510.5216@hadrien>
References: <20200316012148.1200745-1-jbwyatt4@gmail.com>
	 <20200316193723.1247875-1-jbwyatt4@gmail.com>
	 <alpine.DEB.2.21.2003162050510.5216@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-16 at 20:51 +0100, Julia Lawall wrote:
> 
> On Mon, 16 Mar 2020, John B. Wyatt IV wrote:
> 
> > Add a newline before the second argument for style, readability,
> > and
> > consistency.
> > 
> > Please note checkpath reports the third argument as being over 80
> > characters, but not the second argument.
> 
> checkpatch :)

Thank you :)

For v3 (v2 is also missing the [Outreachy kernel] tag - did I reference
the previous email properly for a v2 patch?


