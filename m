X-GM-THRID: 6950266309427855360
X-Received: by 2002:a2e:a592:: with SMTP id m18mr18119529ljp.189.1618387342192;
        Wed, 14 Apr 2021 01:02:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5c07:: with SMTP id q7ls214221ljb.11.gmail; Wed, 14 Apr
 2021 01:02:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzIdvxcciOUxnPvwhuR9cz4lnRq5zaKIJX5kaMCI0qaujay/MwY8Y75L1gDnD0D4r3TxJPZ
X-Received: by 2002:a2e:a40e:: with SMTP id p14mr15664549ljn.254.1618387340213;
        Wed, 14 Apr 2021 01:02:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618387340; cv=none;
        d=google.com; s=arc-20160816;
        b=VRpkX3pR8By2014i6YSWhSUI5K5OJIJrZLc9ghlHoIFZ5zVSF0xmQZYVH/v2eROvQY
         WB1IzYPekiuZfhL4bqXqVgSArgupMmBBAqGKvxx1YSQMRw1/F7m6FhZAFMgCsc0XNKWj
         ihc0yF20qXOg0e0OUlYOEDLnbhwlxeaUZfZ4J3Mv5j2jk35ztlpcY8029vG0Dc0UQMtZ
         E2FsB8iEt/fEAZTc2KHNrKMy3OULwRumM12ki6DzJLKMjeigctWBVgSu33gn5oh4UJU+
         FUfW9OYuvwAOhvd4gxjwPffTYhMqEE+zI89xm/ZbKr5VgKyaK16z0RhW14sYY+8EKvoI
         Kmcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=eLYWvFJsLRWSZnDgFC4HWwA6Ar/qN3NYs7CsRsakJ4A=;
        b=06CryPxJ7AopSor4p33afCGUYGjqSELoF/T8FsAZ0A/VxO5TUgqgaPSsgdHYwPGMAH
         8UBENDjN0QdW/Z8onGgfxMEwygivAz7fI3WJyuYwfVbKpMzGtqpZo4byXcVmv2nT6Fy9
         Q0dp1W1y1EAy0R80dpQJYI4F+H69UeCPpjRMJDfuVgL/3sd+29YnKtT8fo/WCijEDJi8
         TqpufpfJmb7AxgUUPXVwmgYD8CDkMa8Gn9i1g/YmHlRl+seLx+LvcSu2BH9JI1UfBaTr
         6H6siXX+bdNEAvvmCR9jd9XQL8INZ/6p9wJs+1V8CDAqgyaIuNg1dviX97QYThFgfmqh
         g+0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=JneEJWiX;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb1-smtp-cloud8.xs4all.net (lb1-smtp-cloud8.xs4all.net. [194.109.24.21])
        by gmr-mx.google.com with ESMTPS id p18si877702lji.8.2021.04.14.01.02.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 01:02:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) client-ip=194.109.24.21;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=JneEJWiX;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud8.xs4all.net with ESMTPA
	id WaTYlzhQ4nzKoWaTblZqxd; Wed, 14 Apr 2021 10:02:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1618387340; bh=eLYWvFJsLRWSZnDgFC4HWwA6Ar/qN3NYs7CsRsakJ4A=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=JneEJWiXKH+P9ZzWyyxbtrHQc7c7FRECZhXacg2tiJ8c37MC+o3y7NmDVvxN1vmfv
	 kZNuLUZq7smq4FxM5yCjgUXlJiX/4vBCIukm6+G7zLcJFoF8r7A3tEEyiNXFe0QaJB
	 8QT4ngpkQk+1OT45vYbbYqkYLV3Zb5/wFBfnZBIe+ZiaOPir4t4Hkip7kBnLG+uo2D
	 pD9Bb6P5vtAPFD4tRRXOA369m8OSODK6XeSTLM4CcnXCB7nuqdlI27C2uGOMgSxIVy
	 TfrMR9mBI7Eh6nk9eICYMVkAjdNxtoCC8YaXOXIsDzg/u/MeK6UfNhuRoWYSmNRM/6
	 Lj+2G2PaaCKDg==
