X-GM-THRID: 6471841659603648512
X-Received: by 10.28.138.195 with SMTP id m186mr2280096wmd.9.1507036946573;
        Tue, 03 Oct 2017 06:22:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.196.134 with SMTP id u128ls1938160wmf.7.canary-gmail; Tue,
 03 Oct 2017 06:22:25 -0700 (PDT)
X-Received: by 10.28.236.83 with SMTP id k80mr2235043wmh.29.1507036945545;
        Tue, 03 Oct 2017 06:22:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507036945; cv=none;
        d=google.com; s=arc-20160816;
        b=kyFiCnaDoSkNZ/s5YSm1//Uwp4j1U0oRavVwz1t3s3NOsuhKz5ULJ7r8RkHbXFPyuZ
         nRTT78NngFtTOdSmnmip+QiW4UuDQhcPu0Mx0newtOgqKEWShx5xkAgInKJf16rMJ2+7
         67nsJCd7QAF0Zx3SWrO1B7L+T29ClSRLF8Ulgn0/Q0VNIP06jY7zJzg437myxseH0gNC
         F7YzTQNE7QtKZxyMKcRDWSaE20bGoXDQ4EfzaBaHDkZdHm8kk9Oyx+sT3Nf6I2dZ3lKt
         bufBiNNa/vorKTa5kV40C4H0gBWgZ7AzF48aktgLzi3i6QRU60o4GU73uXwqs5oIPI2A
         vZgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature:arc-authentication-results;
        bh=VtpNf1oQG41CQa9rR7qoR9Y4jA5s8HNQxTJ0SngMyKE=;
        b=xacvHpg8BBiPXbRxBaXk0h93RT9isydunZEtTOncYJ9dUB0qFY2tzaP53RifpL/982
         Z2a73w6d2lvkd0yS0cyGjGDAGMJWUhivByeQv+kpGoJNZc5vMW5nhg159InBsmd85D/V
         faZmfjkEHHoczN2FFWHEMQLtO3DwCCa85ja9TJ6N82QMlWkC3vt1zPxg6dwSmRpWOEhG
         nSxAjQDoUGDJ8HPqtY8Qu3i2K0m0qnWpapLWOD4et35FHdRmud6rV28vCuCmIGDasqIf
         Mntaz4xFOevGIMZdUZdP6XwU0xO3zGyUJCkSh++GohqX8F/oJFR+ionYzzWCq10rUOJA
         ZDXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=fail header.i=@raspberrypi.org header.s=pp header.b=mg1rFThd;
       dkim=pass header.i=@raspberrypi-org.20150623.gappssmtp.com header.s=20150623 header.b=CiFFKiEV;
       spf=pass (google.com: domain of phil@raspberrypi.org designates 91.207.212.211 as permitted sender) smtp.mailfrom=phil@raspberrypi.org
Return-Path: <phil@raspberrypi.org>
Received: from mx08-00252a01.pphosted.com (mx08-00252a01.pphosted.com. [91.207.212.211])
        by gmr-mx.google.com with ESMTPS id 74si611568wme.2.2017.10.03.06.22.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 06:22:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of phil@raspberrypi.org designates 91.207.212.211 as permitted sender) client-ip=91.207.212.211;
Authentication-Results: gmr-mx.google.com;
       dkim=fail header.i=@raspberrypi.org header.s=pp header.b=mg1rFThd;
       dkim=pass header.i=@raspberrypi-org.20150623.gappssmtp.com header.s=20150623 header.b=CiFFKiEV;
       spf=pass (google.com: domain of phil@raspberrypi.org designates 91.207.212.211 as permitted sender) smtp.mailfrom=phil@raspberrypi.org
