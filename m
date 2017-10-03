X-GM-THRID: 6471841659603648512
X-Received: by 10.223.142.227 with SMTP id q90mr1053855wrb.32.1507037561528;
        Tue, 03 Oct 2017 06:32:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.191.29 with SMTP id p29ls2686422wmf.8.canary-gmail; Tue, 03
 Oct 2017 06:32:40 -0700 (PDT)
X-Received: by 10.28.54.84 with SMTP id d81mr902402wma.21.1507037560810;
        Tue, 03 Oct 2017 06:32:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507037560; cv=none;
        d=google.com; s=arc-20160816;
        b=hvlZwc0spfUYMCIjaz5Sl5T7IX8U+mEKXV1YRGy70S/mEkM7k7ugFNvnAkU46gC5oG
         91P1kJtz47ohu/aiBH8KG9I9DCxeG0muKC39Ey6QA/Hl6TOGR9W9BiM0aojwk6NGvCOn
         PYvp1sJA07OlrxtFmsFoZyQVCw6x1f6yZAW1RSRGlLDvEtjEBO6s/pKX/R+i7rSuHB9H
         iINd7azrxXq/vgaK82iXuvY19XXniPHqn+uhT7wo+hracdRwEsy3Qrh8Z4iPlMpJ8ygq
         ffzJVzIzzbcXMKWAQVyV/7iJs0oHZJegDNDztHWH/J2PvQp8kzA5Hp0VmJuCBIVjX4mw
         cfwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature:arc-authentication-results;
        bh=9Tdmm3D9oaPX25fgBB0wJ9jtVHOuXVaYldABaBPkLfU=;
        b=Sweazp3gTWJjxXYhEx0Hl/fs57Trn5y8JUK0Gu4+XgJEbfz7J00kSWY3iCyoI1IpFw
         CUWZOo0JkvzDgE4tA70Aue6j637Su2NSs7oGyUoA+BwSwjLb3sbQ6bsAlOA9kdjavPCZ
         EZbHZLWYKMyIPhUmV7MeKElydMsViFE6QW6f1E5sWDIhCaSeme/mBhUpg1qJlPPp6uFn
         kzp46u4zH9phr3/tiIm1c8tKOl/QsvXG4xnJf69e6bZzEBn/XamEuTNQjrj795B5Mlul
         5NAJFgKBfvTOYqeu0+lbC3HS2+Hk0Lb9YFmAqaL72ZCIuk52lnM6xb6it//vquOeINHK
         zchQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=fail header.i=@raspberrypi.org header.s=pp header.b=I3D3O5YU;
       dkim=pass header.i=@raspberrypi-org.20150623.gappssmtp.com header.s=20150623 header.b=GA3QJ9Yj;
       spf=pass (google.com: domain of phil@raspberrypi.org designates 62.209.51.214 as permitted sender) smtp.mailfrom=phil@raspberrypi.org
Return-Path: <phil@raspberrypi.org>
Received: from mx07-00252a01.pphosted.com (mx07-00252a01.pphosted.com. [62.209.51.214])
        by gmr-mx.google.com with ESMTPS id 200si1855091wmj.0.2017.10.03.06.32.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 06:32:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of phil@raspberrypi.org designates 62.209.51.214 as permitted sender) client-ip=62.209.51.214;
Authentication-Results: gmr-mx.google.com;
       dkim=fail header.i=@raspberrypi.org header.s=pp header.b=I3D3O5YU;
       dkim=pass header.i=@raspberrypi-org.20150623.gappssmtp.com header.s=20150623 header.b=GA3QJ9Yj;
       spf=pass (google.com: domain of phil@raspberrypi.org designates 62.209.51.214 as permitted sender) smtp.mailfrom=phil@raspberrypi.org
Received: from pps.filterd (m0102628.ppops.net [127.0.0.1])
	by mx07-00252a01.pphosted.com (8.16.0.21/8.16.0.21) with SMTP id v93DSn4s032136
	for <outreachy-kernel@googlegroups.com>; Tue, 3 Oct 2017 14:32:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org; h=subject : to :
 cc : references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp;
 bh=9Tdmm3D9oaPX25fgBB0wJ9jtVHOuXVaYldABaBPkLfU=;
 b=I3D3O5YUKLc2hGjYvpPwYyTdO+wMk/46NZ7/IJmj9h3oXWaqUrXI8QEiP7U+k6ObiknW
 LzRRZsmli0cy1aU6igVgvZq1+qNuzqwdhMBl1xN2rR7QCBPlD3d5dTzg+LIZ/YUY35ci
 vGdm1rumL+cp6YlTdBCeKX6vklxLcIF+STssnXUg3evKdNPiQ7+c5fjjrlAWFcC5+SLb
 bDU9iama8aTMsVlfeSCgJ/OycKufvMS70M1Ni8fLPJtCcBnIpZXBhysErkX4CgsAb112
 cllWvLUWdb10Y9bkbzYg3ZQf64xeznQW340CA5bkICNOCyU6CO6s37efX+y86gZKAtis xw== 
