X-GM-THRID: 7016473009259020288
X-Received: by 2002:a05:6000:1b90:: with SMTP id r16mr2280759wru.250.1633681077284;
        Fri, 08 Oct 2021 01:17:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:1caa:: with SMTP id k42ls3502249wms.3.canary-gmail;
 Fri, 08 Oct 2021 01:17:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwTaCbES5TIn6mpto3niF9+x3bY80LxkvWOq6ccj+WqqFmeho9XxOtoUC2uFH2avo2kU0mT
X-Received: by 2002:a1c:496:: with SMTP id 144mr1928255wme.60.1633681075684;
        Fri, 08 Oct 2021 01:17:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633681075; cv=none;
        d=google.com; s=arc-20160816;
        b=PvH2WUxPXjJow0oFTfjJ9ru0nbp5SbwSgslgO+7De7DmJ5fjijdkkJNEbNzlC4BvxR
         CzvAWyC95M+buNgo1eRZN0RhKMkntuGslmyiJwyrAGfXu2+EA/Imdme2HtifYuC0lbJt
         2qS/wWxXOYSTZSySSj/ZT3EtGrQxpJlhoEkKcVKTRF+hoL3dihrCiZnK73E663Hinarg
         F450BNiapuYma16bIXgqRoDuyHEFEdN2ms6wSvQAEao5PKQbu7z7f7Q2Cmywx9dfSpFD
         uhVZnf6kh2GS/q2EnNwgTOm7UcnNs+AgS3QqxkCj+6xGOHJ3ZPQww0kOHDhfn5pQczB4
         f3IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=qqEzQx8EVGDPnUCyU3/jqwOwfygE7CpH9xYIYlSqnUc=;
        b=TxApCSERn/rouv0OeHKCdexi7FpoFSmvRSOklOBAv3Yq0vl1RFdb2Z+4ZnZV9XXXl1
         xGzpw/S/ot9sD8npuCTRa8TDkDepKzkbOAL5z9HIOc2icLcq5rz4u0MzU10mqi10HSTZ
         W9uDXFGl1aytZm22uutc1ZtC3t+sDAfp+GCnHId2dC7CcxzbSxWdkuUnAi1q52qZStxM
         KR+3IgIj/mxBgGhCY/OYYb1+T//UA57JYxF/pQCiIfrKFK27maym5NJAc2mNoLplhher
         fskVdP2z9uelZa+NZsRgQELa2T66Y5Kly2Vf5CMfINs0kZbjdI7tA6IXrTYo8NQczUzF
         GV6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=eKXZdVW+;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 2001:888:0:108::2b as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud8.xs4all.net (lb2-smtp-cloud8.xs4all.net. [2001:888:0:108::2b])
        by gmr-mx.google.com with ESMTPS id e2si134586wrj.4.2021.10.08.01.17.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Oct 2021 01:17:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 2001:888:0:108::2b as permitted sender) client-ip=2001:888:0:108::2b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=eKXZdVW+;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 2001:888:0:108::2b as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud8.xs4all.net with ESMTPA
	id Yl4imPKmkx7rIYl4lmAPnD; Fri, 08 Oct 2021 10:17:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1633681075; bh=qqEzQx8EVGDPnUCyU3/jqwOwfygE7CpH9xYIYlSqnUc=;
	h=Subject:From:To:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=eKXZdVW+WjLa9IAcvc7UuLQaSGmgizQszqcJ5sG7E+rNpDnUNDckPBRdGYIn7BHjC
	 smcRHlYpxEQTkoRzTbrevfVS0T6GACCNDb7mlErAV7FaTXudV7+G+2duNKYTaYHmdd
	 PxG5pP6wZq+3WhQapTLs/bRt6/HDy+3ZEKrihJUYeT3LeX6j3HKWhS3BT/zsRQeYey
	 mHeHmaOyXYEmv+vhTkrBrUUHEgDe8XM6YBr5M5t20l62m87HfT8YQhIqFb0YNb+IQj
	 ZoyAJG2+OgPbcEs9mtcF4U1at6ThQxnQSKPjAnAXMp/UHenBawPH0FodbGkBaBCtIk
	 avG5hitcXE8HQ==
Subject: Re: [Outreachy kernel] Re: Outreachy Patch Restrictions
From: Hans Verkuil <hverkuil@xs4all.nl>
To: Alison Schofield <alison.schofield@intel.com>, gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
References: <20211007234651.GA393313@alison-desk>
 <20211008011459.GA393580@alison-desk>
 <cb4e6a98-5f41-7cc3-15de-0b3c7d8ac3cc@xs4all.nl>
Message-ID: <90508157-31f0-b038-4348-d215faeabfd2@xs4all.nl>
Date: Fri, 8 Oct 2021 10:17:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <cb4e6a98-5f41-7cc3-15de-0b3c7d8ac3cc@xs4all.nl>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfKShacaQ1p+iGGAp1yOLcKFykUXg+v79jYkNS+chSNBDlfg6YIrU++P+Tot+8y28aQ8cwGkCXqAR68g7fHvML/NLaee9xdu0nnEoDufigt6wnMeETwE/
 U3x9mM0CG1DskdCZfJk47QmxZdMN7kbYlE2m19tO4m9/yBVqyjVTq80u8SJSp5O/QLU7Q7Jx5/5drQy+XNl7JYTRsSbvii0AnPEQ1gBZtebKyhA2fbWEt7Y0
 GvSzW67O+dhVxDv1pazclbtMlLV9yK+zKbB0SOoUuL9CkFAj18dsQj3wGpCiuOSQ

On 08/10/2021 10:14, Hans Verkuil wrote:
> Hi Alison,
> 
> On 08/10/2021 03:14, Alison Schofield wrote:
>> On Thu, Oct 07, 2021 at 04:46:52PM -0700, Alison Schofield wrote:
>>>
>>> Hi Greg,
>>>
>>> We are about to kick off the next contribution period for Outreachy Interns.
>>> (October 8 - November 5)
>>>
>>> I found this note and would like to know if this restriction still stands?
>>>
>>>>> Please avoid sending patches for the drivers/staging/media directory
>>>>> as Greg can't pick them in his tree during the contribution period.
>>
>> Hans,
>>
>> Just read through some more backlog and see that you (Hans) welcomed these
>> patches in the last round. If you are still able to support these
>> patches, I'll drop this restriction.
> 
> I suggest we narrow the restriction: I can handle patches for drivers/staging/media,
> but not for drivers/staging/media/atomisp. Last time reviewing patches for atomisp
> took up way too much time for very little gain.

Ah, and any patches for drivers/staging/media must be CC-ed to the linux-media
mailinglist. They should be anyway, but if not, then it is likely that I'll miss them.

Since I'm not a mentor this round I won't be actively monitoring outreachy-kernel.

Regards,

	Hans

> 
> Regards,
> 
> 	Hans
> 
>>
>> Thanks!
>> Alison
>>
>>>
>>> Is there anything else contributors should be aware of for this round?
>>>
>>> Thanks for your support,
>>> Alison
> 


