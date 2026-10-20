Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.161.43
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792462838;
	b=AzrulaTU9wlgnVHuStlz3JPgG77Bc6geYg9kNyENFk8jI0urtGJjmKR8cPIF396sWy/+
	 gmk5y7XnMs06ikENcnTBqxP6w+NtnY5Y0tO4dyn1mPn9g//p5oNAkbe4WR806pf2VJxQo
	 Mftuwr1qS+qUYyONtj6MlLyT6aVES16vyZ3y7RcFUMCj3hp13g/piXcnd7GpzEHOLLWyy
	 xGGSFtQ0VwZrttL5pdEzS022670K8Ltm4VCkWygi8NggsXOpEQ2AC/tEZQGY8Tq4nypMc
	 gLcmr2z/1TVKU7HkMmdOqIIpJ1ThcKYO0O6tfkgh1lCYmWv2Ac6QadJFbsi8hRW3eJQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792462838;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=ov1JQi2JjMl24yFAFJ2MUTE1RthNQLp4XwRk7/4yijY=;
	b=jPINAHH+BrL8LBAi2IUid0sycKt5XKO0by+7i9RBg4qoHuMKFYcqzr442ffJSmt2hLNj
	 vAUYsVQBJAWyi/Yq4UxfkiQ4h556RMIyc5CsR3r4DW9cDTYiJ7UhXlR03ryB+BPOnuknp
	 h2IT2ENcH0LXadJ4Rmb2gcZOw1ZzvOGytyRox/CzNgjsjom46ojxtwAg+oqnrdwXsJOC5
	 NECtVCCDjLDjsEzIM3iQQqxd4Z7Jy7wfYXrDV0cLyXcIhQfAyiXDNoJx2HndwtM5sqZhl
	 3KpbZGKFNLP6xcDdC3kXhHX+e2NPRh08I0b3VdUm98dLDxp62Rg1vIGvrjagGJ6Vq5g==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=j+5sHtAQ;
	arc=none smtp.remote-ip=209.85.161.43
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86045606A320
	for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 02:20:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 86045606A320
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=j+5sHtAQ
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-6dd4f3f696aso1662928eaf.1
        for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 19:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792462836; x=1793067636; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ov1JQi2JjMl24yFAFJ2MUTE1RthNQLp4XwRk7/4yijY=;
        b=j+5sHtAQpyZ+B2BGjUyPDuH4iLlNjYzUpTtJJy4X1fYF9OKwWcOnfcYCAEN0JinXTb
         kQaKMDFaBuGTrTCfqREetTQzQDNWOj3Us4NOiQZncL7jkzqsaU3HuWw0NksDcgoHs3d9
         E757f7Ww55XzHvrEYvgRtz+pqNEsOt2RwTorjI9VVgbvE5zBlkQ0b19K5vgzLDYj2SjR
         LuO5ATxG9ZjvO+7XXOM6RC36aJmY671SndeV4L2KdWaYdlVy4g+hIt82B51y5Q1RHIUd
         E2vkgBRQtV2io9eHhp+vZnEFi5B3GKz9yg2JDfmn1I4WIV33QQKQX28NMDuGnesG26AS
         maYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792462836; x=1793067636;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ov1JQi2JjMl24yFAFJ2MUTE1RthNQLp4XwRk7/4yijY=;
        b=pUoi1sWL8YigT5trcx3uK6uzmqDRPyAHgkq707HGzI6/nCc37mXMej5D7VEsotfQyY
         8xVWLQlTRbtnJP19qfN5TdH5a4qsqDcQRvi0r8844+q9zcHsfl13N0CTg4YnzfqNWjGk
         +W8yNDtPg1xH6RveJNM/x0hnXeEMdzzVQG8gjYnRKqkRxxhNOxAEPQa5GKCxdhaAahmy
         QjoYNh/lXNrFJN2FfnF9FJK8TCwrXo8iZwvomNj7sKIxd9FTyJyvzuaADt9wY2WMAISv
         j0ZBdRxwL3bwSzASuA3R9fBMdBohhKEBaYFGTSqF+TDzfjajImegFxe/2foOrYupm5Gq
         nY8Q==
X-Forwarded-Encrypted: i=1; AKwUvByrh9gooa5ywnPUGyPlcgqId/OIknIVGLa8lP9DZ1dMkToZmwkISbscmrYOBTN1cWRAoNMJu22nXKs=@lists.linux.dev
X-Gm-Message-State: AFq9FYJ2yZG2z43VUgWLmlcO95S94tP5jtft+4eUR6aDwXaGHexi7x83
	6UZ9XMQmSZwoiCGXuNndOEraOlTlKY9tHqZsNRNJcH9GCJzrQm06ukmDr571HzuJtw9PIw==