Subject: Re: [PATCH] staging: media: omap4iss: Remove unused macro functions
To: ascordeiro <alinesantanacordeiro@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <20210412134253.GA19402@focaruja>
 <03549d0e-04d9-6d37-93e3-c09b29ce53aa@xs4all.nl>
 <4e2f52124b29b3ed6c3f7f645f067c503c7cf4cf.camel@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <ba6a1424-a624-f808-bc9e-477e75348844@xs4all.nl>
Date: Wed, 14 Apr 2021 10:02:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <4e2f52124b29b3ed6c3f7f645f067c503c7cf4cf.camel@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfPEoSb3gkMUCu+Uq81wGwtZ/9iDWgot0m+ucFtrCGFCLCRdXzORvsQtiqQu/qnGppW25ZArUKwbFCd+uHaj+RObUzQPh93z75uMYjXNJ2CjPLZXOE6my
 zcGb0PG0MwEw6iH60BNGNQSwG5aLTkv1chA199lHguSNM2ew46xyoZWg9mG0TSmHryy64x/vAYMZaR6fL/JTqqu23ZcW3bm4eYGe1kvLdoD4XVtuf3nxgyyK
 sbOXs8al7ebDZ94BO1ihAn5ZGlBjl01LK8vopdSRBBRUN0hYZ6wmsK5n50PNzMPWZQMIzYF+9SD0dmKTn+bbTkPNOYhxibDiPXeTF8CxNp2ktjoiD+3LM6a/
 Oa0WaK6Mx3g4TnvjqzzAQlNBp6+bE7QDtZHZDHJDmuGOcKaosWIo6iNaOxyKz9nijE+GOGu8AtaWvDCIE2hM/kyIrj4eD6/UcDR0/xXrgpU0JF3fXoMxt6eT
 n323txK4PzWYQqYsAShUq7M5CEky9FnLiR26xA==

On 13/04/2021 20:21, ascordeiro wrote:
> Em ter, 2021-04-13 às 17:06 +0200, Hans Verkuil escreveu:
>> On 12/04/2021 15:42, Aline Santana Cordeiro wrote:
>>> Remove unused macro functions "to_iss_device()", "to_device()",
>>> and "v4l2_dev_to_iss_device(dev)".
>>
>> 'git grep to_iss_device drivers/staging/omap4iss' gives me lots of
>> hits!
>> Same for to_device. Only v4l2_dev_to_iss_device appears to be unused.
>>
>> Regards,
>>
>>         Hans
>>
> This command is really helpful, I didin't know. 
> Thank you for the tip.
> 
> May I send a v2 removing just v4l2_dev_to_iss_device?

Sure, that's fine.

Regards,

	Hans

> 
> Thank you in advance,
> Aline
> 
>>>
>>> Signed-off-by: Aline Santana Cordeiro <
>>> alinesantanacordeiro@gmail.com>
>>> ---
>>>  drivers/staging/media/omap4iss/iss.h | 8 --------
>>>  1 file changed, 8 deletions(-)
>>>
>>> diff --git a/drivers/staging/media/omap4iss/iss.h
>>> b/drivers/staging/media/omap4iss/iss.h
>>> index b88f952..a354d5f 100644
>>> --- a/drivers/staging/media/omap4iss/iss.h
>>> +++ b/drivers/staging/media/omap4iss/iss.h
>>> @@ -29,11 +29,6 @@
>>>  
>>>  struct regmap;
>>>  
>>> -#define to_iss_device(ptr_module)                              \
>>> -       container_of(ptr_module, struct iss_device, ptr_module)
>>> -#define
>>> to_device(ptr_module)                                          \
>>> -       (to_iss_device(ptr_module)->dev)
>>> -
>>>  enum iss_mem_resources {
>>>         OMAP4_ISS_MEM_TOP,
>>>         OMAP4_ISS_MEM_CSI2_A_REGS1,
>>> @@ -119,9 +114,6 @@ struct iss_device {
>>>         unsigned int isp_subclk_resources;
>>>  };
>>>  
>>> -#define v4l2_dev_to_iss_device(dev) \
>>> -       container_of(dev, struct iss_device, v4l2_dev)
>>> -
>>>  int omap4iss_get_external_info(struct iss_pipeline *pipe,
>>>                                struct media_link *link);
>>>  
>>>
>>
> 
> 