Received: from mail-wr0-f200.google.com (mail-wr0-f200.google.com [209.85.128.200])
	by mx07-00252a01.pphosted.com with ESMTP id 2da0p09kq7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
	for <outreachy-kernel@googlegroups.com>; Tue, 03 Oct 2017 14:32:40 +0100
Received: by mail-wr0-f200.google.com with SMTP id z96so4378wrb.21
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Oct 2017 06:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi-org.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9Tdmm3D9oaPX25fgBB0wJ9jtVHOuXVaYldABaBPkLfU=;
        b=GA3QJ9YjfgXKD4OZt4DhBO/vQ+6pw7ao7wOGlfeCpSfJy/xnw4lAEOsJbGJL2wFqvO
         ORjvSzae2bc++KHAoBgzHGBLfG96bDWd+9086H1uKscfu3KJnlM8tcvnX2WfNsplYJo5
         dmOO0PlU3wwxaPBW+AvEbtrfT4aP4UAcw8fpRA+T2tGn03bfpRVSdhHc1PQRrSV/TX2j
         ZV0CvQS5Vkaltq+k2CtH7VkV0mMhF3aKuPAm4LNoMwK3NdYV55Z7t7Kig6nXkHjIDpo3
         kBdv5KV9iqmFbRRaVLGPaf07RzNO3PhgYsOo0V8Zsa70V/PhDPwHA0Yzw3QE8SNT+oVh
         S2iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9Tdmm3D9oaPX25fgBB0wJ9jtVHOuXVaYldABaBPkLfU=;
        b=I5CXgGYLdklKO7CSzGjtzVtacUrafYCQP24GE/Ysjg1rkp0bMeZxCSfhwzvVZ0Vcz+
         f6GmRZ97VCqUMkU/neX1V0ZaER0r6wZom6trxFMksShpDSUaBS9HTohsk0SyQ6/Be5+J
         1TRFqv99MDoyleCQZIaw5ZPhtCDRAG7opApYsdSLy3tecub5kOSXzbk0RXPv6KaBEzKn
         LtYja8HUWdslh23G+AzsS+NItHzwFSsV0JnC0OAfeBbRd3YW2IiHxAqXQxDsDP6F8mxH
         qsTrUxlIFh9LtZpSHZBfXEPR+A7V9Yvtu9J7x542ZsqO5do7JjKkFWV+dsRjqQxSqaae
         2nZw==
X-Gm-Message-State: AMCzsaUP6HLzwzXVzjT9pcxSadKBwPxDBKFkc3M06qmVSmLJRwx9+6Gi
	q7fnOw6iyjMzboA6u/B58v0L3+8gkfH0H1h309lAAaH/+IhgFtsGvxU9h1EbfuBF6FJDGNxZw+U
	IMsk4yOl6j7QVEsJV2sQhYuoSfzDNLdk=
X-Received: by 10.28.55.71 with SMTP id e68mr1109113wma.139.1507037559217;
        Tue, 03 Oct 2017 06:32:39 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA04uLUN4wMeqQsdYIU6RlxOAttj1dSrFEDZk0fKYAefM70kfGoDL9mM5+0b6O8HGHKRK0THQ==
X-Received: by 10.28.55.71 with SMTP id e68mr1109095wma.139.1507037558975;
        Tue, 03 Oct 2017 06:32:38 -0700 (PDT)
Received: from ?IPv6:2a00:2381:fdf7:14:6dcb:deb2:5aba:316b? ([2a00:2381:fdf7:14:6dcb:deb2:5aba:316b])
        by smtp.gmail.com with ESMTPSA id m28sm17145745wmi.20.2017.10.03.06.32.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 06:32:38 -0700 (PDT)
Subject: Re: [PATCH] staging: vc04_services: Use usleep_range() instead of
 msleep()
To: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Eric Anholt <eric@anholt.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mihaela Muraru <mihaela.muraru21@gmail.com>,
        outreachy-kernel@googlegroups.com
