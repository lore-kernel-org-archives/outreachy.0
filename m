X-GM-THRID: 7018482002461458432
X-Received: by 2002:ac2:57d4:: with SMTP id k20mr40602762lfo.160.1634122432883;
        Wed, 13 Oct 2021 03:53:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3901:: with SMTP id g1ls338567lja.2.gmail; Wed, 13 Oct
 2021 03:53:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyINyJ7gwVHWN3Sgoa9LhVnoEiZ2Ar6OA/PbfIXWneiC8Hv7GFVev0vuvaTph40udyOuLpP
X-Received: by 2002:a05:651c:1596:: with SMTP id h22mr35478886ljq.405.1634122430875;
        Wed, 13 Oct 2021 03:53:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634122430; cv=none;
        d=google.com; s=arc-20160816;
        b=qxA3hM6z2ZtI2RYLFkHiGTtb2SG3NLA4grWuPhz2yGC7/j07HtAwg7FCTwNVKZSEeN
         12k5u3KgDPV17ycoRSYGwxhK3OeDxrfsCLSh6GuQRf2P0Ldm5Mk7KTM/vCKgodFm3FrQ
         xOten9EC/S+J1A+JXidyNTrFaMDbrwkhvFBuy03A+C2w9EN3jA9BWeZ1WuRM0/aoDw96
         SaOiWJePzHJ/jhni9NY85eG9hp4/FraUxhS37eupvPJsaQBPi8jjIzxFa/k13fOipPZD
         kokqRnBiiejgJfWkUrM2Dg8pR4BqnmNQszBMcpntP4wZFMuGNl0HrlAsSS6mihiCqxow
         rRXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=BB3zqYO2QhRNzxwzhZrAGaFniaze27y2XdbAX6xo4OM=;
        b=JiB5oJ4CoVqu9/c0L2m/U2kKtnzwklrjjir3ByQJUO1oAD2AA3gcYhnK1YesduuEhY
         ByQRuwrYv+LS25Xv33uSyPotRoD5lyILEQrf3Jy9wO+uT+bEa9gH/t3KeDA9r6tRpq0C
         aOO34i7rIzFZTwKLHTzJUOoV9Wf5YsnVnTvpy7O1C88ySwblhlo29LrugWtw5eVo/AZu
         hmHx0AWxB+wJVUkh2RdHqddnerz68LDwrJ50bML6eIYzDvfz1g/vGJ6Anbrn+JBJ8r3o
         l4yMUYvk8XG/oqi4Xol4fXTSlPM6cEANwxtBfhJN9BKgWrExNDmTbRsZYadlDMS3XGDS
         x/vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=EYYDBAbT;
       spf=pass (google.com: domain of mike.rapoport@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=mike.rapoport@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mike.rapoport@gmail.com>
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id q4si862239lji.6.2021.10.13.03.53.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Oct 2021 03:53:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of mike.rapoport@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=EYYDBAbT;
       spf=pass (google.com: domain of mike.rapoport@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=mike.rapoport@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x431.google.com with SMTP id t2so6859587wrb.8
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Oct 2021 03:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=BB3zqYO2QhRNzxwzhZrAGaFniaze27y2XdbAX6xo4OM=;
        b=EYYDBAbTBxIboqKztPcGhOeHqR35JGKvettjdPFqZz9skZLxmRb1g2UbPtaCMtGjCh
         9NxBPVZB7hEgeZQUPPh0vYJxZAlyaPJTfKk/+s5631Mt+qh4dGQoSXgfTNsADTmNhW7o
         rBk2Zl5InYHLE2aD0Y5I8hlYswQ7xduz1yyTKejAm1A7hBJPlRfzuOagacTQNOo0imJT
         H+ZAhS5Pbk35lzzTlp4BZL6MeRm1+Qz6UnTnjezDcEDgZqE0JFJaXuutr4C5x9PSRXAX
         cWwsoQcsCiyhC1fTXUuyzSUkIr+noZBPWBvzJWf6ZGZoY/u/0P0FVrZl46yBbKYd3oP/
         eBFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=BB3zqYO2QhRNzxwzhZrAGaFniaze27y2XdbAX6xo4OM=;
        b=YFnjzXDqmVYnTCL7nQe6Cj7RtEosHdAZWo2qRw6ipVRJafA5GYn6HO4eSJXZuDIFP8
         bwqZfmoQWcRg7lKh/chUukk6up3wW/smUVs76bu7yS0JL8bC77xFB7SDlt8k/FG/sa/a
         xG+UoQq0mCeVQoUoeMnk9Fr1nL/th6k5BUMoXK96dNsnSLh19K7rD/MPrLeXcRZRUeW8
         LWAXEbZPn5uzAVPUGcnob5d0rR3OFrQDL1CzbmbJpFseW5IO7XKViC8wmvgZqlW5iQaX
         E6MkHjyZBaF0nZ+Oi4EHwvYTljbKRiSB1bB6/miZU2Gy+XPjZbVsD3yPsC7/GXu+7akU
         daCg==
X-Gm-Message-State: AOAM532UtTweMQZUHymewG1r6jx5Kzqehjw588gyykl5QoN6TmFJ5g8+
	aG0MHxIIcbD3y0E328GUoxWN5c7tITw=
X-Received: by 2002:a05:6000:1884:: with SMTP id a4mr17499296wri.356.1634122429689;
        Wed, 13 Oct 2021 03:53:49 -0700 (PDT)
Return-Path: <mike.rapoport@gmail.com>
Received: from kernel.org ([2a0d:6fc0:681:b600:7549:3ae4:fb09:62e3])
        by smtp.gmail.com with ESMTPSA id n68sm4951247wmn.13.2021.10.13.03.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Oct 2021 03:53:49 -0700 (PDT)
Date: Wed, 13 Oct 2021 13:53:46 +0300
From: Mike Rapoport <mike.rapoport@gmail.com>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] =?utf-8?B?Q2Fu4oCZ?= =?utf-8?Q?t?= install
 kernel when CONFIG_SYSTEM_TRUSTED_KEYS is set
Message-ID: <YWa6utZY5MmRQ5UM@kernel.org>
References: <d89839a7-c1c6-4768-9f5c-c9001b1239a2n@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d89839a7-c1c6-4768-9f5c-c9001b1239a2n@googlegroups.com>

Hi,

On Wed, Oct 13, 2021 at 02:34:42AM -0700, Karolina Drobnik wrote:
> Hi everyone,
> 
> I tried to compile a kernel using my system config file (Debian 11,
> 5.10.0-9-amd64). Unfortunately, when I run `sudo make modules_install install`,
> I got this:
> 
> ```
> At main.c:160:
> - SSL error:02001002:system library:fopen:No such file or directory: ../crypto/
> bio/bss_file.c:69
> - SSL error:2006D080:BIO routines:BIO_new_file:no such file: ../crypto/bio/
> bss_file.c:76
> sign-file: : No such file or directory
> ```
> 
> After a bit of a research, I found out that the solution is to comment out the
> `CONFIG_SYSTEM_TRUSTED_KEYS` flag. Mine was set to "debian/certs/
> debian-uefi-certs.pem", a file that’s clearly absent from the kernel tree.
> 
> I’m not quite sure if this is the right way of going about it. Is it fine to
> leave this one out when I'm working on a kernel or not?

It should be fine unless you work on key management and some other security
features that require this option.
 
> Bonus question: What happens if TRUSTED_KEYS is commented out? Will the *.pem
> file be generated automatically or does it turn the module signing off?

My understanding is that for module signing the key will be autogenerated
regardless of the value of SYSTEM_TRUSTED_KEYS and the modules will be
signed with the autogenerated key.

> Many thanks,
> Karolina

-- 
Sincerely yours,
Mike.

