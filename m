X-GM-THRID: 6471841659603648512
X-Received: by 10.55.139.135 with SMTP id n129mr18679785qkd.48.1507023675441;
        Tue, 03 Oct 2017 02:41:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.237.33.172 with SMTP id l41ls6958574qtc.8.gmail; Tue, 03 Oct
 2017 02:41:14 -0700 (PDT)
X-Received: by 10.233.232.135 with SMTP id a129mr2857308qkg.14.1507023674965;
        Tue, 03 Oct 2017 02:41:14 -0700 (PDT)
Received: by 10.55.79.140 with SMTP id d134msqkb;
        Tue, 3 Oct 2017 01:15:44 -0700 (PDT)
X-Received: by 10.28.16.8 with SMTP id 8mr1996756wmq.31.1507018544516;
        Tue, 03 Oct 2017 01:15:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507018544; cv=none;
        d=google.com; s=arc-20160816;
        b=GOhfYm0HxAExX8ui0pTFi5sMQmZxbkOaUUEBxoVCM1ohXoH0I1sRWZHg3jc8xGKamT
         NBCfE7eGugoHH8oucCAuIySdiVf1z0GiGN+LTkHFeHvCIacMgkFv2bEaQFl2OE7R9P+v
         Lutm9qGyKbHDMWZPy24BuxzJMOGvURF5UN3V7dE+Y0EolNoqzkUyPBoY+iYjTwGe46t7
         soTTLqSganF9lJwoU/ppcVnRek9Ia5sOwIsxZJgK2by6suv5M0a+sWiVtSMYD2m+hNdO
         RpQImbm3J3OLnZGNFcD36/Mucvvvey2GhmaC3wb2F9NFU6+2fGDuDr6of2+hMZJsxH4e
         TuRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature:arc-authentication-results;
        bh=ya2GFBYlU8j+lSZ2TdCSsjZhDeFSXc/0gZL4dBpoJp4=;
        b=VMeO1rdjHFV3Mzq5eki6N3qMX273HPiYA90aKu+Pi+iH2kDhcTb7AGEqaJziHMvJQ0
         KJ4SOHJnjhGmiFfd0Ixqz3FqsKVryg9qPawYItc5ziMvhPlt+yDqp0pJ0OfUR90l72F8
         N8X88F2QdAAeiUiAOm/7FmoiGLJh5don6Gg0hR7TvkMFnCCUipgJ+kJo3owInGpVS6mL
         q1emEYYdw4u9N7xaSD1yn0Ce0Reuud1AbZDyq/o+gy5BpnEK/x3EOfsOGkCkv5ehwOcV
         06y2yoUZWjOEubma3eAlVwG65nX0GhQn+TIt9ak3Kox3upq7HIQWP1Y0j0Ri4kQFbsk9
         ifvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=fail header.i=@raspberrypi.org header.s=pp header.b=oqqV42PC;
       dkim=pass header.i=@raspberrypi-org.20150623.gappssmtp.com header.s=20150623 header.b=S/GtaEra;
       spf=pass (google.com: domain of phil@raspberrypi.org designates 91.207.212.211 as permitted sender) smtp.mailfrom=phil@raspberrypi.org
Return-Path: <phil@raspberrypi.org>
Received: from mx08-00252a01.pphosted.com (mx08-00252a01.pphosted.com. [91.207.212.211])
        by gmr-mx.google.com with ESMTPS id 200si1778638wmj.0.2017.10.03.01.15.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 01:15:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of phil@raspberrypi.org designates 91.207.212.211 as permitted sender) client-ip=91.207.212.211;
Authentication-Results: gmr-mx.google.com;
       dkim=fail header.i=@raspberrypi.org header.s=pp header.b=oqqV42PC;
       dkim=pass header.i=@raspberrypi-org.20150623.gappssmtp.com header.s=20150623 header.b=S/GtaEra;
       spf=pass (google.com: domain of phil@raspberrypi.org designates 91.207.212.211 as permitted sender) smtp.mailfrom=phil@raspberrypi.org
Received: from pps.filterd (m0102629.ppops.net [127.0.0.1])
	by mx08-00252a01.pphosted.com (8.16.0.21/8.16.0.21) with SMTP id v938DDs8007876
	for <outreachy-kernel@googlegroups.com>; Tue, 3 Oct 2017 09:15:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org; h=subject : to :
 cc : references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp;
 bh=ya2GFBYlU8j+lSZ2TdCSsjZhDeFSXc/0gZL4dBpoJp4=;
 b=oqqV42PCJUOvSGYX1X2Qzu2kYQCdLtUe1Ydg/HFjwLpJfGTybkRzrmE8vsRFwCdcU0ul
 a7SIy6+zLKmcuhHdCfiATE30SyBd/DcmQv+7xCXwns7uUThSvm+REbX1bBoO+Tq4B2RW
 erhzfDJr2v3KSwL02doZ8ryjPDo8jcGTTQKcHLjec6BHFPPT65HEHzJFEZjp8Q+gdtqg
 ccly6WThA2994YaaFp8PaoyLRk+imHHkHA3hPovSmFySChw8zwMS5hf71q8H7MtaM67i
 2iYsj098un3LH7E+SJ5WOQ94G4/jML/s2dae3I7jAtq3g1gUWg2NnlxkSWhdNElBqDqR pw== 
Received: from mail-wr0-f200.google.com (mail-wr0-f200.google.com [209.85.128.200])
	by mx08-00252a01.pphosted.com with ESMTP id 2d9yrf1gkv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
	for <outreachy-kernel@googlegroups.com>; Tue, 03 Oct 2017 09:15:44 +0100
