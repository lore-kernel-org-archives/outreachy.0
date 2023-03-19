Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD311872
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 18:58:31 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id w9so38994657edc.3
        for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 11:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679252309;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v/oiSa51DAY23j1NSplIKasgX63QWO9tQJogzTkMKAA=;
        b=bV+booNrjpj7y+lPXGKRptU8wIXqg55gcyQf+/MoWciWDF4Uby1a7uJpbTTzNlLryT
         IYpt0jk3ZvSmSwBrNtGoOaOCk9yZGub0UmGCamL8AXfvZW/zUzRhHmh98ojcvVCeqfjU
         XR/8KyS6lc55MrldxioO88s27Gfwmw1x/gfDc7tMtBCZlePJzpaM74YgQGJsatS5y1j8
         cTi7/ie4ZO1YTUUV/uLn1z1p8i8morFsQ6pz3JvMKDRj6qb7TM6zrIZlGoQ4o7y39SYM
         aeq622cREhxe9RdQtxg9luXyj4jfxEPmlaryrS+PUJ5lpNa3iHx9YUK3vCfimawYv15j
         EElQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679252309;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v/oiSa51DAY23j1NSplIKasgX63QWO9tQJogzTkMKAA=;
        b=HIhaQbRYQ+WZlMbFbTnY6jIz+vpdG+W9suHQFTuC0dw39wG5igATHcHDCLepd+tjtW
         r8R01iT1TNbBR+JJYma57TOTI1LDUDy/oHCpFnB6HokbZSohHa72rsFPiCCfiYrRUdo6
         8+N7zS4ExMq71pr9oIkuRxLaqiqeafxLSIUypd20h6QInznEDcSpQzu3l7f3Utmx1PBX
         wLng4HFLaTVaebYVmLeIn5xvowK94ulSUT9Tf5HHXcjBs9I2TVvqs2c67AK7BsDRMS2+
         F5LOzkGuTpOtQIPiiq8UZVNO9c7zFSl3JAQuketq5H9CLLHopvRs5sbecFaaiVyl7XNB
         jnSA==
X-Gm-Message-State: AO0yUKV4lwXEFP7UHMMarsEidQzSZmlv3My0JKnv3+Z2N5f96vVj0263
	wmILHcObzjM9c4Np2R/V3vg=
X-Google-Smtp-Source: AK7set+3LRjI3oHHAjQAh7qE6/OpolGWHBEeK4KPO1CEUuo0gYQcaJJ7TThzRKcNHEI5KRyqss4iHA==
X-Received: by 2002:a17:906:9c96:b0:930:d17b:959b with SMTP id fj22-20020a1709069c9600b00930d17b959bmr7394019ejc.22.1679252309509;
        Sun, 19 Mar 2023 11:58:29 -0700 (PDT)
Received: from [192.168.1.16] ([41.42.177.251])
        by smtp.gmail.com with ESMTPSA id z69-20020a509e4b000000b004af71e8cc3dsm931318ede.60.2023.03.19.11.58.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 11:58:29 -0700 (PDT)
Message-ID: <9799a686-e460-212f-f3c4-4e911de5ccec@gmail.com>
Date: Sun, 19 Mar 2023 20:58:27 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: warning when converting `to_gbphy_dev` into inline function
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
References: <16c61a62-c149-bf0e-0dd7-21e4ba9c6d1d@gmail.com>
 <alpine.DEB.2.22.394.2303191625290.2867@hadrien>
 <8132a849-49f1-d280-5ce0-9d1904c8b2ec@gmail.com>
 <alpine.DEB.2.22.394.2303191719200.2867@hadrien>
Content-Language: en-US
From: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
In-Reply-To: <alpine.DEB.2.22.394.2303191719200.2867@hadrien>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On ١٩‏/٣‏/٢٠٢٣ ١٨:٢٠, Julia Lawall wrote:
>
> On Sun, 19 Mar 2023, Menna Mahmoud wrote:
>
>> On ١٩/٣/٢٠٢٣ ١٧:٣٣, Julia Lawall wrote:
>>> On Sun, 19 Mar 2023, Menna Mahmoud wrote:
>>>
>>>> Hi Julia,
>>>>
>>>> I tried to convert to_gbphy_dev to inline function but got these warnings
>>>> while building:
>>>>
>>>>
>>>> ```
>>>>
>>>> drivers/staging/greybus/gbphy.c: In function ‘gbphy_dev_uevent’:
>>>> drivers/staging/greybus/gbphy.c:76:61: warning: passing argument 1 of
>>>> ‘to_gbphy_dev’ discards ‘const’ qualifier from pointer target type
>>>> [-Wdiscarded-qualifiers]
>>>>      76 |         const struct gbphy_device *gbphy_dev = to_gbphy_dev(dev);
>>> If you look at the code it is complaining about, the context is:
>>>
>>> static int gbphy_dev_uevent(const struct device *dev, struct
>>> kobj_uevent_env *env)
>>> {
>>>           const struct gbphy_device *gbphy_dev = to_gbphy_dev(dev);
>>>
>>>
>>> So dev has been declared to be const, meaning that the current function
>>> should not modify its contents.  But dev is passed to your function
>>> to_gbphy_dev that does not declare that its parameter is const.  So the
>>> compiler is concerned that your function may modify its contents.
>>>
>>> There are other calls to to_gbphy_dev where the argument is not declared
>>> as const.  So one could be concerned that a function is not possible,
>>> because some calls have an argument with a const type and other calls have
>>> an argument that does not have a const type.  But this is not a problem.
>>> You cannot pass a const value to a non-const parameter, but you can pass a
>>> non-const value to a const parameter.  And to_gbphy_dev doesn't actually
>>> modify its argument in any way, so changing the parameter type to const
>>> struct device * makes the code compile.
>>
>> understood, so, no problem to keep the inline function as it is, right?
> No, the function has to be changed so that it compiles.  Read the above
> again and look at the code to understand why.


yes, I misunderstood, but fixed now.


Menna

> julia
