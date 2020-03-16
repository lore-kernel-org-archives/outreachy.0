X-GM-THRID: 6803797661564534784
X-Received: by 2002:a7b:c30a:: with SMTP id k10mr792750wmj.20.1584388894981;
        Mon, 16 Mar 2020 13:01:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls10067514wrr.4.gmail; Mon, 16 Mar
 2020 13:01:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvcip9mRvy88WDeNKW3DpIfB15XPb683mwZyjBFzoNZ0ut71/DVgja2B2lSWv7V4XyInUjV
X-Received: by 2002:a5d:6245:: with SMTP id m5mr1094901wrv.154.1584388892406;
        Mon, 16 Mar 2020 13:01:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584388892; cv=none;
        d=google.com; s=arc-20160816;
        b=USUchg53l0LgiKotLxIDP0haESjo7owBvmagKGVALLhLujbsRmLqjg5O0W4tyhUTjz
         +3h/TggD5RgJGUnVMDSb823GU4xRdABAlY615G9Uj+gUw7DMXq/hTr8zAFVR8yhrpFhg
         DxLpz4ZoKCXO0E8J17DB3ZHUP9vMHnXYRu5f8dqYG3+eDO253VluH7iLTpdpMp1JUzJx
         98FuLHteZFOsVDuShEQzWGOpiG9mMn/+M2w+rQrfKVvWbBoUmvbHQhDX/UHN8CorIzie
         yHURnrODqvoExwI5BHbDYwj+XLeuOfwmDME0rM7UdocNfzpVsUYndlCa6EGH5XlsfgZL
         8HRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1Ps4q9sk4bysrs+tQzA8xyTlwMTEU0uiCdcgknZBxV4=;
        b=JbO4VKCsACa4cYef3ghQaggtR6MAPaqrBI7Ve1/j65IrXiMkkuuENHb76mcNpS+C5d
         4PuxMoaCbKV1JblcIlttIppZCdeCnddd0/1nUUQcJ1Hbv3Hxd1dlq4gU6XQ+jRAFj2iC
         zNQtC1sVCMj8qJ/10p5Z8gwb4SY+TXX27FV4k5r7yz9Sp+1jCvaZtxUiw2iXzmwgAIfc
         P2hqdTdG6opTZhRAcAeb1r5rFwwxrwnd6wGiAktGkJzWGR9x4nvFXsBHZLT6+po+Pv37
         aUUHT3+O1U+2yOMmmo67tS9PI8PMz9akwzNa/aPBB7vGrKxhxxTRtsjjRVnYswNKvaE2
         rHKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=DCaV28zr;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id b5si21827wrv.5.2020.03.16.13.01.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 13:01:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=DCaV28zr;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x541.google.com with SMTP id ca19so23553386edb.13
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2020 13:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1Ps4q9sk4bysrs+tQzA8xyTlwMTEU0uiCdcgknZBxV4=;
        b=DCaV28zrSIGlc/KBQE+PMnE4CkObeULwyPvecZb69yKt9y2Sm0rr5t8vfvjvlf97gx
         1XYZC2Jcd8F5IFcrOlerGNbDu6jUJQ78TFTdDV1/mFVxj1vNM1kJeyc/wCei66Wn4PRt
         WyAXT/JBPjHYz7vi817icQedB5ejwEQr+3TuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1Ps4q9sk4bysrs+tQzA8xyTlwMTEU0uiCdcgknZBxV4=;
        b=jvDn0tE1jcpbtnb8H3VaXu26q0omCEzuf32fFRp4BRbYGtXwnYiOiUXMzUYlRqKnFe
         +WkIiJQJlLjP4WnEHqE8sfH6qlhCsMsYFuPCV0Kw0s4zfVFNM1LO8Y4RRK02oZrPKaWT
         d5vm6NISkqP8zMIx9Gr3EqTOmAdVoYYaznggvXbq7PbutJJ/Q4P+wSLDLbnoAyQckl5D
         fZWj5CC1TbBZipmChtRb8ZuQc4WkKAy3fAJPLDxA5+ZjK8HvDx08EP1OnbA6fg3YfiUn
         wMHVbSkz0D6bbjwjnvVYMEptTG1iXS7TM8rT53VIlYLu3c393evIkA9ITudm2UwgAHt5
         ZUDw==
X-Gm-Message-State: ANhLgQ2U+Id8iGC1o3bN2Wt/AhnHFX68LJIRZne1Sp3P5UkZ1eYaD5q8
	Mm2fY6ya2f4SoxGM2mcVRrWt385nWWCIew==
X-Received: by 2002:a17:906:c451:: with SMTP id ck17mr796995ejb.203.1584388892129;
        Mon, 16 Mar 2020 13:01:32 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id p34sm61529edb.63.2020.03.16.13.01.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Mar 2020 13:01:31 -0700 (PDT)
Date: Mon, 16 Mar 2020 21:01:23 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Johan Hovold <johan@kernel.org>
Cc: outreachy-kernel@googlegroups.com, rmfrfs@gmail.com, elder@kernel.org,
	gregkh@linuxfoundation.org, vireshk@kernel.org
Subject: Re: [PATCH v2 1/2] staging: greybus: gpio: improve bit fields
 formatting.
Message-ID: <20200316200123.GB8362@supernova>
References: <cover.1584131593.git.lu@pplo.net>
 <88c5f940009f75813f026ebad57fc8865b242971.1584131593.git.lu@pplo.net>
 <20200316095511.GV14211@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200316095511.GV14211@localhost>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 16, 2020 at 10:55:11AM +0100, Johan Hovold wrote:
> On Sat, Mar 14, 2020 at 09:40:20PM +0100, Lourdes Pedrajas wrote:
> > Fix the formatting of bit fields on structure gb_gpio_line, in order to
> > not confuse them with indented labels.
> > Issue found with checkpatch.
> 
> This is not an in issue found by checkpatch. Rather, you've found an
> issue *with* checkpatch, which gets confused by these bit fields.
> 
> I'd just leave this as is, since there's nothing wrong with the code.
> 
> Johan

Agreed, thank you!

Lourdes