Received: by mail-wr0-f200.google.com with SMTP id j14so4201278wre.4
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Oct 2017 01:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi-org.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ya2GFBYlU8j+lSZ2TdCSsjZhDeFSXc/0gZL4dBpoJp4=;
        b=S/GtaEraQ6OSwNQfBw0fc6BBFLGcIw5R44lS1LE59ou3czPwA+z227EueT5S+Vi/me
         xThtpaeDMKn+M0TasnLuVF58yGwk1iw9uMZD+04vwo6YftMGsUnv78imB8BAqpr/skQj
         FQ2hn7XWsAnVh2XvCNFj32Lrljn6/YpRigHr56Ad6Rs4X9EDXqF0QSwRhyLsE2GaOGuB
         54UJbTaCvL1ZD3laENvUCVXGNWDYCgmkA4LAvUCsp+/pBpzWACgsfyZy1oCA45hELtTd
         hYuCwWrW4ix7mW2R5CCuAJD9d2T+ClqIOYJ7V0SgiHf3Qd+YyrP/NBnp8Nz4CvP0fJHJ
         /iEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ya2GFBYlU8j+lSZ2TdCSsjZhDeFSXc/0gZL4dBpoJp4=;
        b=lIDKtRw99gu+6oMkikyrZdm7kYUACGEfu7EP4+53F7QE/q3jsIEcTTRrZ4qSP2Ozmn
         //2HzGerin8AYWAkdtM18Sew4z+GFckZQNNoAd5+FdoOj+5TePkYBv3ScHYUNzd3Znhm
         EUeA2/4RfSV0q55DYmeTMDhhvGSXO5WIfumJIsZEo1roY5nL9VOIPSkeVQ/jYxMXlz+H
         /ZbUeeW81n5qfEpoGwM/5tQyme6kV6fJphtTcVthSmruYGlRY4ktlKgfIuZ83QC4oWm8
         gUxRTtr0C4i5NwAIks/BQwXkcaQFBplIb3ZSx7PQbGoJr4wiMyGkvMC9JSwJ0jMZAS1I
         QBOA==
X-Gm-Message-State: AHPjjUh+0NYpzbhXm6volkymdRhylI+KtE+v0LKWwwry/daCaCG5HuQp
	GRof9+AJqezj9OhmdM5LvFz+nsyIMUf8la7rQ7AqGNx3Anc7iB3aBUFKKYXEes3a0JG/XNk/3vY
	HKZdKTsacekgIe0vG93B03CdA6tYmacA=
X-Received: by 10.28.138.133 with SMTP id m127mr13556044wmd.134.1507018543145;
        Tue, 03 Oct 2017 01:15:43 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBpW/3h7v0y0wQ55uewL7m0eCmKqp6Y1Y9P9gcWYFurE/CcZwbyIK4WsyeyLKoQNPewRY3m+Q==
X-Received: by 10.28.138.133 with SMTP id m127mr13556032wmd.134.1507018542918;
        Tue, 03 Oct 2017 01:15:42 -0700 (PDT)
Received: from ?IPv6:2a00:2381:fdf7:14:6dcb:deb2:5aba:316b? ([2a00:2381:fdf7:14:6dcb:deb2:5aba:316b])
        by smtp.gmail.com with ESMTPSA id n43sm1334595wrb.37.2017.10.03.01.15.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 01:15:42 -0700 (PDT)
Subject: Re: [PATCH] staging: vc04_services: Use usleep_range() instead of
 msleep()
To: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Eric Anholt <eric@anholt.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mihaela Muraru <mihaela.muraru21@gmail.com>,
        outreachy-kernel@googlegroups.com
References: <20171001073056.GA7890@domino-MS-16Y1>
 <625751478.62338.1507017318331@email.1und1.de>
From: Phil Elwell <phil@raspberrypi.org>
Message-ID: <f14d5199-1cd0-5dc2-dad1-86c3b64d6598@raspberrypi.org>
Date: Tue, 3 Oct 2017 09:15:42 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <625751478.62338.1507017318331@email.1und1.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,, definitions=2017-10-03_03:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_spam_notspam policy=outbound_spam score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 impostorscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1707230000
 definitions=main-1710030121


Hi Stefan,

On 03/10/2017 08:55, Stefan Wahren wrote:
> Hi Phil,
> 
>> Mihaela Muraru <mihaela.muraru21@gmail.com> hat am 1. Oktober 2017 um 09:30 geschrieben:
>>
>>
>> Since msleep() will often sleep 20 ms for any value given in the
>> 1~20ms range, use usleep_range() for a precise wakeup.
>>
>> Issue found by checkpatch.pl.
>>
>> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> 
> the vchiq driver calls 3 times msleep with parameter 1 (millisec). Depending on the kernel config the actual time of sleeping would be larger. In order to fix these checkpatch warning i see two options:
> 
> 1) Use usleep_range in order to achieve the 1 millisec at cost of a higher CPU load
> 
> 2) Increase the msleep values to 20 in order to keep the current runtime behavior
> 
> Do you have any preference?

I have no preference in principal - the decision should be based on performance
measurement using the bulk test. If checkpatch is correct then using msleep(20)
should make no observable difference(*).

In this case the precise delay is not critical, the aim being just to relinquish the CPU for a while, but it seems there is no way to express that - an
msleep_range function would be useful here, even if it was just to keep checkpatch quiet.

Phil

(*)I don't really believe this.

> 
> Regards
> Stefan
> 
>> ---
>>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
>> index 631ff73..daf18e8 100644
>> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
>> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
>> @@ -357,7 +357,7 @@ int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
>>  		if (status != VCHIQ_RETRY)
>>  			break;
>>  
>> -		msleep(1);
>> +		usleep_range(1000, 2000);
>>  	}
>>  
>>  	return vchiq_status_to_vchi(status);
>> -- 
>> 2.7.4
>>

