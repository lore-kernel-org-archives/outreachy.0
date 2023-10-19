Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0592B1865A
	for <outreachy@lists.linux.dev>; Thu, 19 Oct 2023 12:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cX7VU64e"
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-5a7fb84f6ceso97775257b3.1
        for <outreachy@lists.linux.dev>; Thu, 19 Oct 2023 05:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697719831; x=1698324631; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HgCsPfoiWzS7Npy3uy7jn2QXfMh0UDn2YP8vyEnEgJg=;
        b=cX7VU64eLdXcxm0tDkrfdlbc/1PdqwBsUVU5n+kZsR+eMDydpKNQ5XdSuy3ZIJmtyz
         w7u3BLQyU1Qjr0YIgzChxFgf7Xlp4fsB5aVInxf38/xlGMaRKv6lj3poOh+sh0hZGz+n
         DNozXyQtv1YvB5AR9D5mUcBYXKnu5JB0UGdbc/TVyVspOl8m77Mv0gKGifN8hkXtMQWS
         kz77bXQHd0V6CyLj9lK6f6HX5GkwXReNmgZJsbV34Ej5GFlBtI/HHYCMA5pnpL9LBHNi
         GPb9MKWujur6QNVMNh/HtK2T5j+NcjKR7aohE94vZz4uqp7q6y2lISaQTOBk2K5PnQDW
         Fx7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697719831; x=1698324631;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HgCsPfoiWzS7Npy3uy7jn2QXfMh0UDn2YP8vyEnEgJg=;
        b=PqR0cLyUqBgdIFbVZx9DDcAAFYMxdfg3ndmAQUcQM0Ny5G+1F0MVQqhI2dYz9ZfU32
         Ie0WEEJYGhd9rr7SmfecgGgeSZ7b7La5r57x5r6n3rtL4jDmiTtHZD8eAnqlLHmGyDUb
         RQv82+oOczeg/pA4QO4TcbMge+kifXp14eaB+t7zjic3tgNjV9oQhGvNdH2Na7XRArJz
         WsGXSagaNGplFIK+IrVWkrlqju1N3fDAEgjzLpz/73SDzSQZ8/7p9JBFxINKLkj0+H/x
         GAOsZ2ygRLje5FUtiVjRHoyxItLa41LEz3K3/cFGVXRQi2AnGtH14wMAo9eyEqGyXBvO
         00Dw==
X-Gm-Message-State: AOJu0YzParLZQYZ6oHW8x1Db6obAdyJlpGd8wsZIKjFkxyeo9e3b8cJl
	izV0ura2megSQDkdPnxeLhfKGuFZmhyWK1KQ9i5Trw==
X-Google-Smtp-Source: AGHT+IGQEwYwAgp+N6q9s55Kz5kKcDMZy5XgiShL3QSPpYFPglL8R9uoRsbEDbrmr5GMaD6hw9ENsbVWj2rPe6uTm5s=
X-Received: by 2002:a0d:e882:0:b0:5a7:bfbf:1bc2 with SMTP id
 r124-20020a0de882000000b005a7bfbf1bc2mr1901234ywe.20.1697719830827; Thu, 19
 Oct 2023 05:50:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <369bc919-1a1d-4f37-9cc9-742a86a41282@kadam.mountain>
In-Reply-To: <369bc919-1a1d-4f37-9cc9-742a86a41282@kadam.mountain>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 19 Oct 2023 14:50:19 +0200
Message-ID: <CACRpkdbNOmvBg+wHLHcdvp=YE=jYiKKCVWDqs2cMF85rXyv_aQ@mail.gmail.com>
Subject: Re: KTODO automated TODO lists
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: ksummit@lists.linux.dev, outreachy@lists.linux.dev, 
	kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 19, 2023 at 6:11=E2=80=AFAM Dan Carpenter <dan.carpenter@linaro=
.org> wrote:

> We could add that kind of
> thing to a todo list by using a KTODO line.
>
> KTODO: add check for failure in function_something()
>
> Then people can look on lore or use lei to find small tasks to work on
> or they could use lei.
>
> lei q -I https://lore.kernel.org/all/ -o ~/Mail/KTODO --dedupe=3Dmid 'KTO=
DO AND rt:6.month.ago..'
>
> Then grep ^KTODO ~/Mail/KTODO -R and cat the filename you want.

I like it! There are too many of these things falling on the floor.
An easy way to stash it on the technological debt hitlist would be
really helpful.

Yours,
Linus Walleij
