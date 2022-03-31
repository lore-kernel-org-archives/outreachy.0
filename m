Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9438E7E0
	for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 14:14:41 +0000 (UTC)
Received: by mail-qv1-f52.google.com with SMTP id k7so19806894qvc.4
        for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 07:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=Q+EWOnxQuVUnip1qS1C+tbFzIA+Ts4iUK6uWy7TRsvY=;
        b=X6NeBETOQ/kMkzC55oEiYZH9MWX+mxjaiHXaUdeeJztNahKfxHHG+bCqFkn91okWK5
         gizZnTLk5uj0s1qYvdoHBeQig8i3o7npLzxwB4C+yJwzWWbvILHvBjmyhj6aAusZtsbv
         U5vMWdXUBbjIt8R3TXyla7/CIrYs04bIKIVU2O7a/Pt8LjADV2qvn+iP329HiMyNeRtV
         E6o5EgDUjtRBcdFkauqE9sPnGxq+vdtT1XxbTW84IXS5NzAn1JsWASXynITsZ9BD9KeE
         g9mo/io7rhJgNDp43N3dHS/I3eAhAgEM4/+S8J+Ak5TgmLkV1pwV10+fNzPV7tnFVSph
         UAhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=Q+EWOnxQuVUnip1qS1C+tbFzIA+Ts4iUK6uWy7TRsvY=;
        b=oVBa1FKpf5eUibZuDGU8Tasfi39PzJHpFkd98ou1h+s7TjG8spPJnkYTtTg48ApaQ8
         ifETWpKUmhTnkBi3H+GIUoxcwa66vkthRa0n1AZltBuI0zGwlPBKz8d2BdnDYHzKm659
         eyHrrApLkTWRjdFI/sM/1gvzIU8U5g4jK1uwgXHZKI/r5qDhZ0QKsaQN1As7It0H+bva
         zaeExwcYvqLcYLP1jzg95aWkPKJj4yEU9gx69eUpcqA23cUkXZF+QbAeXtOFSBrcE9WQ
         x/WywYDVYlPJ9FYtUGmXX0ht/169lbnEa9NvbzjhwgC5nYa1qFHo5IwdQj6biB0T/XSO
         vtpw==
X-Gm-Message-State: AOAM530r8ZnekkMXHzTQ9veB0/vAYhfC6S0OSBdRdAp4u9/a06D5xCla
	RwR7WZ8MSiiuiFe3BcNoYZaPvV2Xz+E87g==
X-Google-Smtp-Source: ABdhPJx9EqYbwqkUO2W9zieUquX9OSiDKra2mq9fMYEX+vmZePNB2GKVaCKcSDJjmWFC2r4/vuehOQ==
X-Received: by 2002:a05:6214:1742:b0:440:e595:e467 with SMTP id dc2-20020a056214174200b00440e595e467mr4137256qvb.120.1648736079893;
        Thu, 31 Mar 2022 07:14:39 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([4.34.18.218])
        by smtp.gmail.com with ESMTPSA id g21-20020ac85815000000b002e06e2623a7sm19804963qtg.0.2022.03.31.07.14.38
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 07:14:38 -0700 (PDT)
Date: Thu, 31 Mar 2022 10:14:34 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: outreachy@lists.linux.dev
Subject: patch idea for wfx
Message-ID: <20220331141434.GA1104155@jaehee-ThinkPad-X1-Extreme>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I was reading the wfx codebase yesterday and it seems like there are a lot of instances of "container_of()" structure which is specific to the linux kernel. I saw a "fixme" comment in the code that says that the container_of() structure is preferred and I wanted to tackle it. Here's the line with the fixme comment:
https://github.com/SiliconLabs/wfx-linux-driver/blob/63952592e64d2ca5b4613ab5559ba40b73ef47e8/sta.c#L744

Maybe it's too big of a task though. What do you think?

(Side question: The wfx project is also in the staging/driver but I'm not seeing the linux/kernel/git/gregkh/staging repository anywhere on github -- I'm probably not understanding something basic here but shouldn't the staging directory be a subrepo or submodule within the linux kernel repo? ) 

Now I'm trying to understand the wvif structure they are using in the functions. In their previous examples container_of() took in 3 things: [1] work, [2] struct wfx_dev, and [3] the name. I'm refering to the man page for the container_of inputs. 
I'm not entirely sure why container_of structure is helpful. But this article seems to say it makes runtime faster: http://www.kroah.com/log/linux/container_of.html

Another question I had has to do with testing. I understand we're building the kernel to check if the code-change compiles correctly (I've enabled the silicon labs driver in the menuconfig and saw that it builds successfully for basic changes). But for more complex changes, would it be a good idea to test it on the hardware -- after build, install the kernel package on an apu2 for example? I have a apu2 and I can buy a siliconlab wifi card to test it on there. 

I'm brain-dumping ideas messily (sorry! please let me know what you'd recommend) and I'm mostly just conveying my thought process. I am having trouble with IRC at the moment so I'm sending my thoughts here. 

Thanks,
Jaehee
