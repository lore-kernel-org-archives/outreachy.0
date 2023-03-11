Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B557B
	for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 10:28:30 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id q65-20020a17090a17c700b0023b3ad9572cso653441pja.5
        for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 02:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678530510;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LK0RmHVGTaPL2mDtp31tcnNUN/cW+LdqlVGeiYjI3eI=;
        b=C1+zSGzLWGmXQr9XLSgba6EaArNgjG9ZY4+zbvQB3xuANbC6ckkCuRVhqIU0S+wJiD
         6jFX5zh5hSfywRkjbLkySiobUmko2JJjze5ojtSTUydFV9dvShJ4PoyOD1p3fV5unIRn
         ubpq0ZXF5G1nK4GYjpOBz7abC3FJD/tZ4yCSUanOVMQRCxVgwCw3fj2XzZLGNTbVRVSG
         WBE5SwfWdJEEw8usu++q3jT1xuUuECaSAwL4OegB4m2Ah+L0FXdq93AC667MjHtfuTI6
         cjOxC5Q5kzTSxJdH8ZlsqQdPnj0A1VzEtdEy4kQRffqo3Zon0D9S7nUto6uq/tzIkpQF
         +pwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678530510;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LK0RmHVGTaPL2mDtp31tcnNUN/cW+LdqlVGeiYjI3eI=;
        b=iDNDmtNqwsrXsVYWIMg9UOrcbODRAuqD38Z4HLoC+WJVc6aq4FSd6194I1qFdgym8f
         oTnPn0eohe8FnA85YHKOgL6sM88P6y2yUbLdwRs0ocK6Q0QMWXtCfKzw42EZMyS4NUZ8
         qZyKcJ/P2Yg97evG+v+eKXx/PO3QT5pn2q/rsUdxv5NuhLXBTQT3uQyBVO24NnjLbLAe
         SmiRHOXj7ZGPwQS758rIvgcjZdixP3crYOaFDbeQazVjIssfIrvg5cM9S4+EOCnX4Nz9
         F3292jOaFRvpMASORSxB9ZtK/1JOmdXIOeYFrknBV2agmGdYCRV6nI8f3imEMmMoh7C5
         l33w==
X-Gm-Message-State: AO0yUKXTmcADlPyoUW6u7Tag8tKNm1NuwEMYAW1VGkgHgAZBEmoEQuvk
	cMjs6cqkiVKQu4LFgqyjzcE=
X-Google-Smtp-Source: AK7set+Y+jSEicSbwc/9ZVVsXRMYFooZ3RwrB53bWmg3RcH1Wk+5+yMS0cu/Q+FCYM6dp9pEvOheng==
X-Received: by 2002:a05:6a20:1615:b0:cc:e39e:93aa with SMTP id l21-20020a056a20161500b000cce39e93aamr31238135pzj.0.1678530509926;
        Sat, 11 Mar 2023 02:28:29 -0800 (PST)
Received: from ubuntu ([117.199.152.23])
        by smtp.gmail.com with ESMTPSA id h23-20020a635757000000b0050301521335sm1243290pgm.11.2023.03.11.02.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 02:28:29 -0800 (PST)
Date: Sat, 11 Mar 2023 02:28:24 -0800
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: outreachy@lists.linux.dev
Cc: julia.lawall@inria.fr
Subject: Re: Help in loading modules
Message-ID: <20230311102824.GA14247@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.22.394.2303111000320.2802@hadrien>

More information:

Upon running the "dmesg" it shows 
##
BPF: 	Invalid name_offset:2154618
[ 2905.429687] failed to validate module [pi433] BTF: -22
##

Also I checked under "/lib/modules/`uname -r`" in the "modules.dep" file it do contains the  "kernel/drivers/staging/pi433/pi433.ko:".

I also tried running "sudo insmod ./kernel/drivers/staging/pi433/pi433.ko" which again prints the error:

##
insmod: ERROR: could not insert module ./kernel/drivers/staging/pi433/pi433.ko: Invalid parameters
##

Other than these I also checked the ".config" which contains: 

##
CONFIG_SPI=y
CONFIG_STAGING=y
CONFIG_PI433=m
##

where the module dependencies were given as 

Symbol: PI433 [=m]                                                                                               │  
  │ Type  : tristate                                                                                                 │  
  │ Defined at drivers/staging/pi433/Kconfig:2                                                                       │  
  │   Prompt: Pi433 - a 433MHz radio module for Raspberry Pi                                                         │  
  │   Depends on: STAGING [=y] && SPI [=y]                                                                           │  
  │   Location:                                                                                                      │  
  │     -> Device Drivers                                                                                            │  
  │       -> Staging drivers (STAGING [=y])                                                                          │  
  │ (1)     -> Pi433 - a 433MHz radio module for Raspberry Pi (PI433 [=m])  
 
