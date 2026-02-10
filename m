Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F962329368
	for <outreachy@lists.linux.dev>; Tue, 10 Feb 2026 12:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770726528; cv=none; b=AIObyAEZCJT349+nIN3j/fke9HiNukT5TuuNRXf9o1kkVDTrpDYDA1fDxs2fM7yrmbTxWkJtUSXgVIAWl780q+OqI/w+GpLpXjq2XFbTxBLSciu6uW3iJxNc82Qe7A17PPqceMc2dmfPDsWprABV8VazZXDt5ZfDvchgPX2Nwow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770726528; c=relaxed/simple;
	bh=IM5CIEHcXz8uQifafBoH+La766oYDFyBVmZkYYbfdfU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GJphcyvOJn2444pu4oCWmKuBw6twDNDVQJzJAD++RBZhRab3lLXyBKCatKGZMY7BVtJlkXauCnZDFIOhaZtRJL6E00qVaM1s7cC+eR4c5eg6ww8Fej2tx3v1ZSrj8Jz73IFj3qN6JTWPQpvjH9722h8ED90VeTb5nJMI17rmQn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aolmezs/; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aolmezs/"
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4834826e5a0so8907735e9.2
        for <outreachy@lists.linux.dev>; Tue, 10 Feb 2026 04:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770726526; x=1771331326; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v3y5gBsHvKaNLnlT3r2TZg/0DkRwb19baAns59IeVx8=;
        b=aolmezs//Ci37mE9okiSprdB+FGCtK/fNs48FCj234QR9GAOHMptZtlT7i1VRjp+9/
         glGNXoidzHJrJIjHCQsO2iuTw1hI7TUa3d2aDJmclTp4qyzZDJdLR8RFkjVDkFG0h+CX
         AQ99Of8YPM0LMQdxGgdwFoHso9CN7CIx9/azcAel9VksxDfX4xqYXNz2ywXNYGUGN3J8
         4i16z+fdtnjHQpqmd/k/j2AHF6TABpxL5i2+cC4RUciVm3oyvsg25lEqne3bKu8ORWgX
         FVjLTOd7JsQCRzRHLei5KDc8RX0CIkXZziROhiNYLoJamD8R21Ue3EpX/gdODZ6avuH5
         5M/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770726526; x=1771331326;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=v3y5gBsHvKaNLnlT3r2TZg/0DkRwb19baAns59IeVx8=;
        b=DhNY//15cnMSv1vcZNP+nx3Us/q/5S2wmH8ve3oKITnr8vFFe1EVZFxQOwux2EVG+e
         hlOCo5GGQGNXE5bFkI6npxi48SRWF2FvUYZDSkIje60vkS8J45izC3y2+uz1z9C/ErD5
         ege2uDL3XRZ+smHCWOxuKLbS39tb24nmi2iPGqATJiuDLHakTO7vjcwWSq9MbaXiaaW/
         ZZxou65wcsrBvELLEJXzuvKqjWhMRvkaZNjdIgOFcQLpVU0IByOi2/u6fPRP0ybfvhVL
         gWqSvw/ZhmFtsu/fAfdonGruiFZPPrBPviVxdb4aHzSsIm5aXU+xaEL/DKgF+6thd7iY
         8SNw==
X-Forwarded-Encrypted: i=1; AJvYcCUI/cFgTrT5r/811Keeyk3pqlq/TO02qHoRfNPYRaTAF8K6qvWYlakcnd5gj44U/QoAKY9ZwBb+6Ps=@lists.linux.dev
X-Gm-Message-State: AOJu0YwdbHu0E6U85E1kDSTpOF+woItBPe6u1WvbuIhnOZ0Foo+dPU5J
	SZamupKoeKznbDCnUiJQSMDct4C599tHOd1PhqOVBDnrZIrm/UufsGxJ
X-Gm-Gg: AZuq6aIEfNJb8Wv0UgqZkCSnYCQ+hxVogG7aZtetU+/v1Z5fitIxmLhyFVxMsGDgFze
	WJQ0meHhF1fWXDyn323JYr7PfQaHtaVHymdh4eA/2WtloJznNLqBks17jFxlzQhj816e82mFIja
	4e4In6l7CtTByIwrRX/7WHU4y86tLzaogEVJ9XCD+oiduWwTYY5wj5GwUVQ8oPfhzIzQLr9Lyrd
	Lr80ShbtlmLXAHdtV/dUEzN4gqRz8UWV7Xmq4gv+VTXv6Nb38oxTdtzDXE4xo6mSI+KjUuli5ZS
	RPPU/1JuB+elokb4I68ThU7PfscE5u8CizKeBwIch4OMaJzgiFlY0T6Q0wy2eBIuMz9W7dslhv+
	HWiN8zGbwJEjbepAx+ItU1LDOPOQ+yzd/YX6inr65yHdF+a/41dGE3MQvlsmiBQGIDDbJfj41+T
	ky3tQjnkgjO1XGF0wAOYXsYXOGfU1aM5YhmZRrZUjShS0giIkS1o04iZ13Hl2DmmtlOeFYL5EiP
	/M=
X-Received: by 2002:a05:600c:35d1:b0:480:3a72:524a with SMTP id 5b1f17b1804b1-4832021b572mr197768335e9.19.1770726525357;
        Tue, 10 Feb 2026 04:28:45 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d930902sm48671265e9.15.2026.02.10.04.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 04:28:44 -0800 (PST)
Date: Tue, 10 Feb 2026 12:28:43 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Yoelvis Oliveros <yoelvisoliveros@gmail.com>,
 gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: octeon: type change from uint<bits>_t to
 u<bits>
Message-ID: <20260210122843.05800774@pumpkin>
In-Reply-To: <aYsLZcRhZ7kB7f51@stanley.mountain>
References: <aYq028TNyXQWZ_v5@home-pc>
	<20260210101952.631bf50c@pumpkin>
	<aYsLZcRhZ7kB7f51@stanley.mountain>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 10 Feb 2026 13:41:41 +0300
Dan Carpenter <dan.carpenter@linaro.org> wrote:

> On Tue, Feb 10, 2026 at 10:19:52AM +0000, David Laight wrote:
> > As a separate issue, what is the purpose of all these bit-field structures?
> > You can't portably use C bit-fields to map hardware registers or network
> > packets.
> > It isn't just byte-order, the 'bit order' can differ even for the same
> > endianness.  
> 
> Huh.  I didn't know that.  Can you give an example?

You probably need to look at one of the old BE ABI.
But I've just failed to find a reference to an 'unexpected' bit order.

But play with union { u8 one:1; u8 all; } and you find that one has
the value 0x80 on BE.

There is a note in one of the kernel headers that all the architectures
that linux has supported since (at least) 2.6.24 have bit endianess
that matches the byte endianess.

There are definitely differences if bitfields cross word boundaries.
Basically the C language pretty much lets the implementation 'do what
it likes', so different architectures can behave differently.

ISTR a relatively recent change to gcc WRT the alignment of packed
bitfields on x86. 

	David

> 
> regards,
> dan carpenter
> 

