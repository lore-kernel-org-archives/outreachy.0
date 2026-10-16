Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F64C3AE1A0
	for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 20:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.161.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792180937; cv=pass; b=Du9S4CaF4Rl4QUyUuAOjlwDAhIz7a5EJ1uThqmbZgrVizU5pIjZISiMP/l6iOEzV7/abZ6D6rMKbLYyw18nw6xUvOSM4TI76D211PDeuX9PpiaCjPofz0yEysmp2ATwJ15Z8fCUxRHLpd6fF1S29jYVXa9awqpHjxYu2f+HN6dA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792180937; c=relaxed/simple;
	bh=YKRqYUIeLHuu39TCMgEZAeGl7IY1Tb02I9gvyfzAFBg=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=ulFbtVeJjjAV92IkE+5SLyH7fUcDLtGkFHIl4tPze7ZG9dUW5dMSrS0E33mglFx0wx3Nurm8EKr3MD0mu1ZjV37JtH5r4cbj2MNzZZsZqficl9H1c3jNVj68PlAXPXR4hMGVAhaPUf+gJ+Yzb3Uz1BcWIUn35nGYiXXYYI++Wt8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eXRGBvNv; arc=pass smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eXRGBvNv"
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-6de1fd5f572so144523eaf.3
        for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 13:02:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792180935; cv=none;
        d=google.com; s=arc-20260327;
        b=kehJVQyKUY9QkgTJpw2KHcsOJQ+3C286tYbitRisFTdt/+iGgYu5vQOpbwfoCFw54j
         KHGxya9i2yhjydvdILdcG3rZFmZ+p27Q55sIqbE6nQtubYEvyjVlj0KMXdhovoKtY4vj
         pIDozno5zmsBnEQ6PFb6Iyul/wonY4HX7NOeXOh1t+tCrgbp+HInaIJY+L6Wov74Ifw+
         kBSNuLa4Os8ITA8PHaXaeWZFjJkJ7FtI6lCdXQCUi5MyMBPV3n8YOC1gjMJuMprEmpI/
         XHs+Mo+XcwIoWa5s7x9Y4CEbg8e6ZuhgWgMx0RSqznX9At7TChmMAPwqPIAOn/4xipzm
         odQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=YKRqYUIeLHuu39TCMgEZAeGl7IY1Tb02I9gvyfzAFBg=;
        fh=ORcOwlulYhm0PlB4niEDenmGt0tg1PSeOtR/xiWpIK4=;
        b=C3vfy0iGVRtAVrre9VoGCTaVhdGGgXjH5Vt8jG2c4w+WymXkmQoLn+Al2fS3argxfM
         kz+6uKax5A2+2ME07cDZeBSnM4HfsZSroYrIj8HzF7oNKuU4TmKqQjMUuHwMbF9VXOYj
         Spk93/d/rGTQmnZ8F+sKK37b/kaeENRkcEPzZR+8hghQdE03Z+OmOTuqdgpGGY7eYwF5
         OT6mHqOyE6gH2c+CZTygzLokMj4TyfT/QU79FHrlDrQnAplkHqxD+tEPjgWtgefLFI4O
         s3nCqITij54xfso6tNY1m4wuhLTP6FZXvqu+R0be4nw9i+DDvhcy7noDII6G9O4QX0PZ
         RkQA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792180935; x=1792785735; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=YKRqYUIeLHuu39TCMgEZAeGl7IY1Tb02I9gvyfzAFBg=;
        b=eXRGBvNv5i/MjkgGRhnhvj7xzAvAwG9vboVBQBkSf7MSXPL/eCD8afcFNkk1vBaoMO
         h08zsn9sKVoZylJMxHjXzJpsfRISV4uLhzvpLNogaxIAGumAo4XJgLBeXit6JOpBxayC
         QjDy+Oro8Mf3fOqBzJM+Of8T+fkxs6HHgjLCgCxv40t6xLorD/D8h5CvxjEc/gK5kT/p
         hTwJ07bOYa60sj2nbuCbPYlEEc6sESojAgvilkBzN1ksRbzNbloPeAPZ5Av/wOai2Yc9
         S0zYrzKEhm4naVo0783DminQi+L3RUymtOBFa9AmNity65c7e+cbk9EpG3hjwr0HhVBg
         3DgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792180935; x=1792785735;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YKRqYUIeLHuu39TCMgEZAeGl7IY1Tb02I9gvyfzAFBg=;
        b=ao0ORsNRIWRucFHbfFN97NZ35WRQ3InAlHgN9qTacNKlVz+8VKNtx9OcxBaaFXgZv7
         l+ASp2nAASl7UjUcJFDX7Dhq+gKV0baS/RHZ3UxyA1X4ZUpQjiqKeI9a2LhZNlPIcS6U
         MKsLzoMx8oIPjWAe6sBr6RZfDZ/SVEwLQL5OTe6tc3QaRTreMR7C+34uSN+s7wpnGA5g
         /n3xVqB/4k0QycrrGhGVW1WbfJPBB7feObPCcRTV41nUXi+ZAOkZKDXNafopdcGYNREH
         8K4+TnNm6PjVBVfkZ82L3ae4rvRb0g/W+BNayPq4XcmhcCMGf/Z0AyZxWhNXDW2hrQte
         HgpA==
