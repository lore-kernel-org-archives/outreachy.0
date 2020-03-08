X-GM-THRID: 6801971762574655488
X-Received: by 2002:adf:f1d2:: with SMTP id z18mr14384413wro.143.1583707463523;
        Sun, 08 Mar 2020 15:44:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c4c6:: with SMTP id g6ls6113159wmk.0.canary-gmail; Sun,
 08 Mar 2020 15:44:22 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsNs2GP1WFeFNHgebG292vkuVQ7lsnSZThAez2VREHvpsc6YCdhrOuuMDWK1aMpgyFX9ScP
X-Received: by 2002:a1c:e913:: with SMTP id q19mr2737988wmc.31.1583707462276;
        Sun, 08 Mar 2020 15:44:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583707462; cv=none;
        d=google.com; s=arc-20160816;
        b=IS3yZ6gg3MErFEbp33jlh0jQN7pMZ8Drr/mhV7XC76qUyJkpY210mQ1++xgDeu8xNC
         rw4NWSXze15v/7qIXeA9CV9RCt0r2kkvrHGBQihna3CSwoTO/mKlkD2lGWShFcXLg1WA
         rr43MxwMbRZbjh4WFNsqalrI4DW5hUdHRLsDvEyO6H21O6zdmJzph1qLafBx23tg/15T
         r9G2jEBe1WddZVKbHWWu7Gnq/hX8pczgbFk1i18V4G8QOab/+Rp45DbAqM4LjBMSJrVv
         dK1A+YFv0OTtyjr6lBR3kZqQIJG0b+5Klwot0aP5ECN0LwdMF49BpIVas7aTmA18/9ne
         bYOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=aLulqPGMAmNT3URnY+u6ssx2iEjyK24EBekIcaxTQA8=;
        b=ZCDQ0ij4TLbQECcdG6uL7ZGicgGs9JIoGPcOAGJG/ELI+pB6+iKhqArQmgiJvLpR4w
         9yvl2M/NGcsasyBopuojJsdA5EqfBNt12se78LTxV/mZeNSadYVu+Zkb8CwgbmbJOSRn
         hvIWnkfiEqaPJDPd5+bfRIm24mGGtRSmf7enrXQUO3kooosyX3bmiHqtBPk3mbKtLxR/
         g/O7PFIpm6PdgbEtrqJGQ537XkwNoBiXM6L+h7n8KRaSmQTiQxI6bp9i6FSHpA45jsPV
         MGkN3U40m6SHm8rCEfP1FGb1eQWY6MJXWLiupxGg6juWhU5rnjcIghqa+C9JQJzfOLSy
         NaiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Bw5ug8hd;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id d14si324402wru.1.2020.03.08.15.44.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 15:44:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Bw5ug8hd;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x330.google.com with SMTP id a141so7799269wme.2
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 15:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=aLulqPGMAmNT3URnY+u6ssx2iEjyK24EBekIcaxTQA8=;
        b=Bw5ug8hd6K+t9uvMNHXd024OV12wD5JCRHFGauNZwnL1B+r6klFlxMaHQj/Osse5E8
         B/6tD+E1ZQcqiae5y982rGmCaWwlIAFQePZBfa9Rx5ale4gdOS1CR2NN9b/yovjDCL5i
         afzW/vwM0j4jS8oCOxhYc1CP+H3xQsKQf6URk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=aLulqPGMAmNT3URnY+u6ssx2iEjyK24EBekIcaxTQA8=;
        b=rg+SRlpmDbu08G19Ht4tBlAiEUL5BF9JcT8rhByl20sgMQvqxcVmxD5ozjhorf24wj
         0zJ0etYKqfixYd/gb48M6tfMPBauPuQX7DRVc2u64bSAYeASgy8eKABs+tChyqZpl2A/
         YHlGG5NX7s2mfC6rpeYcJqs9a+jM5dHQdxwJDiFq2L5w46KEoSbNs5JvXtObAS/SFyH8
         EHYghaA8yAb053cppBbNHuKynsJslpL65aXLGjel+LjzRnLuWv0dnO1grqeDJ4Pg3rJ2
         40hw+GdgaOJdw/5oBtmCifoBU4TzY8LNA7ZkLDYU2eqLeRsQJTM8rxa266t6I689c54P
         1niA==
X-Gm-Message-State: ANhLgQ3aofSRAqdCE9mpMnqGwrYU5oxc6bjF/uAYXapk6sgsmTUFeSpw
	1IdSBkwWWT+n+7Yt7sulzbvtSAFBmL8=
X-Received: by 2002:a7b:c770:: with SMTP id x16mr2471052wmk.159.1583707461713;
        Sun, 08 Mar 2020 15:44:21 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id o3sm26778226wme.36.2020.03.08.15.44.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 08 Mar 2020 15:44:21 -0700 (PDT)
Date: Sun, 8 Mar 2020 23:44:12 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Subject: A question: commented out code
Message-ID: <20200308224412.GA14124@supernova>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Is removing commented out, unused code, a good cleanup patch? I'm
wondering that maybe that code is there for a reason. I checked TODO files
prior to removing that code to see if they provide a reason, but for the files 
I edited, they did not.

Thank you!

