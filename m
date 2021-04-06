X-GM-THRID: 6946280249577439232
X-Received: by 2002:a05:600c:4e92:: with SMTP id f18mr5816859wmq.115.1617739210274;
        Tue, 06 Apr 2021 13:00:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls617019wrb.1.gmail; Tue, 06
 Apr 2021 13:00:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyQZdsHK4vmay9tblAiWL+egEmm8NbyJ33D93b7eBjhMMcHXLc8P02jLFuSECd+30Gj/stw
X-Received: by 2002:adf:8292:: with SMTP id 18mr25013919wrc.160.1617739208894;
        Tue, 06 Apr 2021 13:00:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617739208; cv=none;
        d=google.com; s=arc-20160816;
        b=n/0Pp1Qrgx4Ml+1t1dxB39aeD0U0EYLm72pqi0fK5JO7SZEdkyMFcO489U3SJcskjw
         GdTYP0m5yV+N/xfZt8MMvxmIQv4Z4RrAgJyR80SEiEAOzhxC1CHRfX6M5wGktgmdMvco
         bh3NXf02T3G8Pon8TvuAOYBUDOLY874s9ahjGtJKbqbRdtoJjNT8ITaVt7+6dWx7yLNj
         2QDNFl1VL+DiYz1+Suc/161OyRZDgA+5cHUf+JOzMdHkZI7eMYvB3tmztLJQ8nUtCA8N
         LUo3WMgpeUEuDiX/Bby12hMoUjCfqGU9HWQApHb+CI8tntdyc+RuhjU/7CdIIhskawsZ
         x+fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Em3BrHYCkw2DM6lIWLuJHnJBfcbjTRbHrryEqft8SFU=;
        b=LTN6uf4diqJb1wOCVqRkrZ/pzp9UQHDs4KBIxYBKZzNjwzpJ5wOXPvbye3onTSySqU
         vdGuhCqC+Ojwd5RdUVU+vDzM0TOdvckp8vovtPZKQfbxvg10P3u1TfG+DClTLJutAUZB
         tA5CfLgncf38J9A5CT2if+f3+CF8jTfREioJL8SFWfjlUYjvOpS5MAdk8Sbvet/91AOK
         5ivU3VbG2Zn7LA1eHCwQyE8Bc2nP9rkwjiofR3w9ARt0KrgrUPt0Pr70O6AKpfQd+FLU
         cimMAscTIBCcC1FF37raZf1eaUV8lXvx5XiVAr6JqWrBxtYYtgrubu8nRZLxvOwHWYEx
         Yg9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SMNqtcqT;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id p65si287239wmp.0.2021.04.06.13.00.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 13:00:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SMNqtcqT;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32f.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so21500wmj.2
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 13:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=Em3BrHYCkw2DM6lIWLuJHnJBfcbjTRbHrryEqft8SFU=;
        b=SMNqtcqTNXZ4MQaPnNebupFO3q7PjtlUqD3RleYi+OVVnk6LJ3T3HdTNtNteLc0CnO
         YUtPTtsbO6BRmwb0fCEe3bgJYVr+gF/eRmzbdOdpwMsyW/HV7dKsP2paaU6tWZHNl8hg
         /vqpxkqmZDCapI0KKliMnTkEnTjvsRssOx93gnH9SrY4GFmvH2mIv1lOTvdxIR519i2w
         O4qRnsIjJjez96QsSdrjPLXQNSzcTnFsPr6ywCxEP8BQq6MQuQrp/5uauWFmsvzmfOz9
         S2hoZJUWKTrsR6hMUDw2tvvGbL7rozACNZCyoRZ0sBnL8WqG55ZtBGDxXwfkPrihVM+v
         s5cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Em3BrHYCkw2DM6lIWLuJHnJBfcbjTRbHrryEqft8SFU=;
        b=E9nCEQI8SRSMX+RMMFdIwASU0QjW64aJqH5EILtDhnS7KrbmdIlHylMZwSmteT32eO
         n7u7q8N0jboO701LpIUqDldkwP19Jmao2chOlwcw/9ysobKqtymXVZuOYW8hLM/rYNs3
         AOtam9dJR9vApjqb6WtVk7DtZ+ayvFcR7nFM5bf4J1jJJORmZytFvI781hd3vF57Ihlk
         AucvRWEc9xHpmMzouiH/2hKnLDGyXkVXsVJRRxuEqjxCiUL5wD6CmS8zzNs4aGxYI0Ba
         8IgrwFEN2cZSLk4dzJRu5ZYcuvFmAC1zLTfgZHplu2JSKTU1bFozdoBhF6BYW9rd4B0t
         YeyQ==
X-Gm-Message-State: AOAM533agWz8g+p3mnwKFGEVmMefvGK+iLBv5gV1gfNZeD4UIAfyy8/A
	xTYvqU1NePQgIYIk4JqXvInQ/UZBlvAmUg==
X-Received: by 2002:a1c:2704:: with SMTP id n4mr5705317wmn.143.1617739208376;
        Tue, 06 Apr 2021 13:00:08 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from ?IPv6:2001:818:de85:7e00:ef5c:3f2a:a646:d6ec? ([2001:818:de85:7e00:ef5c:3f2a:a646:d6ec])
        by smtp.gmail.com with ESMTPSA id t20sm4129952wmi.15.2021.04.06.13.00.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 13:00:08 -0700 (PDT)
Subject: Re: [RESEND PATCH] staging: emxx_udc: Ending line with argument
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <20210406193409.96428-1-martinsdecarvalhobeatriz@gmail.com>
 <YGy4LXHBrBb/r3dk@kroah.com>
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Message-ID: <4c7df741-4e73-2ac4-f0d8-c9513ae29c88@gmail.com>
Date: Tue, 6 Apr 2021 21:00:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YGy4LXHBrBb/r3dk@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


Em 06/04/21 20:36, Greg KH escreveu:
> On Tue, Apr 06, 2021 at 08:34:09PM +0100, Beatriz Martins de Carvalho wrote:
>> Cleans up check of "Lines should not end with a '('"
>> with argument present in next line in file emxx_udc.c
>>
>> Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
>> ---
>>   drivers/staging/emxx_udc/emxx_udc.c | 11 ++++-------
>>   1 file changed, 4 insertions(+), 7 deletions(-)
> Why is this a [RESEND] ?
>
> What happened to the first version?
Sorry, I didn't receive your review, and in kernelnewbies tutorial, they 
say if not receive a response, may have missed the patch, so I resent it.
>
> Also, your subject is odd, please look at the documentation for how to
> write good subject lines for patches.

Yes, I know. It was my second patch, and I was learning, and when I 
resent it, I didn't know if I can change the subject.

>
> thanks,
Thanks for you review
>
> greg k-h
Beatriz Carvalho

