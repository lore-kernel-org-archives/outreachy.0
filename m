X-GM-THRID: 6670188410102087680
X-Received: by 2002:a24:152:: with SMTP id 79mr4849591itk.25.1553097322157;
        Wed, 20 Mar 2019 08:55:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7a07:: with SMTP id h7ls1070667iom.5.gmail; Wed, 20 Mar
 2019 08:55:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzkQjKNYWj+MYRadjFW5VR3Ga3jUo09CVVjE/MLYBb9h+iHEG4fXRrQEPse4gMJvm6T7Nhe
X-Received: by 2002:a6b:fc05:: with SMTP id r5mr4355867ioh.6.1553097321400;
        Wed, 20 Mar 2019 08:55:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553097321; cv=none;
        d=google.com; s=arc-20160816;
        b=X37Fxst3dQ83VuLiu8kKsiVUjmi+3sExrRty4lzg3PNHRiPuBmG127jaCHa6v9f/6Y
         xFf2+LR32HECF2AyAB5OiAdB0bobcbJ6Q13gDr2AdhE3k/DCUS3ZNPnMER37NwzOT2qi
         cMbkxI5dVAi20TMMr0Bt1qH2MAOAZj5UlCP3sYoCbNBqzDDhUBqpn5Uy7y1LYRU+Qr1v
         2szXIq8VgjY5hGGR6qum5ewxntlqV9co/XGR4u44+c4ShgnZPQ8Vyxp0QPb0Ao3QNWpk
         7qWpUuWL7wb/TwVFGPibV4D+Egw6bf7N48yJkDuzrMIQrA1PdpfmKK02FZ83HL6CoYGw
         XPew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=hEshD8c+fMFHFujhbDR0ZS8GMTAdyU40QBcwFzGJ0iU=;
        b=idD+sFLujKE98jLiq/VqZQuHNBhEJb9CnhIEqxL/n+BtBiRaH9203nLcqs3ovGCRlt
         zrBZV6nDn373/RIhrDGyYiks5/jrXIZjTuQIpYpnkC5vnh6OvcZtx+MOpPL4uCZnPZb/
         jT6smCRq3xFXpDj7bXY++M0T8zoqwF4lrqDCIjSoMyl4yzBowUT5OWsGFxI1gQaQx9DY
         mA92QBbYxr9q2DowTRWy74F/59Zr0cyHeHuLGOVOoCxlSR1lRTe77R2pyqfhA+5TpLwW
         tfcOLg/JtTlmSl3asPNYx5thVUYOsNwm/d92Lw0Waflt3lwPH2gpDpyJtYg64FjxzvwH
         2pfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Kd6uR+Fx;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic305-20.consmr.mail.sg3.yahoo.com (sonic305-20.consmr.mail.sg3.yahoo.com. [106.10.241.83])
        by gmr-mx.google.com with ESMTPS id j196si286360itb.0.2019.03.20.08.55.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 08:55:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.83 as permitted sender) client-ip=106.10.241.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Kd6uR+Fx;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553097318; bh=hEshD8c+fMFHFujhbDR0ZS8GMTAdyU40QBcwFzGJ0iU=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=Kd6uR+FxOTL9c1QU2+2gIfm0x+pj0nkdoYJbJir4xfow5sRO9uJ7B5o8N1MNLhrW42xovePh+pGA+fr3Jma3C+Wl797/HFop6u4/NXqivYBSPRsyFJGaTd0XRs5RkzkOu7T1PBAWyP0j7GgMq2opcZZFz6Dw3H9moGkB5p/MtL0roVvM4kHOqcodaGCUtn+Io5bmhlIa6lW684DfgzgGacl6sw9+3KnTMG527D/f7U45JU1b4b49+J13UpHDpy25VJCKJ4ACi+ttMj5u5Kfi25hM8abW4rQpvp8xD42QkpEjWyf6KzqEhYfZXTQaDao/L2VwBlZMfZRatrj2vNCqAA==
