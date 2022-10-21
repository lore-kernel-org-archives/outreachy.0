Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EFE7E
	for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 16:39:53 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id f23so2841016plr.6
        for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 09:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+p99n1YJ/Ef45HkmXnEcmb1UMPqa0keOM3Qde1Ep8P8=;
        b=TRxeV4iVPxozDJIo3BLVmmVWzanRq2i3VEm7nXFuLhLFC+iHcBAlXzs9qxBGH+qDVl
         P4LNyTKH7O4vjHDaXICuGqzFS+W8s1FFpHdgfYO8X8LBin9iFkbn5c8XyrMPW4jn6yjg
         IbycxJ/f6Qq+/P98yld10ae0Vcbk2dAa0yLL35SazlAmsmWYhHRfYxYz6lrnao19IqwW
         zPLlVdOir+rCsbK/dBubQwaEuHiIM6/pfP/5Agms6WA2ivkc2f4h/94Rp1rjR1jtVxFx
         XmOePGmxZ+nUeCfQ+wR8AV17PeXYwtJfb8kkG7GgeFF6DLsk0dCMb9HWMqgDSTmf6QMK
         FP8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+p99n1YJ/Ef45HkmXnEcmb1UMPqa0keOM3Qde1Ep8P8=;
        b=nF3wf6fz1emhz8aTXRngQEJU/Dy0eWJpSUaVb4WIFlCgkOWRZubyep/tlKry5oKU5R
         DXG2iiNVSv5W2X9VRZIzQymDpnHLcQr3RHDRtOYl12P+j/v2hblDj8DPhsGlJ4/Gg3Oq
         subiw28+mli0P52zbNqIGTulzTIyl/7Xi0fGkQhP/xKWew3lUf8uWV7zbUyP1ZqB/Isl
         vrVFx2hP+h9SHQJjhSBjJGYVOaYmZoDvTMwwA1g1JIC2+9oyJZA7v8tLMm13iUks0Gaj
         s1lPOQgaU4wxucOHYe6eKZaKbtDSUYNtwuTDP2uOTfNynfPzzYBR+BIvzifiBOhAq/k5
         SPjg==
X-Gm-Message-State: ACrzQf1DpLSlCqdxeQz+sXxQfM0QDozmgTcpcBmzPjwqqwbt5VkmnPUL
	hURWbtShnrKArL/e4Zc7hC9sCJwuXkpxcQ==
X-Google-Smtp-Source: AMsMyM5v7Y6mFx1pzO9VQR5qWUnIH2+5xGUdQN/XLU2RZpxVz3mupYh1Cd0DW66knjDMgWqaae0ayA==
X-Received: by 2002:a17:90a:d397:b0:20c:7a28:8834 with SMTP id q23-20020a17090ad39700b0020c7a288834mr58857321pju.153.1666370392849;
        Fri, 21 Oct 2022 09:39:52 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id ik17-20020a170902ab1100b00178957d17a4sm14833443plb.286.2022.10.21.09.39.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Oct 2022 09:39:52 -0700 (PDT)
Date: Fri, 21 Oct 2022 09:39:49 -0700
From: Emily Peri <eperi1024@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Info] Track patches in staging tree
Message-ID: <Y1LLVSNEwewWntrF@marshmallow>
References: <Y1GE6ImSoBuYCTjT@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1GE6ImSoBuYCTjT@aschofie-mobl2>

On Thu, Oct 20, 2022 at 10:27:04AM -0700, Alison Schofield wrote:
> 
> In case you are wondering the status of your patches -
> 
> When GregKH accepts your patch you get an acknowledgment email directly.
> If he specifically rejects it, you also get feedback from him on what
> to improve. He won't accept a patch where another reviewer has already
> requested an update. So, once you get any feedback, revise and send the
> new version.

Thanks for the clarification! One lingering question I have-- I sent in
a patchset and got feedback on one of the patches in the set, so I'm
planning to revise it today. I noticed though that Greg accepted the
other patches in the patchset and I got a notification that those will
be merged. Is that how it usually works with patchsets? Can the other
patches in the set be merged is one of them needs revision?

> You can follow the staging-testing tree [1] and see if Greg has 
> merged patches since your submittal. Those *are* accepted patches
> and should be recorded as contributions in your Outreachy dashboard.
> 
> Occasionally a patch gets missed in a flurry of patches. That might
> make you think about RESENDing. See the tutorial directions about
> resending.
> 
> For example, at this moment I can see that Tanjuate, Deepak, and
> Emily (sorry if I'm not recognizing another name yet) had patches
> accepted in the last couple of hours.
> 
> Hope that's useful,
> Alison
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing
> 
> 
