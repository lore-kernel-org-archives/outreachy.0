X-GM-THRID: 6949457058068430848
X-Received: by 2002:a05:6512:3af:: with SMTP id v15mr9503427lfp.129.1618047921964;
        Sat, 10 Apr 2021 02:45:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls321644lfv.1.gmail; Sat, 10
 Apr 2021 02:45:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyj/ibVGTRVP5vHXoT901k+FBx8wzphFSRccbJBHTNQhJQ7k8tHxkxU3kU4bS4B5TToWKkp
X-Received: by 2002:a19:4352:: with SMTP id m18mr4445789lfj.246.1618047920462;
        Sat, 10 Apr 2021 02:45:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618047920; cv=none;
        d=google.com; s=arc-20160816;
        b=W2C3fWPw4R7j6n1GXibmjct8F/rjpV8sfjIhgUWhW7iRYLdMpDNn6A+i4TQliLeiRX
         lpP5P3OtHW1YWr/qI1lF+qOVPLxROuJ3Zx8nAp80ejWgcaomdgX5xdjj+ma1Oz+VMfi5
         VOna/A4wixORL6UVXeEP36hGQKH2rC9XPTTJQW68EXz3u/ap1RntfmsRXVEA5OBBgY0O
         j3HpwcN3kgh+dpKrN9Lx5fr34V/Zw+9HDkP2WYQnr+pTCIo3fNTO//mc6PYyiSz4pfD6
         x9Je869yRxzIVfS8bCGeJcVohmR+ya5SeS+cXXvC8M7/0iuRgNgNWbbt7CV5mzOfrfTD
         fpAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=moesTed4SVvjaNssZNC/2a+G5e9IgTbR1YQQGq/nOzU=;
        b=ArzhBWDSWPNI8hcF1ikTUW0aG7S6lqXZR0Ffif+5Ldwivj6uRlCSMAM8XWLJu8QJ8i
         xKmu20m/GbD0B9FLdb0OKeb4bfSUNQwh26NT0Qthna60RI21XgvhdsYkvekoAldKp62u
         w8dOzGV0kTY5eMWeAKYdt6nLZxN52vvEGxzER20OY7pSODSM5HbYneU0ixSDgpXrc/K5
         6Q+elmTIhHJObKEWFcDdhe2ANLO5x12EnOaYSnhmih2koicApH8U3Ek6rxYXhgABQycY
         eeHn80cAYOnJzJhpz4tUXbUX/P9LCSWGcwvRxPuqObn9dtb978pn5DPcWzH3PMLgUhOT
         kHtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MWRDyMOn;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id z5si357258ljj.5.2021.04.10.02.45.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 02:45:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MWRDyMOn;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x633.google.com with SMTP id w3so12372303ejc.4
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 02:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=moesTed4SVvjaNssZNC/2a+G5e9IgTbR1YQQGq/nOzU=;
        b=MWRDyMOnBOY9P85izdF6hnKFStsJyXxJ9F/MYorK3rfWvKQ+wJXuUxkBEBwL02H3jE
         wa++ClxVuTMr+B+zcOVFWZAcfcGP21+VWc8xH31dXXK6+7drtQDapNjBwedSMDXkRWkB
         XaitJhrrtRVDE2xGmYOfpA4TTalHHFEggMa/9OfI98KaIQDB/5v2OUitWBYjMbMlansU
         VumQiVl8Wr6Wfkb7Zkkqo5HQXZV31HHpP+K19cRk5YwQo+DpzN6XL6WGqeGsMKBRlg9z
         Qw9koEAffMF1fhc0l+w0shxSlZCyGB8XEwTyvQvf3tw1PAcBeMYlDmtRMDzHMGMKKslf
         OE2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=moesTed4SVvjaNssZNC/2a+G5e9IgTbR1YQQGq/nOzU=;
        b=Kj7/wpdRRMPoXzq3BNNU+kuqtYeN4jf7JFQzZLGZ8kBMpxuOtf73GnzeN/dhlhRLya
         LSDVauA7SNvdFC38+qNlxoX2mgyyM0dCR4EJe5f6DZQL7TqI5dSla3mdMF3fwqS0BRsS
         Q2UapQ+WlLFFvbIAe1CAMjqTK09nqORlCHizK7Dk98CIKjul790Mxiz13CEUl1apQFNF
         04DoeesRttghh+cbauAYRz7KPHSLK8YDjrtfqMUIeWZUZBcdigP3FcXh/2Zh9AWejAM7
         ojxDhT76trJ8ks8G+BZuDjesvSq+eMFNwmG89FfmmeDsH0iASgODysdl0T9AJJ+E9pV1
         TMhw==
X-Gm-Message-State: AOAM530hodMv1wOBwEAsF9TtU2IYOP6dXXj2crpv2QF6Rd1mCr51jzES
	OEEhI5Zwfdr3G5PAYco2xFA=
X-Received: by 2002:a17:906:5413:: with SMTP id q19mr721766ejo.8.1618047920066;
        Sat, 10 Apr 2021 02:45:20 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id j1sm2434983ejt.18.2021.04.10.02.45.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 02:45:19 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v7 1/3] staging: rtl8723bs: Remove camelcase in several files
Date: Sat, 10 Apr 2021 11:45:18 +0200
Message-ID: <3026831.3QyE5GyAct@localhost.localdomain>
In-Reply-To: <YHFwkJlTNxQwPyN3@kroah.com>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com> <20210410092232.15155-2-fmdefrancesco@gmail.com> <YHFwkJlTNxQwPyN3@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday, April 10, 2021 11:32:00 AM CEST Greg KH wrote:
> On Sat, Apr 10, 2021 at 11:22:29AM +0200, Fabio M. De Francesco wrote:
> > Remove camelcase in bFwCurrentInPSMode, a variable used by code
> > of several subdirectories/files of the driver. Issue detected by
> > checkpatch.pl. Delete the unnecessary "b" (that stands for "byte") from
> > the beginning of the name.
> > 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> 
> Why is there a "v7" in this subject line, but not all the other lines?
> 

It's v7 because only this file (and not the others in the series had six 
previous versions that you dropped. Please remind that it was already sent 
alone (not in a series) several times. The changelog is in the body.

Should I drop that "v7" and the changelog, and the send the patch series 
anew?

Please, I'm waiting your instructions on what to do.

Thanks,

Fabio
>
> It should be in all of them, including the 0/X email, git format-patch
> will create it automatically if you tell it to.
> 
> thanks,
> 
> greg k-h





