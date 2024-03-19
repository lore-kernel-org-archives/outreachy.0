Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6DA4EB32
	for <outreachy@lists.linux.dev>; Tue, 19 Mar 2024 06:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710829051; cv=none; b=uQdBwsEUcuTIEmHrb5uWt9GQ8bWp0oQpuajL3ktTb1+HLw9rdWfnGgzbVhR5jmBk0sxRrOw9NEyfCL1evJTRLz2pehsJiL8P5GEpaQLOKMfsoUfdcDVxE3aDmDyHKXgOOyBhlyC/cQDcW1RE8uEkZDzB/O6I/fanejhvJI1dPtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710829051; c=relaxed/simple;
	bh=QQLxq5dEZDeApbmB/Lkx6MXuL7gadJz/3NlJEViXU8o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H5ok/HDyf4KtPUffn+tUbd4U3MVVrHWa5sYzn4baeMLNce/WOPGI5z8xTIEyVhtP1N3mlQ1m5sYcx8iRk1HU4uscl+n6RRJOtg1RHs3Cyr++rU23KJHkZ74VqOaoLcVkBfTukEf83zySTCZlqm8QSFpWscWyMTn+V5p754cq2EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UubZbHp7; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UubZbHp7"
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-33e1878e357so2074606f8f.3
        for <outreachy@lists.linux.dev>; Mon, 18 Mar 2024 23:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710829048; x=1711433848; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7NxyLAPBD0uYaEFsJsCLCqoFa7u1wfvFPNUDw78rj08=;
        b=UubZbHp7kGW47u87N/xE4zMZR/hg2iyzgLOlj04i9UWgoW4kJmA5PM05hLnGttLcx8
         SLFL1JCe0CF44yvFCEydfj4nsS7FJUv8gR1gYIciWgWoWFxDjjc3MAVAe5sWKhwEkHBL
         /I6rCRXy4aO+xkARWmRYdbpBGSKkqj4Stt75efcOrZh24jbqJHKokoccV29bWM7QPBJn
         VKgvtNbRpLJYtS67jfAQ8Dx2ioK9RCv96vcEIz6t/RY1J5Wc4B9KOKOoFkYKO1CmzvJf
         Rgn+QXCS5xZb6sqJOI109asr4wFi7a4mYvTU8lV8Ak/XPh6O9U/oADr+GCgOrEL/ZXBx
         sRrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710829048; x=1711433848;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7NxyLAPBD0uYaEFsJsCLCqoFa7u1wfvFPNUDw78rj08=;
        b=sEbesiaUUnvz8RsQ0N2ssQICupFA2X6ZCPUMvYQQ3+0puM2yWC+Hl61GXfJiJ0e9U3
         tHd9HVxiOuUgF9drlHYx+Es2SFeQpUdPV1jxPm+ABF2fNiVdd5BF6xNx+Ncp4Grploug
         rp0DoitHpwMNpMq3JejD6OIIFHqs6ALqycpee3vviIGZQTlMkrPzh2WA7Ede5pap9Vzp
         z7+n7/eWyB1Z9FVNRwjZETx5M2psTFaCSanYIXcXKqXSoeO+1YBQ+GqSnl9Hf7moODSf
         ZydynLa7vPOL2eAsz8ovJuKk7ZsxGXu1MQdqfQ3OGH00VZLsKbljWtJwhi+UY9dYmZAe
         17lQ==
X-Forwarded-Encrypted: i=1; AJvYcCUV7q1Ff6Qj77KmlJ7VH0Vei39RHS0nj8nYiAIPGnGuAZb5UawOTp8smIDXuQxU1OEqWAl0xiw+pIzC4Lx1XefXV/eP2OTFTgR7
X-Gm-Message-State: AOJu0YwOX8AygNRLczHzttWnZdd03++NR/781W+foP820N3lWVmABdCS
	+vKK8RLD5rgpmqdZgdBj/INglbwqcUbeSj6D5hVq0DItZSXVwCbqdrVqii6dJ8o=
X-Google-Smtp-Source: AGHT+IHxChfQOs9Mp8LF/ggHgGIqPNQKjvXFOMYn+smQajFfFmtbcaa0DsoWP2SsJGfEiulLyAko/w==
X-Received: by 2002:adf:f606:0:b0:33e:cfff:a05d with SMTP id t6-20020adff606000000b0033ecfffa05dmr1111932wrp.59.1710829047915;
        Mon, 18 Mar 2024 23:17:27 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id n8-20020a5d6608000000b0033e45930f35sm11520855wru.6.2024.03.18.23.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Mar 2024 23:17:27 -0700 (PDT)
Date: Tue, 19 Mar 2024 09:17:20 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Ayush Tiwari <ayushtiw0110@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev, outreachy@lists.linux.dev
Subject: Re: [PATCH v6] staging: greybus: Constify gb_audio_module_type
Message-ID: <9ef61ce3-6f14-4292-9364-903bc52c250d@moroto.mountain>
References: <ZfiQsZBrHfImIJfc@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZfiQsZBrHfImIJfc@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>

On Tue, Mar 19, 2024 at 12:36:25AM +0530, Ayush Tiwari wrote:
> Constify static struct kobj_type gb_audio_module_type to prevent
> modification of data shared across many instances and to address the
> checkpatch warning that "gb_audio_module_type" should be const. The
> "gb_audio_module_type" struct is only used in one place:
> err = kobject_init_and_add(&m->kobj, &gb_audio_module_type, NULL, ...
> so checkpatch is correct that it can be made const.
> 
> Signed-off-by: Ayush Tiwari <ayushtiw0110@gmail.com>

Thanks!

Reviewed-by: Dan Carpenter <dan.carpenter@linaro.org>

regards,
dan carpenter

