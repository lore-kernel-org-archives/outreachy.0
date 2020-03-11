X-GM-THRID: 6802933186338750464
X-Received: by 2002:a17:90a:3a8f:: with SMTP id b15mr3372692pjc.178.1583933844325;
        Wed, 11 Mar 2020 06:37:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:745b:: with SMTP id e27ls930497pgn.11.gmail; Wed, 11 Mar
 2020 06:37:22 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvgihTYg5PgpOlbESpwTjHygqkQbknLZwm/gDrgALP023o4V5IR7DKc8R/IqVmbgdoOCo3V
X-Received: by 2002:a63:f752:: with SMTP id f18mr2912526pgk.196.1583933842757;
        Wed, 11 Mar 2020 06:37:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583933842; cv=none;
        d=google.com; s=arc-20160816;
        b=OB2jl89/xL6OVr0Vl7cFz0PXUPQOvD8yEeVLvzo8RhLHXKkLheqSyye5pqswPLUifo
         a1mzt/8YDKsnBqiqknhwk4jiASkgYOkhM8XSXt/VgJDsKO1LWRCzmrlkMerL46XVhz47
         XSBQo520yiIJMTWlpHg6Zct9YMDwxq47JO1RBNhPWouH6hKK/X87BdQZCPUJ/pgiJSKG
         7BzyCK2hMvf052Ru5AuvDe7Agz5qh1jpqRzFpkae8dv47DjWG1C3RPhgc/+p18MYMA6h
         6cO6bZpHUvtugoinyYZGgKKEeTz24fD2rVLZH7Shfm6DigZ/Q3u14zzq2Lx/oqXq9K6d
         9zcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=QivBxb4agtthOlTj/8+nS+IsUxjiWAjHdAJg3dlM+2M=;
        b=pXYim6UV1ZLuFIrviJrFC/IZZ8KPnHOs9X1T2Fgn4EJcqcdvZWYxfraiYoeZ88tZmK
         yL4e63t0sC8dlyNwqjdIrEV2Wn7up4OlRDfa1bgNpbdofnkgqmhs2txSvocnJ7z16lKl
         YIFZ9SuEhYlRgFAvJjio2ePtTbWtLt2Q7/9SG/8p5OWqUCwC/coQfbituSwE8Cs8sERC
         VkKChf4SuuKhJROj6kNMj22q65SHjg+g08a4RN6PO8Zx/gKxkQtDsyGVwfri3ecn3As0
         BY2/Eb7kcrsJRBfr5qXADJ71HcVMbGMevR/W2THP3H6cA4IsE6a9XFT7F1TQvbpH2vXd
         x4yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=Swx6RS8+;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id c10si296686pjo.2.2020.03.11.06.37.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 06:37:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=Swx6RS8+;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-oi1-x241.google.com with SMTP id d62so1860352oia.11
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 06:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=QivBxb4agtthOlTj/8+nS+IsUxjiWAjHdAJg3dlM+2M=;
        b=Swx6RS8+tCnK2V6l/LPXzSf2TOgcxwc7olVu06Jk07ZmJfOXZzrl5+EzDzCF7n7WOB
         T8rDTe3UKpzftpqDqLt3e0Yhg2ACFTPtoT5WguLKKkeIxOvmUnX4FNr2B7Qlq620RQdy
         K0Z2+baKZu9qMES9NzhYUOi0aU5haGTqIG2yOswiYKSlXh/B9PMNK3k5DLq8Ix4gDQEk
         wq++I4HqQb44OmLanHWkhxyVsqo+wtWI8NLfkIn4eUldf9RJK3W8oGHyHsLTg6z4QEaR
         WiAEcbGQrbs16uxzGxG3BNHCAAlUtGW3S5PzgsPiLtuBo8l83awb2olMeJvMHmSrD4mi
         lu8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=QivBxb4agtthOlTj/8+nS+IsUxjiWAjHdAJg3dlM+2M=;
        b=gA18feQW17JygPw1nMbD6dAGx+hFc81absX68710GDVV+ApqeZ0ky2JmQd806mFna+
         gz4ssANkoGqEPHCwOrDaimvnQYhDnseWF/XN3EltSmURdBO1Yk4EW0dEKr8JbQwuGLO2
         4jXUFrkRz40MsmU2GX7cXFWpuQ1lSuJMJh04URqsXFThJm9ZA1mA3ChQ5r0d/d3E45dQ
         pgzG6wGQB39JeyIQZ6w1kTr55XAlscRUZCj/RPLY2pYNZDaljjqHbe+4J35pLhT/JoY4
         tbPYMTVI2JU2TehPSRy2wMWNdNxcXAe49L/Gtq7i8asr++i2FHrf5hdmBCcp6nimxnOH
         ILNA==
X-Gm-Message-State: ANhLgQ20xiKGYWZIDMUmbbxCFmrECx8n4Vz6Xr7bAbdSI//BfVcanfeG
	pq5mHlCgKav6cmk1u1WtpZ4t91i7JZQTTg==
X-Received: by 2002:aca:b703:: with SMTP id h3mr1964471oif.148.1583933842255;
        Wed, 11 Mar 2020 06:37:22 -0700 (PDT)
Return-Path: <jevargas@seas.upenn.edu>
Received: from ?IPv6:2806:106e:1f:1211:ccea:c45e:83e9:af6e? ([2806:106e:1f:1211:ccea:c45e:83e9:af6e])
        by smtp.gmail.com with ESMTPSA id q5sm5500317oia.21.2020.03.11.06.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 06:37:21 -0700 (PDT)
Subject: Re: [PATCH] remove unnecessary newline for brace
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
References: <20200311125507.GA9347@evX1> <20200311130515.GB3823904@kroah.com>
From: Enrique Vargas <jevargas@seas.upenn.edu>
Message-ID: <cfe76d9c-8803-63a9-5127-a7cdf30a5050@seas.upenn.edu>
Date: Wed, 11 Mar 2020 07:37:21 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20200311130515.GB3823904@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Sorry, I will pickup a driver from drivers/staging

For the mailing list I misunderstood this comment in the tutorial:  ....However, for IIO drivers, please also include linux-iio@vger.kernel.org....

On 3/11/20 7:05 AM, Greg KH wrote:
> On Wed, Mar 11, 2020 at 06:55:07AM -0600, Enrique Vargas wrote:
>> put brace at the end of line following coding conventions
>>
>> Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
>> ---
>>  drivers/atm/adummy.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/atm/adummy.c b/drivers/atm/adummy.c
>> index 8157925af824..6eeaa1b21f3b 100644
>> --- a/drivers/atm/adummy.c
>> +++ b/drivers/atm/adummy.c
>> @@ -131,8 +131,7 @@ adummy_proc_read(struct atm_dev *dev, loff_t *pos, char *page)
>>  	return 0;
>>  }
>>  
>> -static const struct atmdev_ops adummy_ops =
>> -{
>> +static const struct atmdev_ops adummy_ops = {
>>  	.open =		adummy_open,
>>  	.close =	adummy_close,	
>>  	.send =		adummy_send,
>> -- 
>> 2.17.1
>>
> This is an outreachy application patch?  You need to do work in
> drivers/staging/ only.  Also, the iio mailing list is not the correct
> one at all.
>
> greg k-h

