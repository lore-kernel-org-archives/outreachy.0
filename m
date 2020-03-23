X-GM-THRID: 6807521221589073920
X-Received: by 2002:a7b:c74d:: with SMTP id w13mr1974234wmk.189.1585006077329;
        Mon, 23 Mar 2020 16:27:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:230e:: with SMTP id j14ls828216wmj.0.canary-gmail; Mon,
 23 Mar 2020 16:27:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsvhPUjOJHOrBEZaP2lQS4uxj/IxQ7qMtuwluAlaxADOlrNOyM+Eq9+uqhsLXgv5rks5+AP
X-Received: by 2002:a05:600c:296:: with SMTP id 22mr1950526wmk.79.1585006073482;
        Mon, 23 Mar 2020 16:27:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585006073; cv=none;
        d=google.com; s=arc-20160816;
        b=rE1WhvMJfRnZxPzPg6rpIxPvq6O8CmrwH29ocWxRoGF0oHY3q2vQExd3hy9CZzJjvv
         oPodYVZLZsfAXRTkhzUBj+VV0MPxtt/RNQCtKRj2MNUjPaALBrfL91F7GqiuyCvCvuNk
         HOp9nwpibJPnZLWX7MprJ3CNXvoCc8GYfBlxmBTYnKyO6UEaDylFjbbN4H2m1OA3bO41
         iaGNsp/FTbm3IFpDVaRKypNeiuHD5koaBnUGYrARTS3cxGK+esAWz9kSkG7TJGYGXCMT
         uvSfS7tL/18BmCPR6GiSnXTb+g61kXLF94F44Wbw1jl1oiz9eRHnnR9h+gNWpnWuYDw8
         fRFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=RwfVQDDW2RfQEABzsL2MHOq069PI/BOnLVsBLgBeHu8=;
        b=l4rwHt081UngcdzKecrxo8x7nCKr8xy5JDXvdpBBqifNH2fpYFmMZNe080rGnLs9hX
         Tz36PjHbmmn2kGEcy6lvZbDv/tJ3PQ4eOZY3U5q02lGV+H+Fil2/jh1omMWk3ipBB9nF
         OCU1YRpVEPya2WgPUihDcDW0nnDeQ4XgSUMA2Va7f0SS3R68Bzknz9cPgzwFJsuijU6R
         tEMh0arN/viGC/bGKroVGfUNX77YFyM2x5e4yrO1vNVqtLj9SVyotWpM1lvCZVKS+XQW
         A3eyRHOZ9GzuyfhwqU9DT9R/t11PwHF5weFS/W+YbYa2dEkN65SnjTeeZt7oIW5XoAkO
         t7AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lYafdc9G;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id n9si67022wmi.0.2020.03.23.16.27.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 16:27:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lYafdc9G;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id r7so1206929wmg.0
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 16:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=RwfVQDDW2RfQEABzsL2MHOq069PI/BOnLVsBLgBeHu8=;
        b=lYafdc9Gwtp6zI9psq+FIq4M6enU5EU+I5SVlBPltMNH3Jo7Ldv6LMx1I5/yQndrF0
         kqYUUf8PVHGiG/HH0hSQ8RprI3PWZ96WBR448pGQC/u6KAlqm77Vvax+02yJ+hX4eAMH
         i1u4xbnQhxxs6sAswpcu+1StwradsWPAHlA6tRC4qtdjsMJgmQZ9nCrpLupzm14/O65G
         P6q9uDL2UCbRYrn03TTUkJeFbDvWtsdvbmOZmvKTv6mEf2Hwe1a+gGwNjDDy9CfFnMu3
         2V3soh6qxsOOdiQf7LQUEn1K76kSpvUXsE4dgCAc75VFHLgNsutgZ68GlNC9whZqqvl3
         MgxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=RwfVQDDW2RfQEABzsL2MHOq069PI/BOnLVsBLgBeHu8=;
        b=S3KVWLQazKHl1kykjAcsZOUpAwjc3piGDSS2/IkMh8cPH/RhgwExWKMy47JEkxbhWV
         hCSOY952yjA2xQ/YuSK7Xy/73jKoH1wCoBjNUvOhvpVfxKVS3s0fOwU0ZTFg1jhA5bzm
         vtJjmxFCQVO6WxZk/Si+2k2vkpp4l1S7FTmVPj7IbP9L72MyFWF+J+3FO1TUsbV+cLHq
         Q5KbdsvKIx68i1UE69vgXGbAjt4QVQwt4p3x26wpPdrw/PKTqNS6AsZMDwPoY9kh3Edo
         WeIQLG+vFTk+yUTrc2WuOawWmFJQH4TOAUVLOVdXbj1Ven19KI7rp2lGGd4F+Emac/ux
         TXgg==