References: <20171001073056.GA7890@domino-MS-16Y1>
 <625751478.62338.1507017318331@email.1und1.de>
 <f14d5199-1cd0-5dc2-dad1-86c3b64d6598@raspberrypi.org>
 <1129250939.68869.1507036321889@email.1und1.de>
 <a36fb164-9403-c812-af14-d234bfec28e5@raspberrypi.org>
 <299205136.69039.1507037220618@email.1und1.de>
From: Phil Elwell <phil@raspberrypi.org>
Message-ID: <a227a192-f400-ed13-7f41-e331686461f7@raspberrypi.org>
Date: Tue, 3 Oct 2017 14:32:38 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <299205136.69039.1507037220618@email.1und1.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,, definitions=2017-10-03_05:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_spam_notspam policy=outbound_spam score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1707230000
 definitions=main-1710030195

On 03/10/2017 14:27, Stefan Wahren wrote:
> Hi Phil,
> 
>> Phil Elwell <phil@raspberrypi.org> hat am 3. Oktober 2017 um 15:22 geschrieben:
>>
>>
>> On 03/10/2017 14:12, Stefan Wahren wrote:
>>> Hi Phil,
>>>
>>>> Phil Elwell <phil@raspberrypi.org> hat am 3. Oktober 2017 um 10:15 geschrieben:
>>>>
>>>>
>>>>
>>>> Hi Stefan,
>>>>
>>>> On 03/10/2017 08:55, Stefan Wahren wrote:
>>>>> Hi Phil,
>>>>>
>>>>>> Mihaela Muraru <mihaela.muraru21@gmail.com> hat am 1. Oktober 2017 um 09:30 geschrieben:
>>>>>>
>>>>>>
>>>>>> Since msleep() will often sleep 20 ms for any value given in the
>>>>>> 1~20ms range, use usleep_range() for a precise wakeup.
>>>>>>
>>>>>> Issue found by checkpatch.pl.
>>>>>>
>>>>>> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
>>>>>
>>>>> the vchiq driver calls 3 times msleep with parameter 1 (millisec). Depending on the kernel config the actual time of sleeping would be larger. In order to fix these checkpatch warning i see two options:
>>>>>
>>>>> 1) Use usleep_range in order to achieve the 1 millisec at cost of a higher CPU load
>>>>>
>>>>> 2) Increase the msleep values to 20 in order to keep the current runtime behavior
>>>>>
>>>>> Do you have any preference?
>>>>
>>>> I have no preference in principal - the decision should be based on performance
>>>> measurement using the bulk test. If checkpatch is correct then using msleep(20)
>>>> should make no observable difference(*).
>>>
>>> recently i made bulk tests because of the page_address/kmap issue, but the results wasn't very stable (especially for bigger buffers).
>>>
>>> I did the following:
>>>
>>> time vchiq_test -b 4 10000
>>> time vchiq_test -b 8 10000
>>> time vchiq_test -b 16 10000
>>> time vchiq_test -b 32 10000
>>> time vchiq_test -b 64 10000
>>> time vchiq_test -b 128 10000
>>> time vchiq_test -b 256 10000
>>>
>>> Could you please provide some reasonable parameter / cases for bulk test with vchiq_test?
>>
>>
>> Bulk performance is affected by memory fragmentation - it is quicker to transfer contiguous pages. I suggest picking one size - 128KB, say - and running it once for a large number of iterations. If you were to reboot and retry I would expect a relatively similar result. Then reboot and try the other configuration.
> 
> Thanks
> 
>>
>>     time vchiq_test -b 128 10000
> 
> are 10000 iterations sufficient?

How long is a piece of string? Make it a million if you like.

>>
>>>
>>>>
>>>> In this case the precise delay is not critical, the aim being just to relinquish the CPU for a while, but it seems there is no way to express that - an
>>>> msleep_range function would be useful here, even if it was just to keep checkpatch quiet.
>>>>
>>>> Phil
>>>>
>>>> (*)I don't really believe this.
>>>>
>>>>>
>>>>> Regards
>>>>> Stefan
>>>>>
>>>>>> ---
>>>>>>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
>>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>>
>>>>>> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
>>>>>> index 631ff73..daf18e8 100644
>>>>>> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
>>>>>> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
>>>>>> @@ -357,7 +357,7 @@ int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
>>>>>>  		if (status != VCHIQ_RETRY)
>>>>>>  			break;
>>>>>>  
>>>>>> -		msleep(1);
>>>>>> +		usleep_range(1000, 2000);
>>>>>>  	}
>>>>>>  
>>>>>>  	return vchiq_status_to_vchi(status);
>>>>>> -- 
>>>>>> 2.7.4
>>>>>>

