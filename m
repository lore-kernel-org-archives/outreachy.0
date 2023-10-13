Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6571E6FC0
	for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 08:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G8HtGkLK"
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5384975e34cso3442019a12.0
        for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 01:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697186502; x=1697791302; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WobKMhut5Z1WRadmQFOCLE0LDQkau8vC9hdk6oaKD04=;
        b=G8HtGkLK5ZLpv9gnW3kNtMC6halxCw/X/2wOpinnkl7H8S0dl9eZkHZDH/TNh4YYmk
         ab4fSq0OCDbPl4RIuVf9Ag2j+PLddZA/WG+L+11YuRfyDShlgKZAW5BirAGWvCOORr+k
         7KNgD414UnIiuEDmVCYCYGKc/VaNd795sLWtsxgP8MbqHHfbXQqLNcfLOd8uyJrSTMSW
         Jl/UyZ643GC4d7d0zY9cOYAgknKveUYt3AY782gMs/5G0yiKD2gFXTFYM/3LyTR0XAe1
         SUc8cggmcn9oqSoDjkuD57IU+PeHvftcmQMGJf9d/iWR0r+whgvX6oavNdHDV4jmW9zx
         Jg0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697186502; x=1697791302;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WobKMhut5Z1WRadmQFOCLE0LDQkau8vC9hdk6oaKD04=;
        b=h1A8e1A0ei3FqaLgwePDtBg/QGsgibc1A5ox9wK/G1ywkygy+Ha4pV5TCSh6SvQy5e
         5mdhwCqXvfSbz8omo//tnHJ+GZ0GImaplktmXqY1Os+kCX1jjy3NzPqXPFZoJULasAQ0
         2h+/A7xiKPCZiwPQARGg8kBfjD9IvVC9Iq0MLPkUY64dPwyiM/6JBo4mnFoTid2et0BK
         NDEMqW8FCRjxI505hNBcwWUaYEaWdm47RlmrIDrsGWs7dyslQ+44x1daWDyr1Q8+fWxP
         IFfBbtIUSLvRJBpkwz8URF/dHtcXXkPIvQL+deWE/Br22ejyhFp8D6UW/or13IxF9Xke
         6NAA==
X-Gm-Message-State: AOJu0Yw8Y2ZTVv6V9T1ycg0wiSndMkzWyfi5KZnN9vfD8yOa1jkV5jZQ
	xHXq19uftIF5e+SGSJSsjS7Y1A==
X-Google-Smtp-Source: AGHT+IGl57G35Kgk+Wb+8j7IvEB83rBb+lMnwVBLThnUM4vWvaSEZOSoVzvBg81qjwsgjsDCv2K3XA==
X-Received: by 2002:a17:907:6d2a:b0:9bd:c592:e0ce with SMTP id sa42-20020a1709076d2a00b009bdc592e0cemr278581ejc.51.1697186502647;
        Fri, 13 Oct 2023 01:41:42 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id o1-20020a05600c378100b00405391f485fsm1893848wmr.41.2023.10.13.01.41.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 01:41:42 -0700 (PDT)
Date: Fri, 13 Oct 2023 11:41:39 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Calvince Otieno <calvncce@gmail.com>
Cc: outreachy@lists.linux.dev, linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Archana <craechal@gmail.com>, Dan Carpenter <error27@gmail.com>,
	Bagas Sanjaya <bagasdotme@gmail.com>, linux-staging@lists.linux.dev
Subject: Re: [PATCH v3] staging: wlan-ng: remove strncpy() use in favor of
 strscpy()
Message-ID: <2c5720d1-616b-4cd2-adf9-58039b58e1c0@kadam.mountain>
References: <ZShI4amWv7sdqfse@lab-ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZShI4amWv7sdqfse@lab-ubuntu>

Something went wrong in sending the patch.  It includes both v1 and v3
patches.

regards,
dan carpenter

