X-GM-THRID: 6947860813701971968
X-Received: by 2002:a1c:5fd4:: with SMTP id t203mr2351662wmb.142.1617688376272;
        Mon, 05 Apr 2021 22:52:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c763:: with SMTP id x3ls658452wmk.1.canary-gmail; Mon,
 05 Apr 2021 22:52:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzY82iHdEP8oqE295JTwM5hIPA2xYmhGVeTzkSeLMl0iJN9jhx2OfQ0ABWLZMjtOzMp0FrE
X-Received: by 2002:a05:600c:3506:: with SMTP id h6mr2414200wmq.168.1617688374884;
        Mon, 05 Apr 2021 22:52:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617688374; cv=none;
        d=google.com; s=arc-20160816;
        b=qXYjriG+5XJkQxHMlvgkP9hWqrAd8W06+qNklvYFNYBFcLka8OjdyAqi6bso8l4VNp
         z7sfczwCsLdEsct0vl1ywT2Q+QUqsoy2Vz7UzjeiYZdFFxZtVec4MVXFi0pJGDwW40UJ
         XW+xmYUcUSMHB1zIV6tbiKLtGVZezLjS9GxL9FcAoOooZ8aws/6Wx1lind31db4xTCcs
         NoFk1JF82t5jNR437bGAfsSSHMauOLZjEG9k+EsydsEg90gNF5iw5a6BoL7y99k/v555
         MjGkOjo4oxJRqSyA93ZS9JY5ZklJI1pYl99I0osI1H+ZJb5TslJkohXLZf8nB3Uu7TQh
         +EkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CccFDUWIMkUpmpjuW4hfyidrbW8HOgtTU4OMVCqZT6k=;
        b=vW68rl7fpORZrvoV3JaPRwHJj16EDHQk9i13hA8Csncig+KB1Km0IQmT9l3dQuf/14
         9/YMCXKPV2MIWkqFsCowHSqMxRvBN63D9ocTLJOtyCai7/oNoYT7Lnr/pOEAEAh4CRRo
         /QEECMwm+NTngJFoN/pdwwJ5Zb72CaLUeFRWhZVzjj4N/ndXo44/bM0Hg6rft4bHtcpM
         rEENSOqos1FFvT4tndGn/J7iUaSg6jGeULgsIssscduzFJHX4GjgcFtDd3WbQlbSgCdB
         50aYQ9HAf2BHYq6YZxNJ6RcwPmXqLPEEmXgISD9C/KOnIqlB1iz+J1f88oD3rFn8YoOq
         l5Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J/RAlUa5";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id b5si157393wmc.2.2021.04.05.22.52.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 22:52:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J/RAlUa5";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x433.google.com with SMTP id x15so3593332wrq.3
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 22:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CccFDUWIMkUpmpjuW4hfyidrbW8HOgtTU4OMVCqZT6k=;
        b=J/RAlUa5Zu5nQUEpePwTWZPUeBfg1ieY2FqQZDOfCdW8ljG5iPTd8uq0ahetlqjhTR
         e9Pgn48nuHef14xNrqlvliQyQjaAwQMAmpBvpXoUNXORk+Ds5FSTI68zPphaxcoiQ/WZ
         fEdsw+C2j1+8BbnX6ZyLBFFLdNSOxiRgOV5yT8+X9R2i0yEpsWjP9p+9pGo9ch/zfxeL
         JCbi8V4ins9tydYoCI+Vn4msVd+Jajgpfx+o1+VJvGPU2Ga6fim7BiA20bBJT+WVCLj0
         bp+VhN0hxYrfZBG3aY7GAQWEAeoMB32tATeT7gRTxcz6HuC12uTGQtxNDA+wDvWz7UZH
         5DEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CccFDUWIMkUpmpjuW4hfyidrbW8HOgtTU4OMVCqZT6k=;
        b=tXDkNX08p2Rz3jfNg//dgHTKECVfrVB+h01Pz8MkhCxqUDDkxhP+I+wNy0VJsi49qi
         Gf+8ze9+DhjfqNazmm5vq+C3v2tMeQBmD3++w994is7dZDjwrWaxTCBSd0aeMMYd476f
         UN5yGNuXVUVG43+9OwZWQXRqv7JsXDTj8yDFe2CCvakFz1lrRtUgmsMJHrxi+lwVOyVG
         Qrqq89eaTzqUs6W1uxt94qZ3Cie7Oyaqv/dorT5fTip7RsfpZ9rK5NkFJ1XTr2LdqG7o
         Wafg4CeYVsUkJuTOT9obiVsuBLGB+wgy10Y1QLvvYpQiwcH2NorKRJ+WFbq6+ap4prgF
         7GoQ==
X-Gm-Message-State: AOAM5316iQQr88OpMacyujbARJeV3CaF38l/Q+xpeTvik3pDG3lU35mq
	FhswKttFdM37q4ANptYCa06SqkCfprzAd1GD
X-Received: by 2002:a5d:6104:: with SMTP id v4mr31950170wrt.275.1617688374668;
        Mon, 05 Apr 2021 22:52:54 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id f8sm7790561wro.29.2021.04.05.22.52.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 22:52:54 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Correct indentation in Hal8723BReg.h
Date: Tue, 06 Apr 2021 07:52:52 +0200
Message-ID: <2303372.zkNegYAOfQ@localhost.localdomain>
In-Reply-To: <YGvttKG+RNhKAmO/@kroah.com>
References: <20210406020815.22995-1-fmdefrancesco@gmail.com> <YGvttKG+RNhKAmO/@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, April 6, 2021 7:12:20 AM CEST Greg KH wrote:
> On Tue, Apr 06, 2021 at 04:08:15AM +0200, Fabio M. De Francesco wrote:
> > Correct indentation issues of many #define and comments in Hal8723BReg.h
> > 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 604 ++++++++++----------
> >  1 file changed, 302 insertions(+), 302 deletions(-)
> 
> You forgot to cc: all of the needed mailing lists.  And your subject
> line needs some work.  But the biggest issue is that I do not understand
> what this patch does at all.  What is wrong with the original code here
> that required you to "correct" it?
> 
> confused,
> 
> greg k-h
> 
I'm sorry that I forgot to cc linux-staging and linux-kernel mailing lists 
and for the subject I had already sent a v2 patch that had 
all the required tags (staging: rtl8723: hal:).

I think that what was wrong with the original code was that 
the #define values were far from the symbols with random indentation.

For example, I changed something like:
#define SYMB1 		0123
#define SYMB2 5678
#define SYMB3            9ABC

to:
#define SYMB1 	0123
#define SYMB2 	5678
#define SYMB3            	9ABC

Notwithstanding checkpatch does not comply about that, I suppose that
my correction improves readibility. Isn't it?

Unfortunately, English is not my native language. I hope I have been able
to explain my point of view to you. If you agree, I'd prepare a v3 of the patch
for the purpose of explaining with higher detail what I've done and why.

I'm looking forward to reading from you.

Thanks for your time,

Fabio

 




