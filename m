X-GM-THRID: 6753896393761357824
X-Received: by 2002:a50:eacc:: with SMTP id u12mr22756249edp.290.1572769054709;
        Sun, 03 Nov 2019 01:17:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3fd1:: with SMTP id k17ls2930749ejj.10.gmail; Sun,
 03 Nov 2019 01:17:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyv7+VhbCIu45ZgERa4ZRGMXuNN2ZiCmYtVMVZaOkFvHTQjJXCHJj+47C0km0hzWibfNMem
X-Received: by 2002:a17:906:6859:: with SMTP id a25mr10485216ejs.44.1572769053841;
        Sun, 03 Nov 2019 01:17:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572769053; cv=none;
        d=google.com; s=arc-20160816;
        b=CSzgBMOcl434sw9j1FirMqM9dXSzDCsiJ1+45bxq5j3l/l7MsyNvRD1MAG3qwtEHF4
         iEtvFlKK/YmWQZpGaaRjdvEe22Ee71HRUrrW2nFCqQBKaMCYQpuG9XtGTl9CYtIk4MIQ
         cSPJHZEnP+I6SI3fnBW2U0ijb//CU1kqk05UqP3z8LpEZYnioGtdvVVaJ+uFFYVssxgj
         z60KGqoAXM7ozew00JeWNzaJk427Cd3/GxTfLUNCMEd1ocCrp20zzMFXeF5y9QpfnE43
         cTasX8NAr28lupFiLvN8LGQGVy0MuXM1l9tVocbrO39rKo+hEb3um3NQz2iBQ6I+dLnA
         nKhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=FyTI4+GcG/EYwRClkIo0tWHwXj72v7vzUTG+UUy24iA=;
        b=Z4J1ZnJB4BE5OHEXFjD7NxWbZ+yqx2lonhnDDgdjyKLUsWanMcbOrnLON8I4wJgqlb
         7bkMe4y91t/LiTW0wBhSW66l7dP3KR5YWiSyR5oy16TT2gkD5NIZ0yAHqtJCwZQow6VU
         rSZrz81Vkm5RSR34g7WjQN3yTQxX94Sdio+FCy0hJzalIY+4ZJr04LAsaN0Jrj8fDi7w
         0Jqm8gAShHIGz1nnAKUx82GhJwmlQBSpm5u6JbvgFqt+8sTI28TPwd4XKP9Y3N1DYpnP
         d4IvlzjuCp491grALVBqf/g0uBrpQvSdDemiTuzhMY4rjS90uUm5Nac4oB7UauVLn3yu
         vXvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=iK9Sqm+O;
       spf=pass (google.com: domain of wahrenst@gmx.net designates 212.227.17.22 as permitted sender) smtp.mailfrom=wahrenst@gmx.net
Return-Path: <wahrenst@gmx.net>
Received: from mout.gmx.net (mout.gmx.net. [212.227.17.22])
        by gmr-mx.google.com with ESMTPS id c28si724916eda.4.2019.11.03.01.17.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 01:17:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of wahrenst@gmx.net designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=iK9Sqm+O;
       spf=pass (google.com: domain of wahrenst@gmx.net designates 212.227.17.22 as permitted sender) smtp.mailfrom=wahrenst@gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1572769052;
	bh=gmfNKR3bsbrrqzUnC4IiBZ+GdlFx51kNOkXxHiyZkU0=;
	h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
	b=iK9Sqm+OQWav17yAOZJhi6hZB9UqUw2gizXUkXBCtGZmV1EbLhfqKp5/WW00CDgkX
	 mhDDuUhfLa0s0QtA7PKc19l7na30IonqCo/FPNz7a3706MiaQCMNHFGRNXAiNVm59A
	 jB+1OYN1dD0z9ZAAQup6JxP2r9dcrbmxFOkZ+akc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MuDbx-1i6TKL05uf-00uZ6Q; Sun, 03
 Nov 2019 09:17:32 +0100
Subject: Re: [Outreachy kernel] [PATCH v5 07/10] staging: vc04_services:
 Renames remote use callback
To: Julia Lawall <julia.lawall@lip6.fr>,
 Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com, eric@anholt.net,
 gregkh@linuxfoundation.org
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>
 <5ea44f2d87ff127023dffb70da182e32faac39e8.1572755439.git.jamal.k.shareef@gmail.com>
 <alpine.DEB.2.21.1911030843440.2744@hadrien>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <afd4d5df-06c8-4cfb-ead0-7ce3e3acd2bd@gmx.net>