Received: from pps.filterd (m0102629.ppops.net [127.0.0.1])
	by mx08-00252a01.pphosted.com (8.16.0.21/8.16.0.21) with SMTP id v93DMPOx023227
	for <outreachy-kernel@googlegroups.com>; Tue, 3 Oct 2017 14:22:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org; h=subject : to :
 cc : references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp;
 bh=VtpNf1oQG41CQa9rR7qoR9Y4jA5s8HNQxTJ0SngMyKE=;
 b=mg1rFThddYXf9pkHtb3mJjlVa8MBt+BkdEkagNLL8z5kaKouFgZ0P1o2/uiRx3scFxGR
 OnnWwUN5iG2YzfQXK3nWq20jjIhvQjN/7nt4ZepYrlBN+3yR1p7N+uJ9Fv+pBU8gqwJN
 lLNYgaoEgkwMT58Ci201EnoHrVOvpTylS0LfPGnK91JhjLBuwCKRI2gk52PcKxI+srrO
 hsLlfQ0WzGUyln8GHNZx1g6KILGtWtpWQ/BuSDvQoBAVlXCRz3JfjjHC01bayc1FjTsw
 XlcEOVWzkR5IXAXTSr2v484KlvLKAMkom5GdmFh5n2ACmTK8EaZ7aBCzt9P9TpiVvIiZ Rg== 
Received: from mail-wm0-f71.google.com (mail-wm0-f71.google.com [74.125.82.71])
	by mx08-00252a01.pphosted.com with ESMTP id 2d9yrf1mnr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
	for <outreachy-kernel@googlegroups.com>; Tue, 03 Oct 2017 14:22:25 +0100
Received: by mail-wm0-f71.google.com with SMTP id i124so4716497wmf.7
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Oct 2017 06:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi-org.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VtpNf1oQG41CQa9rR7qoR9Y4jA5s8HNQxTJ0SngMyKE=;
        b=CiFFKiEV5okmxjUGrZNurHuTEtdUbVJO8xIZkBRoinXxnbBeejkozPF7PraYCCzs8t
         gdUicUHBjCHEV610Ypv/urJLxWCcB2foq0b+g0raj5WYfF7TcTSixl/1Pxzy33rsuK0J
         NHwbzoBj6E2krfwGSlelvlIry9E3HMqNWt4cJ/KAH7XyWoQ5M4YimVJllaIhjxS73hKB
         1o8rGVkbSNPtKAhGG5mdmYnW5QTlvfKsqNhO8BOCTxcjqZdRVDZ/L0kiO2rUX0gl5chG
         7Rhd5zgQH0k36qFzPomMcyY8iUBoNa5QyHKAkE0daqySiKRL7iEVy5NijOfefATXECog
         jIlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VtpNf1oQG41CQa9rR7qoR9Y4jA5s8HNQxTJ0SngMyKE=;
        b=MMaeCPjm/mHa2SUxBkmZqk19crIounx0KLaxB8KLGVe6CPfinWzvUORwUjEOxwBjyq
         GjoJMq+mEzh7yjQoz5HDisHwGTm6DugtNhHvhkKd8u1ou6XLLQILCVtzPYCFNlRuELOd
         BYzJsPqqtjzflDmVAPqO0m4K8CAOey8CNo2LG59oOjy1ch6hgAnBA5gHk3l6s7sl0hKq
         asToTWGT5PPo5M7Py1DgnQPjDGxS/Vv+kalbnhUN+96w5GMGo0eZIW1OrjmPrmadPil9
         th5MvMvcDpqKveYhYW+8yYN3ewIX6oeBf6+W4zsUjM2dfldg3RveUE+RZEjOIJqtetPF
         mb4A==
X-Gm-Message-State: AMCzsaWSx+c/AalMgEMFJ4Yei5WQco8Gi590oCcblbsarU5dW+xJmplX
	s6V1FFvQ+XjXRGfbfvSx0wpKjtQMt8EF6hH9k5icFluKmEQvFFOUggJp/Mx7X/jJiTTVQnKvAoJ
	qiFe1jNubjyY6qFmCckkYKNShlvRL/oo=
X-Received: by 10.223.168.45 with SMTP id l42mr10597270wrc.15.1507036944202;
        Tue, 03 Oct 2017 06:22:24 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC06XbkKbAZvqL3N0oHuyNfwcFoIPQ4rB8yZfeMxDnWQsrOh5MIGa1c0t/oKRyaRJOU2/KpQA==
