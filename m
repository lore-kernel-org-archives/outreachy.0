Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B18B657
	for <outreachy@lists.linux.dev>; Wed,  8 Mar 2023 21:57:59 +0000 (UTC)
Received: by mail-pl1-f169.google.com with SMTP id u5so19040261plq.7
        for <outreachy@lists.linux.dev>; Wed, 08 Mar 2023 13:57:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678312679;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oV6J+QehkQIJzwrX+aLsWkzhDyo04gX7MwJxVHyXVt8=;
        b=IBC2WMeSIe8+H7dj/dplw6/dM8d7qIjCe2mB3QbRNLND124JS0ZvEFaBdrrDhUsZyQ
         hUmX0cHJGHuYC+/LOfATqHWzPDhuEsv+TsoupbvJLOahwLB3z8roEjqUogeyBDeYV6a3
         DKeeDjjvP8SMctPRXvBZVK3FRPP92R0dLfjSwRHBLtQyMMCRSMFIT3YfpnzDWagv9XfY
         rFEsGPWRvWYj9DbSdZF29xRJu+j6OQ2d1/+e+FI8ZDnwUGhyW4gb6XpeNfb9V1leItvP
         MP1EOZ+PdFBqyJz1hLSVpTWY/xtZfOgP/Oy9vd8T1Oj9OtH2M+ZzlbvwFwbFZ1efJT5R
         nrig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678312679;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oV6J+QehkQIJzwrX+aLsWkzhDyo04gX7MwJxVHyXVt8=;
        b=Lh1xr+C3Jt/ndoVntCHZVhROj0YE+0T/GUcOgh0gflfbMlshztdmukBTvr7a8BBtSR
         DOG0J44ngwPKMAnu+nW4RlEF5MQ0tiu2AjjLi2cGGAPsYXk98FS3vQez68Wdc4OnHoXi
         6w4WHCduIiPu2AVeLzXD6rbsTqfP0rTR5GAhK0jEmki4ywrbXBvWN/7QNkubRl0cjo3M
         8pbR1MIhaQtWY6orJHPq/7+ziNFvqEYA6hlz6WWgE4glKpUyCNZ4FAJPdP6435kaEOvH
         HfM0y8e0J3/fDfmJV80txUSkMn9h51LUH+aQJdbeHOkQCVoDHymH710VUIHyrlkFpR53
         9s1Q==
X-Gm-Message-State: AO0yUKUNEe4fzn+6v/HHcb6AyyzWoZjONriwk1Dm59QvHxMgVGEEUfC5
	mWZB4dGiy7qT4MDkpuOSeqZ/tDWXAR4yqPpl
X-Google-Smtp-Source: AK7set/VR1vTTMbVDvSaIHFm6ssm8hmbOQCB5uxHpJE5O4S3b3EsXL0ADXdutzSpd6Hambeu1ia82g==
X-Received: by 2002:a17:902:b684:b0:19e:7f6f:8c32 with SMTP id c4-20020a170902b68400b0019e7f6f8c32mr15757866pls.48.1678312678927;
        Wed, 08 Mar 2023 13:57:58 -0800 (PST)
Received: from CloudiRingWorld ([122.231.69.163])
        by smtp.gmail.com with ESMTPSA id l19-20020a170902f69300b0019956488546sm10252250plg.277.2023.03.08.13.57.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 13:57:58 -0800 (PST)
Date: Thu, 9 Mar 2023 05:57:55 +0800
From: Kloudifold <cloudifold.3125@gmail.com>
To: alison.schofield@intel.com
Cc: outreachy@lists.linux.dev
Subject: Problem in "Pick a warning, and try to fix it": Don't have a warning
 to pick
Message-ID: <ZAkE4w/T389R2+Er@CloudiRingWorld>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello, I am Kloudifold, an Outreachy applicant.

I'm reading https://kernelnewbies.org/Outreachyfirstpatch and trying to make my first patch. It says, "Pick a warning, and try to fix it. For your first patch, only pick one warning.", but when I used the command:

> perl scripts/checkpatch.pl -f drivers/staging/*/* | grep "[1-9] warnings" -B 10 -A 2

I can only find warnings for drivers/staging/axis-fifo/axis-fifo.c, a file that is already being submitted to the mailing list, which means I don't have a warning to pick.
How should I finish my first patch in this case? Should I look for something more difficult than changing the coding style?