X-Gm-Gg: AYBFou2deprxRevR+6Sp9cKXVInRLQA7g2zYbCQb04K5JQzQ1YjKRggs8PwFqwKi+Mm
	kr4Ra5NsrTYFpCD/BHWW8OFqHZuV6iKEiEPHfjUYyUGgXHlTaUWRzwS66XDoZLs6TbatVf21Hzk
	p0aoPtcxy3dTz9wK/fwtPHab3vfvowe8JoefJdmBPv4NI0ZiXNAQ01Vs0Vejyw519eq61qXYmr+
	fee1/VpPeMCwuJwFugxcebM5j2a8kdT8NXNbFrTbAJsTTMw/+26RqkQuD0kc9eD/Z2CWBZM78MA
	b03rV+tyK1C+a5QOYDTVvXIzwCdBORR6znhrbXIUyLbc1/H7XLYPrkKBAkDbQEQ5O7NEroE06H2
	TAvhcvyDqtEIfS311Akesu7N9N8sj2ClAo6Qz9gAHP0MWmAindV2fzbrzgrvl3UW/RN5DiQYnwk
	6uLAkjnaiGVussWnD6kR4mI0rnc2p9WNtoFDYvkg9TSXwGl71wLliKOpKnyLByab/ZISJgKqSnx
	pvBoUrIULT3PZS0mpAa0iLY4w/kc+2dLXobCVw1iCk=
X-Received: by 2002:a05:6820:82c:b0:6f8:3d45:b465 with SMTP id 006d021491bc7-70352783f61mr5261958eaf.11.1792462836179;
        Mon, 19 Oct 2026 19:20:36 -0700 (PDT)
Received: from [172.20.5.89] ([65.141.20.21])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-842a0f284d1sm10247392a34.2.2026.10.19.19.20.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2026 19:20:34 -0700 (PDT)
Message-ID: <cdcaf727-4433-4f8c-8e33-42094efcc6d8@gmail.com>
Date: Mon, 19 Oct 2026 20:20:33 -0600
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] staging: comedi: comedi_fops: fix alignment to match open
 parenthesis
To: Comfort Oyewole <coyewole7@gmail.com>
Cc: abbotti@mev.co.uk, hsweeten@visionengravers.com,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy@lists.linux.dev
References: <8a960200525367f0fadca6b83ca57273e469f225.camel@gmail.com>
 <53D6A234-940A-4B29-89B2-7EB0E459F077@inria.fr>
Content-Language: en-US
From: Jeremy Dean Clifton <gservice341@gmail.com>
In-Reply-To: <53D6A234-940A-4B29-89B2-7EB0E459F077@inria.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/18/26 11:09 AM, Julia Lawall wrote:
> 
> 
>> On 18 Oct 2026, at 10:18, Comfort Oyewole <coyewole7@gmail.com> wrote:
>>
>> ﻿-----Original Message-----
>> From: Greg KH <gregkh@linuxfoundation.org>
>> To: Comfort Oyewole <coyewole7@gmail.com>
>> Cc: abbotti@mev.co.uk, hsweeten@visionengravers.com,
>> linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
>> outreachy@lists.linux.dev
>> Subject: Re: [PATCH] staging: comedi: comedi_fops: fix alignment to
>> match open parenthesis
>> Date: 10/18/2026 02:30:05 PM
>>
>>> On Sun, Oct 18, 2026 at 02:22:49PM +0100, Comfort Oyewole wrote:
>>> Fix the alignment issue in order to adhere to kernel coding style
>>>
>>> Signed-off-by: Comfort Oyewole <coyewole7@gmail.com>
>>> ---
>>> drivers/comedi/comedi_fops.c | 4 +++-
>>> 1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> This is not a staging driver, why is staging in the subject line and the
>> cc list?
>> Sorry, I made a mistake while working on my first patch. I just realised the staging drivers are located under drivers/staging dir.
>> Is there anything I can do to correct this?
> 
> Just work on something else.
> 
Comfort,

The comedi driver isn't part of staging. You can see who looks after it 
in the MAINTAINERS file
or with:

   ./scripts/get_maintainer.pl -f drivers/comedi/comedi_fops.c

That lists Ian Abbott and H Hartley Sweeten as maintainers, with
linux-kernel@vger.kernel.org as the list.

There's no dedicated patchwork for comedi. Some subsystems do have one.
https://patchwork.kernel.org/

Drivers outside staging have different
expectations. A clean-up style fix may not warrant a change.

You can still send it if you'd like to see that change in the driver, 
but I think it could be separate from Outreachy and staging.

Good luck with your next patch.

Jeremy

> Julia
> 
>>
> 

