Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83B8D2EB
	for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 16:36:34 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id cn12so16438363edb.4
        for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 09:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679416592;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hHcx+O6gk8sKnFku5NpY7pQNaOqtLHhaJKgroxcvdGo=;
        b=gfQzUJ5ZP2NYOBEaNjko8oxy/O58C3Zyj3sV1n4yxlePKkRcRVx3g8/Q45eLXFydWd
         PboihoCmqpdGg9JEBQNWa6cmfMvuzmBK839n0rMqAbjeWvoBCV4zOzPK26Zou92drse/
         alhZDQwudPihncYF6FJo28hQY75VzdcHk/F0g/e0Dro3rs+fynQiScSmeYXn+/RR45Bm
         drJQauIJGtHKFwz2uaTNK5S4tK9Ks6a4ZSmlFjEzbNybQqo5xL34VPHpoohJ4fdeqAB1
         2OxxVkwDHuk0VMXGM+cq1DeolaturrYHUjfMtZwSDaR2fi+cojpq+ueFbaYcbHORwO0P
         9Y0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679416592;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hHcx+O6gk8sKnFku5NpY7pQNaOqtLHhaJKgroxcvdGo=;
        b=Q152PtEsmPsi7+SL+GFZsOWI30fREI/QsvJE1PO0nShmYQm2XdLa3uE0bH03cvNNiv
         Ae3nj6GAIMIDuVciwYNF9neSxv9/meXgZqUOvE4Kl9hDmCWztZgsDwdOpGgbREew0LIS
         p7AqLtJO707cA9NxdwNTwsAveRaGJ9zd90A9m+yLYJdLWy+PUf1lHaJ9JurtkT75BXwL
         X+iA4Hkqg4sdwC9r2HiLRqvmqz8jbiaJIffY3GcUmXsuh7eihEWxpyiceA1JsKulrL1V
         alsYbnS2a7isJ96GU3n4jeY8QTBcdrfO8+6Jirs3+Hpk5uCwYtMVyCKnh7dBXHahKKi1
         gCnA==
X-Gm-Message-State: AO0yUKX4vx1NPeNl8NBE5RQd6+/eAtgA2v5qHdPUhe44fAAjV2okQbW2
	bLJq8Z2fjDkFSjhxCEGDtnX9GN9gpiUTa3Pd
X-Google-Smtp-Source: AK7set8eYp8qISNwWrxf4i8gqq1zFxM5BrrLNNfhFP1ySQaUbsucbTIX0gpmyvP/kJo32Oj5nhbBIA==
X-Received: by 2002:aa7:d7d4:0:b0:501:d43e:d1dd with SMTP id e20-20020aa7d7d4000000b00501d43ed1ddmr3649011eds.33.1679416592387;
        Tue, 21 Mar 2023 09:36:32 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.14.14])
        by smtp.gmail.com with ESMTPSA id s29-20020a50d49d000000b004fc2a75c6b3sm6508303edi.23.2023.03.21.09.36.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 09:36:31 -0700 (PDT)
Date: Tue, 21 Mar 2023 21:36:29 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Code cleanups are not always simple.
Message-ID: <ZBndDYO5pFSOI1m2@khadija-virtual-machine>
References: <6418f59a8b3c1_2c274e2942e@iweiny-mobl.notmuch>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6418f59a8b3c1_2c274e2942e@iweiny-mobl.notmuch>

On Mon, Mar 20, 2023 at 05:08:58PM -0700, Ira Weiny wrote:
> Cleaning up code is not always easy.  Yes there are various rules, coding
> styles and tools which can automate the process.  But we should all remember to
> think about the problem being reported and determine if a simple search/replace
> is the proper thing to do.  I think this is becoming more apparent as the
> number of things checkpatch reports on is dwindling to these more complicated
> issues.
> 
> So I'd like to call attention to a couple of problems which have required a bit
> more attention.  Hopefully by highlighting these problems folks will be more
> aware when looking at future issues.
> 
> The first problem was a week or so back when Khadija was trying to fix line
> length formatting.[1]  The repeated attempts were causing circular problems
> with checkpatch failing on different checks.  The core issue was that
> checkpatch was only checking the symptoms of the issue, not the issue itself.
> Checkpatch and the kernel coding style are in place not to enforce random rules
> on how folks write code.  They are there to make the code cleaner, less buggy,
> and easier to maintain.
> 
> Today I saw a similar situation.  Julia called out the need to make macro
> definitions safer by turning them into inline functions.[2]
> 
> But Sumitra took that a bit too literally.[3]  The container_of() macro is
> useful on it's own.  The only reason to create additional helper functions is
> when the conversion is either more complicated or used so much that the bulk of
> the code becomes much much cleaner.
> 
> I'll end this with a recent example which is part of the kmap() project.
> 
> I was looking at the call to kmap_atomic() in memcpy_page_flushcache() inside
> the x86 code.  At first it looks like a simple substitute and replace from
> kmap_atmoic() to kmap_local_page().  But I took the time to understand the
> context of where memcpy_page_flushcache() was called.  Doing so made me realize
> it was not called at all!!!  The proper fix was to simply remove the call
> entirely from the kernel.
> 
> I know you are all excited to get your first patches into the kernel.  But even
> simple patches take time.  After removing these calls I needed to ensure that
> x86, powerpc, and arm all compiled without issues.  I used both 'git grep' and
> cscope to ensure I removed the header file declarations.  Even then there was
> discussion because I accidentally submitted as a series which made a bit more
> work for the maintainers.[5]
> 
> So in summary take your time.  Try to understand why checkpatch or other tools
> are flagging errors.
> 
> Most importantly, don't be afraid to take your time when submitting patches.
> 
> Ira
> 
> [1] https://lore.kernel.org/all/640e75cfd8fc_229a89294a3@iweiny-mobl.notmuch/
> [2] https://lore.kernel.org/all/124d2ef9-6f1d-2652-c88d-161f1bc06443@inria.fr/
> [3] https://lore.kernel.org/all/ZBh%2Fs5lyONaF37gs@kroah.com/
> [4] https://lore.kernel.org/all/20221230-kmap-x86-v1-0-15f1ecccab50@intel.com/
> [5] https://lore.kernel.org/all/3523ddf9-03f5-3179-9f39-cec09f79aa97@intel.com/
>

Hey Ira,

Thank you for the mail. I will make sure to keep your instructions in
mind while working on the upcoming patches.

Thank you,
Regards,
Khadija

Thank you
