X-GM-THRID: 6664942000953884672
X-Received: by 2002:a9d:7587:: with SMTP id s7mr3272498otk.69.1551864749083;
        Wed, 06 Mar 2019 01:32:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:2c04:: with SMTP id f4ls230614otb.1.gmail; Wed, 06 Mar
 2019 01:32:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqz7iItHePyTb7p6D+2YOGqMwTrtuwyQ5yZ/DMkInYsx3GtJ6E3BHnytZqhoJ3HMjhJjOS4o
X-Received: by 2002:a05:6830:1109:: with SMTP id w9mr3191275otq.56.1551864748106;
        Wed, 06 Mar 2019 01:32:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551864748; cv=none;
        d=google.com; s=arc-20160816;
        b=W1ZEu+ZRiPEiryAQmPLfUgO6Rn2yWuXO4XhDgR3XwWRCM0KD30klYjbKzAMpZPSESs
         WqT1ywHKPbhqkyHiCiAx9iAcR5LnrS0w9UtQLF5cvuu1CRjiSruvx4MZEA6EZpJQwV3M
         VYpnbI0jTTqyc6U9p7gcIre2VLuNVwSZ8KhMgX0Lwsv3cJO0KIdtlCqtnKezuapqqVmx
         NQzHnZz0/IvmgHDoZQcCTSJLNolwv5DG9kTlNum7R0QLLLP76PtoHtqC41DJXNViRXfF
         FN5kOr9OnvXd3Ifkq7b9CNgXPPNUCn+IdcZSbTkWeMwik81oUrkyHa7Po68JNOb9vp/X
         TuUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8FjoFA8/2a1nFMFcEVD5/kiNC5m2QyUyeuGwJe1DjQM=;
        b=ibjtXJTHTSqvKlzwHPMDoDm+MxNqJ0CocQZ7xGNlgiEO3Htyu/l5e0pfCG1eRECnYI
         Zq1nZB+15mjLP9fiXPkDpZ5fV01HhLCpR36i7HGLtsHsh4u8E+ef62YadZJ5Fm33nn5C
         ezqAama0z4KkoKJqdrMxr8L8rdNKr2E882bdVW5LAhz81B387rw8nrBA1uOU9UN2dUrH
         VB+hVp6CuGEaYEeiXXXh3BkMlznc4SXQBKek8QoEOVhc1ryoCZloVSfF3COT3Fh8/SEQ
         4ARNPeKPmTL+1OyFIROXKbcGW0meIn5Vy61AbSuyX7bVx3y6Zf5EJLDLxcZBurP/dDsk
         gykg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KxLXChj7;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com. [2607:f8b0:4864:20::731])
        by gmr-mx.google.com with ESMTPS id l92si32991otc.4.2019.03.06.01.32.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:32:28 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) client-ip=2607:f8b0:4864:20::731;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KxLXChj7;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x731.google.com with SMTP id v139so6377394qkb.12
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 01:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8FjoFA8/2a1nFMFcEVD5/kiNC5m2QyUyeuGwJe1DjQM=;
        b=KxLXChj7+5iuhKYe3mcPrtPsQk0vLwvAym9ACbe9D1Mm+wtv3sVXe07H2YdWgvW2Jy
         AKu91hsHxzcOGm70dM0sEEpmgZh59Qc8dh99wDOABGfzGm7XMKHSWbJZicU2JNVDEq2a
         bdqKJTFRaXX0b8WEmZ6f4Fsz0InVcoDtfor23W/LIwVx3fA1QRbrWWROQhk5wLbSxb/Q
         kWkENZGRh8RndUNF6I9jSvTAPx2CuNsRHpMYsFSfqWnT8Jxvb2yMU7OdLGFJHlMStyN2
         jkDb9u4khFFMDnOjLUzd2lTsINl2ccnzTu/rOMpsgCRQIfzqqVZIDfGbajM0W+1o1UO0
         KlOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8FjoFA8/2a1nFMFcEVD5/kiNC5m2QyUyeuGwJe1DjQM=;
        b=pATRWzAIuSQutj0Lw1LqpxiHpmJofu5Vxizz4RJsZhRy0K45ePeh3h389av/ywEo/4
         +khOpNykTgGxUNxcpxFH+i2TlZuiye/KOyoijgsN//C11zTA1PwsvYmjvZGiRoRNfc8e
         ov+PUuMIgBVzkJZ2PbKBtvq9ELEmq5vI78vRy0/lPovxGx869xOoW+fWdtFT51BN61a3
         9Q0Ay7NRZ2T/KRZaC3ovVuLX5Km2bssRzdF/7ms2zwmPCw+SjcTRdEZiQ4Id2EaRJhxU
         Xq5ERNyWF38TtxFggPQ1JObsQT4j2Huwiq83T8r5j+VeeD1ut5+9hDy4wLDv/+b7hp2M
         Hq2A==
X-Gm-Message-State: APjAAAWrO0bMW0HKyMeUclmjf1g1BciqD2V9IBWhCUyLwVevs/y9F+re
	aKmPBCqwLxYtP7mjZOrvZacItl7TNqOt7XbOFZXEzBJo
X-Received: by 2002:ae9:f11a:: with SMTP id k26mr4917718qkg.261.1551864747392;
 Wed, 06 Mar 2019 01:32:27 -0800 (PST)
MIME-Version: 1.0
References: <20190306052313.GA3924@bhagyashri-Lenovo-G570> <20190306091152.GA7927@kroah.com>
In-Reply-To: <20190306091152.GA7927@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Wed, 6 Mar 2019 15:01:50 +0530
Message-ID: <CAOMPgjh09rjzr1imASGa4rN8+4f3AJKpuYKVh6btxS+tFMFgvw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] staging: fbtft: Remove unused #defines.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 6, 2019 at 2:41 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Mar 06, 2019 at 10:53:13AM +0530, Bhagyashri Dighole wrote:
> > Remove unused #defines detected by checkpatch.pl.
> As Julie said, checkpatch.pl did not detect these :(

I will modify subject line.

> Also when you send multiple patches, please properly "thread" them by
> sending them using 'git send-email' all at once which will do this for
> you automatically.

Sure, I will do this using above way.

> thanks,
>
> greg k-h

