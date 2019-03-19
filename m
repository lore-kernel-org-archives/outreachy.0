X-GM-THRID: 6664599067170963456
X-Received: by 2002:aca:d6c3:: with SMTP id n186mr1301968oig.26.1553023853153;
        Tue, 19 Mar 2019 12:30:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:590f:: with SMTP id t15ls3965262oth.10.gmail; Tue, 19
 Mar 2019 12:30:52 -0700 (PDT)
X-Received: by 2002:a9d:6c02:: with SMTP id f2mr1278177otq.73.1553023852564;
        Tue, 19 Mar 2019 12:30:52 -0700 (PDT)
Received: by 2002:aca:4f4d:0:0:0:0:0 with SMTP id d74msoib;
        Tue, 19 Mar 2019 11:26:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyDI/j95N2lCmEJke1MnK4Q1AUy0td+Z5gJB72+0zSqvUjFxF3MMCHI2Cl27LH6FdYJYCSz
X-Received: by 2002:aca:4b4a:: with SMTP id y71mr1199473oia.43.1553019963126;
        Tue, 19 Mar 2019 11:26:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553019963; cv=none;
        d=google.com; s=arc-20160816;
        b=djrFqgutRtCwAVqub4k4TEKpAq3L1zxe1SbE4/h+UDsR/bk5sSFbGBfC2/0u8MsLTr
         dCry91a1lMkixtVlxWm1W8rdnSp+U3Kjc47nLzpTuSvK+Kf3jTl5m7z31Hn65jZhMsdk
         8BmDwvwbrWrPXU7mErW50txJrSL8nWJlhra6tygbNZIReEFASTpmIQH47wucXocnVxUF
         pROzh3vFfCRUPvO2LMmRp+T53UYcGGytCP1weIYhCOm9GNo2Umith2tuoAeaSq5Gqzfy
         Vg8rXL7IS/zLFZzGmn8vhr/reulHtcNa8rDNzYI0418LU0CRkxUlcND18XhlruqSn092
         VfyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=vuwsfu7LioEDelOFfUc5DmAFOptcDgOwYSEF4VcMQCc=;
        b=Bv5yqasZ74Is2WMfRZFY24YiQPm2sEoZx2n4lI5VObnSVkWl/cHJrQloPo/BkE8rJa
         DaFz1jY7x+loP9tSfYHshWbFtSeb/eAzmzniCt8NcGzXPEGG9jfi1XhryvjWtPrMXhar
         jlvKRhFOP4YLLMsy7PWsQ0UdlcU9ougvH0ZF9Kh6IHGZyYcd+ira1cJnMv8bTZ9KZ1KQ
         pPyK8pgHcNrN+LvIepfI2iapoJf89WDijU0B5xEN/isD1Hkbw1MIeeDV5HO77GM4VjxQ
         3sRMpd4D7dAXqa313Pss6EF4kgWkhGQoaL/c33N+Xq4JLTrTIJPo2sSA7110ICRs27jA
         u+wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=OkNZ5eov;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic313-20.consmr.mail.sg3.yahoo.com (sonic313-20.consmr.mail.sg3.yahoo.com. [106.10.240.79])
        by gmr-mx.google.com with ESMTPS id t14si565382oth.5.2019.03.19.11.26.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 11:26:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) client-ip=106.10.240.79;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=OkNZ5eov;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553019960; bh=vuwsfu7LioEDelOFfUc5DmAFOptcDgOwYSEF4VcMQCc=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=OkNZ5eovTFSKzv1bNZZHwzn63PqWlxTkJcTyG7rdyUVKFo6Z451fI4Vwr5+xx/VfIRdugfPCrOTl02cudgBMrY2trMgmRrhGrrpWrn6FYsdtjdrmL8K4HoWOvHl6AB0/XV+kOeDomf/FhCumI3sFpl7GwKmOKWJALS6EA9cO3vWDNMaRazBMXdnQhPe1VTCUHyBVcsy6X4BG9ebXHeUCOIH8uGhK6eo/aYwTT1UOeyEY+UrzGa0oRtAPrRNp0x2JXgDRuRnGZMH9aXeeencDf0dF+dx/AwFEc7CwtgPRhnek7bTn8LsEhBXzy4eU4EeODuBRvvUfq9xiDxKTG5lGPg==
