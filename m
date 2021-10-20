X-GM-THRID: 7018981355604148224
X-Received: by 2002:a17:906:2ccf:: with SMTP id r15mr43902336ejr.182.1634734820197;
        Wed, 20 Oct 2021 06:00:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:1693:: with SMTP id hc19ls1129613ejc.9.gmail; Wed,
 20 Oct 2021 06:00:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxQt/LNU1EVrGEE1NEtgGu5FZIZRx6ixYmze9B4GGUlphbHv/cePYpwNGMR1j++ZTtoAiOR
X-Received: by 2002:a17:906:8283:: with SMTP id h3mr47250072ejx.460.1634734816151;
        Wed, 20 Oct 2021 06:00:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634734816; cv=none;
        d=google.com; s=arc-20160816;
        b=dXbwbT5Aj/vA/J27/7jqTbjEF9CvUpehCsZXyT3qbC/j3EHye5PpHeP8oPUAtpsW7O
         kDOa/Z4BcxzCO8K/NgOu2OPgF2oX9Dky8Dl80H5hQzmI60gUUvbDjwOZ4PQa1M7SmZ+O
         YpCtAAHWIv103cXdvOzAW+TEYl/MVZqJ6wWrMegZplqjE1O3BJDjaVERUYzh/HBigHEY
         plfU384xYBXjSWy/2VrBMGxxGUisA37Y0X8qKEZO86RyfYbOdu8q2/BKJdRZyS90/7yK
         1U5nDWFvUQj3MVxodHZRGHe1C9RJ9VhPFEDl/URUb5XjuJJroKxUceuF7BUs2bMvOPBT
         pFLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=SsRjS3ORkJg2jfcil1cf/QGEcInLGzlyD/i2dwi+COo=;
        b=zApsrhWeUmw3taErT6++FAxbuG97wNBYzdu80XipzpPGvcj1SGtr3th8Ss1dzrBR7h
         aOSDUswCzNzSgseQ9tbn//RNHQIyfuHEkc3PsGkkaG0iDpz8+4GrtW1famiclxs1FgMQ
         SIw58/g6xm22OPtpIF1fpLVv0V7a130xhTwGUAJYZrYpf8jzyPzHUNJy0bHbgE9EQ+Je
         MWu8BQNPyLOeFkTsLH6qrDjoSCjrqCG+RFvPs+FCqX3VMKHI8YHuWShtDCvqD9LFA5aT
         fxVudNpVCMRKlSC7iW1tBdTMbEcQd1FkzItA5zwLPg4xAW8+9PXhbsJXnx1Dg8EBEdRI
         kmHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZhQvmxQN;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com. [2a00:1450:4864:20::333])
        by gmr-mx.google.com with ESMTPS id 6si119777edx.5.2021.10.20.06.00.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 06:00:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) client-ip=2a00:1450:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZhQvmxQN;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x333.google.com with SMTP id 77-20020a1c0450000000b0030da2439b21so1581933wme.0
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Oct 2021 06:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=SsRjS3ORkJg2jfcil1cf/QGEcInLGzlyD/i2dwi+COo=;
        b=ZhQvmxQN5JsRhfSw+WBzGZI1s/Or9lYJw7PTTdhX7pCfvVkBOZzXjxO1icmz78UHBE
         /qDa29/d1e4XYtNjwLC0cd531S1hcNIN8GdeUsHRuB0tZe/YhZ8xiwuQd+CgIckdUoOQ
         w9xp0iW04/t6lJCkoA8/7x1pKNQM6jfQnaVTsp3MAMahbZw+aqqCagpzjdUFv9LP0e0c
         rRYVJ4Ulo7uzlMTmuvLy7thds5+XPKj3kh1YNNcf2rnoYBsHMY+XSS0CyirUXGvdxZK4
         qKhOFiH64IZ+lSPfESYd2RaLe7H7NAXS2edGv7mVSo7dpZxu14d2hKPVJcj/jchTXtvP
         vYfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=SsRjS3ORkJg2jfcil1cf/QGEcInLGzlyD/i2dwi+COo=;
        b=DCvA3ku7D6xsR6hLUq1TN1Soa24rKvHqHuvyuGi2gsmentWSswTciFtEpRXx82wrTQ
         6dSq4RpshuB5pk3FQ7EULnakFtTTKlffBHlWTwywMFrUKhZUiMturmtvPLRnPPdccpCQ
         OwWxwvd6jp6lnPBpNXUtl1e2mZpE1IiUihkrP2T8b8FasjZqZ8SiKYO1Kbt6exwRoOTZ
         1f6ttuuDTTFECnMda9M3WPpQ+OFjxX1nSp+Ois9Ypl4WnWdmmwiMrJy+CWNMh/ih7Ayx
         9xVtMAoXcG1TrOOd3Vad+0DgKYSIffMRbnptiKDTOHyqG4LzzPuUvBAxW+Pn96jdZ25f
         FSZw==
X-Gm-Message-State: AOAM531ZQwluOunKnPrei9QV/R7k3c13c2MHpFdsOBFE7xeWkdx/+LIb
	Jp7FDxQa945zzcEQGOpPTWY=
X-Received: by 2002:a1c:740e:: with SMTP id p14mr13322978wmc.109.1634734815712;
        Wed, 20 Oct 2021 06:00:15 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id s9sm4810885wmj.39.2021.10.20.06.00.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 06:00:15 -0700 (PDT)
Message-ID: <1577825bc2e16cf0132521772b248950de276099.camel@gmail.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Date: Wed, 20 Oct 2021 14:00:12 +0100
In-Reply-To: <20211019153601.GA451103@alison-desk>
References: <20211014174207.GA426328@alison-desk>
	 <c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel@gmail.com>
	 <20211018175420.GA446414@alison-desk> <YW5jiKHmi3/cjXQW@kroah.com>
	 <20211019153601.GA451103@alison-desk>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Hi Alison,

What do you think about my changes? Can I (or you, if you prefer this
way) update this wiki section?


Thanks,
Karolina

On Tue, 2021-10-19 at 11:04 +0200, Julia Lawall wrote:
> 
> 
> On Tue, 19 Oct 2021, Karolina Drobnik wrote:
> 
> > Hi,
> > 
> > Thank you very much for your comments. You can find an updated
> > version
> > of this section below.
> 
> 
> OK for me.  Thanks!
> 
> julia



