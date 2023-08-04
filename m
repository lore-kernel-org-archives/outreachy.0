Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446EABA28
	for <outreachy@lists.linux.dev>; Fri,  4 Aug 2023 12:01:28 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-31759e6a4a1so1638310f8f.3
        for <outreachy@lists.linux.dev>; Fri, 04 Aug 2023 05:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691150486; x=1691755286;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CrrKUb5R1khXxLb9w+qBkaZIlY39FTIXag0yGDMb0Wk=;
        b=xLnIY6hEY3+JBlTJLCuKMeunrPgAABqHBSzGUx9N+DflM5XIApftexaeP3I7GfD9oj
         UMBtiWBgYPaZOeDBXBTgb4g6XnPYltck33EjNnEOGGuViFFbdgtBOrr6p9rhrdTpbl4R
         6FR9e/of50k7ut1v3csfM1eB7T7y9SEaKcPxlieqeO+1lDuZ+URVt5UmtMRex1yKNh5W
         +gtiOzOJNeuzb8CHxCyw/ZRav7sxCKeE0oOI5JTL5SwoJ+g8Yqgpq29T02UIU9tXqJwF
         XH84Fdd13rm9F0qjlJ0cs7bA6OloTMVOVYftExrrH9nExvRaVgGNlLEWtt+38im14BPw
         gu3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691150486; x=1691755286;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CrrKUb5R1khXxLb9w+qBkaZIlY39FTIXag0yGDMb0Wk=;
        b=eBCuc7BxS1nTICMcYxQFQpm5sZ/Cs/o4/zSoxEABlOBT/2j0kRJoZv//sHp2cVGRe+
         1zqiP8nXbnpoxqMNt9BFxqmHmHRd/RvQwaf2zDF9n2PR+pvmqibvRisa4qjK7vmMODTA
         vp08hdg/pkeqlq+KogBw6My6YNnzfzjIwMXhwyYcYE2BZSILvy1jpY6t7onLPYZcWqWG
         8eJ6c6SbgnEwtJSHTivFr5TU7t7ggH5kmog7m5Koa26b/Zb4Q/BOesSYbGx1FgvRWXu8
         MDG9LsO7OY2z1KeD6NoEh5qvHJUwqhaM5gNdrTaV5QmARsxU4fD1w8RCHdTb1DRGwNdg
         //1A==
X-Gm-Message-State: AOJu0YzGZYhTSbfPYDqWu3zEDV7nUTxh7dGEIcCVMAJj2/TeuTOeotva
	TdNnLM2S0kzIo+JlJ8297szCDw==
X-Google-Smtp-Source: AGHT+IEkLQBk32FHJkNpDRz7LLcG2dqZIbgShhe747V7D9nwd7GrK+hNxIELUnnyo6fG8ftgHo6z2w==
X-Received: by 2002:a05:6000:1b07:b0:317:65b5:f584 with SMTP id f7-20020a0560001b0700b0031765b5f584mr1010678wrz.39.1691150486193;
        Fri, 04 Aug 2023 05:01:26 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id o11-20020a5d670b000000b0031753073abcsm2339092wru.36.2023.08.04.05.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 05:01:25 -0700 (PDT)
Date: Fri, 4 Aug 2023 15:01:22 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Pavan Bobba <opensource206@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Michael Straube <straube.linux@gmail.com>,
	Philipp Hortmann <philipp.g.hortmann@gmail.com>,
	outreachy@lists.linux.dev, linux-staging@lists.linux.dev,
	linuxkernel@vger.kernel.org
Subject: Re: [PATCH v2] staging: vt6655: replace camel case by snake case
Message-ID: <e547d641-9c5e-413a-8f57-4a19bcc56dea@kadam.mountain>
References: <ZMpZixfZ4WQgpzF1@ubuntu.myguest.virtualbox.org>
 <f967a1d0-639c-4cab-8fa0-e04ccde4ed5f@kadam.mountain>
 <ZMzmrADhbNCZFm5f@ubuntu.myguest.virtualbox.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZMzmrADhbNCZFm5f@ubuntu.myguest.virtualbox.org>

Obviously this is the wrong patch in the wrong format.  But it looks
like you tried to resend it as part of the same thread.  There is no
need to do that.  Just resend it as a new thread.

regards,
dan carpenter