X-YMail-OSG: TcTDHiYVM1m0S.vX5LWewgNfEPx4nFck0znDNInPzp8FWIUibmbt6GUQcUaD2xU
 PCbQP7CMg4PxpMDWeAmEuFpTFPHg3m_DgLHNNQUPqGyjCOgi6uTDhhkno41V9E0uRXcRwEu7F5A4
 y55j7ZG3TVmRrTpXhPRlPJyS0hukFnwjuTfA2lp.0Ougy8CjnvQeYVvUzRLSbdBfSf_NRUABg.vd
 fHKXtQqjwMK6QEN_abXDsEFDsHfldnv1SRJnMfGzweHfgBur4RKYrsJLShwInji0.gI6NjUuuaKO
 V4.vwwJuYW9QIoUrB9IWMoylj3k8ls4aZBUEwMCnrssX6c8x8UY8BBYc3nT6unO08.bgICzQS6S0
 gax_.c_x.YUrcDcopyvzmVkC9yU62QHmbRpwebA.bbl66MXUlH0m9ZiG8_7zp7B.SH.r7WeCaa71
 PlPiMA84.D4ZEzh5agzvwhcb_9nQqCzHh_YBf4.YB6on4_Sb9hg7n3Mywc0dAX8bZIltqXDp55L2
 6Dl_mMZ4uXTEPL_GzyyWi24i1FiTWJmTQJflDchD8dQLK6yRfK_DMqdaE02_xOtfxN0KENdO2WeW
 UZCIjdPVUH8kD9jsN.C7uRTQVc_fklZmkM4EqA7fxOlCnM_Q3ptwRYHiXJArgCRnDAundjQX3wZ4
 HsC8HRoGAMgZ8i3lrdv1ogBAlSVQB4vXgBGlbIs5y8tI6NxwAJWsGNFrBbZnQuZw2E2CrfxVIJ71
 tsSZgSg82F64IVn_EXirb_4wCPPB8DB3QKHnfPRLOuPWSiE29C97pFqPxOIVRLB0btT94xk0mbFG
 7XVoF8TmrxcnIYiJKVlVrkZcZzYMk8PvjupOMGDSriDdrGrObcKXhj9S9KJ7bBJHgxDDsVn0R5eD
 O6ooNDA04CcUADcWmHy265LTq00mlpIc.okUgQNU8r9Up1x6XryRFFTuXaytDtemZJ1a4BFkV0hk
 ENwQVOmsnwNqHrOKYXimzb3b8zNSDmDE27Z1CIpbGgm0Wc4viaN_DXzCRtrEfzqgEDgkQr_e6qQZ
 GB2tynM5OYe0X.0MbYcozqwBtkFmFIh_3WN1D8.UU9nnYSCdSfxgRKiIDedfc1HuTrHcH41XIup2
 68J.0zkmRLs3_VfqCOKMkQ.Tgu1tkVQ--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.sg3.yahoo.com with HTTP; Tue, 19 Mar 2019 18:26:00 +0000
Received: from 210.212.93.46 (EHLO [10.0.2.15]) ([210.212.93.46])
          by smtp427.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 917fdb2a48e74942b293b03a692d422c;
          Tue, 19 Mar 2019 18:25:58 +0000 (UTC)
Subject: Re: [PATCH] staging: greybus: Change NULL comparison to Boolean
 Negation
To: Johan Hovold <johan@kernel.org>
Cc: elder@kernel.org, gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com
References: <20190304174315.30222-1-nishka.dasgupta@yahoo.com>
 <20190319093119.GG6124@localhost>
From: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <3cecf381-0230-400c-d0c4-5aed1134e62d@yahoo.com>
Date: Tue, 19 Mar 2019 23:55:50 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190319093119.GG6124@localhost>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 19/03/19 3:01 PM, Johan Hovold wrote:
> On Mon, Mar 04, 2019 at 11:13:15PM +0530, Nishka Dasgupta wrote:
>> Change NULL comparison to boolean negation. Issue found by Checkpatch.
>>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>> ---
>>   drivers/staging/greybus/bundle.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/greybus/bundle.c b/drivers/staging/greybus/bundle.c
>> index e97b2b87ba47..376ca53f0d83 100644
>> --- a/drivers/staging/greybus/bundle.c
>> +++ b/drivers/staging/greybus/bundle.c
>> @@ -32,7 +32,7 @@ static ssize_t state_show(struct device *dev, struct device_attribute *attr,
>>   {
>>   	struct gb_bundle *bundle = to_gb_bundle(dev);
>>   
>> -	if (bundle->state == NULL)
>> +	if (!(bundle->state))
> 
> I noticed Greg already picked this one up, but there's no need for
> parenthesis around bundle->state here (cf. state_store()).
  Okay, I'll keep that in mind.
Thanking you,
Nishka
>>   		return sprintf(buf, "\n");
>>   
>>   	return sprintf(buf, "%s\n", bundle->state);
> 
> Johan
> 

