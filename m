X-GM-THRID: 6809468497850007552
X-Received: by 2002:a0c:a2c5:: with SMTP id g63mr12814871qva.114.1585594127147;
        Mon, 30 Mar 2020 11:48:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2521:: with SMTP id v30ls7333832qtc.6.gmail; Mon, 30 Mar
 2020 11:48:45 -0700 (PDT)
X-Received: by 2002:aed:30c1:: with SMTP id 59mr1523103qtf.106.1585594125883;
        Mon, 30 Mar 2020 11:48:45 -0700 (PDT)
Received: by 2002:a05:620a:21cc:0:0:0:0 with SMTP id h12msqka;
        Mon, 30 Mar 2020 11:42:13 -0700 (PDT)
X-Google-Smtp-Source: APiQypKdxyskdpPPg6go9tcHKCYvRGVuf8GgwbExecnY62d6gUly3b8u5lyQv/7pc69IHHnPzBUS
X-Received: by 2002:a2e:b6c2:: with SMTP id m2mr7796842ljo.72.1585593732445;
        Mon, 30 Mar 2020 11:42:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585593732; cv=none;
        d=google.com; s=arc-20160816;
        b=L6gDtDdUix+FALJcvfgbmPJJUjtGo02lJsGAvazpUV/7fgjJ1B6uasW5BmH+x3TZMJ
         ywjIP1Q2NMk0Mgllh5YxMzGLFD72ZPwHoLwEcz2QNzQjFJQHjJAETOsaAFjksCxP4zf7
         GY5E5rTB4+HsvOL+Q3/oAc1YCGVbjpe8GqsQZfDFpE4SRGBy89U7E4k8rzgKnNFqv97K
         2OMVniPeso1R6L0X5YfpQYgfSwGBgmtgOJBQt06Y8sOehU9o4zYQVqiaeQ1pWYmPkSDm
         o0ursN+bcbqmt94is/RYUW0jSRMqMrCmZ/+0CQyV1BKdapuhytMJVONaKN1lmE8KFs4P
         /6cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=8XRhKogyecKsSV4qW1x8hTrVeQGUH4iCc/CcjgU9mck=;
        b=Xz1AkjZAd4sE6vIjd11DLw0gzycUacO4TBP7eWixrJCe008nPCT0vztW6KJ0Ow2rAz
         DEAvyp7+HgwOkVICnyEYUCdcSfdycEzRSCn9Oe1CM3bWePsgu8HiqIQKrHRZ1pXDTr0G
         fptG8pP3hhq65ARj8M5nRAskkGbbVIx17E8KU1GnyapISBTUQCm3kIs0NbXvqj2iPh1K
         q8fw577G8l5hVbr+WHOkvWT8sBOd3EWyzJRalgS0Q0x8e5am1e9DFH12Zw7unUnv36MP
         X8cRpzADoDvPt9zWiPNJu1prtIIjz66vPWYkl3f7XmhG+QOt2E89LN0A7tMkwzedXJLW
         HGQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TisMD6pc;
       spf=pass (google.com: domain of tvboxspy@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=tvboxspy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <tvboxspy@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id t17si549683lff.0.2020.03.30.11.42.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 11:42:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of tvboxspy@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TisMD6pc;
       spf=pass (google.com: domain of tvboxspy@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=tvboxspy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id 65so22996387wrl.1
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 11:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8XRhKogyecKsSV4qW1x8hTrVeQGUH4iCc/CcjgU9mck=;
        b=TisMD6pc6Nd4x3AkXj4VNDomK/Xtj35nFvmaVY4nv5rIDfxx33N2APlyiTAHrAV+VP
         zs3VrrOhOHSW+aVcm+6AvKmp98Pt+z0Y8y5UmKhv4JeMiSxNUTUO5Ix8BJb+XZJyzhGB
         oTMdBAs918AYZFoFmsY4UszXjdtDqyW5zEtiBETWyWNgj4TMCM+QPTIZU4rLIfzexAGa
         BY5Ma5FjSYgeqDmOcliXyrw/KopFnuxwxjlhy3tD3YYxS6PHFG3OiL0Uyn3gJhNNc/k1
         ljVqKTfWz0UZ7WX1nu+jqrMgspXlghGq2KicbbSiNAaNwix6NK5IiT33+wtJOyIhAV5Y
         LYBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8XRhKogyecKsSV4qW1x8hTrVeQGUH4iCc/CcjgU9mck=;
        b=JAZrwoO2BsOe4SBfZ/2eIlVEmX0VT3u3/BDG0gxMQ/Bq8D7Q2e2JmRQnrZj0w8nG2u
         fMbpAhwc7k+sstZk8KOZB0neR8PdEtz/bA2sT9B22MyihyqzMqCUyWXc4vANUfO+HAk2
         d+GhHKecQqdOOlSuO0B9/MP0KeOEGmQZ5xdCZWZYmWzp5h1tlBCMS2w6kihIux7OqeuP
         f9BT5/YF2b3W21R20s7QmESj456nnlJknWBloqBYCfKHK+GMajDyZsSX4L/qfBmuZEbn
         nJzQIpBpaqkAPpmX4oHYIYvhqimz2jkvQ2Xp7pq0zIhGRFAXKhYjMrbN/4M3hOkzyxmk
         0/0A==
X-Gm-Message-State: ANhLgQ2+Xz7+k9FWk0HZMpzx3eB1LMjA2bMJO0sedN6Iar99GGJnfsk4
	59eJ91Ppb5n1vRvQ8KOTFvs=
X-Received: by 2002:adf:fb0a:: with SMTP id c10mr16054757wrr.272.1585593731920;
        Mon, 30 Mar 2020 11:42:11 -0700 (PDT)
Return-Path: <tvboxspy@gmail.com>
Received: from [192.168.43.227] (188.29.165.144.threembb.co.uk. [188.29.165.144])
        by smtp.gmail.com with ESMTPSA id z12sm24608045wrt.27.2020.03.30.11.42.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 11:42:11 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH v4] staging: vt6656: add error code
 handling to unused variable
To: Stefano Brivio <sbrivio@redhat.com>, "John B. Wyatt IV"
 <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Colin Ian King <colin.king@canonical.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20200330164530.2919-1-jbwyatt4@gmail.com>
 <20200330191439.3bfcb658@elisabeth>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <c2e96efe-64d7-61d7-0c4f-58b318b47a68@gmail.com>
Date: Mon, 30 Mar 2020 19:42:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200330191439.3bfcb658@elisabeth>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 30/03/2020 18:14, Stefano Brivio wrote:
> On Mon, 30 Mar 2020 09:45:30 -0700
> "John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:
> 
>> Add error code handling to unused 'ret' variable that was never used.
>> Return an error code from functions called within vnt_radio_power_on.
>>
>> Issue reported by coccinelle (coccicheck).
>>
>> Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
>> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
>> Suggested-by: Julia Lawall <julia.lawall@inria.fr>
>> Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
>> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
>> ---
>> v4: Move Suggested-by: Julia Lawall above seperator line.
> 
> Actually, as Julia didn't suggest this patch, the place where you had
> this in v3 was the right one.
---snip
>>   
>>   	switch (priv->rf_type) {
>>   	case RF_AL2230:
>> @@ -734,14 +738,14 @@ int vnt_radio_power_on(struct vnt_private *priv)
>>   	case RF_VT3226:
>>   	case RF_VT3226D0:
>>   	case RF_VT3342A0:
>> -		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
>> -				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
>> +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
>> +					 (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
> 
> 
> Another thing that should be considered in this function is to restore
> the previous hardware state on failures, but I think the way you're
> handling this is possibly the safest, without hardware to test on.
> 
This section of hardware is controlled by mac80211 as is most of the driver.

Users can turn the wireless off then on again to try again but to date 
this is not known to fail with the hardware I have used.

No problems with hardware with this patch.

Tested-by: Malcolm Priestley <tvboxspy@gmail.com>




