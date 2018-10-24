X-GM-THRID: 6615772490286235648
X-Received: by 2002:a9d:2944:: with SMTP id d62mr1503441otb.9.1540378352984;
        Wed, 24 Oct 2018 03:52:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cc96:: with SMTP id c144-v6ls3786735oig.13.gmail; Wed,
 24 Oct 2018 03:52:32 -0700 (PDT)
X-Google-Smtp-Source: AJdET5ddEda7KITiGdpW5yybFBID1kxu5YLriuz2zxHUBqbmt/f1WAGIAZ8mvONhM7bG9zBx6ybK
X-Received: by 2002:aca:c645:: with SMTP id w66-v6mr1484576oif.45.1540378352090;
        Wed, 24 Oct 2018 03:52:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540378352; cv=none;
        d=google.com; s=arc-20160816;
        b=JSxaDObMUdFnPDYk1jJyd3xkxr4sW10BcKliO4azqWhMv5TPrU/QRJBjzSEdMs1DJc
         YtNqtdM2glsX2TAGled6iwfDgaNYZztAVQHx81IwK7rdmqHzGQeFJP8mnrLvSgAf5LZ2
         fKkWQLylVRyp5HO+vcCq3BgJAUogNq+3ao7SfnQFSlguyzyPzYK9h7UXxmnYhEyTSCGA
         VShDjqnBT5MxxYbCpaxNPYCSlnKHRcBsgCxFGC9Ij8ZdPFZ0AKzl4aPnHr66qFO10I+B
         Al/N4mbuegTWEuStD89oQLDmyFE3vKgKO+rC1Y96uN8bsyy/wEExvhXf0IcIU0hDAjMd
         RjEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GsqQBo1HVhAkHdzuhYtiVJaldDGVO314ACxNFH9xNSo=;
        b=Ge5g6nDDy6UyS9WnXDjiGKaz7XyM5GADouIU2WkCenf6o0SSwVgVBLXtcuJpDeE3yv
         oHWPsQIAzJOtsk6FNUuIK2axB6uOJISgqqx5fc6IMBYtRGPOXSpp88a+7iYfzZv59qkC
         eab3aX5rP73dFiUhFi0PDfdRSVLgwId8RR1sAQe8OtqsoKyv4stxHQM116217mRWdQCQ
         PFiPRGdsgOhAsMAwAHRcYHlNR3Se17nu+ifZsKGOUi2gDtKbRXjGuKhx5K7qerNaAJWf
         hOd3Gmi43OhJXnlaILmex5N6Q85qjjb9Zw3VT11bafUI4soXA+wY0KCU7uhcLYAtUOI8
         3dgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MxOLlkNO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v207-v6si240581oia.3.2018.10.24.03.52.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 03:52:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MxOLlkNO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (unknown [185.7.230.213])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C20852075D;
	Wed, 24 Oct 2018 10:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540378351;
	bh=JLB99giKVLu4reZBJ9A/siKKq2u1PqMKVV4lUnDVT3k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MxOLlkNOoxqj9zo5vqmta9xTiXS6DCR9qr9ze2iBlQ0tuGw0FxFt/bTnscYmqcDnu
	 yEFSZCW1I4He4hMi6r69qwVUVYclGCkzL1aigI0Rk/4bSuzbBBiBW/zidoz3ZuBh4g
	 /lnbU4LEn9oYo6cizXgYIJCYBtUvE1ItjNU1PY+8=
Date: Wed, 24 Oct 2018 06:52:29 -0400
From: Sasha Levin <sashal@kernel.org>
To: Kimberly Brown <kimbrownkd@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: gasket: interrupt: use
 sizeof(*p) for memory allocation
Message-ID: <20181024105229.GA22344@sasha-vm>
References: <20181024041602.GA2385@v>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20181024041602.GA2385@v>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Oct 24, 2018 at 12:16:02AM -0400, Kimberly Brown wrote:
>Use sizeof(*p) instead of sizeof(struct P) for memory allocation. This
>change complies with the Linux kernel coding style. It improves
>readability and decreases the opportunity for bugs if the pointer
>variable type is changed. Issue found by checkpatch.
>
>Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
>---
> drivers/staging/gasket/gasket_interrupt.c | 3 +--
> 1 file changed, 1 insertion(+), 2 deletions(-)
>
>diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
>index 49d47afad64f..8353ab50b3ec 100644
>--- a/drivers/staging/gasket/gasket_interrupt.c
>+++ b/drivers/staging/gasket/gasket_interrupt.c
>@@ -322,8 +322,7 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
> 	const struct gasket_driver_desc *driver_desc =
> 		gasket_get_driver_desc(gasket_dev);
>
>-	interrupt_data = kzalloc(sizeof(struct gasket_interrupt_data),
>-				 GFP_KERNEL);
>+	interrupt_data = kzalloc(sizeof(*interrupt_data), GFP_KERNEL);
> 	if (!interrupt_data)
> 		return -ENOMEM;
> 	gasket_dev->interrupt_data = interrupt_data;

This looks great. Maybe you'd like to do the same for the rest of the
function as well?

--
Thanks,
Sasha

