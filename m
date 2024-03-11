Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6FA11721
	for <outreachy@lists.linux.dev>; Mon, 11 Mar 2024 07:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710142322; cv=none; b=EUcsY+HBAzrQe0O+ZjdVfotjW9Xl80lgFfRlYOje3eCLmKS06bPC8RwYOyTozBwy+Kk2lT4RGl2UCvKfzrRMS+2oUKGRkWF5EIBu4x3LJceGnqwR7iYU448+hdhXisTKtARxS5DjGAH1ByRuCLmNWlf66026u2ReyjWf+3tkwJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710142322; c=relaxed/simple;
	bh=tIzYwYt3HYRW6tvsRn1lu3C0bRfEo4lMnrCrWvcYJm4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TqSdA/Yforu93nQIpJkGwW01s6ku6EzCMsCNpu0tmoFWlgSgWzzCQNangIPwvPbppfAFo6FC4fUbYZtTRMv+WyExFIjyXTpLLw1UZ7SuZ+/SKNMiS53lTIeFwOFICiGbOdFCf/vfU9W4vBf+YdblaeZa+Z1mCwLlbHMxJncm1Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Piglvt24; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Piglvt24"
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-33e9623c3a8so532313f8f.0
        for <outreachy@lists.linux.dev>; Mon, 11 Mar 2024 00:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710142319; x=1710747119; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Q3pXmhk4G6nHGiIL9usDm0td7IScHKEjFe8Cx/b3F0c=;
        b=Piglvt24lP3P9e/2BiCpf27hP0uheSZSG+GeC6VAfzu9Q2gA8E/xCWp7eCHhzg5IZe
         BRoMnDwkEsQylDtO2SeWsi5txRjCja7xzB9kOlkMKdGzrjpo6IfBkaV0Bzlgs+TkO7+v
         eWjowzBmTh71Dv7l6IJ/G+utEq8IH3vkSOeW7eiP8DGzApPw6DxPWoTixdmz6rMJvpQQ
         IwDAb/MHW3+EOfQyb8xDtgfupKyTJz1d7+a3DeEOLh5qM8+Y1xEIVNCfJ3xqKQcFEIOK
         41XLfC1J9hLDFjTDwLZ04vUJhbjdbyaJ/cCialeRF/ZS7VWFywPGV+CoLjZttK3cIbcp
         iiQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710142319; x=1710747119;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q3pXmhk4G6nHGiIL9usDm0td7IScHKEjFe8Cx/b3F0c=;
        b=YgePWqaSky1Vk7yomv21pumBz9CVqyNk0ZbnlC0pGMg6OkPnJMZoTCrWBdhO0FQ5n3
         Ml6mdHKHeTlZnLi0MTnsLbxwX62zOUeO4rUU3FOJyaWbCbKNh+iwP9pJqgayoVoRm47/
         1n10hcIMHH4PhQgADLmaiM0Q9peXwgZS0EXNoZbnVLZvOJnhLTm2hz/sUyjst758Tnba
         HPaWtKfPKCH/faZ2vtZRy8d+gY2EE7ihLeG6nzeWS5gYz8PEcNsAE4/tKI/Bv6i0HdsS
         HFzNF5RpUNW1J+M46OwYTHcp3uQl6aYMHK7vSsriXHcuby4RnF9sy8CZ1XXlydoUtBbR
         fBUg==
X-Forwarded-Encrypted: i=1; AJvYcCXgL1gB7la1jM+oW6gWSeq2WVU5VBDOQcqNRR+HFhFEoFoI1F+anNp3gVh4T4SQ4dskgcQOCzclqj7Rbh+LI1Wsj9ADMHsrNEDd
X-Gm-Message-State: AOJu0Yzvo3vRhFXCpE/fziRUwGpDyDtUqg4NEfgpGdNSk9ksb4dDfTWZ
	qJtRoFd2y/99I6B5tZ8wYNeJcWbls9/9GESsdTIR6YNWbxHMHMkM/b3ykFzlKhw=
X-Google-Smtp-Source: AGHT+IF0cyB9q8cGAVzFt4meFCQZYK7OfTs4AcjO7I7FC74Eta4lEvbivT+0UH6KgrwAwpBrpVMUjQ==
X-Received: by 2002:adf:ed47:0:b0:33d:3098:c1c with SMTP id u7-20020adfed47000000b0033d30980c1cmr4656488wro.5.1710142318543;
        Mon, 11 Mar 2024 00:31:58 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id bx27-20020a5d5b1b000000b0033e7eba040dsm2746288wrb.97.2024.03.11.00.31.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 00:31:57 -0700 (PDT)
Date: Mon, 11 Mar 2024 10:31:53 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Dorine Tipo <dorine.a.tipo@gmail.com>
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
	outreachy@lists.linux.dev,
	Philipp Hortmann <philipp.g.hortmann@gmail.com>
Subject: Re: [PATCH v3] staging: vt6655: Remove unused function
 RFbAL7230SelectChannelPostProcess
Message-ID: <36c92e00-213e-4f25-9720-66912b4da56f@moroto.mountain>
References: <20240311035649.25043-1-dorine.a.tipo@gmail.com>
 <20240311060747.32876-1-dorine.a.tipo@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240311060747.32876-1-dorine.a.tipo@gmail.com>

The main issue with this patch is that it doesn't apply, but I have a
few other comments as well.

Why is Forest Bond not on the CC list?  Please use get_maintainer.pl.

On Mon, Mar 11, 2024 at 06:07:47AM +0000, Dorine Tipo wrote:
> Remove RFbAL7230SelectChannelPostProcess as it is dead code.
> 

This isn't enough information.  At first I thought the function
declaration was commented out, but then i noticed that it was just the
weird curly braces stuff that was commented.  So I thought maybe it
wasn't dead code.  Then I have to do a grep and search through git log
to find why there isn't a RFbAL7230SelectChannelPostProcess() function.

I want that sort of information in the commit message.
"Commit dd2837bdea0e ("staging: vt6655: Remove unused byRFType in rf.c")
removed the RFbAL7230SelectChannelPostProcess() but accidentally forgot
to delete the declaration in the header file.  Delete it."  Since
Philipp wrote commit dd2837bdea0e, you should add him to the CC list.

> This commit removes the dead code to improve code cleanliness and reduce
> unnecessary complexity in the driver.

This paragraph is unnecessary, we all know why dead code is bad.

> 
> staging: vt6655: Remove multiple blank lines
> 
> Fix unintended blank line introduced after removing dead code
> 
> The previous commit inadvertently introduced a blank line after removing
> dead code from the rf.h file in the staging/vt6655 directory. This commit
> removes the unintended blank line to maintain code consistency.
> 

We aren't going to apply the previous commit...  So the patch is not
going to apply and the commit message kind of doesn't make sense.  I
have written a very short blog about how to send v2 patches.

https://staticthinking.wordpress.com/2022/07/27/how-to-send-a-v2-patch/

regards,
dan carpenter

