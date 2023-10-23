Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0046ABB
	for <outreachy@lists.linux.dev>; Mon, 23 Oct 2023 19:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="HNV9krDd"
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-9b6559cbd74so562682166b.1
        for <outreachy@lists.linux.dev>; Mon, 23 Oct 2023 12:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1698088691; x=1698693491; darn=lists.linux.dev;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dz5jjur3qivUWZ6NESJNIBFVtESDaXyAPO0M+awTZ3M=;
        b=HNV9krDdHroQHtVOot36bLbrJvr4l51IiL+TTznInTaOneyM9k/tAgkblDNv7WhQpq
         kcRukhTCaiw/WPPokEkQbDP9+tymbjnT4RFC2zvDKPkk0+NDIn9+bo+97U2aKp8vrzLz
         5DUhf63NXiUy62tc5g8xDx+i2c0bfLBo8sEDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698088691; x=1698693491;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dz5jjur3qivUWZ6NESJNIBFVtESDaXyAPO0M+awTZ3M=;
        b=tU8o8aN+fSIlFWbxx+OOBgr8Bo37ZbaiffaR5R9DOV5CZY3iEJoFbbWMj/NHo+oRwT
         hCC8/b6SR9q0tmiQhoMqxCC04crx3OR+PmGNllGj657619wa25RgO+96VBb0GzNABdl3
         jNlCPOpkXs3gCyXqCkxzly+sjXzCRSn82cW8xGypEsNiMwb7y9UZEs+fZoeoY1HID431
         wenBbvhkbTe4UjuFLXi48EP7RZ1MKTVqzO2abZKR1fZBo0har/rg7DOfxWcOUW5KPqOM
         qsDUvVFdq8HH4R1LFDlQgi+kq5rTZmEC6pB4wKwolZvQ4BsHhBaa9YnY5m8lkanxkPcU
         Ev9w==
X-Gm-Message-State: AOJu0Yxsv84TOg9s04XNjmhveMNSDYKJ8zE5fBcxc/c6TS7I4CuVUfUE
	vtxq5tVD70BtQ4pqVkwZyeLWvCuBQtNjW5OdHq6PwuZ8
X-Google-Smtp-Source: AGHT+IExPX9LsJrrmFlPfILSLDdIQMpnKYq2J2ukbQCBQOPwbEzj8v282Snq96YlJ4lDmQZw5FoWeg==
X-Received: by 2002:a17:907:72ce:b0:9bf:b5bc:6c50 with SMTP id du14-20020a17090772ce00b009bfb5bc6c50mr8689049ejc.4.1698088691327;
        Mon, 23 Oct 2023 12:18:11 -0700 (PDT)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com. [209.85.208.50])
        by smtp.gmail.com with ESMTPSA id mm27-20020a170906cc5b00b009929ab17be0sm7019325ejb.162.2023.10.23.12.18.10
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Oct 2023 12:18:10 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-53e07db272cso5500857a12.3
        for <outreachy@lists.linux.dev>; Mon, 23 Oct 2023 12:18:10 -0700 (PDT)
X-Received: by 2002:a05:6402:5243:b0:53e:7fe:b856 with SMTP id
 t3-20020a056402524300b0053e07feb856mr8559456edd.15.1698088690404; Mon, 23 Oct
 2023 12:18:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <369bc919-1a1d-4f37-9cc9-742a86a41282@kadam.mountain>
 <20231023114949.34fc967988c354547f79c4e7@linux-foundation.org>
 <CAHk-=wiS=h7XBt0UMHq_8xWZxR_hmFik_j=SwTp9LzHhJVW=aQ@mail.gmail.com> <CAMuHMdXgZjN7Z484NAO51DV0tSLbbiUJr2hhiUB80FBeyh2KKw@mail.gmail.com>
In-Reply-To: <CAMuHMdXgZjN7Z484NAO51DV0tSLbbiUJr2hhiUB80FBeyh2KKw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 23 Oct 2023 09:17:53 -1000
X-Gmail-Original-Message-ID: <CAHk-=wgqTuj-mFKc+MQhumLajb+JrVxBiKjC9xaC+QRsBa-GuQ@mail.gmail.com>
Message-ID: <CAHk-=wgqTuj-mFKc+MQhumLajb+JrVxBiKjC9xaC+QRsBa-GuQ@mail.gmail.com>
Subject: Re: KTODO automated TODO lists
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Konstantin Ryabitsev <mricon@kernel.org>, 
	Dan Carpenter <dan.carpenter@linaro.org>, ksummit@lists.linux.dev, 
	outreachy@lists.linux.dev, kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 23 Oct 2023 at 09:00, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> How to handle the (unfortunately fairly common) case of
> reply-with-CC-of-forgotten-relevant-person_added?

One option might be to just do a proper non-quoting reply and have a
link to lore for context for the originally-forgotten person.

I've done that anyway several times, where I reply to something, and
bring in new people, and add a lore link for context.

I wouldn't have recommended that a few years ago, but lore has been so
reliable (and reliably fast - not usually the case for most email
archives) that I think it's a great way to fill people in.

But yes, it does end up being a "outside email" thing. I suspect we're
all good with that these days - the days of people working in text
terminals purely out of email are long gone anyway, methinks.

Anyway, I'm in no way trying to say this is the way forward, but I do
agree with Andrew that we've seen quite a bit of "long messages that
are mostly quoting", and it's not great.

              Linus
