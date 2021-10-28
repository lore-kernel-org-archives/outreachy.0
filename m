X-GM-THRID: 7024064041486123008
X-Received: by 2002:a05:6512:3712:: with SMTP id z18mr4393054lfr.17.1635431733990;
        Thu, 28 Oct 2021 07:35:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:bc0e:: with SMTP id b14ls682888ljf.6.gmail; Thu, 28 Oct
 2021 07:35:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz7C1Es/jqL9LcHQPlWnjBzJWTY1//FiGpk1XyMBxizgvdsoZopG9dB4qRt9tI6SrkCfRUi
X-Received: by 2002:a2e:a603:: with SMTP id v3mr1941420ljp.228.1635431732452;
        Thu, 28 Oct 2021 07:35:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635431732; cv=none;
        d=google.com; s=arc-20160816;
        b=ndX6aPeQgDFLbBL/gY8onp/RQZ/VM/VYqAXbQai5X95A6d9+Fdya41Of8ieK9htzph
         lHozUxmafdeXlQGyqHFVDvBZV8fele1FssgfPpI6EzA0Kv97b5ciRQGTRuuiCS2PIQwi
         wtDskqzMIVjMQWSYJ7CxDjUO5UDx037yRq36w/2qwAJYAt4axvj35mkIOb1R0b+0b1QF
         gOmAqsCLsXSgY8VEDkKPJ+X+I1IZZeVYi0fhaBy+svXDdZmoVKRnIZAmBpU6Jaf7TyYb
         2RRNoKCBj3Pqb5HzF5x9ctUg67ovF1Zaip7kLJBMPWPJuNQ3mSXy1IV/3CkAFM5fMYBR
         ON6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=R5vDRCLKxQuuLX1TwFGPbSTqOd5q7X00mWAhulDDMZw=;
        b=UfBU/LSsG4IV10rx/mMd3mlaiayvBJvtm/oEPsP+V6b1h07t5F9KW3gRZKE41u6GH5
         j2tcDngXcxfDcQT6N2K205qDFfFiU7ViMyhzKwcNZGXHve2C3XacA8CjUNeBd3BCVWcl
         INhA0XLLE6cJQZ51lNhtb/zwo+hQccgIhclgvg/x35m2Dz4UvMCisAbpS+Lo6alGmh3A
         u05PXnPZxBl/AtcRhA3s5BqLPklktwFa2uvxkbRgt2JlkDHzVIxrqWY8Ph7vqp9hkPoe
         IXhwh9HAf75PF8Kv/CjFmDqg54FcA5F/5A09oQer8zbyHvwkr+8q+z28BYWJE1uDTdT0
         La1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=d19eLgmU;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id w6si153134lfa.7.2021.10.28.07.35.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 07:35:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=d19eLgmU;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x434.google.com with SMTP id u18so10613904wrg.5
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Oct 2021 07:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=R5vDRCLKxQuuLX1TwFGPbSTqOd5q7X00mWAhulDDMZw=;
        b=d19eLgmUE6YJ9vGgjKB6ybiHXJAI2uxh7hMaJObS1KroNKXF3fMK8rNzbwdq/ZWar3
         p3iy/H1QNY6HeNNiqWNF/v1sHbAILUjCpoG9gpjKRUVbAEVZp9bnbAfjf0GiejwFF7xJ
         MFkehtgenVbAJAFlff2zdRjC3TY3p2lORZa7Li8owlqIn2SX0FQWT6KHEHh7xaWfMbVU
         V3D+fgbGQJsGI9L3LfBY7SxvxxvImD9km1+Qi6fVjfh49WnxXUCY5j+pk+0ocvwPQZ6C
         1Bb0MyzUwEinFPAGgIEzigUOCkoJRWbVB5eZA10P4z9IIS/QaSPN8Rc523d0MbAzzQHh
         PoMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=R5vDRCLKxQuuLX1TwFGPbSTqOd5q7X00mWAhulDDMZw=;
        b=lR5mXg7EO5VfW9jfJ4NYZmP3Z1tt7X2JX2HVIv13eHewAgSB3xxApIhNIhypbENFuO
         dUqLPEF+QJFVSkMTXw9FDfstl5FjNT0GNyWI8wd7/EIYQSiG8w3wXk0AT0vpwXIIPGBo
         YmnuDWXPX8lZ1aqLGF8B7j/YMWuN49Xibmnl8cjLty9o2XuX7hyaTdd35lbACSmR6Fm1
         vtOR1kR+GI9V1qQPkW8L+SXZbjijCdx7CLWXEM/bJFu6Y2LC2+wDewuEkiXaAegPLVO7
         4jaYzVjdNjr7+xmUzOLaowGZkPduBO+dqUmjx8uv1i+AOvdBI0B6F53j12+pTFKuc3Tr
         yDmw==
X-Gm-Message-State: AOAM531dy9qgQHaDRNLLcGE504aSFXTB05cqns/fAQyNgU/sF1PlldSe
	OjsNTiN4GDeTyKy2c4y/UnI=
X-Received: by 2002:a5d:6e91:: with SMTP id k17mr6167781wrz.260.1635431732069;
        Thu, 28 Oct 2021 07:35:32 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id t6sm2025392wmq.31.2021.10.28.07.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 07:35:31 -0700 (PDT)
Message-ID: <6d2590b127499ba7ae1e7bc36d71064a5262659d.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 5/7] staging: vt6655: Rewrite
 conditional in AL7320 initialization
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, "Fabio M. De Francesco"
	 <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Thu, 28 Oct 2021 15:35:30 +0100
In-Reply-To: <alpine.DEB.2.22.394.2110281505170.9518@hadrien>
References: <cover.1635415820.git.karolinadrobnik@gmail.com>
	 <948406a3e7d23f1cdf866aa4448d9428bdd32512.1635415820.git.karolinadrobnik@gmail.com>
	 <1683328.aCfAWUeHFl@localhost.localdomain>
	 <alpine.DEB.2.22.394.2110281505170.9518@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2021-10-28 at 14:36 +0200, Fabio M. De Francesco wrote:
> As far as I know by reading some Greg K-H's replies to other
> developers, this 
> "<test> ? <true> : <false>" style is not well accepted here.

I thought that the expression is simple enough that it can be written
this way. Julia nicely summarised why I think it's a good usage of the
conditional operator. Still, there's no problem in changing it to "if-
else" statement if that's the preferred option.


Thanks,
Karolina
> 


