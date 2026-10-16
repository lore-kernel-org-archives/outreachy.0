Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E916B44470C
	for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 23:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792194618; cv=none; b=cm0fNe6ufyAz2lZydptkN/0lPzn8OQMaKbekRu9fvjk75lajjoG8J6RT3knQHMHomgNHNfAeB7Y5Z9Cl0qeEwxrmfuKIQhTyby1AiPhxgDvgCI70RGrYB/xDe7fZ6NLNsKMUfT3Y1gnvJi2ZOQbmjeOOLpTHrqSdQUsyRdHcUKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792194618; c=relaxed/simple;
	bh=GYVffwSyA/tW73L1hgZM9lALroKhDjOBd+0Vmma8slA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MNGvGYqYO0mSShr8RWhizetli6KZQTqzfULUHC1fST0LGB10QCcwvwOgO3YysbfsflkB7kcttJp+ArGhuXYECxgij5Z9FjGk35Barv4xo6d574GZfuucW6xTCwzzxsRsTuaza7L83Fh+SkYAlmffmwIi4TikMCjc6b8gQZcFM2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X6IHjBBs; arc=none smtp.client-ip=74.125.82.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X6IHjBBs"
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-35d7fa491deso495879eec.1
        for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 16:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792194616; x=1792799416; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=8SJKkat+VQh4F6rl2h/cHjhe4hX3sReiQ/IZr42ROVM=;
        b=X6IHjBBsjZatc5BswiXprBvGr7Pwt5bdJpZgwSTxNa1WEIOFzz0huqx3EoTwWQUAfo
         EzBt2Qm1zKkFxkTPUmYOSsm4kyvidTp2T1cu4GFW5vEY2ZLjPswxf6/7VkDtZ1ptvQW8
         AftuJLdy2p6CogQEg/5jSa+kzUzm1ThWr/CJPuQBOpOMr13BM9tuhULvUfzwPLfun8kC
         6TeF0Y7Br5yO68KBzxkTEIYhtpfGg8wa4hF3oKl9JOIsF4aiJ0xiYJVO79cajsguYD5w
         u17Sfg91KWvzyP6mGkA6SNNdrW4AvLsyfjm5TmOaKudJ25uQ96fxw4bZOB1C8cLtg1lA
         KY5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792194616; x=1792799416;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8SJKkat+VQh4F6rl2h/cHjhe4hX3sReiQ/IZr42ROVM=;
        b=jIdCfwT5zzicnNUU6TQoznfJBz1TDwl5orgGsNJ5yHsVjhZSH3jIubgTMJmT+rfn61
         UjYLnTS3kZ7Yzz9rn4ZiWlnNz77y6HC3NHkxx1j1XNWknC1TZ321+iiZt1iDXpKt1+kW
         LP8Zqbn9RmB3SqCjozW4yyG0QtYokjW3supC5u0lyW7D+jF6laDaA9KX+drPI7cqoeJT
         svsCZz6lRiMCWk+cYhRKKnoTD8hMOzKEWOI8UbLcd/0310U8yzlE27EHyb+zxwygky6S
         zRyLPKHzMOPLCbifeH7kodETfBZSGT07rjD+roayjHE8BfVGZEBQkuTWDfSjdMaqRo2b
         4q5g==
X-Forwarded-Encrypted: i=1; AKwUvBwhFE57AEs2aN2hd9sA1lZAXafxCS+xnFgBrYrC8SRZp3Y54rKX59w8C3Souny65/kBjXyjroz7vnc=@lists.linux.dev
X-Gm-Message-State: AFq9FYIOcY0+/M3qbCys5+1zCYmbaNGi9S78ef/85z4OiH9s9r0XQbal
	9HWTT3qPc5G/yALQQ66tiTjv+Vg8IM1EH+aN388TCc2X79L44u/mEu6u
X-Gm-Gg: AYBFou3vupZHRvJFZAVZAHMcNkIlr1LIJQY0muTsvBliKb0zaLF8ESiFij8OIcvcj2p
	gKAhu6cSfZuYb2orrociZ6esBkFr2Egbu0jpqRfzCsV/7YVsNry3Hfv1htP6bgBJS7mCX7NDIKf
	NcA8AbppW0ujyIG918FWqsEF2t28ErovZMC/bIzU0Ou3pkG6DThQUcvwOQbgdY6H5CmHX4j/rGH
	X9OW03m7o4Anbfk9FvaJEa4T6Q3JHp63UEdWKl/AYatOf0rrX78dQ7GhQbV68eiNLf8lED1f5N8
	DUAOGu+im2Nr2rn2Ahp5uuB7KKA+VZ57Uq1ggBUS+SxQMPcYfRQOo4M8skbTblhSbz0eQLmGnZN
	WBOnzhNjW+xxuiRyM0XqFOuoCohBpyxmZJAoXPAiVBYuduTvHwS9zQIDG4A4yJJb6oNPIV4mC8G
	lbm+tvtBz5tZHEaIhM9FPapjdscDF/vRragdzWBJMgI4wft5mX12ACiiYQmNCfQMDeKdl0GU0Ql
	1g=
X-Received: by 2002:a05:7300:f0c3:b0:35f:ab1:4792 with SMTP id 5a478bee46e88-3602d6e460dmr5639283eec.6.1792194615855;
        Fri, 16 Oct 2026 16:50:15 -0700 (PDT)
Received: from user ([2405:201:c052:b00b:a69d:8570:9766:5ea])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-360820a79c7sm9584342eec.18.2026.10.16.16.50.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 16:50:15 -0700 (PDT)
Date: Sat, 17 Oct 2026 05:19:59 +0530
From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
To: Ethan Tidmore <ethantidmore06@gmail.com>
Cc: pure.logic@nexus-software.ie, johan@kernel.org, elder@kernel.org,
	gregkh@linuxfoundation.org, rmfrfs@gmail.com, vireshk@kernel.org,
	greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: greybus: Align function arguments
Message-ID: <atK4JxHU2SmM-HbV@user>
References: <20261016063648.22795-1-pavankumaryalagada@gmail.com>
 <DM6MD2KJ8KS8.33P7OXVDIFUEP@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM6MD2KJ8KS8.33P7OXVDIFUEP@gmail.com>

On Fri, Oct 16, 2026 at 05:34:44PM -0500, Ethan Tidmore wrote:
> On Fri Oct 16, 2026 at 1:36 AM CDT, pavankumaryalagada wrote:
> > From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> >
> > Align the function arguments to follow the coding style and
> > improve readability, addressing the alignment warning reported by
> > checkpatch.pl
> >
> > Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> > ---
> 
> This doesn't apply. Are you using staging-next?

I'm not using staging-next for this patch.

Should i rebase it onto staging-next and send v2?

Thanks,
Pavan

> 
> Thanks,
> ET
