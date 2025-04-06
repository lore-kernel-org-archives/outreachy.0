Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C437158D80
	for <outreachy@lists.linux.dev>; Sun,  6 Apr 2025 17:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743961291; cv=none; b=DocRP3Xgl8ClkP8Ah4qdLHhMI7ahpfvDq54AGKM5x84kNlr4zRmM3MZZ6ACoxAI8mSL/XCD8rvPpCUAHyRW0v12BTHjL9pd5dWFTRvFapKjeHssSaQbpJHAtr3QZSx3Ix1yAoOTqVxLxgCiPCfISH1f1vw8w4I52X53QGh3mwVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743961291; c=relaxed/simple;
	bh=G2395PngP8PsRzf5cZT+gxfYRLzzHwxQWLBxuqMtvvc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X0FxYHw5tr2Ie6WkWUP9tCWtmuC4WrQyf4ZWQyuZeT9ETiIoYQWxiDXW/bi5ikAmw81MVUQwc8YaFA/bA/urXihRhw9EI5bLeh8rJnvKQHPjTVxoVZry3yC5M4v2jYyT1v6SzTXfUflAptVRDyfbAqO5IwVV6tsrjDZPgjxbGks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=laaZcDu2; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="laaZcDu2"
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-30155bbbed9so2602020a91.1
        for <outreachy@lists.linux.dev>; Sun, 06 Apr 2025 10:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743961289; x=1744566089; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JxmLRtJEJyieHfXxKBBazkkTPndIt5Qq1s+Aw5ot+y8=;
        b=laaZcDu2rOUzjtPizmx4JjOtr4sxuu7xHbiGyaxNgIaIyjpU3G0S402sv7FifPR+77
         PSoMEIhK5+tR5JMFNMw8ru62bJSlhIngGlNqMB9x/pqZqwklN0GgKxOYFzURGww0yz/s
         OdtM1KAowFFNbh3kUOkyH0JdOjht+TlzlVHMsm6UPbDJ+AJ2J9GFkKhHQeHDRB+at8ZJ
         ofJ2u1drNJu6Mp0UoINdvEUHaaGgbWSBw4copOhmkpUM94VfgCRXUQGdZfQySgJIkRDO
         bnujpRyQ4qLgYPi1fpmTQALkKuMwaANfg6AZvLfoHVQ+FngYPhpe3Q/F1VyX6aDXBrzt
         F7TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743961289; x=1744566089;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JxmLRtJEJyieHfXxKBBazkkTPndIt5Qq1s+Aw5ot+y8=;
        b=DX11+R/bT/43QHgM6rrEQo3VBI1Ps8yTuQ4R9Pp5UbEZz03x/p8DDvc877rENwJMXt
         K3iekcxdPCoGgO5tIYmQhs1SE8dh1aiB+asBhE+6R/mAyXo7XLsHuUdj9iVCMFWxBA6C
         HqbVdW3ngpgQ2bHtsYyaVvcxd0WhxUMuV7er7TkDvh1SD45E+OhkI7b57sDjTnLS02yA
         4iyvqzV7vAKwIOcIOn7dXwNzQovAZ5N4elHVecXp2wYQMyObjz3JBVZ15LxQ7IPx9Xp8
         FyQ9YO2YdrjnD3WWg7ah/S6l56lizqO4cq2Ihn+5LB63QtKt6kYFjND2KSzrwlP4yrYA
         gbjA==
X-Forwarded-Encrypted: i=1; AJvYcCWeQLyiU1DAHQ6lAA4fwe5D3qJ1NQ0ooVDCHgbsdx2mbxa3ci+3xgwDddYPMWOQQKYJHoe7BAM00xU=@lists.linux.dev
X-Gm-Message-State: AOJu0YwiN55Ya39KZd7d7KfpwQZvKRtqbCyhfgIHhDZ9NBajzvmp/Bjx
	5voBJjXL6wFKDAIGeZ5i2k3nbfMsBgOe+BMNgerNtIVyazSyOmkV
X-Gm-Gg: ASbGncsvtyPSMqlb8lICbQH7SxIZglpUcyecxPeL/daMMdfiBUW4o/ZedkjiS7faYpQ
	htsadrAGTTHGXmdopMJSgCxCMwa7+7R5r51/JVoo/aix/0Ndj9Kb745F73zkM5q4b7AN3B1KBfn
	fUCiBLu3zZ+NjgqvbkNibTWMvf25jZOjkaoj8awcw9wQ03XcVBp6HJY1UQCGQZtJ2qmRksgRTq3
	DcA4JRM27KT598xW8gjC+h3drQjSno0OEEUY0+U/SjM+vxxwjTXwr+pur7Xe+cQTPBr/pqVYEdo
	MQ4e9H2eQIfZt+1zSjmm46v9wGxcHvkOZZ1CBer6fN/OKPfulWExPbA=
X-Google-Smtp-Source: AGHT+IHwY2vuse98936Fl6H6zUtJp8rDxk44jwOFGR0olWLhO2gXaZYHn5gUfApakL4mwJUnSqXvAw==
X-Received: by 2002:a17:90b:1d43:b0:2fe:a8b1:7d8 with SMTP id 98e67ed59e1d1-306a4b6fd75mr13167733a91.25.1743961288843;
        Sun, 06 Apr 2025 10:41:28 -0700 (PDT)
Received: from localhost ([2804:30c:1f4f:6800:9245:316f:6226:cc1e])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-3057ca7fb75sm7378808a91.22.2025.04.06.10.41.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 10:41:26 -0700 (PDT)
Date: Sun, 6 Apr 2025 14:42:32 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Brajesh Patil <brajeshpatil11@gmail.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, lars@metafoo.de,
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Subject: Re: [PATCH v1 1/1] iio: dummy: Add 3-axis compass (magnetometer)
 channels to the iio_simple_dummy
Message-ID: <Z_K9CFItAcYS8r4a@debian-BULLSEYE-live-builder-AMD64>
References: <20250406133349.50633-1-brajeshpatil11@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250406133349.50633-1-brajeshpatil11@gmail.com>

Hi Brajesh,

On 04/06, Brajesh Patil wrote:
> This patch adds support for 3-axis magnetometer data (X, Y, Z) in the
> iio_simple_dummy driver. It introduces three new IIO_MAGN channels and
> populates them with dummy values for testing and prototyping purposes.
> 
> Signed-off-by: Brajesh Patil <brajeshpatil11@gmail.com>
> ---
>  drivers/iio/dummy/iio_simple_dummy.c | 71 +++++++++++++++++++++++++++-
>  drivers/iio/dummy/iio_simple_dummy.h |  6 +++
>  2 files changed, 75 insertions(+), 2 deletions(-)
> 

I'm pretty sure the changes introduced in the IIO dummy tutorial [1] were 
for learning purposes only and not intended for upstreaming.
I don't see a reason for updating the upstream dummy driver with those.
It would also make the tutorial less interesting.

[1]: https://flusp.ime.usp.br/iio/experiment-one-iio-dummy/

So NACK for this patch.

Regards,
Marcelo