X-Gm-Message-State: AFq9FYLeStWSb0GcfIk7ngPmnOn6SmlwTV8y9fRhtUFGQsEMiSyaoCy5
	foRvSnugaL/rTOP9x+xr7u7mZxe7AFeTBjw8ZyliktRTUCI06CoZRmyXOij4l/d0oY/NVQNwD0S
	00SedbbQpuSEIkuciqbtQ+QD7KH75pzavfOly
X-Gm-Gg: AYBFou3RSMtQKzd5ZBkSbZA4Om6/+MsBB9ZGVgyPLcf+vao52vipEL/V6p1XOCarnAy
	sHwXjWe2qIApD1llRSjYftYSvNwG3sNisnj7ygmXMGGz5BbficRkXGCwvvl6JmaQvWaY+qYczpP
	g8lP4mdBo1f3sarfxxUJytGy9KXkK1M4kyFwyteAjOKl7SDPntsjMjsMpWKNMEOTDSdfMzbhQwd
	TmNI279Eb6g0mJSIWca3h2KbGkPBW4aUJZ1FCFUj6IREJo5w/jirHi4ZxJfYqvw315pWF7N3B4X
	IP1Jl+MqpjUy8KREqfoQEMcb0g87UpV6kyq9ajq9fz5gBmbjaBkyMZPQznds5YQwZErLLKaTeDz
	Q3vgS4O/L0JTE
X-Received: by 2002:a05:6808:6f90:b0:4c4:6b5c:30c3 with SMTP id
 5614622812f47-53cb6e6bce4mr710233b6e.0.1792180935101; Fri, 16 Oct 2026
 13:02:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Sowmya Torra <sowmyatorra@gmail.com>
Date: Sat, 17 Oct 2026 01:32:03 +0530
X-Gm-Features: AclHuK9Tmf5MnS0UWuj0iMIn9a_leOplO7sA4rs0HOEzzM_dMKnB48ZAkHT2FAw
Message-ID: <CAFsBPPkBKvDUrwW+7Hv_jhQPVVbCStaSYX4o+x4TrB+OhtQQ3g@mail.gmail.com>
Subject: =?UTF-8?Q?Introduction_=E2=80=93_Outreachy_December_2026_Applicant?=
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I'm Torra Sowmya, an Outreachy applicant interested in the project
"Remove most known unused tracepoints from the Linux kernel."
 I've joined the mailing list today and am starting with the First
Patch Tutorial. I'm looking forward to learning from the community and
contributing to the Linux kernel.

Thanks,
Torra Sowmya
