X-GM-THRID: 6948695492025909248
X-Received: by 2002:a05:6402:150e:: with SMTP id f14mr9949322edw.63.1617871932698;
        Thu, 08 Apr 2021 01:52:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls3959179edw.2.gmail; Thu, 08
 Apr 2021 01:52:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzqqeYEnzeaCu2e03+m8YkXXk8vp7KmwdULrf4Ctho5DeWi6kEDTw8h5DVCIRY8M7LdgXp/
X-Received: by 2002:a50:d84e:: with SMTP id v14mr10131145edj.357.1617871931332;
        Thu, 08 Apr 2021 01:52:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617871931; cv=none;
        d=google.com; s=arc-20160816;
        b=H6/P4GQppakjGr031sKSpHamM5YIfDUg9kUB2fUhfi9yFCos8qzerP0hKJhUaJeNFX
         GlgweyZ07fKAsoqS+aX6q6vVVH1Dbz8PB4TAnN+Lx0nYp5Yy0Mv41QfIJiQMbaDnjym/
         B07PDqUmsjhLZ82cAWghQv12+DEkV5nF95jlLrjpGXFdYDj7xTz1LoDYwrkkwc34hQ2V
         cWXq7zy7lcD6m2p4BdCYxF5xBg6GqQSX5wU9yNyxs73jRGp/jPwV5xHgjIvH2sktB/EQ
         YSxrFJS4vBbO7NwXaqmyfoiTJop+LKu3CIQUxKCI2CpAyISsqHoymohIRTRTb0hQLgG7
         +NMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=y+lmQ3hALiXCsKP1/n0DQLq9ue3zxpvU44J69w8dPHQ=;
        b=c6NOB7hEfOWPIBmGMYJ6Zo02/5WNRJ4qZGcKyjyAjlPx3Ph7/+skxGyFy/vxhr/cz6
         I9WnceHQxXl2Ou7DfKqNcrQppGlllGxV805eSTaCV8xylbKq966XU7vBWmirdNouSfg/
         BUF/5uSBAjGmf5QxIFOx3l18o7woq6uTo9KJLyJVTBP3JdpqZJ4o5vmIVtPvj7/1LFPp
         hGjG0tI29M8UupJgzwcqOUdqD7lPbIohvRqn3bSn6Y0y1ppD+eE1BjH0ZImkkSwgBrBd
         P8mKU9K8IOF6z/oVT0fHFfFVlIg7q25PDp9YmKged+XUdzGkI3KjeQ6BPCrImKsVIcof
         lRoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="p5o/rilQ";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id y16si514072edq.2.2021.04.08.01.52.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 01:52:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="p5o/rilQ";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52f.google.com with SMTP id z1so1424761edb.8
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 01:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y+lmQ3hALiXCsKP1/n0DQLq9ue3zxpvU44J69w8dPHQ=;
        b=p5o/rilQ604m+8thfELohiipXeePoWLo5nBQfmpp4rI1LiULtovWi/QspuN0+DjAYt
         dPGEcLDOiWIC5JYU0H4oSBANRGEIQOlvH+EGnIUPZ9dq3GJxTJVvw4TmsI4VtZixE3dA
         Sr5mehOXU9MZy83U3gZUo1FbPUImu+rXDF4x0H5ht00WSKQOx3fAbqF+9/s9LUj5Zr59
         BrwQzQiXNVOairgFRhB3LHlWjKySfx6kt5OmYOJhe2iCRqhW8/DYFvzvfWQliRz0i8Vr
         nO+GZExjU4DzCWB4SluJZw8ZodYJpFSJgM1R2vxYdkw8O0FmNvajHT7mJ1a5FcHjXrYY
         yNjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y+lmQ3hALiXCsKP1/n0DQLq9ue3zxpvU44J69w8dPHQ=;
        b=cRdfvJ6baCakz0DE5N9pJ9YZDS0TodCF7+PtmOI4laaLp4BNmH8mjr1P1+uWGSvIDf
         qTuvzVIFLaRBoCiXqpV0Gj6tQmOw2yD85dmjcoivJQb6aplp4vejx86H/yHPm+oXCvI5
         MhzbvOltH1Vv3V3l9HT9QtxpA2oRuB+3RUMX2r07LDJwo50O9mVfzFUYbX+woHlXTusG
         M588OJZqUwYGSITIG+2dmdTQlwPesw0cUVyUa2DVnwcxB+W+a2XVwhH57uv3iuY8yjM+
         KTZU+SbwdAHpvJhWsIYnYJRQxdHSUsnpHauAh39zY3WANeETDVbsS/YRq7Z3NEXFm3do
         KgHw==
X-Gm-Message-State: AOAM5302w1Hw3vQFVktT+IBXonqKAU+A2RJbxTWdGPAI1NrPzfo8iHQk
	S9U6/zM6HhNvL7yHJD4iP7M=
X-Received: by 2002:a05:6402:270e:: with SMTP id y14mr9901298edd.283.1617871931160;
        Thu, 08 Apr 2021 01:52:11 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id ly21sm6105983ejb.116.2021.04.08.01.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 01:52:10 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove camelcase in several files
Date: Thu, 08 Apr 2021 10:52:09 +0200
Message-ID: <2284292.R3b5UFg5HO@localhost.localdomain>
In-Reply-To: <YG7AkJjSThRbb/f5@kroah.com>
References: <20210408080714.29481-1-fmdefrancesco@gmail.com> <YG7AkJjSThRbb/f5@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, April 8, 2021 10:36:32 AM CEST Greg KH wrote:
> On Thu, Apr 08, 2021 at 10:07:14AM +0200, Fabio M. De Francesco wrote:
> > Remove camelcase in a symbol that is used by several files.
> 
> What symbol?
> 

I'm not sure I understand what you are asking. You mean
that I have to specify the name of the variable that I changed?
Or you mean that I shouldn't use the term "symbol" but write
"variable", "function", "macro", and so on?

>
> > --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > @@ -203,7 +203,7 @@ struct pwrctrl_priv {
> >  	u8 LpsIdleCount;
> >  	u8 power_mgnt;
> >  	u8 org_power_mgnt;
> > -	u8 bFwCurrentInPSMode;
> > +	u8 b_fw_current_in_ps_mode;
> 
> The "b" here means "byte" so you can drop the "b_" as that means
> nothing, we do not use this type of notation in the kernel as the
> compiler can check it for us.
>

OK, I didn't know what the 'b' meant in this context. I'll drop it.

Thanks,

Fabio
 
> thanks,
> 
> greg k-h
> 





