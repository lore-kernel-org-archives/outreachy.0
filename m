Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33D317C9
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 01:23:23 +0000 (UTC)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-d39f741ba0so17167918fac.13
        for <outreachy@lists.linux.dev>; Mon, 28 Mar 2022 18:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=EQqvEimX+YqnSmnTpsG2lqDuyKno1VvAoJiA/d4TDuE=;
        b=USZPWmKLtX6oXXqsR8geJOsdG2ocwDYnCfWaYMZFuqmPlhL1R/csC+b1tepEgtySsw
         do+yWWnLzFdo7sd5Xv6b5xC9bWyJjoCklT++D1IGiNx2I86cGM4HLFV5YdKveZ2treFF
         RrryAMQ31cLvvr6GusFCKKL5aN9207R/XObLcCXenU6p0F+1z2zr5A2l1YE0BEKRnlnl
         BniHfxg4ivY8ohrTsJrNYDCWoxx0oWbFp3OUfug6qu5VCTjUgcthCQc7qeDACp3ds/fH
         eizuT9mbr1NyXWfB+u7BgHbzMKN5V6eEM/lB+eCcQ21kzFv3nhgRbx+EO7FGtLI5Jphu
         COnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=EQqvEimX+YqnSmnTpsG2lqDuyKno1VvAoJiA/d4TDuE=;
        b=7khqCjy5V5hQ9Q0JYUfrUSQRMEh8yBbY97Ak8WNIUKC4YiERGWE+KmmwuasPC8X0yA
         37ak0uX3/I0IoGR/WQka7raOAKcPXdgT7kdGoMpEkI2MIrNxkJxc3qz6+wlcbwDLm3cJ
         WVaRWmoNbxjubYOmhYx9nnAR+UKva6ODJPkC0lm7QrJfxuv9vvEbX4Jbl0h2/BKYaxZ/
         y1q++zfLlmGy+pNGXbRYOT+COGEzKvYY7HC0BoJk3H6xJl2w/Lu8OCEFG+CjRHu+N2N7
         D5EaNuMnLv7331MGSeYtEdVBopty02D27cVrD5qhwffrV6sw20RWVGST/9ucyXr/BnxC
         BGNA==
X-Gm-Message-State: AOAM533FDCwK6Rn9Ht/jSAr54Pl2zbEKTNNiRSZNpcuQOPe/dRbpM8My
	3OnU0M6tVjGYxBq56kTxcHKgDX2Vs9U=
X-Google-Smtp-Source: ABdhPJwVd8nk82+y9BXyIc3qp8FDLllN+ULDFPQd/dEMjUM5+XRenzZfDo0v+Nh+HpaYmkPVc4qbjw==
X-Received: by 2002:a05:6870:889f:b0:de:44c7:5a38 with SMTP id m31-20020a056870889f00b000de44c75a38mr1000930oam.83.1648517002550;
        Mon, 28 Mar 2022 18:23:22 -0700 (PDT)
Received: from [192.168.21.4] ([170.84.56.148])
        by smtp.gmail.com with ESMTPSA id h186-20020acab7c3000000b002ef5106248asm8236819oif.45.2022.03.28.18.23.21
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Mar 2022 18:23:22 -0700 (PDT)
Message-ID: <fde3e9e7444d85229a80eabbfeb6abade96d51a9.camel@gmail.com>
Subject: IRC Logs for #outreachy-kernel-networking
From: brunodout.dev@gmail.com
To: outreachy linux kernel <outreachy@lists.linux.dev>
Date: Mon, 28 Mar 2022 22:23:19 -0300
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello there!

Earlier today we were talking about conversation history on
IRC (#outreachy-kernel-networking channel). I think it was
Alaa who asked if there was a way to read them.

Since IRC doesn't implement server-level message history, I
offered to send my client logs, as my client is expected to
be connected most of the time (no guarantees, though).
Considering Stefano said it was okay and no one else
opposed, so I made a script so the logs are available at:
https://share.codeagain.dev/outreachy/irclogs/%23outreachy-kernel-networking.log

It's expected to update regularly, but ping me if they
don't. I also recommend saving the file every time it has
new information you find useful, considering that I'm not
100% sure my IRC client won't delete old messages or, which
will be replicated to the file in the link. If I face
downtime (sometimes I run out of RAM) the logs will not be
recorded, though.

I hope it helps, there are some interesting discussions
going on there time to time.

-- 
Sincerely,
Bruno | Pronouns: they/them/theirs
IRC: CodeAgain


