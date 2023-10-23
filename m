Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A07231E536
	for <outreachy@lists.linux.dev>; Mon, 23 Oct 2023 18:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="GacPIWt3"
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-9936b3d0286so554806466b.0
        for <outreachy@lists.linux.dev>; Mon, 23 Oct 2023 11:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1698087376; x=1698692176; darn=lists.linux.dev;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Iy/DV1+W1aTRYizOwSs6mzRycpuJfFfCR+p5jl4zqjA=;
        b=GacPIWt3uteazdFHHwDWA+tEy0mc4Ajgmdu+6JV0FI0avF3heDzJUuRVuqcmXI7fOR
         nVdsPYRSBg1AMbCD9P4B4T7ds5ZZotEgS23GSkM7lXCTAm7IjRxXGWONVqR9lXC88fkq
         yuMt5qnwY77o93K2dgMk80eMnRL+jsYxt1ouE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698087376; x=1698692176;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Iy/DV1+W1aTRYizOwSs6mzRycpuJfFfCR+p5jl4zqjA=;
        b=TgZ/xRjmde8vdq2+dWA+90MD25YrcKyMmRu3CTlKVzQ89CB8j4K2++B55bJLS3OtoX
         z/l8FKB/Ktu0q47i5UjKadAerC8QvoAAPfpllq+pMJqaojAoG2gFnvmyJyAw2qLNF8IG
         8tb7UuchX2U3o057dHcPThUseXpTuIRQ+dKf48JF1KqcbqjdSeNZXZxO1zBtBK0JkHl4
         7m0gqXJlJxpFhzMvk+XImZkcHX2J0TEddArdau/z7nTMJ+03MxFQTJu6rIpqG1+lrB2E
         yVflFzRUUwXpEiLO7JC3goJn2pdHHmfWwgOsXeJZ78RZgLhbEF0Yl/fSYVCEGUwimCoM
         nFWQ==
X-Gm-Message-State: AOJu0YzU1eYKlQy822nsSmA/2Lm5ddCSl8BomgxUOJpJlkLdsHgv3lTM
	9bIyLEXyLXZEiB1Hf0rJwerjnW4ZLOynRKHiZirwDg==
X-Google-Smtp-Source: AGHT+IFJ9d3/7Xat3O/xBoSZcmVtQfP7M3lbk4Z2VUwzO//dP1eTrZtkht14mnmA0dwOqFTbzSol5g==
X-Received: by 2002:a17:907:9618:b0:9af:4561:591d with SMTP id gb24-20020a170907961800b009af4561591dmr7884404ejc.18.1698087375803;
        Mon, 23 Oct 2023 11:56:15 -0700 (PDT)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com. [209.85.208.54])
        by smtp.gmail.com with ESMTPSA id qx17-20020a170906fcd100b00997c1d125fasm7060884ejb.170.2023.10.23.11.56.15
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Oct 2023 11:56:15 -0700 (PDT)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-53e751aeb3cso5618423a12.2
        for <outreachy@lists.linux.dev>; Mon, 23 Oct 2023 11:56:15 -0700 (PDT)
X-Received: by 2002:a50:c35c:0:b0:53d:b6ac:5f64 with SMTP id
 q28-20020a50c35c000000b0053db6ac5f64mr7256172edb.18.1698087374654; Mon, 23
 Oct 2023 11:56:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <369bc919-1a1d-4f37-9cc9-742a86a41282@kadam.mountain> <20231023114949.34fc967988c354547f79c4e7@linux-foundation.org>
In-Reply-To: <20231023114949.34fc967988c354547f79c4e7@linux-foundation.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 23 Oct 2023 08:55:56 -1000
X-Gmail-Original-Message-ID: <CAHk-=wiS=h7XBt0UMHq_8xWZxR_hmFik_j=SwTp9LzHhJVW=aQ@mail.gmail.com>
Message-ID: <CAHk-=wiS=h7XBt0UMHq_8xWZxR_hmFik_j=SwTp9LzHhJVW=aQ@mail.gmail.com>
Subject: Re: KTODO automated TODO lists
To: Andrew Morton <akpm@linux-foundation.org>, Konstantin Ryabitsev <mricon@kernel.org>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, ksummit@lists.linux.dev, 
	outreachy@lists.linux.dev, kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 23 Oct 2023 at 08:49, Andrew Morton <akpm@linux-foundation.org> wrote:
>
> Well here's a task: write a bot which follows the mailing lists and
> sends people nastygrams if one of their emails is more than 95%(?)
> quoted text.

I think that might be better off as a spam filter rule.

Don't make it some after-the-fact "trawl the lists". Just make it a
bounce with a "you quoted too much". Same as the html avoidance.

Make it ok to quote 15 lines of commit message for a "Reviewed-by:"
kind of reply, but if it's more than 50 lines of quoting, trigger a
"at least equal parts new message".

I'm sure Konstantin has nothing better to do...

                Linus