X-YMail-OSG: qItqT3YVM1nY240yNJilPqE6XqELbgv5Aok2Iz2qIm0Z9euh76d0w0CYhgswbja
 3UnNgfQgM0.CYnAPS8RcWXsAXSF32Px5CepDYsKRg8l0TLnotoYr6eY4DoIdAS8BFx9kRMURJwEc
 qKUFInM3tGIEhWTlvapgtdxOF88VIG0GDeccm19FE5KJG.79BsfUJBvvUZhs262ftVI0S9qKeB6H
 lwwcBIAbdQYZvEUTWSOk_NX5GjHO4zfKOd2kKhRKLAi8zMhfq86kppxvIr_NGHRzhBTMQxuNnvdm
 y4kTZK4ppynkBi4fHX4a0_IzNI8RAaPItzyv.rVCYkZmz2vJkiECjTYZ7HbTff7VLLxj9SXHW.0V
 o_TGqv_p0sQtfUnEV1pwMbuNRo2UrzzRaXsIlYpUJhdKUJVMo60odaO7FdgJQP99AsH0DEWXwA9T
 BGkd5hhX2IgIrMZ24t7dVi8peaIjbHyuqim5S7rMsSgHfmBe7Yfg3cmg4cRMKg1DwE01OEM0F23T
 LmstUN_F.GI8DYmvtXm9uP.Irle9TTVEgEF1_EseRDxy_5aDSBdXctyulIoT02o.n3KUl_YgaKC3
 U7onDYyJ1kEkVdIU7AaK73XcXgBVOqKp_s2fzeEv_3Q2GHVS8jkVFDf8u73IJfEypzi2WzB16aHP
 Ay.6PZmVVpB_rrqK.ldrokPu_9QzSdZb1yk59qw7MEHk5clImhwVgJ3UG_eFl0GmFtxVloRbT4T_
 Fob_cZn2sMF5JExZLcgr2.VYP4azx5I37B2kt6rrxHmN.U3FYpqW0DjN3ADgFASzz_P3IW.Rv6AK
 LW.2QAV6RqGjRHISG802bE8NHgs6HuSLvzsHZnRukVt0tIxeN4NQc3uGfB2VjlhiTOBdu9yo9mZs
 bxaYLzdaaNJAdJ1BYnmXT3tjR2cXGDjDsMSKSTQhYMKwHMo46.tv0lIUi_Fmp.DvQiLS3NhR16DJ
 zM.xUXTqPWFCJmgcp_027FcuX0w.IRtThynNxRJjfhre5J6oiQLfWG0nnKmqKTcYVFDl6ur.PqOC
 tM9Ikg6OzpPjE8nVrZuj0vm9bqsncKtY_i49bEFApdto0BRYwwpoKMv8ytutRvnhNVal5moCrQus
 snAEjASQw6tDu5IaQ1QtCIadQDmVb3CY-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.sg3.yahoo.com with HTTP; Wed, 20 Mar 2019 15:55:18 +0000
Received: from 210.212.93.46 (EHLO [10.0.2.15]) ([210.212.93.46])
          by smtp425.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID c1107d57e9a3c739b8c695293e3e9349;
          Wed, 20 Mar 2019 15:55:17 +0000 (UTC)
Subject: Re: [PATCH] staging: speakup: Remove return variable
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
 gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
References: <20190319193722.9561-1-nishka.dasgupta@yahoo.com>
 <20190319220517.zgmdsz6z6objtd6c@function>
From: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <0ae9b51b-ba34-c78b-8139-d3959c5bca5e@yahoo.com>
Date: Wed, 20 Mar 2019 21:25:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190319220517.zgmdsz6z6objtd6c@function>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 20/03/19 3:35 AM, Samuel Thibault wrote:
> Nishka Dasgupta, le mer. 20 mars 2019 01:07:22 +0530, a ecrit:
>> Remove return variable and return the required value directly. Issue
>> suggested by Coccinelle using ret.cocci.
> 
> Well, I have to say that for style I prefer the way it was: we apply
> several functions to the input variable, before returning it.

I apologise; I did not know. I will not submit this kind of patch for 
this driver in future.
- Nishka
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>> ---
>>   drivers/staging/speakup/i18n.c | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
>> index ee240d36f947..a748eb8052d1 100644
>> --- a/drivers/staging/speakup/i18n.c
>> +++ b/drivers/staging/speakup/i18n.c
>> @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
>>   	input++;		/* Advance over %. */
>>   	input = skip_flags(input);
>>   	input = skip_width(input);
>> -	input = skip_conversion(input);
>> -	return input;
>> +	return skip_conversion(input);
>>   }
>>   
>>   /*
>> -- 
>> 2.19.1
>>
> 

