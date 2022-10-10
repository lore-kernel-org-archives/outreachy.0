Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7A825CBD
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 22:52:07 +0000 (UTC)
Received: by mail-vk1-f177.google.com with SMTP id q83so5873896vkb.2
        for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 15:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncf.edu; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=l+t5jGJoCxwcFebEa5NsOLMjscJ9VLXPkRrGiTZJH44=;
        b=awGQIbat3DJ4W4MWbCuu/HQk6xfYvrP8mpeGbKZd+r5IM1d0cY3dK2bFK2ToqgtfMs
         wVZl0i7ftx9vPZwzKe/LZhM5TUCqOrKIO3UNlMgGmkP6KaCRrxSh0DbEdCl+VSFus4ka
         lQph6DfNym720PIpcazv5yBZ7LseNukbqSRqu3BMRvtU3zuGGrYIGdgqR8CEocWmlr5Y
         DkpcOqEZFqLM3WOeoweICyLrvT+XGhxA1mrM/iEnO9/UDIEEAgwx5oHx49bvGCMrZKxZ
         oZQxfmUubV2yWgZq8TktGt0E/j8zh0sfqTScmCAR0n09LdRhf0kTqR5o6l4a749vd8Y/
         ODWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l+t5jGJoCxwcFebEa5NsOLMjscJ9VLXPkRrGiTZJH44=;
        b=nz5EKECytwHoapWFYZXzDEVJkCEv3EdXJEjPbAr5c6lPYvFvQPfK+fEaRoPB6lyuaD
         COuq0YKIZDgy4i3zcGjCE5QlXOlp/1CSKUn6c9frH6V8P72lG9d3hxexkArPeHHcJHSH
         +3xPcsKnsmRlF0CLltYi3fdwPKcpGplgYHMciRNXUo2SG+TfnLOSieJRzGIyd1C2vHSy
         nUsUgZU0fny6471XMkUni9ZtrhL9AOJi3dEJPasIjl6qfxHpTYeSFmlN1xKOItqLxIku
         /b/sRfYsWPm4ZJVT3ozSD5S79S0Nu7VMza362qlf5o8dKb7dXmSyKOeSL6sfK6a6Fano
         h1mw==
X-Gm-Message-State: ACrzQf0RLkGeV1NE4EGbYd0olhrlmIsU5VpxuyWHBHMfcEBX96XkMdTD
	Mq43K3Dl5B+mYy5pxNpkJCv1LQ==
X-Google-Smtp-Source: AMsMyM71jZr/s5uEObUdZIzf8CDPalnWTODV8dtr3l134zoCJaPqFAfXqmc6gLBRpGb8eG+cTQcwsw==
X-Received: by 2002:a1f:d042:0:b0:3a2:4c49:411e with SMTP id h63-20020a1fd042000000b003a24c49411emr9986523vkg.10.1665442326546;
        Mon, 10 Oct 2022 15:52:06 -0700 (PDT)
Received: from zeda ([47.195.251.56])
        by smtp.gmail.com with ESMTPSA id a1-20020a056102014100b003a5a5ae95bdsm2251249vsr.3.2022.10.10.15.52.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 15:52:06 -0700 (PDT)
Date: Mon, 10 Oct 2022 18:52:04 -0400
From: Hunter Chasens <hunter.chasens18@ncf.edu>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2 1/2] Staging: greybus: Fixed whitespace style issues
Message-ID: <Y0SiFDQX1qz/eeOn@zeda>
References: <cover.1665430030.git.hunter.chasens18@ncf.edu>
 <78af8ab0297e0af46835937d73dee23f187650a1.1665430031.git.hunter.chasens18@ncf.edu>
 <Y0SBNeoQDfWmJcZi@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y0SBNeoQDfWmJcZi@aschofie-mobl2>

Thank you for your feedback, Alison. I was nervous to touch the parentheses as there was a macro involved. After reading your replies though I realise I was probably unreasonably concerned. I'll be sure to include that in the v3. Thank you!
