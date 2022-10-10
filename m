Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90F6B2F56
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 18:45:36 +0000 (UTC)
Received: by mail-vs1-f49.google.com with SMTP id d187so12085368vsd.6
        for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 11:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncf.edu; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3ZWYhbzQ02ugnKxovvl6opezTNqoIUX1GQCD7ssGck4=;
        b=UiA6KSYparVbNARhhZ0knMfkuGd/b9MtE1+xinIjlvGYLpFd1yk3l+JvVkscvKdOoM
         NpSmVWXsPWGU/b/6NQhz+CxhiX4GUY6EwCJUF/DabI724ESYbPUqZ8TtStB9uOifJ6cf
         cNcqn6/I+8dOQTYipIsD7i8hpuNt5cnCg1yvDYPKCIOHjC5Z1Ad7E2PvdS8gqCsETeJw
         l9z3cQNIZiEKSzc68eNne/Q7qfnDRGGm7SqV/JgIeFRtRnP42SWIJ4DaKnVrcWxFya60
         EyIDbpZpBHwV0DRzSlwUPdDDuOpHs/jfnY2k9NQKc3Tx9sxfogZ1THzR9BcYAZ/1X2NZ
         REqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ZWYhbzQ02ugnKxovvl6opezTNqoIUX1GQCD7ssGck4=;
        b=adcFONUz2J0UoLsoof8WvwD7CCb8Mhyo/PMO0mKPJPCARNg1S2REZvIx9o94dnjR3M
         Jo8nuXwJ/oiJ3inCU/KOpqfhtNl1jl4iSbab+k7GVHvlDiELcTIiQdzvlsfyR6HkUpEv
         mwN5wwPIp+sGHBmqr3Q+CCtqdujvPHog5qdYq4u+bc9O8UwzSVek7HxqirWXrasbmidx
         1QYOkXeEGpUcJqOmA65IDkf/yWy7OkZWpLZM+XI3EMDYHN8vd8BzK2AC50lJsHPm512s
         L7oidNZ7N/FOdPvOEexi/9T19SX4KbLPTjWWG9aLDEi7B4P5QQkmTUVvp6v9P9xHSmzQ
         mOYQ==
X-Gm-Message-State: ACrzQf1YItONyp0HFskFyNMVQM8Yb9xl3bsNt7tehLJVuCpTcUJG5Xr2
	q1+6FxJrJkvWPDqjvePoPeUL9MziL+BAag==
X-Google-Smtp-Source: AMsMyM6KT8xBOShAPmgIdEWhv6VT92YEduWyQQi8/0RTafa+n5nmavBuEFL51GHHA4s4E0ByNKaCIQ==
X-Received: by 2002:a05:6102:2453:b0:3a6:5309:af88 with SMTP id g19-20020a056102245300b003a65309af88mr9835875vss.74.1665427535493;
        Mon, 10 Oct 2022 11:45:35 -0700 (PDT)
Received: from zeda ([47.195.251.56])
        by smtp.gmail.com with ESMTPSA id h10-20020ab02a8a000000b003d22af4f306sm2219405uar.28.2022.10.10.11.45.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 11:45:34 -0700 (PDT)
Date: Mon, 10 Oct 2022 14:45:33 -0400
From: Hunter Chasens <hunter.chasens18@ncf.edu>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: greybus: Fixed whitespace style issues
Message-ID: <Y0RoTagEGMQhoXFM@zeda>
References: <20221010155736.117492-1-hunter.chasens18@ncf.edu>
 <6a157246-b4af-273b-8f6a-352c82aa5a2c@inria.fr>
 <CAFJe6O0ADLWOcem3-=EHdKKUHozVP-M1M7VQVY1PCkHr=nMMWg@mail.gmail.com>
 <cb9ed48e-3b83-8a4-773a-39e25483bfb5@inria.fr>
 <Y0ROSX0ZxGQwmMLT@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y0ROSX0ZxGQwmMLT@aschofie-mobl2>

Thank you. I only learned about outreach yesterday so I've not had a chance to look through the archives. I'll be sure to do so however! I was very excited to learn about it!
