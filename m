Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6EA8AD2A
	for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 19:36:43 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id io19so10230450plb.8
        for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 12:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=geyL5DQ53H8j6BaMw6CfZBtJcpkTWcntOLD101mbmvI=;
        b=eycPmCDYEmIqpKJq6Ia/oj5OP+/5EAJoT53RcPRScZLDYnCzisZd7x9Eu0pcxBKhdn
         oKw8BDad0f1BzM9A0QoQpDca9O0tVJfKkaDmmzWkdDX3FnVWIxIFiDudKqD0ND4RzRT3
         koIxOQh/nTRC5WP9297VkTHJYAXO2R/zaF8oxNbIWeXwMUpk+hCuaJ/xg7HNUWTAX+K5
         qzLprfE1hnP+a7aWdAD7ZOaR498osc9pWz+D2crQ9BWaMeHeCEK0ByokxfM5iFcAoUQW
         8y0YJmLJNItMT5f1CbqV3Shtdgd5GRJ/xNrIqqpGm+DqMH5lskql0LvTjorJK5igVPun
         SGZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=geyL5DQ53H8j6BaMw6CfZBtJcpkTWcntOLD101mbmvI=;
        b=n4sJhEBPJ+d92XJPvGpltJcoCGOgD2cg9vJsHpawv3PJlRYzgEQIrJ3jhKjOzfJsZL
         w4c8w2GhAmfwvoDbxNuegeby1NDLrpwp/c+rSqL52YzIOi5MbQn1UPpiL1oJ92PuFVVj
         EQAH6hqV5Jxd9fVTdiSv5HgyCdOKpWtEecr8x2iB6B1f8WV3BTgcMJI1WiUpP0Iz9url
         Jxtm2epJxSN2LsDGAcrWrfFjDhEnf0R5HNV6iCJ7XRpTcH4gFj7mCkLSYYNnHTGYGAyI
         i73xkQ8Vcd/emhGfrfTRrkv8i8x+wFFtIxhD8ufTspf1o1kzhu7K/OIyJ/DiM69/n2F0
         MI/w==
X-Gm-Message-State: ACrzQf0oXTbu9khiPi1N9IcW3PT+2i/olMW1t+cmTO8MHopGy59B5eUo
	zbSd266uPpsfgEzvtcsDYhUn6BvYIBJLFQ==
X-Google-Smtp-Source: AMsMyM4Yy5Y52f8bg5DeOVnY+ac+0P9SJUkDJSGA38O5Q6jfAE4CmA7/SMO/uMsOQ6d+fZit0c324A==
X-Received: by 2002:a17:902:ccc4:b0:17c:7cc1:a401 with SMTP id z4-20020a170902ccc400b0017c7cc1a401mr46385022ple.58.1666813003131;
        Wed, 26 Oct 2022 12:36:43 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id a8-20020a170902710800b00186b758c9fasm3253399pll.33.2022.10.26.12.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 12:36:42 -0700 (PDT)
Date: Wed, 26 Oct 2022 12:36:40 -0700
From: Emily Peri <eperi1024@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy] Coccicheck in drivers/staging/
Message-ID: <Y1mMSAT96WFdPTN2@marshmallow>
References: <Y1l+28m+o5IQxT/Q@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1l+28m+o5IQxT/Q@aschofie-mobl2>

On Wed, Oct 26, 2022 at 11:39:23AM -0700, Alison Schofield wrote:
> I took a peek at drivers/staging to see what you all may discover
> when running Coccicheck.
> 
> I simply used the Fedora pkg mgr.
> $ sudo dnf install coccinelle
> (That got me coccinelle 1.1.1-5.fc36)
> 
> $ sudo dnf builddep coccinelle
> 
> From root of my kernel tree:
> $  make coccicheck M=drivers/staging/ | grep -i warning
> 
> That showed many places to drill down further and cleanup.
> 

Thank you for explaining this! 

Since we are getting close to the Outreachy application deadline and
several of us have completed the First Patch Tutorial, is there any more
description of what an internship with this project will look like? Have
interns worked on coccinelle in the past, and what kind of impact did
they have?

Two areas that I think could use updates are the website and
documentation. If this is a project that will take on future Outreachy
applicants, I think it would be very useful to create coccinelle
instructions/tutorial for Outreachy. Are these ideas within the scope of
the internship?

Thanks so much for making this internship possible in the first, I
understand its a lot effort on top of everything else that you do!

Emily

> 
> 
> 
> 
