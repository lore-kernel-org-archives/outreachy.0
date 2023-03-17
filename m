Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A438F79C5
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 19:11:57 +0000 (UTC)
Received: by mail-il1-f182.google.com with SMTP id h7so3267739ila.5
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 12:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679080316;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+iVIdcqu+9zFJR/FCUU+1iOkfrTMifxOhhuTu1eSXnE=;
        b=ecunxVtPQVe0g+y/JRA67VENx/G9iMOWzV6X0BHrnFHHzDZs+Bw8Z0a36aMlSLIaje
         bWdVGchvwHr0vHiqkqpZS2Fh5o2K1UFB3aj37lFW6GK9fvnQOY4nCuxH4R9T0VCV2CgS
         uWlD2RCmEoSdk7lgnT7qF2RAYsaIl2K3ZJVUXERbX9XzEX8wF4vn2H+RMzX/Zyk3Ocwr
         IlKvwXm+Q8upUnVtmdsTzald5do7K5AQzn90SlCi4QfKFLKHFPlWd2ifl/q4qdMncmZd
         DzFXPSR8aBD1dKLjmVa+jRUqFSpiprI3Lw1xp4pBCurSmoWcYiw0biLEKrCv6Nuf1UHy
         vhWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679080316;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+iVIdcqu+9zFJR/FCUU+1iOkfrTMifxOhhuTu1eSXnE=;
        b=2wOL8+QCeztb/atU9hV7C4kPvY5oH+Ci5Yd53R7+u1DqgzsKo1HdiI03sjV9dW7J7p
         mUi8mQgQAKc9Il4ViV9NsYEk1uFqbuPNwtv/nRBqDqToysCyIvQKlYN3P7QbbdBGXyTL
         r+SNNfvo1GX67JKTdKHuK8u7eLrLGY85ZnawysUMFMo8fcIZ+Rr90QZ2ojy5UeA9LD6C
         BPhpqvELwzMK003D+knKfn04eZmDYDkZkZJNztsekcSab4bRZ9k1UPwj6cbRgFUyPU+L
         QIpsi0DE/3VGqddn7R/EBit4jDlCcnrIXf3s9M/cHAjRq2WPIP7srnYXbKDl/2nN2TkY
         4FGg==
X-Gm-Message-State: AO0yUKVbdlSQs9GBLunqjHHKFGvvQzrV0qlzag/QQKUQNI9v2XG6aj5l
	KyFmOKobkGOZYLT9XmZR4A0J+Y2vRbf2jg==
X-Google-Smtp-Source: AK7set/V5Ypcei7iwBHUGgUcoJaaJRJ2uT55KAIWwxPPrsq6hk4iDNw1LymxMzrON7OMxqXTJTD1yA==
X-Received: by 2002:a92:290f:0:b0:319:2bf:54ad with SMTP id l15-20020a92290f000000b0031902bf54admr309150ilg.14.1679080316274;
        Fri, 17 Mar 2023 12:11:56 -0700 (PDT)
Received: from pikachu-Z97-D3H ([76.76.64.93])
        by smtp.gmail.com with ESMTPSA id k16-20020a056e02135000b00313f2279f06sm791407ilr.73.2023.03.17.12.11.55
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 12:11:55 -0700 (PDT)
Date: Fri, 17 Mar 2023 13:11:54 -0600
From: Mark Heim <questioneight@gmail.com>
To: outreachy@lists.linux.dev
Subject: Patching spelling errors
Message-ID: <20230317191154.GA57413@pikachu-Z97-D3H>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Outreachy,

I have managed to identify at least 50 spelling errors in the Linux
Kernel, but possibly as many as hundreds using grep (I have been using grep
to wade through enormous amounts of text). If that is a worthwile
fix, or if anyone is interested in teaming up to dig through them, please
message me. (I am estimating there are about 15000 cases to dig through
by hand, but I won't know until I'm done grep-ing). Thank you for your time.
