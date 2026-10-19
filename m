Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAECC2D0620
	for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 01:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792374511; cv=none; b=O7+0sIV4iGkjL6Tw3cu7p8+WsOpWM1DbIFE83XDZViOMmnNhj0Vgk65jZtSEAeToVOLmrj4j+z+M784CH1Vw2WrA8yyQiYa6X7+V8JzXlpDc42u2Q3fdqRQAo9TQdKNKEcbGpRf00b+BWLSREtgPdaqAyjQeOnHGtTzShKt4w4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792374511; c=relaxed/simple;
	bh=Dg24M9sxnMJ/wUGWVVDf13sGMFUGXnh0PB+6Ot0Ycw4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=PJzoZRvvbhRPyjChLxRQ+BFwXHlgUXvBaGNVcZN7eyRJVrU5BvXbKm+v+Pi2lFYxQ6EPm3RYV3vmtfiuNl9jrPH6nCnlaa/zB+vOsJIP5BV40SpAGWdUEq81Md+Ej4Ywl/okiHwtJb1IcOmi38qkmrbmThc4TzADwiPeTR4hsEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ljrlueiv; arc=none smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ljrlueiv"
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-6798c4b882eso1126071d50.0
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 18:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792374510; x=1792979310; darn=lists.linux.dev;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-type:content-transfer-encoding:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Dg24M9sxnMJ/wUGWVVDf13sGMFUGXnh0PB+6Ot0Ycw4=;
        b=Ljrlueivw309cfLYC+DvdagtcSe4kEQGU/UNmkWQiSygN3WIvcBW6HlBOCiSRbAtel
         rfqE5bOBOGNPS/E2vYz5S8/On6HU2TkFz87cFEpxSmqXEqc3fbN9XGg8zP+bkY+1TogU
         aSEFlhFMSf27/vpEMh0g0iRkXxdn0MVD+6SAYPMQdtzR3u03E35O8YpJzdG012865Qpb
         DKX4R57A9WgaJBwEXA1Pe9R++2hKGBUksKwr9fV/yuJnhcfUmLope7mFlGQAj4I9ULCt
         8e1blIygr5trdMcDMF5WOd70Rhwk95pILFJsdyUcqrJOu4+RYwZcYa/4ZmfurXMCApkn
         g1Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792374510; x=1792979310;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-type:content-transfer-encoding:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Dg24M9sxnMJ/wUGWVVDf13sGMFUGXnh0PB+6Ot0Ycw4=;
        b=1MUxMp2hsr9Xd4CGDl6tdYCM3aeBuMIC6XY4NlKRbI11PhS4b8q1b8pRZj+L3Jcm34
         nEPjGZMUq/58na3JfEcgzpYTNcOh9wGNDZLyLgp4N7GvHjHiq3af5CSM1FkFgDXn+TUE
         oyiDUEo5wBAgRG/fNpfAaMFDAL1T5N841CEMWGlCn0GxWL2kHtCEN8Lf/nzu5wP9PoTv
         HcbEDTuKBiiiix2cfOYqCRaHS/caU27syyO0nn2IsnI0s99r8XSnCs3BWvfgd/sC5SDe
         3zJhZw63RRK7wKNgl5HLfRdSVsy4R2HbbWOHNDXTJecjYrjm+J5MQqCHa1EFZ+DHOWv4
         MHPg==
X-Forwarded-Encrypted: i=1; AKwUvBxsQdDwl5A91xsLQ0To+QP/SgQk0+PdI7OUstis+skgkiKPSmWPXuxBWjlGnyiSs5iOKL6ImL0hZuc=@lists.linux.dev
X-Gm-Message-State: AFq9FYJuUFndnMfN1RJehYqO9LOjp/U2MN65B70/y088SLlLOZtmNT87
	nfPMy2QXHU5Vunmi8QOf2LM4LAOXM5iYuJpqLOgJcgzFRo+9dyPoS2qt
X-Gm-Gg: AYBFou0T2sUUhtLyhLc4nxSYLrxIUYQbb91FPAk2tFTGDCGFwF9u7iyNOHvaH5GyU7d
	aHJXAA9ezyzwD0PNRmr2IBwrjqicwGHRxdyzKFNXIlEeiK6XWjhNQj79p2J9pUgV4JLRM2ljTck
	yGI7nM5VOmS48wRz7/H4rxn4JJKn1WPXul4m3WDDXqUHwx1rUvpfzauAMjE8+Q/o31SbeGF8C6Q
	fA1+hIs52Y0hU49rUePRU4XdtZ6DUl+wEhCw7p2/0AqTrEtlVFGMp4HLf1HMoaEOaA4HyOyF63Z
	SY5jAqMYmdoSN0UTe6iie5gU2l3wBDMADClGk/z1XQlfBuWpYKu5Di00wmlSLPPtEwTzFU8sEFR
	q/bE2rt5YugAMPuLv9VkGlDvtIONSRp8gfUvgNDefs9lPWKVqIlKQ8O/3PePgVk9T/Rg6Lhbss+
	2Ug9xh5FbisJzQmcO/9MJivZfBQUWpvX5lIOHebSbvLKvdywq0w2g8ql4uO6TJRqYM2KGeKzIph
	u5KRyqEgUtapIPx6M7mS6E7UdjoOA/xMYnflgxjmpZxgdFNIlDJP+on7xs8dSAJfkcC+fVdCUlH
	9Pw=
X-Received: by 2002:a05:690e:86:b0:679:5bea:d3fb with SMTP id 956f58d0204a3-679ca8db8d8mr1463133d50.98.1792374509799;
        Sun, 18 Oct 2026 18:48:29 -0700 (PDT)
Received: from localhost ([2601:7c0:c37c:135::8803])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-679b1e09d42sm3675608d50.4.2026.10.18.18.48.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2026 18:48:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 18 Oct 2026 20:47:52 -0500
Message-Id: <DM8FQ18QVN8K.1FEXMHE3XEVYT@gmail.com>
Subject: Re: [PATCH] staging: greybus: fw-management: fix argument alignment
From: "Ethan Tidmore" <ethantidmore06@gmail.com>
To: "Okhuomon Ajayi" <okhuomonajayi54@gmail.com>,
 <outreachy@lists.linux.dev>
Cc: "Viresh Kumar" <vireshk@kernel.org>, "Johan Hovold" <johan@kernel.org>,
 "Alex Elder" <elder@kernel.org>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, <greybus-dev@lists.linaro.org>,
 <linux-staging@lists.linux.dev>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.22.0-0-gc2f86b7abde3
References: <20261018224241.46011-1-okhuomonajayi54@gmail.com>
In-Reply-To: <20261018224241.46011-1-okhuomonajayi54@gmail.com>

On Sun Oct 18, 2026 at 5:42 PM CDT, Okhuomon Ajayi wrote:
> Align the arguments of the fw_mgmt_load_and_validate_operation()
> call with the opening parenthesis and split them across separate
> lines to avoid an overly long line.
>
> CHECK: Alignment should match open parenthesis
>
> Signed-off-by: Okhuomon Ajayi <okhuomonajayi54@gmail.com>
> ---

LGTM.

Reviewed-by: Ethan Tidmore <ethantidmore06@gmail.com>

Thanks,
ET
