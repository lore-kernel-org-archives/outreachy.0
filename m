Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.44
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793778447;
	b=D6OhabuBcHxczX6Q/vv+TdyK3NevKUGB5DilsEUDyiwIobJe2riLqM2Tl90usuAC2rC3
	 wuB6gt+mRXeBe/FcOqpIn5oBGEgc7v0SIFoXDtwjxhhvwd67jK7SBoOpdk54pDiZQx/wp
	 W0ZDfyDDTtPcY4t2Hqoyt12AI7bAB3qlkLTlb+Sr6f9p+J+oUeS/EQGeOMU/3al6PUS4Q
	 loaUlSmQQVWXwmBl7wc5gEc1B1jkfhkYTvOwusehRwb7eFJ3mShyN3xsEzl12qhxlFGgf
	 iIKPtxdRnEEYJqAaAl34ih3THLnR1pDK55Qn/WIk+sAv9aYVUMaOjWNNc5MoaPt3edQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793778447;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=CJrVpzWSqXnZyMhmYQZlXezsPnpuAEBGvhZcWkwrTMY=;
	b=rU0GrXIAnkB9R6hkGxDaNMRLJa1W22rhSGRD/lBUVGvILNGdkIYH8FcnY/TuChEfe7v8
	 e6XlP0sDfl4lhi7JGfE/aZxLZofK0rm5x5W75C1RpAjs/Iml91NkRK8b0JllbibfTreqp
	 p3vvwXNSxE4lyxaxZbRt25RYq53c25vzDv6+Z1/qNCAi07wjGt/EkJTlQQvqBT53saM6e
	 +FAj+yV99+4X4gmyT506MpaW45vCEZVIKtmlweJ2625eR4N5GiiFJmZUGTRkG0THDMiTj
	 hgCyvot5Y9bkjSUf6TLBH5r+EAtHl5PK3iYKhx5DAsM76DzhvmzMCgogkwbpIeqoGKA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b="FpXguuY/";
	arc=none smtp.remote-ip=209.85.128.44
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E520606D80E
	for <outreachy@lists.linux.dev>; Wed,  4 Nov 2026 07:47:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 9E520606D80E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=FpXguuY/
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4a210470b49so2075805e9.2
        for <outreachy@lists.linux.dev>; Tue, 03 Nov 2026 23:47:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793778445; x=1794383245; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=CJrVpzWSqXnZyMhmYQZlXezsPnpuAEBGvhZcWkwrTMY=;
        b=FpXguuY/gG9NsQd7FoNRar7awS2/rBRpGN5gq+xcsYrx2lFEF9sUPLJ95ejeOGK3zn
         AeZ8CsuLjSvlKSzGFWm5EXVbN6zwR9xvjZ80n1zQJtFC2HDUVk2rZNjWJdEw7kYTEpYz
         TB2beOOXAAMm3Jbfx9FkI39pS5XBwQtAhvL0H9j9PPHqilAnPij2+OF20M3xl1exf7aj
         h3Ar7o8BcsVDxkXWKeTdkX9kG0/J0b8+IzvV6me2jXtFQ/zueLTmg7aBScqG9G6rhspr
         pZ9fXH8qfKXNZMIESsvd58od29mS+eR/NRHomg3feBD6ok3XOZYHoq2LBrlWsLohWljj
         uHAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793778445; x=1794383245;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CJrVpzWSqXnZyMhmYQZlXezsPnpuAEBGvhZcWkwrTMY=;
        b=z5GK0s+QfWzjihUHXGlrnjpXviX7mwnJBW2Z4CPhaZLFGl0fezoS4moK54zU7d+xtF
         J8S2KfQLmpHI4sUFZxK3PvHK7qVk+c8QwbZe5iXqwOzCgXqItSYtHhdr99bia8im1+nc
         5Wui6luuf3YQTnVjqNYBFUSReBqD0cX8bjHgF8mK4pucRTHHsvropNcqBRzMIZmEqEuF
         L8wqqIEMYDIPbmigr/rlDmHYL1C4EIHg4+A5IhkgIxIT9ua42CG0s+F7FxVRwmukk19g
         xy9G6mnCYN93BWRbKyN76AyvAQiaxCNHnWIE1kc2BD3mGINuYOvgDb7isf9uknt2MZIl
         SSCg==
