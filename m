X-GM-THRID: 6949513279876104192
X-Received: by 2002:a05:6638:3293:: with SMTP id f19mr20540210jav.0.1618061838819;
        Sat, 10 Apr 2021 06:37:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:1d04:: with SMTP id i4ls2687562ila.0.gmail; Sat, 10
 Apr 2021 06:37:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyiq4nySpglA1PvBK8A0ll8TJygjF79rChDPDawP8AlSPri0sC0fon6lpzw1qWQ7Ak99XVy
X-Received: by 2002:a92:c944:: with SMTP id i4mr15328847ilq.305.1618061838030;
        Sat, 10 Apr 2021 06:37:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618061838; cv=none;
        d=google.com; s=arc-20160816;
        b=AB4IKJESNk7+YecOy5TSnvmJHuyXgu1UZAWR6twbi0Gj4kbe36WwcKXy+JS3SXQzoq
         ODLttgommf9DIcDNZoUWY9J5ZQP8wjXcqCsuVXei3ZMaXduU/8t+hs49Su0evwhP/2B3
         xKamZ4KHJkbmAery91qrTw76vO/camh9t3R+eC8YD1olekH95+/P0IJ0FWiVjrTzYcRT
         Pq160NRQc/vjzYcUQ1NllOilkpvKxMsrr1B+FVnvl4SRN5cNtAAedNfOKMDp4wc2wsua
         0oyEQvQyCfgTfta3hDEY7LV/7UGkNizqxY4YFyJZviHFp5v1cebf2w29Y05wT5q4YL85
         x6rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QVzrjlrbODT5X6pYvA9IbhF9UE3pTeVxu5GHqVg8Uu8=;
        b=lsI2R2gwL2LcJDWiLoOks5Bbj/en5ijQ2yxX+nMPPhKZCW5Q5NE/3viDgSDWmjk774
         ftP7L04xziYXaVlQdsUOdlJtmz4/QQsRZNw62AnmRg5rWibfkqWiiZMh/LDofb9h5ja5
         7QkbGJ0GhcnddYFMm0XVnZhzfFbZUzuSl74/OVsPOG+bkGF2l37c4ZfTP8YyrM1xH7qO
         aY0jm50QoaJ9G33B85x+Lzo0lKUXgt0NfCEUVw9tOvLaoqVwCme53VlfFSeMknkmT6q2
         OOj2b7ZbIffMTnLaxkTLpjP8VQ7dLBcRklPPscmc7TlIqtpJxBwe8UEWhYA9vySm+A7T
         BdVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rKtFuIbE;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id y13si219574ilv.0.2021.04.10.06.37.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 06:37:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rKtFuIbE;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x536.google.com with SMTP id y32so5892163pga.11
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 06:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=QVzrjlrbODT5X6pYvA9IbhF9UE3pTeVxu5GHqVg8Uu8=;
        b=rKtFuIbE2Ox+dAQesBBbA5eLo9GXphDrdon3mFjAiHgmTrBr5MO5lxVM2f2kihlLYW
         pck5pPuT1a4EfEOihCTvGz9p2RnlE8+pTm7GOICIH4PpqapSSdFOtSn4ymn5ujVCAwKo
         kNYGJ4xTqAC40CchG2Iu1X7YcsD5x/B2mVGPQ3CTK15BHNS/Gb63F1sH26sLSIiDXywv
         aHW4wor2koQV+oyYTUQqaXAGLLU6gl1uErjbmyv55jlFsuTbrVTYAipWqwVmCFz6+JgV
         DmUuoS/LlC+FUmPnh8FUSddgKoxWHaiYae5LIxhDDqs6sIAeQ2235qFCG2fr64k65lUs
         QWGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=QVzrjlrbODT5X6pYvA9IbhF9UE3pTeVxu5GHqVg8Uu8=;
        b=lhzreHjm3yH4mS6aXfO3MqIA4xxQgTIK8gP73Q2jX2u6ufJpZ16GPt42COhvanAViu
         YJISfB2rLmWTZes+RZTC3txHVE+UcQioNVPgSiV0QBdCbtqolYEGODRriw7olwgfboJz
         546fbSGjh7b2T0qB32lYpQdtiyEU2E69JZ4UEk864a9qf5njGwCDAYJ28NgP4g7pm8DK
         6g++zGvLxzQM5gH31BuhDjPsAchlEHvY/eQ5tsTYQOC/a3uvrepqgXUn3QKdSMT0XTHd
         /o4ARj7xRXNZioCb64BC1VjA5kuVEBYSSl9NfY4pH2q7NRBHtJyVk4p6WzcYScOsQbLz
         8lAg==
X-Gm-Message-State: AOAM532cIhPfVBTZrLKmerOFwDpHMaXFHSzEaMxPpSn/7paz6VzVIjwJ
	jbQVne0a9OOJeod6BXso9go=
X-Received: by 2002:aa7:8dd2:0:b029:247:c334:5e6f with SMTP id j18-20020aa78dd20000b0290247c3345e6fmr5776730pfr.57.1618061837387;
        Sat, 10 Apr 2021 06:37:17 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([106.195.15.71])
        by smtp.gmail.com with ESMTPSA id q1sm5379475pgf.20.2021.04.10.06.37.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 06:37:17 -0700 (PDT)
Date: Sat, 10 Apr 2021 19:07:08 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v2] staging: rtl8192e: fixed pointer error by adding '*'
Message-ID: <YHGqBLS+IcHdkI6r@kali>
References: <YHGhdtldqAlRsPHT@kali>
 <YHGksKltkkmaUeAk@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHGksKltkkmaUeAk@kroah.com>

On Sat, Apr 10, 2021 at 03:14:24PM +0200, Greg KH wrote:
> On Sat, Apr 10, 2021 at 06:30:38PM +0530, Mitali Borkar wrote:
> > Fixed Comparison to NULL can be written as '!...' by replacing it with
> > simpler form i.e. boolean expression. This makes code more readable
> > alternative.
> > Reported by checkpatch.
> 
> Checkpatch did not report this specific problem, Julia did :)
> 
> And this changelog text does not reflect the commit you made here.
> 
Making the changes now.

> > 
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> 
> We need a "Reported-by:" line here to reflect that someone reported the
> problem as well.
>
I am resending this as patch v3. I have to add reprted by Julia, right?

> Ideally it will have a "Fixes:" tag also, but I can add that if you
> don't know how to do that just yet.
> 
> thanks,
> 
> greg k-h

