Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340722032D
	for <outreachy@lists.linux.dev>; Sat, 13 Jun 2026 06:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781331319; cv=none; b=LGEeA27MTQoOvGggmXDjqoN0Z2k/Mo/UTuOw7RIcqaoMO1uSU8MwpcTYWfOAGgEZUUp5r3688hwqr5UZEVgrwohB254LWDqcHHplo5K+DA9GbmGh4YUUGNBrz8BFw9Zg7sQmHgDqcWqrKtsfxuBgLLWsTXo4rfzwkL57uBy+xuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781331319; c=relaxed/simple;
	bh=kvgu2pwMGJHdiz92AYeJ3+oJ29XoTJnTSAyWyiLRUiY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iiPJtq7lIjiIH2EOV8DAVYgpj24aIe8vs/H67cFkvhndlivTZ+lG9YjFs5HUjA2lwxe06ndES5dqk0x5cR+lVkUh5WVsTdsZpHNj0IYrKk3VjrlXX4p/pibYXv3imNYa+cDtYZcsqqxAjsl9WegiSStHWCJdK8QfV7fyGAHi+vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RJFkuzWD; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RJFkuzWD"
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-91562bf6c12so203828985a.2
        for <outreachy@lists.linux.dev>; Fri, 12 Jun 2026 23:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781331317; x=1781936117; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Biw74RXDhRrXl/+hvcvrUJ20txGwKAJRoRdTi99B8aw=;
        b=RJFkuzWDgxHkXiUU6g3t6rXMMjUJGRYRy7XP1zYkbktPTmAyaqh788u9sSLhNXiCxK
         88A/ih/LicgSH1Cy9KeG9usxveM8IrQBJb6THpsp4CZNtP1gbBPkaQutzqKQDw4IREwL
         KoczWuQCnu01gAH70MtSJ2D3g8AYKJFSUlsUL02xzmn0ms+benJdhpc82zJ2kk5nPViR
         cnZKfmm5pvAP4m8sVADK0zJTjchJrH1betaQUbR7Bpk5FJqXmEU5z6iv6VXitt6PQDuh
         lDF5TI/Ie+shrnN2VzqkI4C2Qs22kRWMF5wh73A6lWZ7EC7rcSnnfKHxY2KMbIXAJHgR
         MIxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781331317; x=1781936117;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Biw74RXDhRrXl/+hvcvrUJ20txGwKAJRoRdTi99B8aw=;
        b=IdfW7odUjT9gJ5D4w2ncnJcL4BwC4rFkLiKXSuNF4BoQOzGx1s+gjWbnYdxYxu7nZ1
         Jxf/x0/HZg4JUFO2UUWLif8IBEl9+DU+W/0G3PKUSgHNbKIYIP+L0lT+/e101O6lxpZt
         lmnMYSz4wCaZG4J+pAvoeOoBtK7ev9GTkzz0DZYf5EhTyIuBNBFQNhNl1rchfzIcMekv
         Y8paaC9ElI/Kzw6YokHgU2VsuuBD5L2j3K/dHSRsntE+3BRmV4OpG3EpRceQ4Qx7TqXx
         dR2FjUhBW4qNhr10aw0A84BuqZPy9pAjvV7AqRtRX0/UxTy6P8r8Od79N1qUUWPNTsgZ
         6UwQ==
X-Forwarded-Encrypted: i=1; AFNElJ9Qy7HnO/raTaxJ+6vQq+Zmzm6/wP/QvW6dGlAXkjIxk7J1o1am0DXosA2r6rFLke1kUH/9TH+mbjM=@lists.linux.dev
X-Gm-Message-State: AOJu0YwLArmw010JTPGt8U6b000C+tcM5C1oBROZV7kNXSVnYqvgyGPz
	2tSaWdWkMttMb7FJnda4xRebs5G9G01ViJr3tO/BOZw87eOUI4g7xRlg
X-Gm-Gg: Acq92OFNsFG+NQEW4LuguCvClSJ5nksDFs1Zs2ZKUrrc9bFlHvjRfKNf6Y460Ega4gD
	QSFnxqWV9wTns0XKTaD6MT7FgjI8EGQv8+ceWhtsREh0iIZvlJE2CgvQct094wAyoV9kayYH1HV
	nxATPSKz2+9ca0gDUhwx2hCvxRITE61X5PC7ZTZHAQBPWnszOSZge+kkEa+DZI2rMhh3Qv84vUF
	Hq3wZ31XCHSPO+YIFXNu87GhGfh25y6f/0qDnfTNR/RFedoS+laEs/D77ig64v6C6Q+qhoKWoky
	dJFWeKQZ93ITEcKWpDFrgxWaIXa/lXuDx9Ld1VUGiHSnx9b7C6PM8Fo/u1H/NnBgckmafnQHNUy
	be8YaVzMNMUP2IvzfE8WgHebDhZ+OK2seFu/1hE2P/RoPThVz2Z3l3UhFw/ksDH5QbjsXM6h0Di
	eypx75DO6969UukYtFr2ihQ/dTZVM=
X-Received: by 2002:a05:620a:1725:b0:916:18b1:ea5d with SMTP id af79cd13be357-9161bf58812mr898215585a.39.1781331317132;
        Fri, 12 Jun 2026 23:15:17 -0700 (PDT)
Received: from localhost ([43.225.189.75])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9161a006426sm417186785a.22.2026.06.12.23.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 23:15:16 -0700 (PDT)
Date: Sat, 13 Jun 2026 09:15:08 +0300
From: Dan Carpenter <error27@gmail.com>
To: Brock Haftner <brockhaftner@gmail.com>
Cc: Vaibhav Agarwal <vaibhav.sr@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy@lists.linux.dev, greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: greybus: audio: add missing newline to
 sysfs_emit formats
Message-ID: <aiz1bMmAN-gQnm9x@stanley.mountain>
References: <20260613014905.48458-1-brockhaftner@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260613014905.48458-1-brockhaftner@gmail.com>

On Fri, Jun 12, 2026 at 06:49:05PM -0700, Brock Haftner wrote:
> The sysfs_emit() function is used to format strings that are returned
> to userspace. According to the sysfs documentation, these outputs
> should include a newline character for visual clarity.
> 
> Fix the checkpatch.pl warnings by adding the missing '\n' to the
> sysfs_emit() format strings inside several functions.
> 
> Signed-off-by: Brock Haftner <brockhaftner@gmail.com>

Please don't do this for existing code, only for new code.  There
is a risck that user space relies on the old behavior.

regards,
dan carpenter

