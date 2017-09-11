X-GM-THRID: 6463854288984604672
X-Received: by 10.202.102.230 with SMTP id m99mr7196539oik.42.1505150984248;
        Mon, 11 Sep 2017 10:29:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.6.207 with SMTP id 198ls5873586itv.8.canary-gmail; Mon, 11
 Sep 2017 10:29:43 -0700 (PDT)
X-Received: by 10.84.191.228 with SMTP id a91mr5190759pld.15.1505150983343;
        Mon, 11 Sep 2017 10:29:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505150983; cv=none;
        d=google.com; s=arc-20160816;
        b=tmCYkfQP3h4hbnGT3cPIARaoAYrVM/RVVoRnK8rBOAPrKTlaHGcZTCaTX26vCu/Ix2
         CMDE9mYSRUG8M2+59zjOjZf7XEGso2LLCoqYUtOW7WO0KapS5BrL8XdOenJJEG/thqZs
         MQ3GPkki5/lRz1PQrRMdRngJAcRxrYEaYnbbqEUHZmSr7gi+q8vEa/tyQkUAw+9ktDGG
         jrrH2YonsVKzR2Olc68y5gusCtizk8Vwm0LjTgBy1FBRMwbmdS3Ga+Uhd+shlJr2rY7T
         FVYXH3CWTsmK/daPQ8fBlPMeNGbycqKznHHig43P+soluhZyuY8fPDZs5/EJM4Uz6+60
         JbDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:arc-authentication-results;
        bh=f543uSN+dpxSn7vmkWquFxx+bVEEihRqKYykdvneYuM=;
        b=e7zKDAr5qZTlctOZB1KaZP83Bbu3dvcaCy54oqCCAcfhY9sS7iMzQr8ePJNdc7j8Ww
         zox9PWj+DV5UDWl0KgXtJqKbE3Ss9KF3A1JqlAq2gq5+O3zZVCTrZOAGf1aW6ru/yMuh
         Ci8uqMP8T5m6NhKPv+Ggk99Mbrpd4/0TTrQX894uRTDPA6dvjALYmTeg+EvLlRtSREbH
         q4dSUSSrTybByj/XV/ZvmseCj4FYMbCck7DWxJv9rVzP+yxKXMdaIkmYF0oEtsKfLbFo
         EoArHzlHsaIe7ijIFrb6jHK8qEAYE6WuA0EjGEGSyX3T6DquKeHwggyLQdsYdmATckOJ
         us3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tJhJI/Ct;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id a12si908099pfd.2.2017.09.11.10.29.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:29:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tJhJI/Ct;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g65so4941007pfe.1
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 10:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=f543uSN+dpxSn7vmkWquFxx+bVEEihRqKYykdvneYuM=;
        b=tJhJI/CtveVFbjKiJ1y7TW7OI3xawej55LPkvybXTc9+BL5Ufh84Tv7eWkQD9OwT+v
         IlRgeR2EEF840jvDIe5UjCcKmBRsfM798IfKZtTKwTLWrr/g9NIUl8+zb0C3sFNNTJ+q
         LLXb2gRFybMOAJ2LVrpIY97VDedSj6hqd7RtmuKXcPJ7SKhlfR6CJ5E4b1Zj19v28fHe
         F3SVncT8Q44KNGEVxW91BCxulPG3vui1B80E2ImVBptSb5KuH5YpHCD+lfVJ9Q4nSqXA
         cavmznrorLbkzBHthHMzIiWS5bErXvQIQng+NjfrdxcqiPnyKW/oVlWNsKrw6bRXWzFf
         8XOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=f543uSN+dpxSn7vmkWquFxx+bVEEihRqKYykdvneYuM=;
        b=kIh3kYRLwI+Sh63Kw08F20F5LB+If8MfXjrPhDMB7RSS3/gq/Qygb1gKvIbkhFSdbW
         j1OMBhC7EZVbUeLFgCG+SVljVvzz67p70THq0wV7Srj3KLziVI900qhxEVLO2f7XuIkz
         wMcm5wUtLhCBVVbroYn8Og6Bkd5y7oszQ0DP4LM+faxniweaYUzvoezI4YZ5sRYg3vve
         +C+YNz0JMr6PmcbzdbxBjIyxjoqumTCok2K9YRbsNbKCfzgmXYqFDw4gB53ANDiPIMpN
         gRvVFCOCeptsIXK4cc0OtJ27OwTPIvmzaPwc6oAsldfUKI0KVtSDbSdYXudT/UopuPav
         vwTQ==
X-Gm-Message-State: AHPjjUjTy0gxOJaMcUKPUfUDfGe48jddnOtJ7Yxf5M6lBeSvFU+u/W7Z
	4FUZtwsIXrowlIuvgF8=
X-Google-Smtp-Source: ADKCNb40duXFkMEbNasIAQ4/a8U4bqb4xrsPbmQiuCRQOEweg+KqBgofs3HdhclKyGDryCeNknIM3A==
X-Received: by 10.84.141.168 with SMTP id 37mr14502254plv.140.1505150982842;
        Mon, 11 Sep 2017 10:29:42 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([45.113.152.93])
        by smtp.gmail.com with ESMTPSA id k10sm13126428pgq.5.2017.09.11.10.29.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:29:42 -0700 (PDT)
Subject: Re: [Outreachy kernel] Re: [PATCH v4] Staging: rtlwifi: Remove
 unnecessary 'out of memory' message.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
References: <1505036405-3702-1-git-send-email-shreeya.patel23498@gmail.com>
 <20170911163210.GA26981@kroah.com>
 <6e7b1bf6-89b9-a40e-4a67-af79312b12a7@gmail.com>
 <alpine.DEB.2.20.1709111900220.16190@hadrien>
 <6ac72deb-edd6-1026-a2e9-df6ea871b3af@gmail.com>
 <alpine.DEB.2.20.1709111909454.16190@hadrien>
 <68bf1580-c3fc-fb41-d96b-559eb7b4c7f9@gmail.com>
 <alpine.DEB.2.20.1709111924490.16190@hadrien>
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Message-ID: <63850512-a1a6-7384-61df-78969f82a228@gmail.com>
Date: Mon, 11 Sep 2017 22:59:39 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1709111924490.16190@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On Monday 11 September 2017 10:55 PM, Julia Lawall wrote:
>>>> perl scripts/checkpatch.pl -f
>>>> /tmp/0001-Staging-rtlwifi-Remove-unnecessary-out-of-memory-mes.patch
>>> -f is for files, eg foo.c, not for patches.  You should be able to just
>>> give the patch file name directly.
>> When I give the file name, it is showing me 'permission denied'.
> What is the exact command line?
>
> scripts/checkpatch.pl patchfile
>
> should work.
>
> julia

Oh, yes.
Sorry, my mistake, it worked with 0 errors now :)

Thanks.


