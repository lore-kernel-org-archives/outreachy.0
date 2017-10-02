X-GM-THRID: 6470705412124442624
X-Received: by 10.55.141.134 with SMTP id p128mr18165537qkd.50.1507023675350;
        Tue, 03 Oct 2017 02:41:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.197.199 with SMTP id k68ls1409085qkl.8.gmail; Tue, 03 Oct
 2017 02:41:14 -0700 (PDT)
X-Received: by 10.200.36.229 with SMTP id t34mr1060886qtt.13.1507023674950;
        Tue, 03 Oct 2017 02:41:14 -0700 (PDT)
Received: by 10.55.168.136 with SMTP id r130msqke;
        Mon, 2 Oct 2017 02:36:48 -0700 (PDT)
X-Received: by 10.28.149.18 with SMTP id x18mr1429402wmd.18.1506937007916;
        Mon, 02 Oct 2017 02:36:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506937007; cv=none;
        d=google.com; s=arc-20160816;
        b=ODLN5Ji8O6nNZM55dL79tfcrkNiErdnJOT+MkWIye7b2z+f1fNKMH3lHdNHsJTjKRZ
         loC5mlWavrhZqqRkvMd1NVEcTARuO9W4IA8iPjAV/8Xs6zBvjpMJyj91HPcK0G9jrGV3
         H0BUpFUf9hVDqUnBcmzrcorkefjttJOEr3uATdgppZqXQJCJoSE1xK/74+Gy8Td1lWJS
         JoGO4qbzd3rxp+2OA/4Acu8ycIXintBGsJ+wrtp4K3xUCnnpfsNElQBLOIL7O+Od/EOt
         vci+10jEyNIds0ouz+3XGjR1mGiITsBTxNZec99TsedDT3zEjcvcYf16qkjemXdYJQlm
         B0BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:arc-authentication-results;
        bh=uid2jfJjfiK4lL+S93CZf8L0tTSQZbJhNJZ8Z3/Hink=;
        b=G2tw2HwuslieLfzZBQPfHVowREMvOnr+4G9Hz+JkMXAZo8VJ7UThfRDvqZyim9UdtR
         XcamzxFv+uavjVU/kk0RPGcxJrTblaO4+JOgS35rWA097dj83R+qLMw7B85Xa1CcHdzv
         7U3HjtY3fEBsib2EWwrvAq30JVuudzLviPK0i1lJ8l3VQDFIO/tNvC4F0mIogrNP9bg2
         hdQ0rpPSeZhMepIQh+ZXlIyJTDdUlHjXCl7q28LRhRBk+1DxuWk7ExTucJkMjbBUEZUW
         k0zB/pgwkvf1jhjWOZjhsD/o7KwclqJRT3xxWRTpSzVscmZm+OozV3oexomGATquhAb4
         nsUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=HWKc6bTW;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id n82si596298wmg.3.2017.10.02.02.36.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 02:36:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=HWKc6bTW;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm0-x235.google.com with SMTP id m72so9358029wmc.1
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 02:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=uid2jfJjfiK4lL+S93CZf8L0tTSQZbJhNJZ8Z3/Hink=;
        b=HWKc6bTW+OwB2CXBKqlC/QVtLM2DqfBHYojiIyztnQGob9G7KihAK/oIcVQ6yvS9hB
         YdYt6yyAhUnp7hCr2dZ9edgFWfAlaN4DEhfQndGpk38epQckGmwBvqnw0b7UEvVn1ji0
         1pjs9DavJFRTGvlaY381kU5rX9JlMGZo7Q6Cs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uid2jfJjfiK4lL+S93CZf8L0tTSQZbJhNJZ8Z3/Hink=;
        b=oZSCk73Tt+89fMJuvfUmgD96v7S2og4mOVAD4m4PXEBOiu3YtbJzznBLnYiso3vmYV
         Ed9ToP68ebVqRFxWcwUkvnVaorsyd7CZrhoKq8vgYNNuIv7OkyuYW9nIT2hg8+rGOVe1
         SSnMAHZdoRRBAEhfS/QRDcUVpDeUGnNxsPg3AXNHylJlSyaHYdxggY8RFxlkkCHuDiTZ
         UGT7EBdO9Tmo49sZsylX0AFse3LT/i+jsCjoNVeIfWUxkPdCSubQUc/l3uJArcW42ot0
         y5HoiMAetPe5fYVJmHwucKf116I7Djxhf30AE3epBZGRAsot3s2aH4YbtLgTZTeGIhhs
         Mpsg==
X-Gm-Message-State: AHPjjUhk+yO1wJUy3q7ofyIzCPEl0ATpytd0HAhJ+YvBNLKje1AJMVXt
	kteiahT+KC82g0QNXRuyVvQRqA==
X-Google-Smtp-Source: AOwi7QB6TIuZoJnqet8xU9Kfm61LhugiQbqWAG4hF0Ev2cbfb9LQPAgVdD3j5Y2AtLBnPcbglrX1+Q==
X-Received: by 10.80.225.3 with SMTP id h3mr19677643edl.281.1506937007687;
        Mon, 02 Oct 2017 02:36:47 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.124] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id e50sm8994383ede.18.2017.10.02.02.36.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 02:36:46 -0700 (PDT)
Subject: Re: [PATCH v7 1/3] backlight: Add
 IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 noralf@tronnes.org, outreachy-kernel@googlegroups.com,
 dri-devel@lists.freedesktop.org, Lee Jones <lee.jones@linaro.org>
References: <cover.1506878301.git.meghana.madhyastha@gmail.com>
 <7a6311819f8eea0b2845c25cca72324b25e63e13.1506878301.git.meghana.madhyastha@gmail.com>
 <527a54b8-d67a-651c-3326-4780b9f3cfc4@linaro.org> <87r2um53zj.fsf@intel.com>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <e0b74c8d-9454-4519-816b-2c580ad59b2a@linaro.org>
Date: Mon, 2 Oct 2017 10:36:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <87r2um53zj.fsf@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 02/10/17 09:49, Jani Nikula wrote:
> On Mon, 02 Oct 2017, Daniel Thompson <daniel.thompson@linaro.org> wrote:
>> On 01/10/17 18:26, Meghana Madhyastha wrote:
>>> -#ifdef CONFIG_OF
>>> +#if defined CONFIG_OF && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>>
>> The above comments are more important but why does this mix defined and
>> IS_ENABLED? Couldn't they both use defined (and preferably with the
>> optional brackets around the CONFIG_ symbol).
> 
> No, always use IS_ENABLED() for tristates when you want to match 'y' or
> 'm'.

Oops.

Actually it was the mis-match in the original code that attracted my 
attention (defined on one side, IS_ENABLED() on the other)... I'd be 
happier if both used the same approach.


Daniel.

