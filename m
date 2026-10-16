Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF5141930F
	for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 08:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792138328; cv=none; b=W1JTiKEy4q+LuS5MvDeYE4sb2JzBxmAK3agHPltPw/yPwJAIl081ZuLutyB4WSppVPZnRhSkEFCJsS8ewcf/ueQFGThH/eC6YKOLIHahNh+Os/31PjCQC8UT0UQcWqh96e8IXPqQ3RWwNcfeNuymh6AvoC4u8b4Q5Sg5sRksxIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792138328; c=relaxed/simple;
	bh=4jk+j9YNuu/5rZ6mDSj5zkzgKBVWnJ0lqMSB5k2Ri4U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IJGx0ntO87N1ODzKMnJc7LHdAQxt6QSGzbY/oWRKrCFYOlYRajlaeZKz8/7p8k93/UyKyjwCHytDhvm+l2N6vkW0lGT2c5v5MDTHnYPvVkKPvnsK7mODrbOgAZgdEbSjXuJDqmJ9V9084c7n26VYrqLFV9Mm0nPqK8lgHML98Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WeCBp5E8; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WeCBp5E8"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4a0286c981dso27410675e9.2
        for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 01:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792138324; x=1792743124; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=coNAFChQpDjBCCj96hHJcqUiTEEavSTGgtqRHjd5Zp4=;
        b=WeCBp5E8tYaYeHjsvS01uWUjQRIBi+vJytiZWLpkylJeaOe6Gh9GYv8QUAL/4L8Csg
         xKdkw0Rq6Sn3SARbg59yUaAKRE5C7tQr+aVtS+nqFfHgb2q/GlwxvOIWbOfytN+VqnPz
         kLJcFDOm/HyzBMBdqSEabPvLCf7zpLN6AtajFDUBuynNsnrku5xdPNIh1bAjIYZFhviJ
         1n2M5hra9R2YQdiuU1om+dErob2TLIxvGWuFpP2emJ2ehiOMCJ7Tbt8b5O/1myaGT8vG
         rzFLScvKZpkrRzkv4BqgFl0eL7Qv9ul0w22ich+glTOeD+RmMZ3XSUJjJ2yqUcagURwZ
         7BbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792138324; x=1792743124;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=coNAFChQpDjBCCj96hHJcqUiTEEavSTGgtqRHjd5Zp4=;
        b=Wa6O3MMzUERarFNl37bmFcmV7g+s91CmXR3C89jGCdI1glUX/5OivvQpYwau0VB8Jz
         5PfnhTUjAhXLzaS3Y1+RjELx/kdbSgwY3u6zY4Bll6/0B87KrzRymClAq5ivIoiaze0v
         fkOy6ezzqMI/9Fk33BcayvYVqRy0jhz2AWuxveFeHe9V4Pug4U12Gc9XYbk4+LikVbEJ
         Ju8Onq8VdeSk2c6d53bpm2LEzkDcnu/qyf6zjK8JH+AoKJHf6SlEh3fsT1u9Ap/TTHS6
         y4mW1bmi8lyYZBZYlnufcbfuBFYeMbHIycKSs/t6DeWmLPzFmgOW+L/8PHGZWT++Lb2U
         rgaQ==
X-Forwarded-Encrypted: i=1; AKwUvBxQ9w9xq4XtWcReeqnJHKlCY3H7NBM1G5bgPZ5ah+AR/mUqw11QHvAFUVJfKT4eNDAKb9HYmZmHec8=@lists.linux.dev
X-Gm-Message-State: AFq9FYLbv9aQ2+nqrGabQ5iLzwCR2sZGOQXQw8NzvkJIT70ZJRjp6nN3
	S7t1tsv61k3iarAkSDgKohg+ZYLvUoeDsa2d9BQAFShkZ6+ChcpGZWF+
X-Gm-Gg: AYBFou3ovo4A64TF6Z2khDhqu6A1+TjghHAgP5sRsFN3ks9vO4k+9y+uaeMpK1SkgtK
	ZDCNTPgTeiCjVPZPR0V1eTNLuhHBZa8WCztFf2KtcmCcWpW46JKsHsQ8msvI6T92NTFzvFr4nhC
	NxW86phtecJUPKV5olfag3iW+mODqNWIc3cHAgMW0sCy6qYkNnMFv14I1BYpoCgO9XD4zKEP9jT
	VFiFcJPu3IhrCnVjtMQ/WoxyAoJGYcYvvn1gGb4Lj2jhdgBQUd1Am9GnfzSWtHuoyupN2NFE/SR
	4jsAS74vTckVjy35PlLbOQPtHj6h70HP/sZpUuKrhy8Ux6XbDvHlhMZPUhrkVI+TPSoSpyDxlxl
	YU4ziSjB8WaH9nxJtt3ad7UwgN7BxZW35eKpV/Pq2zwPgLb8xxmQhE7NZ+ZQnt3eG6JRuzA0Tw5
	Fzpkhi1n41iae8/8gzwFgzpZDlDj2ZfdryfN9Y9ZaH68itqTT4xQUiIh6AfvN+JbCcsyg=
X-Received: by 2002:a05:600c:8708:b0:4a1:7b05:3a6d with SMTP id 5b1f17b1804b1-4a18e49881amr421665075e9.8.1792138324082;
        Fri, 16 Oct 2026 01:12:04 -0700 (PDT)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfdeb18f8sm2892143f8f.20.2026.10.16.01.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 01:12:03 -0700 (PDT)
Date: Fri, 16 Oct 2026 11:11:59 +0300
From: Dan Carpenter <error27@gmail.com>
To: Luka Gejak <luka.gejak@linux.dev>, Ping-Ke Shih <pkshih@realtek.com>
Cc: Ethan Tidmore <ethantidmore06@gmail.com>, pavankumaryalagada@gmail.com,
	gregkh@linuxfoundation.org, outreachy@lists.linux.dev,
	dennylin0707@gmail.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rtl8723bs: remove unnecessary parentheses
Message-ID: <atHcT5GG8zzoH7kk@stanley.mountain>
References: <20261015120634.95218-1-pavankumaryalagada@gmail.com>
 <5d577cb1b4a91e8cdfda171bc7100105ae90d91e@linux.dev>
 <DM5IYFCRBE9W.1U3KCU36BUE36@gmail.com>
 <atEtUV5q9MHRSTJb@stanley.mountain>
 <672f78b36290a4021d3f94d9ec401d23420febbc@linux.dev>
 <dec2320eb01dc6499948a936c94512ddfd47e2a4@linux.dev>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dec2320eb01dc6499948a936c94512ddfd47e2a4@linux.dev>

Ah...  I didn't realize this patch was applied to a different tree.
#Unexpected.

https://lore.kernel.org/all/7e53bd59b7b146caabebeca4347674c7@realtek.com/

That's a mistake.  Staging patches should go through the staging tree
or atleast they should be Acked by the staging maintainer.

So, yes, that's always going to lead to merge issues.  Not a super big
deal because the conflicts are simple to resolve.

regards,
dan carpenter
