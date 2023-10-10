Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E534433
	for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 04:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dsrf8A2z"
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-59f6e6b7600so62551417b3.3
        for <outreachy@lists.linux.dev>; Mon, 09 Oct 2023 21:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696911638; x=1697516438; darn=lists.linux.dev;
        h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cFyd6K9CpHZmZj4InXfW4mcBpi8IWY1oL4tyfuoIETc=;
        b=dsrf8A2z7NMZqd2Edzve8kZyWYsAZ7NNDxDBolbXhbfJgQHAfz6h7WrnG7f0gfzTEL
         LkCdHs8Gx5I5D199wnvMycjRuIeMcaAETKVsquDKsi+mh+4ZHzSPZ2VErVmOg8QP00i6
         hnNKBXcFz2xNOxQ4oRg97/dsKkxY4WpESiNL4HTS1dYEqR40OY73lHdW9k7a/ZDjcKlv
         1S9gplvGIf86m/0e/h0nL+XaBj2zxN4/DNldr++9y+3lIGbZmB6VRUEMmPjPScT4kZbM
         ZG/IKDZP7OxZJYqGJr7vkqkigBD02rIast9K+HvEoa0Jl96e11IUfos0FDnY9WXot40U
         /p1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696911638; x=1697516438;
        h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cFyd6K9CpHZmZj4InXfW4mcBpi8IWY1oL4tyfuoIETc=;
        b=Pt+gpwTJTSwZZ8M6yTjUHYdQa9Es/ldaASIkYdkZJxcYCW+vRUQAAlwvDM7XIg6xhr
         vIWoEOVXsTvFFM0e5bGBoNmkQD9vjI+KEFlxI/FcQWP2RnxnUOzkhabV/LUKruZg7n/J
         82Rg1DFsXPZY7BhibmyID0gDj0Q1C7Y7gHGVlzFKGJBZtz354/aLne18fHMGnK9lWswK
         5T7zKIag3Zz4D4e5wTzLL1UdiQ0pHHsPiQrgxf+6TPWFJ011QkSAUS6Li4NxN4iei/Hm
         obSVFRPVSzHa2jpNG5nFBNJO3tmZk87qqqwWaTH3Cl6oh6UMi7SZU451v/HRP9XS+1Qc
         2mAQ==
X-Gm-Message-State: AOJu0YwsN6RQvEJ5wJ1KFPAWsnR2ljxUd4wtWKng5r/DkqgiT59xTFNd
	lw1s+3jzgoIj/ZNkM0V1OEM=
X-Google-Smtp-Source: AGHT+IEAl9xM2eXKzQ1GI7hFw2RTxI7zfVeDIMb3eDy3gyv5cOfhCmPmJikPPGE+QSVx3cYTmnMP3A==
X-Received: by 2002:a81:ac06:0:b0:5a7:ad67:2b67 with SMTP id k6-20020a81ac06000000b005a7ad672b67mr2167942ywh.5.1696911638047;
        Mon, 09 Oct 2023 21:20:38 -0700 (PDT)
Received: from gilbert-PC ([105.112.75.65])
        by smtp.gmail.com with ESMTPSA id eb10-20020a05690c26ca00b0059be3d854b1sm500114ywb.109.2023.10.09.21.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 21:20:37 -0700 (PDT)
Date: Tue, 10 Oct 2023 05:20:33 +0100
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: andi.shyti@kernel.org
Cc: andi.shyti@intel.com, outreachy@lists.linux.dev, Julia.Lawall@inria.fr
Subject: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
Message-ID: <ZSTRETv7sO+1A6/G@gilbert-PC>
Reply-To: 20231008212812.tw674m2hbhpyhi5v@zenone.zhora.eu
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Andi and Julia,

Thank you so much for your responses.

I need some help with moving forward in the tutorial.

I am at the "Make a driver change" step of the first patch tutorial. The tutorial made the look like finding the _main.c file of the driver and locating its probe function was quite easy.

I ran lsmod as instructed and picked e1000e. I used git grep e1000e -- '*Makefile' to search for its subdirectory in the kernel tree. This is where it got tricky for me, I thought I would find a .c file like e1000e.c or e1000e_main.c as was shown in the VM example(I'm using native Linux) but I can see in the subdirectory are .o files that I can't modify. And I don't what to do or how to find the probe function I'm supposed to modify

I tried the above process for a couple more names in the list returned by lsmod and it is the same issue.

Please advise

Thanks
Gilbert