X-Gm-Message-State: ANhLgQ2vD8SX+oQgVApNDJYwgcSpK9oHDtA3Qi2czIGgs8MuGniLUmMi
	0+5Gp6nPWDdIDW04Omuk155lG/s6lvI=
X-Received: by 2002:a05:600c:214f:: with SMTP id v15mr1953482wml.110.1585006073100;
        Mon, 23 Mar 2020 16:27:53 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.98.222])
        by smtp.gmail.com with ESMTPSA id s15sm20530435wrm.15.2020.03.23.16.27.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 16:27:52 -0700 (PDT)
Message-ID: <f6af5346914e2ca3ee1c7cab3cbd48f4ecf2be66.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/3] Staging: speakup: Avoid
 multiple assignments.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: William Hubbs <w.d.hubbs@gmail.com>, Chris Brannon
 <chris@the-brannons.com>,  Kirk Reiser <kirk@reisers.ca>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, 
 outreachy-kernel@googlegroups.com
Date: Mon, 23 Mar 2020 19:27:50 -0400
In-Reply-To: <20200323232009.o7ibnz3b7pv52pkl@function>
References: <cover.1584997290.git.jane.pnx9@gmail.com>
	 <b92dd931a07afcd2bcac397387130ffdc3c46223.1584997290.git.jane.pnx9@gmail.com>
	 <20200323221342.pdwwo55nu73kgcpl@function>
	 <a0fb888ec415ab0ac4aa8900f4e744d71599ecad.camel@gmail.com>
	 <20200323232009.o7ibnz3b7pv52pkl@function>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2020-03-24 at 00:20 +0100, Samuel Thibault wrote:
> Sam Muhammed, le lun. 23 mars 2020 19:13:16 -0400, a ecrit:
> > On Mon, 2020-03-23 at 23:13 +0100, Samuel Thibault wrote:
> > > Hello,
> > > 
> > > Sam Muhammed, le lun. 23 mars 2020 17:38:43 -0400, a ecrit:
> > > > Modify the code to avoid multiple assignments by just
> > > > doing the assignment in two steps.
> > > 
> > > The original version of the code is considered easier to read.
> > > Yes, the tools say multiple assignments should be avoided, but that's
> > > not a strict rule :)
> > 
> > Well yes! this got me a bit hesitant, but what got me encouraged to
> > make this change is that i looked for patches for the same change in
> > this driver and i found this commit:
> > 
> > 	f23519843b01fdc266dd70ca29ef0f0a54f8b064
> > 
> > which was applied for the same file main.c, so i thought this driver
> > adopted this style, maintaining a common practice?
> 
> This is a quite different beast:
> 
> -               value = spk_lastkey = pad_chars[value];
> +               value = pad_chars[value];
> +               spk_lastkey = value;
> 
> there is not much in common between "value" and "spk_lastkey", and much
> more in common between spk_lastkey and the other spk_* assignments
> below.
> 
> 
> > > > -	spk_x = spk_cx = vc->vc_x;
> > > > -	spk_y = spk_cy = vc->vc_y;
> > > > -	spk_pos = spk_cp = vc->vc_pos;
> > > > +	spk_cx = vc->vc_x;
> > > > +	spk_x = spk_cx;
> > > > +	spk_cy = vc->vc_y;
> > > > +	spk_y = spk_cy;
> > > > +	spk_cp = vc->vc_pos;
> > > > +	spk_pos = spk_cp;
> 
> Here, there is a lot in common between spk_x and spk_cx, the current
> form makes it obvious that we are setting two x variables to vc_x. The
> proposed form make its much less clear.

Oh, now iam pretty sure about it :)
Thank You!

Sam
> 
> > should i revert this change and drop it from the patchset?
> 
> Please drop patch 1 from the 3 yes.
> 
> Samuel
> 



