X-GM-THRID: 6802456134444646400
X-Received: by 2002:a5d:4bc8:: with SMTP id l8mr24596175wrt.89.1583821440811;
        Mon, 09 Mar 2020 23:24:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls7119861wrp.11.gmail; Mon, 09
 Mar 2020 23:23:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsUhAQmqq4fGJxHd5OyVb6sE1+Uuegv7s9MrhcsVgiVN1vwI2bue+NJAyVuYIdoAAnpbClU
X-Received: by 2002:adf:e447:: with SMTP id t7mr4731107wrm.374.1583821439585;
        Mon, 09 Mar 2020 23:23:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583821439; cv=none;
        d=google.com; s=arc-20160816;
        b=cejJMRqHARuv18EafDpjQpzQB57G3mk3ijzXzpkIxPFyvdPy6hPkwZJtKTOlScKFRW
         KF70HL5734s+6xv0wPdHl+pDFGlCCuCIn0amyCROxQSh+nuCpAPpj3kbUV744FdqrpZA
         lRtD6K7BvF1pbiWNDgQl9c9memN7O7Pp1VcCliBfS6XC2CbEVsz5yXt4IEc+b+9NBMIH
         unGW7/1ya552zZJ80QG0suNJLpsxt/FumcSzC7su/GkwhAB3CX53MqMKLQBccZaXP/4E
         wzqN55UT2G5sizU6bXwRFZVhORRdY+0shXOQq/GrBqjZodEy2P+ck7Y3cn0D9n+w8IPM
         tMfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=eAWZV65oHYoy1kwYs0CSFdCZWSpCXRoaq5zIwLJ85Vw=;
        b=iaads+8Qc+k5UyQLey0Ykwj2jCxYpFQNI7u05L5QytKwy3xY2xAoTHcFqSQdqcniFJ
         9usUXp/g/5wSKf7Xw6FFUkdCHCDvkQmmMvu2AnSliirxs65exH4HnKr07zXie0IHoAWr
         IJDnKRjiQ1gjhn2Iges+krer1heMqoVw7L33ZHvCB/CYDU4KvjFMiE6KI0PxARm6tw3n
         hdv+klGHe3Dm6fwh0g7L/UT+0ZzvzbcvGJfkoBA2LPypfBwUj/1wJP1E0RHAP6hNs+Ps
         d4Xp0XQUjrxAUD2wDoO43PrUMRF/IBYvmRwcf0/bF8Log+s+5NaKbVkz5zPolzTDDjGz
         m1cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kg3bEXoA;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com. [2a00:1450:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id o194si85952wme.2.2020.03.09.23.23.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 23:23:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) client-ip=2a00:1450:4864:20::32d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kg3bEXoA;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32d.google.com with SMTP id m3so927717wmi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 23:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=eAWZV65oHYoy1kwYs0CSFdCZWSpCXRoaq5zIwLJ85Vw=;
        b=Kg3bEXoAsOB1S5Lx+IwuyxfU+LbmQPFi9F8GqcqOWn9eRx+wq7Apk7E4rQBeCIKFd2
         TAWgI8RKfFWNhd0OV2s3cyC0lfKRLjElbbfytpy6Xcsm0NZhC0PwM5MSkqqMwDeYH+23
         f+IZq3kTSo22KV4/s4YhOINv/weAW4AGKZquUZXTew7+cSWeUDoUGd9AygCx/gMdLuNm
         /5bETQTQl1KCwPxoJgSPPLf67w9ro8q1PtNIvyF0d8Q5ls7gdhW62k12cRdsW9AmGM/y
         IS1UC+gTYA5NpZpiV1Bpvcsj+h9D+Ah1SMcQzGE2i4t/u1zHH0hGQrDsdnriNJMXq8TY
         gXrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=eAWZV65oHYoy1kwYs0CSFdCZWSpCXRoaq5zIwLJ85Vw=;
        b=HftEK+nsSEUqPGMqm8HzojnAhYY9+RX0MgzP9PFi2C4ofQBacJ5WYSyqvBwkM63wum
         n4Tr49hXRqHv25CzCkm9/0rEqSK8XH8z6sisRmgSyaSR4QIRqbPZn9cebx7FCh5+ssyD
         GphbL0trLLxqe0+MuvMXSFvLeiTLefmtNcP3RU5mECkTISuopRC8LNk2E79NXVR1HdQw
         wwt21jY4cbr3mQFYux7Gjd0A5AaUggig6ALjeVXzqBzNGftJPv/urijCbQVadR+emnBo
         uRcY58eaSF8fzuLxJUZhbasxEBaZdMqAPUVB5iFKCxlW2XligC+s3JXWqY6isjgSh6xr
         1fxQ==
X-Gm-Message-State: ANhLgQ2lE/7gDRWsoCBnIUFAN2nFRkZ2S7D1agO2fOJGoyrjhIGT/XUL
	9dd/wRZ7x4FRvuelGdhamaPJomU5xFU=
X-Received: by 2002:a1c:13:: with SMTP id 19mr187523wma.183.1583821439218;
        Mon, 09 Mar 2020 23:23:59 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.local ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id c13sm4607409wro.96.2020.03.09.23.23.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 23:23:58 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Tue, 10 Mar 2020 09:23:44 +0300 (EAT)
To: Deepak Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Need help locating octeon_usb driver
In-Reply-To: <c4964bf2-b011-41fd-b854-182e53fce120@googlegroups.com>
Message-ID: <alpine.LNX.2.21.99999.375.2003100917001.24213@wambui>
References: <c4964bf2-b011-41fd-b854-182e53fce120@googlegroups.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed

Hi Deepak,

On Mon, 9 Mar 2020, Deepak Varma wrote:

> Hello all,
> I made a clean up change to the octeon-usb driver file. I tried to correct a checkpatch warning of exceed 80 column. However, I am not able to locate this driver in the device driver list during "make menuconfig".
> 
> I have verified the driver dependencies. I am unable to understand the CAVIUM_OCTEON_SOC dependency. Its set to unknown. Is this something referred to as BROKEN???
>

I worked on the octeon driver during the last outreachy application 
period, and managed to break some things.

Please cross-compile this driver with the cavium_octeon_defconfig config 
file in arch/mips/configs/ to ensure that you don't do the same.

As far as I can tell though, this driver has been removed from the latest 
staging tree.

wambui karuga.
> Thank you,
> Deepak.
> 
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c4964bf2-b011-41fd-b854-182e53fce120%40googlegroups.com.
> 
>