Date: Sun, 3 Nov 2019 09:17:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1911030843440.2744@hadrien>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Provags-ID: V03:K1:FmyDjZMe/j9g+UW89RhqfCzo2Z2PpM92laBpDpto6QyM7Mr8VRz
 KP1de01m2JX0EpTMsPFd7bmjbKBs2acbQ4z00iZme0U0RjbV/D+YVHrOhl0NRcDy/KYFMb+
 ZzZW8RptK+2IX/RhXoFviMyRwMTccegrfYiAuVnagbXDKbTQgikyAMciz2BtLlgqpyNJ8Zz
 P1nWzYLOCm13f9zjMo//A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UNjZBpZxDbI=:wRaaKi08U/SDtjNg0ASe84
 V9VSid70Syw5eghWR1dHqInkoGydplFphhriEAGT/CoOixqNkwZo8St/qCMLMxHLsQ+Nq84fv
 J2cNMhp74ar61bPjdJipa1WxQvCv3nXLcOCL722dKLheGxtZLkVpYFHFDvDceL/WAd/Krf4JJ
 oWGOxtxY+5DcL76Xp1eud9JYy9GtajPZtIgbMPM7GshZMCN+YgInAdk8nlc9s9VBAT/WPk47R
 xtAvBlfrlUb5+qx8q7PmSI8yIVXnGmli5rLwFxrrHYndN/g4y/Ji3NvFxx0uCL+18Z0RQ2O87
 SWCHxChTWi+HnNchdJfj5Wxr0DtA3n/4mDusCdDguHaXkRW0cACqIHVMb/S14fRrA2y4nyLdD
 ValTZNqHIEnQuZIDKfVkQYXrkEmQBQcstP9SXPcUiGOSURXf2J5UYnFJLn+Epi/pxyliaaZgm
 zlImDThkOH9vU/PwvlvaiCCWIsV+XLE0bPIC1pZGx1idN8V2zQpEoYXMs1hKw0yyTlWRfJtM3
 d3QgDnJobjTnIACCXl/YxBVdya+Bczt9pDDXWh9ThM0+zkVTXXBrZdmX23VVnnmzlBH0D7bBD
 vH/CpVEFadNT9KZvutABPjIssxH0Diy8uczwnGdS8W3aaqQQxipBEzXSGPHqge4c01jsQ7dOc
 MXpf41L/2ibgPRHfzK0zRbsycUHvpQH6K4dNqBvd8vTMOALxKbJAKRnyOX86tnnj4s9GArmiI
 nznG2Mk62cXuDn2zIITyoeWw69M4Qhwq6vXa02BbwBNGb96q7F6AdgCbzLr6Fnc+joTXiBNQQ
 WINp5qGdHReiUuACcmEK8ctwNdH0aAsKWOdEPnVVxv3o5jggDFdlvhJ3erwz+DyfiLhDtvjYB
 5IA6VXMzVAPpJyXyB5kUaattqEzYyW6wCRYB1d/z9JdoxlTYs3QF02v++LBzDxzVps4DA/iPZ
 0BkSqMIboUy0vTN9pd6MZF343+/6yKppzVHbTNgpoP5cPbHE0McgD/rAdE++tGkBBBNOSvgDs
 C8lkAJ1JGrrMluG4JTx/sgzKnESD2iB7mT+QoUPQOi7Gz0F1kekBMC959WBoB9hlfLTpd1wSQ
 tx1RZsre9CD0IfV1834SM9Lq/+WVAyttu6tFGbQDd3FeAjCblebR52UShhEFGOWhloEXfcVkE
 nvhgiKaHHFRTNz4TuUuxbKt59aAkcR+X+0agCv6X3J0GUY/5ELWb3TOjsldxDiq6XyjcLk2qO
 1OUKgNIzhCididiwGSTknDcAdpPDLqNfebXk/+5oV39E7VA4Bt6ZpAjtfHAI=

Hi Julia,

Am 03.11.19 um 08:45 schrieb Julia Lawall:
>
> On Sat, 2 Nov 2019, Jamal Shareef wrote:
>
>> Renames remote use callback function pointer to match kernel style.
>>
>> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
>> ---
>>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
>> index 6f3d3b00066d..869ca218c515 100644
>> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
>> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
>> @@ -93,7 +93,7 @@ struct vchiq_config {
>>  };
>>
>>  typedef struct vchiq_instance_struct *VCHIQ_INSTANCE_T;
>> -typedef void (*VCHIQ_REMOTE_USE_CALLBACK_T)(void *cb_arg);
>> +typedef void (*vchiq_remote_callback)(void *cb_arg);
>>
>>  extern enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *pinstance);
>>  extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
>> @@ -136,7 +136,7 @@ extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service
>>  	enum vchiq_service_option option, int value);
>>
>>  extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
>> -	VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
>> +	vchiq_remote_callback callback, void *cb_arg);
>>  extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
>>
>>  extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
>
> Are any of these definitions actually useful?  It is suspicious to change
> a prototype without changing the corresponding definition, but grep
> suggests that there is none (and no use either).  And likewise no
> definition or use of the other two functions that we see here.

on the Raspberry Pi the roles of vc04_services are the following ones:
Linux (on the ARM cores) implements the client side as an open source
driver (this one) and the VC4 closed source firmware (on the VPU)
implements the server side. Both sides share a common code base. So it's
very likely that there are interface functions which are only
implemented on the server side.

Regards
Stefan

>
> julia
>
>> --
>> 2.17.1

