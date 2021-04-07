X-GM-THRID: 6946206210186018816
X-Received: by 2002:a05:6000:1acb:: with SMTP id i11mr3384785wry.68.1617789630431;
        Wed, 07 Apr 2021 03:00:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d1c8:: with SMTP id b8ls2152198wrd.3.gmail; Wed, 07 Apr
 2021 03:00:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzJBZEUPzT+baGnjI+BhbCn/OtK/2hT9DF9oBqi4bIY3Ph4JFfQNR1//nigh4cTKDEs3Dus
X-Received: by 2002:a5d:6907:: with SMTP id t7mr3408081wru.380.1617789629045;
        Wed, 07 Apr 2021 03:00:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617789629; cv=none;
        d=google.com; s=arc-20160816;
        b=b+pkgRZiHQkDjiu9sCsSAKrkxmXnajCTusjnxEOGV1YsEK9nETVmB1XvN/g48jjSBW
         MSfCwLtdzQVV4ku9B+80iElZchzktGcz9BMOi+PdLhusYGn4oz3HWqetreJ2Q7eOT5lA
         ZlZIsore/ygpk4ukrVeYECkz5Z5YNW9QK5lrrfM3LYb2y0eqlSwhPmxqXJtKy5GyoZao
         ATH8NycI6coKCoIn3p82WaBd/21Iv1HLxfD9SRhr5/hYWPwWY5cUEEGq5hM8bl8EYRd3
         z/P8Rz7ul1CWCGtXhlH4XR+ac00UQyTvCP4mZhNjzmBUpgGWFUJJASyVKBw9NL8M+X5K
         JNxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=waneLiTPyr93n33EgplSceqj/1lZ2OvepBeYFzO1CDY=;
        b=Dhz5SUxafGXrOg8eCU2/gEhaBJxEUZZYasYLiuBF2yjhs4dtOEzkyie2kHOL2/g43f
         7O+LQnS0+6gDt/s7zYQFnU7pG1ny+lmyXjvyKmk3Y2Zoruid3lz6YHx2Nr1G0ahj/1Oa
         JqAOBWUbXqOIYRY7UuWeXTR/T20lEAOjyY94P1KWMTghMmvj4ALAohJqkrOi+O3p2WYY
         U5gXuyYiKUYLEzxHMFLDVHVSD0q5ejRPk/51LkT/2/tLG7iWcnIRDr6xfvWAk7HEKKxl
         QvsKYDkFWbfyufsuxomWlZ7M2eY1etVSrUgliTIYsJ7TkCMjar6UQBStvnWrYBfUz/vY
         z1Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l9gXrPML;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id z202si419080wmc.0.2021.04.07.03.00.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 03:00:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l9gXrPML;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32f.google.com with SMTP id j199-20020a1c23d00000b0290123bb155f6aso794777wmj.2
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 03:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=waneLiTPyr93n33EgplSceqj/1lZ2OvepBeYFzO1CDY=;
        b=l9gXrPML27gIv5NpFap6oZbVP4Tv4ly4vNEAMCuZsyngDUV4qQvsQd90iJ8zznCYqV
         tbWny/27otQejhIzIbuxilv2zl1drdUW98+8msECUFcbybKNxlTJVDZ7MAh7CenAUj3Q
         wFqnBFL5nwSRXWlyrMScKPcUXabEFFrq/bHMJDrYgNTlj93evTTG8E2aPVppw3TIr9cl
         LNBKVNm6Jbp114DZCw0AayTSL34ugn1IVwGRhv7f74yT6+IrzBNOhFMi0dUfG6IAl+RC
         IH3C0asFWlUDKBjpcE/BezhKulBZBb7tEDv+FuaIwdroAHGip+ctCZrq6Qiw9twauy/8
         Z1CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=waneLiTPyr93n33EgplSceqj/1lZ2OvepBeYFzO1CDY=;
        b=hQPuQZcSkBuW8LQeYPG5cVvGi/sdxgy+Hcpeqb87No+dGimws2P3uET+jiOe+v2odv
         6+zu0DUZCrswPTmuPRz4XGM9Pu6A1DqzQWniB/v/L9+Nt5zkx8RqmYgLhkqzkpHnmBP+
         NT4ZiYO4g4VcrQsvPNknZoluMWrKFy+3l2jNOif/n7sZbwEglFq6qBv05sgn/SnhRj3I
         Src9MqhyhYqdPBAi6JDPDOWk5I0e4RXLktNswljzWrP46kpVs1rnkOPKOZI7CVTcIDFq
         u+vuucTFPiEOmgUUH9jaavv1BhA8yhK1aJ1Fkrk/ctWiNN8y/C3Jv6klLU7umByHQr+y
         vGQQ==
X-Gm-Message-State: AOAM53240reZjm2BAGjONICbjnciLYMO6xJLETbk+n+zSBzepCSmURRX
	r8sb5xy2NnYBNCB0HiUGSDBZgIjbNYpT5Ryz
X-Received: by 2002:a1c:bc8b:: with SMTP id m133mr2276492wmf.103.1617789628543;
        Wed, 07 Apr 2021 03:00:28 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from ?IPv6:2001:818:de85:7e00:ef5c:3f2a:a646:d6ec? ([2001:818:de85:7e00:ef5c:3f2a:a646:d6ec])
        by smtp.gmail.com with ESMTPSA id k131sm5635210wmf.39.2021.04.07.03.00.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 03:00:28 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: media: omap4iss: Ending
 line with argument
To: Matthew Wilcox <willy@infradead.org>
Cc: laurent.pinchart@ideasonboard.com, mchehab@kernel.org,
 gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <cover.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
 <441d27060ff6477d0ad418f41e194b96373c1f7f.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
 <20210401152844.GF351017@casper.infradead.org>
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Message-ID: <e175859f-4f68-0408-415f-a3e19f7e4874@gmail.com>
Date: Wed, 7 Apr 2021 11:00:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210401152844.GF351017@casper.infradead.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


Em 01/04/21 16:28, Matthew Wilcox escreveu:
> On Thu, Apr 01, 2021 at 04:07:38PM +0100, Beatriz Martins de Carvalho wrote:
>> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
>> index dae9073e7d3c..e8f724dbf810 100644
>> --- a/drivers/staging/media/omap4iss/iss.c
>> +++ b/drivers/staging/media/omap4iss/iss.c
>> @@ -559,9 +559,10 @@ static int iss_reset(struct iss_device *iss)
>>   	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
>>   		    ISS_HL_SYSCONFIG_SOFTRESET);
>>   
>> -	timeout = iss_poll_condition_timeout(
>> -		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
>> -		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
>> +	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
>> +							    OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG)
>> +							    & ISS_HL_SYSCONFIG_SOFTRESET),
>> +							    1000, 10, 100);
> This is not a readability improvment.  I would factor it out into its
> own function.

Thanks for the review. How can I do this? I don't know how to do this.
Beatriz Martins de Carvalho

