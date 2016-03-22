X-GM-THRID: 6264881295944318976
X-Received: by 10.129.76.201 with SMTP id z192mr22119748ywa.58.1458657333801;
        Tue, 22 Mar 2016 07:35:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.135 with SMTP id l7ls3413862qgf.87.gmail; Tue, 22 Mar
 2016 07:35:33 -0700 (PDT)
X-Received: by 10.140.94.117 with SMTP id f108mr27707681qge.0.1458657333038;
        Tue, 22 Mar 2016 07:35:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22e.google.com (mail-qg0-x22e.google.com. [2607:f8b0:400d:c04::22e])
        by gmr-mx.google.com with ESMTPS id uf6si24825867igb.0.2016.03.22.07.35.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 07:35:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) client-ip=2607:f8b0:400d:c04::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22e.google.com with SMTP id w104so179531053qge.1
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 07:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=S+Dnz5WcUuVtV9odr8VikbMbkgfV9NZ5rJ2kRjG6gzg=;
        b=VFcf2fddn6pKt4FTiGGgIC+q2Z15SCKsQoCcm2UN14pd3+hJgsVLJ9NVQjwBjxVoaW
         tHGrF4oPZo6mnwKeV1hS+GMGx9gdLqoWSJuu/8qs8uA4CjzL6Zv5yz5W00aJYSt1k0Ui
         vHNXc6wUSYkvsa6R2raYPsZA3+aOIazeR5ehWwnYALFiSAxD8qgAE9IL73FoLdHdfMs3
         2SiXgyn8eTtG/tKvdQUZGxYHmGJ3MFoCiZPJGJJix3CvnQLJAPu1ScyoGT2rxEDlNwyW
         fBF+2AIRO+ClaLsOsamjXlMNKZBGFJDPY+zyeqmm0ug1IUGdAjXykb+116IXdrZOEk2n
         E7eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=S+Dnz5WcUuVtV9odr8VikbMbkgfV9NZ5rJ2kRjG6gzg=;
        b=AIZAzQyXGxssvGjldrAnvPVebtg5I++/8+FBULFePsBh96CUNkI0U735evlJwdNfrb
         925kinKCJ7bQY2T1vKY9HW1MKVsnw5XIOg9efybt/+2hVT7ZBTSe0tYoLFurulOUdO65
         /rsz4smW5jF3waJMWOZ2eJpJcIgb2mRM5Q6AGY7bQ88oMS6w5rrmch+Njf51PKnqAm04
         Tr9Fq72ETrkwT6k9Iqo7FU4hGoqqmdUWkXYy/le3H4FaeubAmg6EUuW0OHehW2aKNqEA
         tN7aGsHO+Con21QHZiMYWRiD5XrrXbS+SV57SdIsxRCwmxhI4ehmQ2B1T96oJq54/KF4
         2KIg==
X-Gm-Message-State: AD7BkJJG/155DMoM/AX48hbhpBiVqlKuZLicVRbVPIQM7Zo05DiFnbAQ5Drt6wQakKQURwA3uhJklHLLWOmURA==
MIME-Version: 1.0
X-Received: by 10.140.95.117 with SMTP id h108mr47184413qge.65.1458657332733;
 Tue, 22 Mar 2016 07:35:32 -0700 (PDT)
Received: by 10.140.108.33 with HTTP; Tue, 22 Mar 2016 07:35:32 -0700 (PDT)
In-Reply-To: <20160322141859.GA14592@amitoj-Inspiron-3542>
References: <20160322141859.GA14592@amitoj-Inspiron-3542>
Date: Tue, 22 Mar 2016 20:05:32 +0530
Message-ID: <CA+5yK5HCq1UobKzvEbOBod=5By9tyCL65GqgSDw7mQgw8KAAxA@mail.gmail.com>
Subject: Re: [PATCH] staging: media: omap1: Replace clk_get with devm_clk_get
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 22, 2016 at 7:48 PM, Amitoj Kaur Chawla
<amitoj1606@gmail.com> wrote:
> devm_clk_get allocated resources get released when a driver detaches.
> Replace clk_get with devm_clk_get and remove corresponding data
> releasing function clk_put from probe and remove functions of a
> platform device. Also remove an unnecessary label.
>
> This change was made with the help of the following Coccinelle
> semantic patch:
> @platform@
> identifier p, probefn, removefn;
> @@
> struct platform_driver p = {
>   .probe = probefn,
>   .remove = removefn,
> };
>
> @prb@
> identifier platform.probefn, pdev;
> expression e;
> @@
> probefn(struct platform_device *pdev, ...) {
>   ...
>   e =
> - clk_get
> + devm_clk_get
>   (...);
>    ...
> ?- clk_put(...);
>   ...
> }
> @remove depends on prb@
> identifier platform.removefn;
> @@
> removefn(...) {
> ...
> ?- clk_put(...);
> ...
> }
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---

Please ignore this. Will be resending this in a patch series.

Thanks,
Amitoj