X-Gm-Message-State: APuU4Z8TDcb/SHLFLzhgchftcbHU5oDbhsxVg2olBBCSe4l6hHrYKXss
	5TUTKos52mKt1pI3As2tpnE/Cw8DsUip+Zmc7q6VEcVYqeQ3yHBN2xcn
X-Gm-Gg: AYBFou2NUvno2FYMW2CyykKnSWopg4pvAS9HjIs6qeLIC/yRT+7HCiUFA20v55qhO/B
	D5WETQHp9fTGYEv5kCuejTHs0BnWWK3wQLMBLuquwPgjT2M13Fpemd2k/JjS7yiGr6rSTCiiplu
	o1KqVWChgIx20mtVyUCp1rNN8w6DVIxYiH1X0uJqplHCSy0VIFeN7CS6NPjnQt2wyIJwiUqM7hL
	sCkS5a1x602bUpF/bg7CfVNmmwMANYeCV+EV/+HDk0EASO0sWQnG3jpBXjsyQZhkmkQg2LIxQLe
	fUz6ibDuj4tDwvDs42Ea0mhSWav7PkRRJDOJfJmsSyD7acxzOY9m9Yk6I5UohRqYccUdsAebbPI
	cMVnhPztMnj1Adb6UNXg8a7NjSffJ7DWrB+ccfYCUBkWkbij3kB35GsTr+6/RHs7AXUcA9Fjg3R
	OZ0DmrLHOO5w4jc4oScwgQpV4e3ymijBfqqMP18cRDLhdI0QBhUBqfWviX3De6up2KLWlSHDAw+
	CuAgWycxkd2ku8anbzShKDQd0toskO6IfwBO8UhG0FD9mGpEQxKGcXlCnKk4kGe/mgddnAby6SS
	CNsxJFZ7ra3DRAZFeW+f7jS2Ulh4V7AavisySduKZElYIjS/aejzn6dVE1GnIVecUvKhVzU3IGM
	ATWbSfAE51N4sgnWoUdEhsh6Q7L1UDsBb3ZlxMlp1MC/iqPzvcLd+Ql5iuDUGS7kGupKxbeVi0s
	ZRLah8FeYOUTs=
X-Received: by 2002:a05:600c:4fd4:b0:4a1:e250:b191 with SMTP id 5b1f17b1804b1-4ac180f2ff3mr345570805e9.17.1793778444927;
        Tue, 03 Nov 2026 23:47:24 -0800 (PST)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2ab010a66sm164324185e9.13.2026.11.03.23.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 23:47:22 -0800 (PST)
Date: Wed, 4 Nov 2026 10:47:19 +0300
From: Dan Carpenter <error27@gmail.com>
To: Maria Sheikh <mariasheikh812@gmail.com>
Cc: outreachy@lists.linux.dev, nuno.sa@analog.com,
	Michael.Hennerich@analog.com, jic23@kernel.org,
	dlechner@baylibre.com, andy@kernel.org, gregkh@linuxfoundation.org,
	linux@analog.com, linux-iio@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: iio: addac: adt7316: return 0 in
 _adt7316_store_enabled
Message-ID: <aurjB1B5sRHC6GsW@stanley.mountain>
References: <20261104041237.7978-1-mariasheikh812@gmail.com>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261104041237.7978-1-mariasheikh812@gmail.com>

On Wed, Nov 04, 2026 at 09:10:45AM +0500, Maria Sheikh wrote:
> _adt7316_store_enabled() writes the config register and returns -EIO if
> the write fails. When execution reaches the final "return ret;", the
> write has succeeded, so ret is always 0. Return 0 directly to make the
> success path obvious.
> 
> Found with cppcheck (identicalConditionAfterEarlyExit). All callers
> either check for a negative return value or pass it through, so
> behavior does not change.
> 
> Compile-tested with W=1. The disassembly of adt7316.o is identical
> before and after this change.
> 
> Signed-off-by: Maria Sheikh <mariasheikh812@gmail.com>
> ---

Reviewed-by: Dan Carpenter <error27@gmail.com>

regards,
dan carpenter

