X-GM-THRID: 6610740255626625024
X-Received: by 2002:a81:7c88:: with SMTP id x130-v6mr18732702ywc.18.1539195012082;
        Wed, 10 Oct 2018 11:10:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3b47:: with SMTP id i68-v6ls2045436yba.0.gmail; Wed, 10
 Oct 2018 11:10:11 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60wAzWpjkNRl0Og//Lbw8t9inBQrBf+iAKAODjjQzRmxHv9TUjuPV4HMMWscNUPCMbVZ+LS
X-Received: by 2002:a25:b90e:: with SMTP id x14-v6mr2594001ybj.63.1539195011166;
        Wed, 10 Oct 2018 11:10:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539195011; cv=none;
        d=google.com; s=arc-20160816;
        b=SnncXDxF8hxRSaX2ZXYcaPCq2zCgnZx4ZnykGv/+USgieB1e1bDUoAsc17XTj4CUVe
         m3liwDsdgAV02rIPiY70jHp7suaOgPCJv3ZXsgHH4Ts88zik73CxDgNje02o1iuO+EmG
         nQq0SKxHS9vFz65Wj0ft3ohMKN5dsixO9OIY3PYqRcgGFNVUbuVM/Vys0ffcyKEFnd6z
         Iezyjy9xhPjvlHm7YcznpvfQA5xjQLFt9JSCMNzJKDM/2UlJeiq1twjrXpnpW0T0ADyV
         9OKZ2FJBqqwc6jyWEPWIzggjeuk7EAggq2+luKWmtKnm4g7y7T1JGWrJJjc3TP+yelLt
         NlrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5UN4MJHJWhGZRl2BKmAWWollmGofp0JDUDYPZQYTGfE=;
        b=hD7CfI81k680/2Iw4H687kkxnuOy/TgJIQ02BXx8cJWMSBE+7gmtaJGhp+7F9517cJ
         Xt/yZirhLd/uY+9jo0Ie3HALSJm7fzdqPE8gMS4kR6+IzXpNiO6MlikDvNA7e13OzE75
         JbsId281hlKu/xvAlgOfu5JxvfQX+9y7qOZHJl47UQC0hlX4cdmvHG1l/HdnIkMqMEeP
         PIU8cEosbr18bqtcJAiIY3e/4FAkfhDBBmlSWYoqRMEKb4wrkG9NcLWzbRYP45PbxEhb
         qKBOJBvnLqJT1m8xbt6lEzDMbNeQH9Fg1xiWMimMMVdaiC3HkzbiO9FFZAu8guIl8PXR
         UrEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dj1WTIF3;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id f77-v6si1010569yba.5.2018.10.10.11.10.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Oct 2018 11:10:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dj1WTIF3;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x633.google.com with SMTP id q17-v6so2904207plr.8
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Oct 2018 11:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5UN4MJHJWhGZRl2BKmAWWollmGofp0JDUDYPZQYTGfE=;
        b=Dj1WTIF3SQPa8vMjRhCE6mf4wrlrvUpDWqlCBG1cHppTZu3nfiPJrgXpUtSpGMyTiK
         8f2BVB7rSJ04kYga7m+mjPxIV0VUbhAqoYJwRDP/j/1CAH6N2BaI3ZwqUpapFUHgseyK
         NHcUunV9BqzanXjQSdya1xiaD6xqIXcp93A9zg7QM+090xFQbYhTuuCni4qYfzOFmXe3
         /fqbDJCSjw8EVYyBkSSw07SiOQwcxAMyzZ3IHAXQRN0wKNHXbIbZYjSoCm5qbiD9hur1
         elEy1WscgHh8UsHp7Y9HH8cjmSziMFraw4brwX0zUWnkvzY0zcBJBqjLnVan8WGW/9fH
         pzOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5UN4MJHJWhGZRl2BKmAWWollmGofp0JDUDYPZQYTGfE=;
        b=tqoUhQ46MJj8WMjgcHUW7P6dZUFRy3i0vPV1D7KugD+smhzGwZ1nNdcDRPZPLhaq0u
         OwjeqVRdjrRoy8QX460bNbRYNkfp2a55jU+dznC7Wbv9FN0NdoZPlDkkOmN75OpnjC9P
         n87jTa0A7L65Lukn10UtRojOFJdhiDt+Y4rIdF4cIDVRBW6Z8Ii+Mc4lXxTqTUXD2z8K
         awSN1u5Bwlv+OuF/Ypv++vt3oLGJ83DFnDT5xhNH+A6L6pgBQeDRjyukrsNj3BqP9DzG
         S4XhXWNx+3TEDcQVVLXf4LjDSff/RyRXx0+PMOCkcmomOQ4FzKJN52h9u3MzVcWak6sV
         Xb5g==
X-Gm-Message-State: ABuFfoghBKqoSdx3zSG+mmmYSXG5dc4My2dzx+i1w3lueybHxvAa3FLL
	zV7UL1ymKMedsB9gEoUJ/hyTJdPLC4M=
X-Received: by 2002:a17:902:6ac7:: with SMTP id i7-v6mr34489279plt.268.1539195010674;
        Wed, 10 Oct 2018 11:10:10 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id k185-v6sm16386744pgd.2.2018.10.10.11.10.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 10 Oct 2018 11:10:09 -0700 (PDT)
Date: Wed, 10 Oct 2018 23:40:03 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	aditya.shankar@microchip.com, ganesh.krishna@microchip.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: wilc1000: Change struct
 members from bool to u8
Message-ID: <20181010181003.GA3157@himanshu-Vostro-3559>
References: <cover.1539182155.git.code@wizofe.uk>
 <e409baf10c6cc043344f1a63712d661611953973.1539182155.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e409baf10c6cc043344f1a63712d661611953973.1539182155.git.code@wizofe.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Oct 10, 2018 at 03:48:21PM +0100, Ioannis Valasakis wrote:
> Recent versions of checkpatch have a new warning based on a documented
> preference of Linus to not use bool in structures due to wasted space and
> the size of bool is implementation dependent.  For more information, see
> the email thread at https://lkml.org/lkml/2017/11/21/384.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/wilc1000/coreconfigurator.h   |  4 ++--
>  drivers/staging/wilc1000/host_interface.h     |  8 ++++----
>  drivers/staging/wilc1000/wilc_wfi_netdevice.h | 10 +++++-----
>  3 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index b62acb447383..dbea5144395e 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -30,7 +30,7 @@
>  #define MAKE_WORD32(lsw, msw) ((((u32)(msw) << 16) & 0xFFFF0000) | (lsw))
>  
>  struct rssi_history_buffer {
> -	bool full;
> +	u8 full;

The disccussion was not about "u8(usigned char) Vs bool" object
representation but rather about "bitfields Vs bool".

It is true that the sizeof(__Bool) is implementation defined can be
1-4 depending upon the implementation.

Indeed sizeof(usigned char) is *guaranteed* to be 1!
https://port70.net/~nsz/c/c11/n1570.html#6.5.3.4p4

But would be worthwhile to change it to usigned/signed int full : 1
instead since we only care about true/false ? 


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

