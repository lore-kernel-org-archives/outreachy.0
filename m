Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com [74.125.224.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03DE0352016
	for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 22:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792190120; cv=none; b=jVc+2NxdCYMz2O8wJRXG3wD/zrXPOgyLhOQlJ5bYZEWvo//esumBYpEY+8pUdceDVFPDmZnMA6E6NB0sxdHu1gmdN3vehGSCWgMtUgqfpEhow9V2cy3uwIJ1wOnZsWfHZElDUVIJWvoCni8UIIwYLTPOTqojd4PJOk2b6avqSQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792190120; c=relaxed/simple;
	bh=MZ2Rq4/80Q7iGewMisCrHrq9so+ss6+rUrfgmY5SqJM=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=Nknvxvh40axu3onWfQyLCUUi8xd68jGS6kpPie8vo93R1e21QpnA2wZ/fYMWIJjCbJRutsCUuZ+81rcNt0UF1GU/Bh5ILRGTdWSL4dv2C4Fyp79q9QB2nssDP4WblyywHl+nBaFqIGK4PPamSoyjC6nRZz2LbULQJjmJ6YzifNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CldxH4vA; arc=none smtp.client-ip=74.125.224.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CldxH4vA"
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-67989a98f8bso331815d50.2
        for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 15:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792190118; x=1792794918; darn=lists.linux.dev;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-type:content-transfer-encoding:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=MZ2Rq4/80Q7iGewMisCrHrq9so+ss6+rUrfgmY5SqJM=;
        b=CldxH4vAsoGih5swVsceWNFbVaHzRrXvoqB/x4PV/STHuNyD11FdjDY1WZE3JDOR9t
         eBS7YtILu81wYlksoPo8Ud4KgW1NdSA5YoOZiWwRWa14U6QNzFxxE32oIYLnYlMGugIu
         WJiwi4wnr5J60ImIIwpYUVxxCR94vi4Mnnr1I/0Mqe0e3kTA0kDJhdFS//GcQVXY2Jso
         GjP7tNBO2sqVWOZhKhRXazdUCAoHVUVhB1g4Za7C7xdH2tJgjuvyQ73x/bMpUEZdSPg4
         374iJfbyRPrKgTKjEc101p9NAPzYKAnbxZIze5X4kV+XzeRSzLYdnUZ8emSmVDjSTg/y
         D2MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792190118; x=1792794918;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-type:content-transfer-encoding:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MZ2Rq4/80Q7iGewMisCrHrq9so+ss6+rUrfgmY5SqJM=;
        b=EKq56bkrrSEkyGoIQz9Bmqfh2I+s3EOYyldVUyvQPlfYaRimG/44MN2dcyIkHqkckT
         nqE7h9nR+cGjSuLBg0OKEoheD7hzfshZCa0+RG3s7MLZdaNhYqCJjhLtNB1in1RIz6LA
         RKIAb+KU7pVWecNHdcu6XwWlvKfAlZTpigixKBbopc74lxRaSF73MdOPkZU1es52HRJk
         StdVu/DItb66U8wAjiY1crHEAK3wNQnRDQsKK3uN1CVjBZl20Ih24apuzsiNiiFt7HAx
         aKzqaWv6QvwaLz237Ji6vfcGBVdwjOg+zgqYXXNCSQJadx07qNYzR2Mdn4nN//J90seN
         Ciog==
X-Forwarded-Encrypted: i=1; AKwUvByVEavwcQlSCFqUkqpf2jUWOUFAMSaykRzqnA9dcKx1Vh8hi9vBq0iOLXp1rezO1ax9w6lj1Rb8+iw=@lists.linux.dev
X-Gm-Message-State: AFq9FYLd1xr0qRswgR1KhWaRMD2BxJE3O43/FTOqi+40i6Qi2xUBL7Qv
	cQjnqtgWA7FGwrnqvM7Y9i1yG0wimJuKbWa+PcK9AkC7qVcbEheL5iSE
X-Gm-Gg: AYBFou1141GinnyCyVs6+FSZMXkZXCbzGSQqBh+9TCWaf+N08/mydVMzvUD9sR/qsw2
	t9rqNebB1wmDoDojIp3eeaOeGqF5o0XCkFKrPcL6R0tut1Ydr3sAEG5rzQmUryHhKG0D2AjuMdz
	cMP8N6Gv9+D87IJbJkKDyD8FNb66KHZpbnkBo0T/9InIe2E15oEj/RBKDbD5ZhiA/VO9hpVV24E
	BSNHcHsrhoRjbP6CcDc5+W/3zFg1Ye3L5hsT/wjRuqMyenPECVWDxs4K/df+TEr8Z90aBoPkwTr
	BUKuYM18vPhpL43GQb1WWx0UThtVEgsHD9iwr7mW28diRUSvm4gFJma30aVS2qF9WZwEcy8IEtt
	kBXzw1c2WEP8EAMx8BpHD+MRJFsxKj3NNf9vtCkPdBKEO8rW3anWQO6XsLaF2g3rIY3U628OBxL
	PZzo5s0kRnbHq3s4/NWi+PkaZnU3MGfYmisnOJsKgAQuc5aOrEYRbL6mxQZsONkCEYOlU+wUQko
	fIiwO09OZabwCjLdp8oyjEtTFztwfeBlEMcvHeKhqNupUHUnNWvurzd0pOM9qm3+Pnpo39rbpV9
	1Zk=
X-Received: by 2002:a05:690e:d85:b0:671:70d1:d6cb with SMTP id 956f58d0204a3-679ca7f922emr229592d50.61.1792190117971;
        Fri, 16 Oct 2026 15:35:17 -0700 (PDT)
Received: from localhost ([2601:7c0:c37c:135::8803])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-679b1eb0b6dsm1651282d50.13.2026.10.16.15.35.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 15:35:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 16 Oct 2026 17:34:44 -0500
Message-Id: <DM6MD2KJ8KS8.33P7OXVDIFUEP@gmail.com>
Subject: Re: [PATCH] staging: greybus: Align function arguments
From: "Ethan Tidmore" <ethantidmore06@gmail.com>
To: <pavankumaryalagada@gmail.com>, <pure.logic@nexus-software.ie>
Cc: <johan@kernel.org>, <elder@kernel.org>, <gregkh@linuxfoundation.org>,
 <rmfrfs@gmail.com>, <vireshk@kernel.org>, <greybus-dev@lists.linaro.org>,
 <linux-staging@lists.linux.dev>, <linux-kernel@vger.kernel.org>,
 <outreachy@lists.linux.dev>
X-Mailer: aerc 0.22.0-0-gc2f86b7abde3
References: <20261016063648.22795-1-pavankumaryalagada@gmail.com>
In-Reply-To: <20261016063648.22795-1-pavankumaryalagada@gmail.com>

On Fri Oct 16, 2026 at 1:36 AM CDT, pavankumaryalagada wrote:
> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
>
> Align the function arguments to follow the coding style and
> improve readability, addressing the alignment warning reported by
> checkpatch.pl
>
> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> ---

This doesn't apply. Are you using staging-next?

Thanks,
ET
