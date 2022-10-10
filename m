Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175705CB0
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 22:05:57 +0000 (UTC)
Received: by mail-ua1-f44.google.com with SMTP id h25so4381407uao.13
        for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 15:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncf.edu; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JwbsJe6J5PQ2Mn+jJfKWNuAOGlJq/JUl+1pojH6JCeY=;
        b=cl0Y5nO+yFFIxQfZUpGtT7MeHIQRy6IzraXZvaAfcUXTTOj6xnEWkiLIos4JdLqyhH
         sYQR0+kjzD25KjiBROQH9EYSJzLyVibDw7vQ+drYdu5CgcxIfJ6BrKLPW/brFNSJepdG
         NgF8DTdcSYz217cuqIgZ+GHEakxotp7u1szwt9rrMGUGmweUOcJFgR8aOZzdF3ZmOIKh
         Vn+z6ahRGur8ArR/oyv+MOiiYO/dkVvdxPcUgvLY4ehPy3FzBvYWRFcpNe5YZ/XECzAx
         Fw6T8RY/UpaD4gTRl7JzKR3neWaUBv9fDZHFN6HNjMq1VmNRof8SJmWJMTDAWT/9Ejor
         lrAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JwbsJe6J5PQ2Mn+jJfKWNuAOGlJq/JUl+1pojH6JCeY=;
        b=DR/9Fy71Csw6jLqfuGl0H4t3i2Id/UlIoeYpSnkShTZjWtNgfv38XG805WnswLNpXc
         0mgTOQytJDWtUJf8tkqSYrVYH74yRj52jOMHYDhdgYggiJZV8E3SrCqXrLgFo/nPkGex
         3Z48lYincPeNHUPqWq8uwPURGfQLruMXhPhoIaTN+S9F0RAFY4jvVxCBqKrxI8FlaUVW
         WSo+KGEYT8APhfu0OW+MGdK0eVJGD5f5bf4XNoQb968HI6KuikCHYewEiTulHQMHLORT
         SmtOlR+LVY3iSkR2XlU9Ub3fd3Z1GDnMfZHExgoXsbvvHc4YRQWnMGV/6v11/Xmc8jej
         fX6Q==
X-Gm-Message-State: ACrzQf10pBkrdRLoY+zdb3wQCnzQStkx5TKRwmho5MHazRftyJ/cu5V8
	xCnSb6s7GCkD4ihf7GlRMa84rg==
X-Google-Smtp-Source: AMsMyM6Ckd7G7s79+d2kbGUkZ7bks/Z2lGs16zJ90Tec/yJwO7dhN3sErDjMCcVzAo5qWKkSSFcxRg==
X-Received: by 2002:a9f:35a9:0:b0:3df:a108:f5fd with SMTP id t38-20020a9f35a9000000b003dfa108f5fdmr7526572uad.4.1665439555955;
        Mon, 10 Oct 2022 15:05:55 -0700 (PDT)
Received: from zeda ([47.195.251.56])
        by smtp.gmail.com with ESMTPSA id i29-20020a05610220dd00b003a6eff16de7sm2151437vsr.29.2022.10.10.15.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 15:05:55 -0700 (PDT)
Date: Mon, 10 Oct 2022 18:05:53 -0400
From: Hunter Chasens <hunter.chasens18@ncf.edu>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: greybus: Fixed whitespace style issues
Message-ID: <Y0SXQTthB30lOAUV@zeda>
References: <20221010155736.117492-1-hunter.chasens18@ncf.edu>
 <6a157246-b4af-273b-8f6a-352c82aa5a2c@inria.fr>
 <CAFJe6O0ADLWOcem3-=EHdKKUHozVP-M1M7VQVY1PCkHr=nMMWg@mail.gmail.com>
 <cb9ed48e-3b83-8a4-773a-39e25483bfb5@inria.fr>
 <Y0ROSX0ZxGQwmMLT@aschofie-mobl2>
 <Y0RoTagEGMQhoXFM@zeda>
 <Y0SCkStgeGN3z282@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y0SCkStgeGN3z282@aschofie-mobl2>

I've been independently following the instruction posted at https://kernelnewbies.org/. Two days ago the website was updated and the Outreachfirstpatch was listed as the first link. I can't seem to navigate to a lot of the old content. I started reading the page about outreachy[1]. It seemed to cover much of the same material the old pages did. I figured it was an upgrade to the old documentation. Maybe a rebranding of the site. I can't seem to get my email address registered with the old Kernel Newbies mailing list and the IRC seems pretty dead so I thought this was an initiative by KernelNewbies to repark the community. The instructions on the Outreachy page told me to subscribe to your list and email my patches to you guys for review. 

At the bottom of the page, there's some information about being an intern. While I have an interest in that I just wanted to find a community to get feedback on my prospective patches. I have an interest in contributing to the kernel but I've been pursuing it on my own. 

I'm sorry if I've joined a private mailing list or if it's exclusive to those who want to apply. I've just been following the documentation I can find. I was very excited to see the documentation updated since a lot of the KernelNewbies site is outdated. :(

[1] https://kernelnewbies.org/Outreachyfirstpatch
