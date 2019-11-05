X-GM-THRID: 6755490770490228736
X-Received: by 2002:ac2:53ae:: with SMTP id j14mr906852lfh.137.1572952061863;
        Tue, 05 Nov 2019 03:07:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:c4:: with SMTP id 4ls1200682ljr.6.gmail; Tue, 05
 Nov 2019 03:07:39 -0800 (PST)
X-Google-Smtp-Source: APXvYqzUpohge2/wWjN2QtfNSQyhapjETEdiXvUHzHxEnf9JWLzQO6JMRL5JE4dwrusU/Ajb8Xn5
X-Received: by 2002:a2e:9610:: with SMTP id v16mr3162370ljh.219.1572952059831;
        Tue, 05 Nov 2019 03:07:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572952059; cv=none;
        d=google.com; s=arc-20160816;
        b=Rcxi9c/ma9QCN0XzacCblEDMh8NG+GyPB3uti56StvaIIkkW0qHUpZYzjg/AYnEjTs
         mVa7FjLZ9qJDPNzMNoUfTxAzAVRznsC2F7Wi4KYO/nRODGY4/5tJW7wIEPotwB7EQ9iy
         LOoK3a2j8bzUzG9MnFxJCBmpqlLs+ysHvi1SEU0XJzeW0jnMAs3LV9Mea/t+AJCFoNgZ
         w/k+cGT5kvr+9Q+UaMwMsXcIyyR5yab2YhqRoe8Bbz0xntNy0ztuPIs+TrkCIsjd5XX2
         8iaDOjDyXLvAHDvG886TB0n69XGNd2khUFSONuCRPBS0HqIkxdYqzEUdZhDc2ODJdiqj
         c9lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:date
         :from:dkim-signature;
        bh=uam4yKu+WYMYJ5RphtXQPnJhDtJ0Zqcujz3CXjflWDU=;
        b=031UHts7wCzHlLbikyny7xNmAnY8y7BSQjALlpfScuaKIggYozlXuQHDmDZF7WHqFW
         Nr25Ln35qqr+RNM8rPlY9yhvfHTRFwygZvSN95du46tLUE3W/6Yzo+Au00EOc9lo6wFa
         F0q39iqIuVNOvE2dft8jVVDS1X2nBKkV072LM+jmFvZ1Ne0tqHJbsTEJtleJqhM3G80x
         3pUqh5H9wOj29PRLTo0wg+V5aHnZuWFuOpBq6SlEM2ePg6beCxDWUjNf403z00dkUPCa
         qSV7qC3ESI+IawfOAyAM1d6ogmliamQ5jW7AbMelpt/R83Rpqw5puLtaeIrAQRKkOiC/
         VkEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N2PWqy75;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id x23si590927lfq.0.2019.11.05.03.07.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 03:07:39 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N2PWqy75;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id q70so20368956wme.1
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 03:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=uam4yKu+WYMYJ5RphtXQPnJhDtJ0Zqcujz3CXjflWDU=;
        b=N2PWqy75qroW7rjtdCd7EbvB8HjCMOXP4R1oSiKbld5G5Phcr60+yg2bTxMNak1xZO
         c5+RtQmueIxYccx7JAR1yUKT7iWNsJ8SpsHJFmJPjPbjZZ2yuUM9zT9/Q+sQ98rjFbJO
         SUZ8oWlnA3iSexOQs6YPCF1UhNHiaSA+4+epU8Vg/pkIIbIlCCzBAZOizXboTm4dJXR1
         Cx4YKAbX3P06S66yJDRqzoTfj/P4Z2cGPXdvXeXOo+VkgFYb+FBlP6qFk8cZY9PDRZY0
         0A3iYAC5dDVSWG3rhfeiDBh2F3MW//taouRqrhPgq8TIfyUQPjnFddNkeW6zFuTh5MdQ
         Xchw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=uam4yKu+WYMYJ5RphtXQPnJhDtJ0Zqcujz3CXjflWDU=;
        b=ljuvoSjgdkpu0NUs5BFnJkK1IHdz8ogw1uS5QpuuzoFbzIWYmdkpQwULcRR0Rd9v80
         bPFICsPuQkGUueJNVnxQXwJz5hhTHURsbF4FBizGpdqZbl57P5pbMMQaC1GWmE90FyDF
         A2lGPgIHF9DincepOTsDBS3G4+TyXK4a+vHImGMkq6jBDYJb+uwPYgO2BRVCfJGiiQ1/
         jBMboTm1vGM6oRwqnEf3rMeOY12viYango5uHxa3GmFXQErXRwbEc1JmjLpOO3+50l3T
         /caBp+AJ1V2Tm7DEvwMmmphdoSwgLNBoXcC0wFFzUg5aOn4an1pGw/gbO0ge29HjIlq0
         Xdkg==
X-Gm-Message-State: APjAAAXEtOg4M6gQIn4iuiqvzE+ihMp6qDdPLWyQI+x+Kb0HFYdwSidN
	62Pn2axJZMR8YZc0Rdp17Q==
X-Received: by 2002:a05:600c:219a:: with SMTP id e26mr3479875wme.98.1572952059211;
        Tue, 05 Nov 2019 03:07:39 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.gmail.com with ESMTPSA id b17sm11175395wru.36.2019.11.05.03.07.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 03:07:38 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Tue, 5 Nov 2019 11:07:37 +0000 (GMT)
To: Greg KH <gregkh@linuxfoundation.org>
cc: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    abbotti@mev.co.uk
Subject: Re: [PATCH v2] staging: comedi: rewrite macro function with GNU
 extension typeof
In-Reply-To: <20191104164653.GA2281588@kroah.com>
Message-ID: <alpine.LFD.2.21.1911051106520.11074@ninjahub.org>
References: <20191104163331.68173-1-jbi.octave@gmail.com> <20191104164653.GA2281588@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 4 Nov 2019, Greg KH wrote:

> On Mon, Nov 04, 2019 at 04:33:31PM +0000, Jules Irenge wrote:
> > Rewrite macro function with the GNU extension typeof
> > to remove a possible side-effects of MACRO argument reuse "x".
> >  - Problem could rise if arguments have different types
> > and different use though.
> 
> You can not just get away with a potential problem by documenting it :)
> 
> You might have just broken this.  Why are you trying to "fix" something
> that is not broken?
> 
> What is wrong with the code as-is?
> 
> thanks,
> 
> greg k-h
> 
Again I made a lot of mistake. I will be more carefull.
Thanks for the feedback

