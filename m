X-GM-THRID: 6401457215612387328
X-Received: by 10.25.145.17 with SMTP id t17mr1706508lfd.25.1490455998134;
        Sat, 25 Mar 2017 08:33:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.41.69 with SMTP id p66ls846950lfp.27.gmail; Sat, 25 Mar
 2017 08:33:16 -0700 (PDT)
X-Received: by 10.25.17.102 with SMTP id g99mr1630906lfi.6.1490455996774;
        Sat, 25 Mar 2017 08:33:16 -0700 (PDT)
Return-Path: <alexander@alemayhu.com>
Received: from mail-lf0-x233.google.com (mail-lf0-x233.google.com. [2a00:1450:4010:c07::233])
        by gmr-mx.google.com with ESMTPS id q207si519209wme.3.2017.03.25.08.33.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Mar 2017 08:33:16 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4010:c07::233 is neither permitted nor denied by best guess record for domain of alexander@alemayhu.com) client-ip=2a00:1450:4010:c07::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@alemayhu-com.20150623.gappssmtp.com;
       spf=neutral (google.com: 2a00:1450:4010:c07::233 is neither permitted nor denied by best guess record for domain of alexander@alemayhu.com) smtp.mailfrom=alexander@alemayhu.com
Received: by mail-lf0-x233.google.com with SMTP id x137so5501250lff.3
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Mar 2017 08:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=alemayhu-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=XEwHXF9EeZSajhg1hqTeRZQDMEztEigF/Gla0D9S1TQ=;
        b=ifHtQKpr3lGY5a1SQo6mH4WuMBOopArvL4319dxUUCGbwcC6B5nRocJ315vF+t2C5V
         /RaZENb2IobTsMJfF64XwnccPs2zuEK1BEJdd1L6zuQ7sA0Yn51Lh0QqiKycr6I/gr5j
         VFX4mUF5SFyF833FYPbrLpxs0sxtU+elWz4J6d04A0Xhhn63v/w9KbmxOHKGoCaWsCqv
         I66/XJ9SznHOEa8jLL5vDgKH4KPgaZjYBisu8yq+1mj5NgNuVp5b0Yvc1TaGTVwjCVXx
         0L7x2okHHcBz31sp+VCVRF75Qs0lvQ239Kwok9fXMlh97mDhAqdDoM4R6BYlGwVWOIfi
         G9Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=XEwHXF9EeZSajhg1hqTeRZQDMEztEigF/Gla0D9S1TQ=;
        b=B/KFCpN/l9+/Z5Qe41SFp+0J5nZ/1ZcdtNGUo8WON8CAv4CrbptYwDHpmV0Hv6qf7y
         ZWd95nsn+sR/i+Iuoy3/pdNr49uE9hneNL/qtMEsPfzyPjPBZ1sZE0UcAv6fpK3/itI9
         jyrv4sogSgi4yHqZZ50CsvpYTLt4LSsVv/SIsNH9Mmm2F7oFxSlZSLGxA2xCksBbff8v
         vH13w52aM6fcoBaqC/rqpjL9FaHapDqlvyJD8EQOjgeFjY5PApDfm1/R6BGGYgC9RMDP
         IXeMVKiJ6oExJZOYYV4Gjn2+OtJjIdOjpiK2YE8sjBICd17hJKCLSiUxO1io5OaEg5yw
         QuCQ==
X-Gm-Message-State: AFeK/H0XUqfzsBn7vd6kKUnDag816Q3oZhkqs9DEHGlzLAcG3C7lEYPQZLEVPHMTKTcozg==
X-Received: by 10.25.228.66 with SMTP id b63mr7286816lfh.177.1490455996151;
        Sat, 25 Mar 2017 08:33:16 -0700 (PDT)
Return-Path: <alexander@alemayhu.com>
Received: from localhost ([2a02:fe0:c020:790::5])
        by smtp.gmail.com with ESMTPSA id f2sm963167ljb.20.2017.03.25.08.33.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 25 Mar 2017 08:33:15 -0700 (PDT)
Date: Sat, 25 Mar 2017 16:33:14 +0100
From: Alexander Alemayhu <alexander@alemayhu.com>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Doubt regarding Sphinx build
Message-ID: <20170325153314.GA15129@gmail.com>
References: <CAKG5xWipwnUZ9kNMG7BJeJRSH2XP-JZ6KovuBpA0_ntb-5SitQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKG5xWipwnUZ9kNMG7BJeJRSH2XP-JZ6KovuBpA0_ntb-5SitQ@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Mar 25, 2017 at 08:52:42PM +0530, sayli karnik wrote:
> I was trying to build Sphinx documentation. I ran 'make htmldocs'.
> It gives me this:
> 
>   SPHINX  htmldocs -->
> file:///home/sayli/git/kernels/staging/Documentation/output
>   DOT     Documentation/media/uapi/v4l/pipeline.dot
> /bin/sh: 1: dot: not found
> Documentation/media/Makefile:45: recipe for target
> 'Documentation/media/uapi/v4l/pipeline.svg' failed
> make[2]: *** [Documentation/media/uapi/v4l/pipeline.svg] Error 1
> Documentation/Makefile.sphinx:70: recipe for target 'htmldocs' failed
> make[1]: *** [htmldocs] Error 2
> Makefile:1452: recipe for target 'htmldocs' failed
> make: *** [htmldocs] Error 2
> 
> Am i missing something?
>
graphviz. 

-- 
Mit freundlichen Gr��en

Alexander Alemayhu