X-Received: by 10.223.168.45 with SMTP id l42mr10597255wrc.15.1507036943942;
        Tue, 03 Oct 2017 06:22:23 -0700 (PDT)
Received: from ?IPv6:2a00:2381:fdf7:14:6dcb:deb2:5aba:316b? ([2a00:2381:fdf7:14:6dcb:deb2:5aba:316b])
        by smtp.gmail.com with ESMTPSA id j28sm1014214wrd.87.2017.10.03.06.22.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 06:22:23 -0700 (PDT)
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
From: Phil Elwell <phil@raspberrypi.org>
Message-ID: <a36fb164-9403-c812-af14-d234bfec28e5@raspberrypi.org>
Date: Tue, 3 Oct 2017 14:22:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1129250939.68869.1507036321889@email.1und1.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,, definitions=2017-10-03_05:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_spam_notspam policy=outbound_spam score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1707230000
 definitions=main-1710030192

On 03/10/2017 14:12, Stefan Wahren wrote:
> Hi Phil,
> 
>> Phil Elwell <phil@raspberrypi.org> hat am 3. Oktober 2017 um 10:15 geschrieben:
>>
>>
>>
>> Hi Stefan,
>>
>> On 03/10/2017 08:55, Stefan Wahren wrote:
>>> Hi Phil,
>>>
>>>> Mihaela Muraru <mihaela.muraru21@gmail.com> hat am 1. Oktober 2017 um 09:30 geschrieben:
>>>>
>>>>
>>>> Since msleep() will often sleep 20 ms for any value given in the
>>>> 1~20ms range, use usleep_range() for a precise wakeup.
>>>>
>>>> Issue found by checkpatch.pl.
>>>>
>>>> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
>>>
>>> the vchiq driver calls 3 times msleep with parameter 1 (millisec). Depending on the kernel config the actual time of sleeping would be larger. In order to fix these checkpatch warning i see two options:
>>>
>>> 1) Use usleep_range in order to achieve the 1 millisec at cost of a higher CPU load
>>>
>>> 2) Increase the msleep values to 20 in order to keep the current runtime behavior
>>>
>>> Do you have any preference?
>>
>> I have no preference in principal - the decision should be based on performance
>> measurement using the bulk test. If checkpatch is correct then using msleep(20)
>> should make no observable difference(*).
> 
> recently i made bulk tests because of the page_address/kmap issue, but the results wasn't very stable (especially for bigger buffers).
> 
> I did the following:
> 
> time vchiq_test -b 4 10000
> time vchiq_test -b 8 10000
> time vchiq_test -b 16 10000
> time vchiq_test -b 32 10000
> time vchiq_test -b 64 10000
> time vchiq_test -b 128 10000
> time vchiq_test -b 256 10000
> 
> Could you please provide some reasonable parameter / cases for bulk test with vchiq_test?


Bulk performance is affected by memory fragmentation - it is quicker to transfer contiguous pages. I suggest picking one size - 128KB, say - and running it once for a large number of iterations. If you were to reboot and retry I would expect a relatively similar result. Then reboot and try the other configuration.

    time vchiq_test -b 128 10000

> 
>>
>> In this case the precise delay is not critical, the aim being just to relinquish the CPU for a while, but it seems there is no way to express that - an
>> msleep_range function would be useful here, even if it was just to keep checkpatch quiet.
>>
>> Phil
>>
>> (*)I don't really believe this.
>>
>>>
>>> Regards
>>> Stefan
>>>
>>>> ---
>>>>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
>>>> index 631ff73..daf18e8 100644
>>>> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
>>>> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
>>>> @@ -357,7 +357,7 @@ int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
>>>>  		if (status != VCHIQ_RETRY)
>>>>  			break;
>>>>  
>>>> -		msleep(1);
>>>> +		usleep_range(1000, 2000);
>>>>  	}
>>>>  
>>>>  	return vchiq_status_to_vchi(status);
>>>> -- 
>>>> 2.7.4
>>>>

